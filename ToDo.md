
# Important Tasks for Website Migration and Updates

This document summarizes the remaining steps to finalize and improve the Luque Lab website migration (`test_webpage`) before replacing the old repository.
The tasks are grouped by priority and theme for clarity.

---

# Suggested Next Steps. Summary.

1. **Toni’s review and approval** of the `test_webpage` migration.
2. Schedule a brief check of the slow-loading “Lab Documentation” section to plan optimization.
3. Begin the **content update round** (news, members, CVs).
4. Create the **shared assets folder** and define basic style guidelines for consistent use across pages.

# Expanded

## 1. Migration and Verification

### Verify Migration and Approve Transition

* Review the structure and content of [`test_webpage`](https://luquelab.github.io/test_webpage/).
  The goal was to **replicate the previous content** while ensuring faster load times and alignment with the *Just the Docs* framework.
* Once approved, the plan is to replace the content of the old repository with the new one, following the migration protocol we discussed.

### Research > Lab Documentation

* This is currently the **only section still showing slow performance**.
* The slowdown is likely due to the large volume of embedded or external content in that section.
* **Recommendation:** keep it as-is for now and treat it as part of a **Phase II optimization**, since the issue is localized and does not affect the rest of the site’s performance.

---

## 2. Content Updates

### News Coverage

* Create a list of **missing news entries** to complete the record.
  The `_news` collection system is ready and tested — the latest submission (“*Small viruses reveal bidirectional evolution…*”) was added as a proof of concept.
* We may need to go through publications, talks, and awards since mid-2024 to ensure all relevant events are captured.

### Lab Members

* **Remove members** who are no longer part of the lab.
* Decide whether to:

  * Move them to an **Alumni** section, or
  * Reorder active members so that **current team members appear first**.

### CV Updates

* Encourage all lab members with GitHub access to **upload their most recent CVs** to `/resumes/`.
* This would be a good opportunity to standardize filenames (e.g., `lastname_firstname_CV_YYYY-MM-DD.pdf`).

### Funding and Software

* Complete the missing content for the **Funding** and **Software** subsections under `/pages/research-*.md`.
* Verify that all references are up to date and that URLs or citations are valid.

---

## 3. Aesthetic and Cohesion

### Shared Visual Assets

* Create a **centralized collection of static visual assets** (logos, icons, banners) under `/assets/images/shared/`.
* These shared files can be referenced across pages to maintain a **consistent visual identity** and simplify updates (e.g., if a logo changes, it only needs to be replaced once).

---



