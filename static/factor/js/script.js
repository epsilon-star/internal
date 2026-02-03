let rowCounter = 0;
let totalExpenses = 0;

// تابع برای ۳ رقم ۳ رقم جدا کردن عدد
function formatNumber(num) {
    if (!num) return '0';
    return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

// تابع برای حذف کاما و تبدیل به عدد خالص
function parseCleanNumber(str) {
    // تبدیل اعداد فارسی به انگلیسی و حذف هر چیزی غیر از عدد
    str = toEnglishDigits(str);
    return parseInt(str.replace(/,/g, '').replace(/\D/g, '')) || 0;
}

// تابع تبدیل اعداد فارسی به انگلیسی (برای پشتیبانی کامل)
function toEnglishDigits(str) {
    const persianNumbers = [/۰/g, /۱/g, /۲/g, /۳/g, /۴/g, /۵/g, /۶/g, /۷/g, /۸/g, /۹/g];
    const arabicNumbers = [/٠/g, /١/g, /٢/g, /٣/g, /٤/g, /٥/g, /٦/g, /٧/g, /٨/g, /٩/g];

    if(typeof str === 'string') {
        for(let i=0; i<10; i++) {
            str = str.replace(persianNumbers[i], i).replace(arabicNumbers[i], i);
        }
    }
    return str;
}

// تاریخ پیش‌فرض امروز
function getDefaultDate() {
    return "1404/11/11";
}

// --- بخش فرمت زنده ورودی اینپوت ---
function formatInput(input) {
    // گرفتن مقدار، حذف کاماها، و دوباره فرمت کردن
    let val = input.value;
    // پاکسازی کاراکترهای غیر عددی
    val = val.replace(/[^0-9۰-۹]/g, '');
    // تبدیل به عدد انگلیسی برای محاسبات داخلی
    let engVal = toEnglishDigits(val);

    if (engVal) {
        // نمایش با جداکننده
        input.value = formatNumber(engVal);
    } else {
        input.value = '';
    }
}

function openAddModal() {
    document.getElementById('pTitle').value = '';
//    document.getElementById('pDate').value = getDefaultDate();
    document.getElementById('pPrice').value = '';

    document.getElementById('addModal').classList.add('active');
    setTimeout(() => document.getElementById('pTitle').focus(), 100);
}

function closeModal() {
    document.getElementById('addModal').classList.remove('active');
}

function submitExpense() {
    const titleInput = document.getElementById('pTitle');
    const dateInput = document.getElementById('pDate');
    const priceInput = document.getElementById('pPrice');

    const title = titleInput.value.trim();
    const date = dateInput.value.trim();

    // تبدیل مقدار اینپوت (که دارای کاما است) به عدد خالص
    const price = parseCleanNumber(priceInput.value);

    if(!title || !date || price === 0) {
        alert("لطفا عنوان، تاریخ و مبلغ معتبر وارد کنید!");
        return;
    }

    const tbody = document.querySelector('#expenseTable tbody');
    const emptyMsg = document.getElementById('empty-msg');
    if(emptyMsg) emptyMsg.remove();

    rowCounter++;
    const rowId = `row-${rowCounter}`;

    const tr = document.createElement('tr');
    tr.id = rowId;
    tr.style.animation = "fadeIn 0.5s ease";

    tr.innerHTML = `
        <td style="color: var(--text-muted);">${rowCounter}</td>
        <td><strong style="color:white; font-size:1.05rem;">${title}</strong></td>
        <td style="color: #ccc;">${date}</td>
        <td class="price-col">${formatNumber(price)}</td>
        <td>
            <button class="btn-delete" onclick="deleteRow('${rowId}', ${price})">✕</button>
        </td>
    `;

    tbody.appendChild(tr);

    // آپدیت جمع کل
    updateTotal(price);

    closeModal();
}

function deleteRow(rowId, priceVal) {
    if(confirm("آیا مطمئنید؟")) {
        const row = document.getElementById(rowId);

        row.style.transform = "translateX(-20px)";
        row.style.opacity = "0";

        setTimeout(() => {
            row.remove();
            updateTotal(-priceVal);

            const tbody = document.querySelector('#expenseTable tbody');
            if(tbody.children.length === 0) {
                tbody.innerHTML = `<tr id="empty-msg"><td colspan="5">هنوز خریدی ثبت نشده است...</td></tr>`;
            }
        }, 300);
    }
}

function updateTotal(amountToAdd) {
    totalExpenses += amountToAdd;
    const totalDisplay = document.getElementById('totalAmountDisplay');
    // فرمت کردن جمع کل
    totalDisplay.innerText = formatNumber(totalExpenses);
}

window.onclick = function(event) {
    if (event.target.classList.contains('modal-overlay')) {
        event.target.classList.remove('active');
    }
}