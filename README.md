# LABORATORIO_01_FRONT

Construido con **React + TypeScript + Vite**, con contenedorización para **Docker** y **Kubernetes**.

Para su correcto funcionamiento, se espera que sea corrido cuando su [Backend](https://github.com/Monchez9/Laboratorio_01) este levantado.

---

## Requisitos

- Node.js >= 18  
- npm >= 9  
- Docker
- Kubernetes

---

## Instalación y ejecución local

Clonar el repositorio:

```bash
git clone https://github.com/Monchez9/Laboratorio_01_front.git
cd LABORATORIO_01_FRONT
```

## Instalar dependencias

``` bash
npm install axios
# Instala Vitest y el plugin de Vitest para ESLint
npm install --save-dev vitest @vitest/ui eslint-plugin-vitest
# Instala React Testing Library
npm install --save-dev @testing-library/react @testing-library/jest-dom jsdom
# Instala ESLint y las configuraciones de TypeScript y React
npm install --save-dev eslint @typescript-eslint/eslint-plugin @typescript-eslint/parser eslint-plugin-react-hooks eslint-plugin-react-refresh
```

## Crear archivo de entorno

```bash
cp .env.development .env
```

## Ejecutar la aplicación en modo desarrollo

```bash
npm run dev
```

Esto iniciará un servidor en [http://localhost:5173](http://localhost:5173).

## Ejecución de pruebas

```bash
npm run test
```

Esto ejecutará los tests definidos en tests/App.test.tsx.

## Linter

Para revisar problemas de estilo y sintaxis con ESLint:

```bash
npm run lint
```

## Construcción para producción

```bash
npm run build
```

Los archivos se generarán en la carpeta dist.

## Docker

### Construir la imagen Docker

``` bash
docker build -t laboratorio01-frontend .
```

### Ejecutar el contenedor

``` bash
docker run -p 3000:80 laboratorio01-frontend
```

## Kubernetes

Dentro de la carpeta k8s se encuentran los manifests:

- frontend-deployment.yaml
- frontend-service.yaml

### Aplicarlos

``` bash
kubectl apply -f k8s/frontend-deployment.yaml
kubectl apply -f k8s/frontend-service.yaml
```

### Verificar pods y servicios

``` bash
kubectl get pods
kubectl get svc
```

## Estructura del proyecto

``` text
LABORATORIO_01_FRONT/
├── k8s/                  # Kubernetes
├── public/               # Recursos estáticos
├── src/                  # Código fuente
├── tests/                # Tests unitarios
├── .env.development
├── .env.production
├── Dockerfile
├── nginx.conf
├── package.json
├── tsconfig.json
├── vite.config.ts
└── README.md
```
