import openai

# 设置OpenAI API密钥
openai.api_key = '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'

# 定义文本生成的参数
prompt = "Once upon a time"
max_tokens = 50

# 调用OpenAI API进行文本生成
response = openai.Completion.create(
  engine="davinci",
  prompt=prompt,
  max_tokens=max_tokens,
  n=1,
  stop=None,
  temperature=0.7
)

# 提取生成的文本结果
generated_text = response.choices[0].text.strip()

# 打印生成的文本
print(generated_text)
