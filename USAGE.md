# Vietnam LNG Market Dashboard 使用说明

## 启动本地服务器

由于页面通过 fetch 加载 JSON 数据文件，必须通过 HTTP 服务器访问，**不能直接双击 index.html 打开**。

### 方法一：Python（推荐，macOS 自带）

```bash
cd /Users/teikusunoki/Desktop/Vietnam_LNG_Market_Dashboard
python3 -m http.server 8000
```

浏览器打开：http://localhost:8000

### 方法二：Node.js

```bash
cd /Users/teikusunoki/Desktop/Vietnam_LNG_Market_Dashboard
npx serve
```

或：

```bash
npx http-server -p 8000
```

### 方法三：VS Code Live Server 插件

安装 Live Server 插件，右键 index.html → "Open with Live Server"。

---

## 修改数据

所有数据文件位于 `public/data/` 目录：

| 文件 | 内容 |
|------|------|
| `terminals.json` | LNG 终端资产数据 |
| `pipelines.json` | 管道数据 |
| `demand.json` | 需求预测数据（2023–2050） |
| `indigenous_gas_supply.json` | 本土天然气供应 |
| `vietnam_gas_imports.json` | 进口天然气数据 |

**修改流程：**

1. 编辑 `public/data/` 下对应的 JSON 文件
2. 保存
3. 刷新浏览器即可生效

**无需修改 index.html**，页面会自动从 JSON 文件加载最新数据。

---

## 数据加载失败

如果看到 "Data Load Failed" 提示，说明没有通过 HTTP 服务器访问。请按上述方法启动服务器后访问。

---

## 技术栈

- 纯前端 HTML/CSS/JS，无构建步骤
- ECharts（图表）、Mapbox（地图）、D3（地理计算）
- 所有数据通过 fetch 动态加载
