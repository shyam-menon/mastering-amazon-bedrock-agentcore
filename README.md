# Mastering Amazon Bedrock AgentCore

**Personal Learning Repository** by **Shyam Menon**  
🌟 **Repository**: https://github.com/shyam-menon/mastering-amazon-bedrock-agentcore

*Based on AgentCore tutorial materials for building production-ready AI agents using Amazon Bedrock AgentCore.*

## Overview

This is my personal implementation and learning journey through building enterprise-grade AI agents using Amazon Bedrock AgentCore. Through hands-on implementation of an AI Travel Companion application, I'm mastering all seven core components of the AgentCore framework and learning how to deploy production-ready AI solutions on AWS.

## Learning Progress
- ✅ **Notebook 01**: Foundation & AWS Setup - Complete
- ✅ **Notebook 02**: Runtime Setup - Complete  
- 🔄 **Notebook 03**: Gateway Integration - In Progress
- ⏳ **Notebooks 04-08**: Pending

## What You'll Build

An intelligent **AI Travel Companion** that:
- Plans complete travel itineraries through conversational interaction
- Remembers user preferences (hotel types, food restrictions, budget constraints)
- Searches flights, hotels, and attractions using real-time APIs
- Optimizes budget allocation across travel components
- Analyzes reviews and provides recommendations
- Saves itineraries to Google Drive with OAuth authentication
- Provides real-time monitoring and observability

## Course Structure

### Hands-On Learning Path

The course follows a progressive, notebook-based approach where each chapter builds upon the previous:

1. **[Foundation & AWS Setup](capstone_project/notebooks/01-foundation.ipynb)** - Environment configuration and AgentCore introduction
2. **[Runtime Setup](capstone_project/notebooks/02-runtime-setup.ipynb)** - Creating your first conversational agent
3. **[Gateway Integration](capstone_project/notebooks/03-gateway-integration.ipynb)** - Connecting to external APIs and services
4. **[Memory Implementation](capstone_project/notebooks/04-memory-implementation.ipynb)** - Adding user preference memory
5. **[Identity & OAuth](capstone_project/notebooks/05-identity-oauth.ipynb)** - Implementing secure authentication
6. **[Code Interpreter](capstone_project/notebooks/06-code-interpreter.ipynb)** - Dynamic code execution for calculations
7. **[Browser Tools](capstone_project/notebooks/07-browser-tools.ipynb)** - Web scraping and research capabilities
8. **[Final Integration](capstone_project/notebooks/08-final-integration.ipynb)** - Bringing it all together

## Prerequisites

### Required
- **AWS Account** with appropriate IAM permissions for:
  - Amazon Bedrock
  - Amazon Cognito (for OAuth)
  - AWS Lambda (for runtime deployment)
  - CloudWatch (for monitoring)
