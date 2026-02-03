let idCounter = 0;

// تنظیم روز و تاریخ پیش‌فرض هنگام لود صفحه (اختیاری)
function getDefaultDate() {
    // اینجا می‌توانید از کتابخانه‌های تاریخ شمسی مثل jalaali-js استفاده کنید
    // فعلا یک تاریخ فرضی می‌گذاریم
    return '{{ today_date }}';
}

function openEntryModal() {
    const now = new Date();
    const timeString = now.getHours().toString().padStart(2, '0') + ':' + now.getMinutes().toString().padStart(2, '0');

    // ریست کردن فرم
    document.getElementById('entryTime').value = timeString;
    document.getElementById('entryName').selectedIndex = 0; // انتخاب گزینه اول (خالی)
    document.getElementById('entryDay').selectedIndex = 0; // پیش‌فرض شنبه
//        document.getElementById('entryDate').value = getDefaultDate();

    document.getElementById('entryModal').classList.add('active');
}

function openLateModal(rowId, name) {
    document.getElementById('currentEmployeeId').value = rowId;
    document.getElementById('lateEmployeeName').innerText = name;

    document.getElementById('lateModal').classList.add('active');
}

function closeModal(modalId) {
    document.getElementById(modalId).classList.remove('active');
}

function submitEntry() {
    const nameSelect = document.getElementById('entryName');
    const name = nameSelect.value;

    const daySelect = document.getElementById('entryDay');
    const day = daySelect.value;

    const date = document.getElementById('entryDate').value;
    const time = document.getElementById('entryTime').value;

    if(!name || !date || !time || !day) {
        alert("لطفا تمام موارد را انتخاب و وارد کنید!");
        return;
    }

    const tbody = document.querySelector('#attendanceTable tbody');
    const emptyMsg = document.getElementById('empty-msg');
    if(emptyMsg) emptyMsg.remove();

    idCounter++;
    const rowId = `row-${idCounter}`;

    const tr = document.createElement('tr');
    tr.id = rowId;
    // افکت انیمیشن هنگام ورود سطر جدید
    tr.style.animation = "fadeIn 0.5s ease";

    tr.innerHTML = `
        <td><strong style="color:white; font-size:1.05rem;">${name}</strong></td>
        <td><span style="color: var(--secondary-neon);">${day}</span></td>
        <td style="color: #ccc;">${date}</td>
        <td><span class="status-badge status-in">${time}</span></td>
        <td id="exit-cell-${idCounter}" style="color: var(--text-muted);">---</td>
        <td>
            <button class="btn-exit" onclick="openExitModal('${rowId}', '${name}')">ثبت خروج</button>
        </td>
    `;

    tbody.appendChild(tr);
    closeModal('entryModal');
}

function openExitModal(rowId, name) {
    document.getElementById('currentRowId').value = rowId;
    document.getElementById('exitEmployeeName').innerText = name;

    const now = new Date();
    const timeString = now.getHours().toString().padStart(2, '0') + ':' + now.getMinutes().toString().padStart(2, '0');
    document.getElementById('exitTimeInput').value = timeString;

    document.getElementById('exitModal').classList.add('active');
}

function submitExit() {
    const rowId = document.getElementById('currentRowId').value;
    const exitTime = document.getElementById('exitTimeInput').value;

    if(!exitTime) {
        alert("ساعت خروج الزامی است");
        return;
    }

    const numericId = rowId.split('-')[1];
    const exitCell = document.getElementById(`exit-cell-${numericId}`);

    // نمایش ساعت خروج با استایل
    exitCell.innerHTML = `<span class="status-badge status-out">${exitTime}</span>`;

    // غیرفعال کردن دکمه
    const row = document.getElementById(rowId);
    const btn = row.querySelector('.btn-exit');
    btn.disabled = true;
    btn.innerText = "بسته شد";
    btn.style.borderColor = "#333";
    btn.style.color = "#555";

    closeModal('exitModal');
}

window.onclick = function(event) {
    if (event.target.classList.contains('modal-overlay')) {
        event.target.classList.remove('active');
    }
}