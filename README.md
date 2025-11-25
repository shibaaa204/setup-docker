## 📌 1. Cài đặt Docker 

``` bash
sudo apt install docker.io 
sudo systemctl enable docker --now
```

## 📌 2. Thêm người dùng vào nhóm `docker`

Giúp chạy Docker mà không cần `sudo`:

``` bash
sudo usermod -aG docker $USER
```

👉 Hãy **đăng xuất và đăng nhập lại** (hoặc khởi động lại hệ thống) để
nhóm được áp dụng.

------------------------------------------------------------------------

## 📌 3. Build image Kali Linux

Trong thư mục chứa `Dockerfile`, chạy:

``` bash
docker build -t kali .
```

------------------------------------------------------------------------

## 📌 4. Chạy container Kali Linux

Mount thư mục `~/kali` vào `/root/kali` để chia sẻ dữ liệu giữa host và
container:

``` bash
docker run -it --name kali -v ~/kali:/root/kali kali
```

------------------------------------------------------------------------

## 📌 5. Truy cập lại container

``` bash
docker start -ai kali
```

------------------------------------------------------------------------

