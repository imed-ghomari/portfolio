---
description: How to add a new project to the portfolio
---

To add a new project, follow these steps:

### Option 1: Using the automation script (Easiest)
Run the following command in your terminal:
```bash
./new_project.sh [professional|personal] "Your Project Title"
```

### Option 2: Manual approach
1. Go to the `_posts/` directory.
2. Create a new file with the naming convention: `YYYY-MM-DD-project-title.md`.
3. Add the following front-matter at the top:
   ```yaml
   ---
   layout: post
   title: Your Project Title
   date: YYYY-MM-DD
   categories: professional  # OR 'personal'
   ---
   ```
4. Write your project description below the front-matter.

### Tips for great projects:
- **Categories**: Ensure you use `professional` or `personal` as the first category so it shows up on the correct page.
- **Images**: If you have images, place them in `/public/img/` and link them using `![Alt text]({{ '/public/img/your-image.png' | relative_url }})`.
- **Excerpts**: The first paragraph will be used as a summary on the home page and project lists.
