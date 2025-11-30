import torch

print("PyTorch version:", torch.__version__)
print("CUDA available:", torch.cuda.is_available())

if torch.cuda.is_available():
    print("GPU name:", torch.cuda.get_device_name(0))
    print("Device count:", torch.cuda.device_count())

    # Test tensor allocation
    try:
        x = torch.rand(1000, 1000).cuda()
        y = torch.rand(1000, 1000).cuda()
        z = x @ y  # matrix multiply on GPU
        print("GPU computation OK. z mean =", z.mean().item())
    except Exception as e:
        print("Tensor GPU test failed:", e)
else:
    print("No CUDA device detected.")
