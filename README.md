# DevOps Assignment

โจทย์สำหรับฝั่ง DevOps จะเป็นการประเมินพื้นฐานความเข้าใจในการพัฒนา Backend API และการจัการ Dependencies ของโปรเจคต่าง ๆ และสร้าง Deployment ที่เหมาะสมสำหรับโปรเจคนั้น ๆ

## โจทย์

ใน Repository นี้จะมีโปรเจคที่เป็น Backend API ที่เขียนด้วยด้วย NestJS และใช้ MongoDB เป็นฐานข้อมูล

- ให้เปลี่ยนจากที่ มีกการ Hardcode ข้อมูลของ MongoDB เป็นการใช้ Environment Variable แทน
- ให้เขียน Dockerfile สำหรับ Build และ Run โปรเจคนี้ (Multi-stage build ถ้าเป็นไปได้)
- ให้เขียน Docker Compose สำหรับ Run โปรเจคนี้พร้อมกับ MongoDB โดยที่ NestJS จะเชื่อมต่อ MongoDB ผ่าน Docker Network

## สิ่งที่ต้องส่ง

- Repository ที่มี Dockerfile และ Docker Compose ที่เขียนตามโจทย์ อัพโหลดไปยัง Github (ส่งไฟล์ .env ขึ้นมาด้วย)

## คะแนนพิเศษ

- [ ] ใช้ Docker Volume ในการเก็บข้อมูลของ MongoDB
- [ ] เขียน DevContainer สำหรับ Visual Studio Code ที่มี Environment ที่ต้องการสำหรับการ Development โปรเจคนี้
- [ ] ทำ CI/CD ด้วย Github Actions สำหรับการ Build Docker Image และ Push ขึ้น Docker Hub หรือ Github Package Registry
