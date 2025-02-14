# ✅ CUDA가 포함된 PyTorch 공식 이미지 사용
FROM pytorch/pytorch

# 작업 디렉토리 설정
WORKDIR /workspace

# 필요한 패키지 설치
COPY requirements.txt /workspace/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Python 파일 복사
COPY . /workspace

# Jupyter Notebook 실행 가능하도록 설정
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--NotebookApp.token=''"]