- **Python 3.10+** installed on your system
- **uv package manager** - [Installation guide](https://github.com/astral-sh/uv)
- Basic knowledge of Python and AWS concepts

### Optional API Keys
For full functionality, obtain free API keys from:
- [OpenWeatherMap](https://openweathermap.org/api) - Weather data
- [ExchangeRate API](https://www.exchangerate-api.com/) - Currency conversion
- [AviationStack](https://aviationstack.com/) - Flight data

## Quick Start

### 1. Clone the Repository

```bash
git clone https://github.com/shyam-menon/mastering-amazon-bedrock-agentcore.git
cd mastering-amazon-bedrock-agentcore
```

### 2. Run Setup Script

```bash
chmod +x setup.sh
./setup.sh
```

This will:
- Initialize a Python 3.10 virtual environment
- Install all required dependencies
- Configure the project structure

### 3. Configure AWS Credentials

Set up your AWS credentials using one of these methods:

**Option A: AWS SSO Profile**
```bash
export AWS_PROFILE=your-profile-name
export AWS_REGION=us-east-1
```

**Option B: Environment Variables**
```bash
export AWS_ACCESS_KEY_ID=your-access-key
export AWS_SECRET_ACCESS_KEY=your-secret-key
export AWS_REGION=us-east-1
```

### 4. Configure API Keys (Optional)

Create a `.env` file in the project root:

```bash
OPENWEATHERMAP_API_KEY=your-key-here
EXCHANGERATE_API_KEY=your-key-here
AVIATIONSTACK_API_KEY=your-key-here
```

### 5. Start Learning

```bash
source .venv/bin/activate
jupyter notebook capstone_project/notebooks/01-foundation.ipynb
```

## Project Structure

```
mastering-amazon-bedrock-agentcore/
├── capstone_project/           # Main course project
│   ├── notebooks/              # Interactive learning notebooks (01-08)
│   │   ├── 01-foundation.ipynb
│   │   ├── 02-runtime-setup.ipynb
│   │   ├── 03-gateway-integration.ipynb
│   │   ├── 04-memory-implementation.ipynb
│   │   ├── 05-identity-oauth.ipynb
│   │   ├── 06-code-interpreter.ipynb
│   │   ├── 07-browser-tools.ipynb
│   │   ├── 08-final-integration.ipynb
│   │   └── environments/       # Configuration files
│   ├── backend/                # Python implementation
│   │   ├── gateway/            # API Gateway setup
│   │   ├── identity/           # OAuth and authentication
│   │   ├── memory/             # Memory configuration
│   │   └── runtime/            # Agent runtime code
│   └── README.md               # Project-specific documentation
├── tests/                      # Testing utilities
├── setup.sh                    # Environment setup script
├── pyproject.toml              # Python dependencies
└── README.md                   # This file
```

## AgentCore Components Covered

### 1. Runtime
Learn to create and configure the agent runtime environment, manage conversation flow, and implement multi-turn dialogue capabilities.

### 2. Gateway
Connect your agent to external APIs and services using OpenAPI specifications, handle authentication, and manage API integrations.

### 3. Memory
Implement user preference storage, context retention across conversations, and intelligent memory retrieval for personalized experiences.

### 4. Identity
Secure your agent with OAuth 2.0, integrate with AWS Cognito, and manage user authentication flows.

### 5. Code Interpreter
Enable dynamic code execution for complex calculations, data processing, and algorithm implementations.

### 6. Browser Tools
Add web scraping capabilities, automated research, and dynamic content extraction to your agent.

### 7. Orchestration
Coordinate multiple tools and components, manage complex workflows, and optimize agent decision-making.

## Key Features & Learning Outcomes

Through this learning project, I am gaining skills to:

- ✅ Understand Amazon Bedrock AgentCore architecture
- ✅ Build production-ready AI agents from scratch
- ✅ Integrate external APIs and services
- ✅ Implement secure authentication with OAuth 2.0
- ✅ Add memory and context management
- ✅ Deploy agents to AWS infrastructure
- ✅ Monitor and observe agent behavior in production
- ✅ Handle edge cases and error scenarios
- ✅ Optimize performance and cost

## Technologies Used

- **Amazon Bedrock AgentCore** - AI agent framework
- **AWS Services** - Lambda, Cognito, CloudWatch
- **Python 3.10+** - Primary programming language
- **Jupyter Notebooks** - Interactive learning environment
- **OAuth 2.0** - Secure authentication
- **OpenAPI/REST** - API integration
- **Selenium** - Browser automation
- **Strands** - Memory management

## Testing

The repository includes testing utilities in the `tests/` directory:

```bash
# Run API tests
cd tests
python api_direct_test.py
```

See [tests/README.md](tests/README.md) for detailed testing documentation.

## Support & Resources

- **Repository**: [GitHub](https://github.com/shyam-menon/mastering-amazon-bedrock-agentcore) 
- **Issues**: [GitHub Issues](https://github.com/shyam-menon/mastering-amazon-bedrock-agentcore/issues)
- **Documentation**: Each notebook contains detailed explanations and documentation
- **AWS Documentation**: [Amazon Bedrock AgentCore](https://docs.aws.amazon.com/bedrock/)
- **Learning Notes**: Personal implementation with corporate environment adaptations

## Contributing

This is a personal learning repository documenting my journey through AgentCore. While it's primarily for educational purposes, suggestions and improvements are welcome through GitHub Issues. Feel free to fork this repository for your own learning!

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## Troubleshooting

### Common Issues

**Issue**: `bedrock-agentcore` package not found
- **Solution**: Ensure you're using the correct Python version (3.10+) and have run `./setup.sh`

**Issue**: AWS credentials not working
- **Solution**: Verify your IAM permissions include Bedrock access in your region

**Issue**: API keys not loading
- **Solution**: Check that your `.env` file is in the project root directory

**Issue**: Jupyter kernel not found
- **Solution**: Activate the virtual environment: `source .venv/bin/activate`

For more issues, check the troubleshooting section in each notebook.

## Acknowledgments

Built with Amazon Bedrock AgentCore and the AWS ecosystem. This personal learning project is based on AgentCore tutorial materials. Special thanks to the AWS AI team for creating this powerful framework for building production-grade AI agents.

---

**Following along with my learning journey?** Start with [Notebook 01: Foundation & AWS Setup](capstone_project/notebooks/01-foundation.ipynb)

**Repository**: https://github.com/shyam-menon/mastering-amazon-bedrock-agentcore