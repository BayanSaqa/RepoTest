# استخدم صورة الأساس لبايثون مع نسخة ألباين لتقليل الحجم
FROM python:3.8-alpine

# تعيين مسار العمل داخل الحاوية
WORKDIR /app

# نسخ ملفات المتطلبات وتثبيت الحزم اللازمة
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# نسخ جميع الملفات من الدليل الحالي إلى الحاوية
COPY . .

# إعلان المنفذ الذي سيتم استخدامه
EXPOSE 4000

# تحديد الأمر الذي يتم تشغيله عند بدء تشغيل الحاوية
CMD ["flask", "run", "--host=0.0.0.0", "--port=4000"]
