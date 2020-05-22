Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDF81DEE73
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 19:42:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 621DD6EA14;
	Fri, 22 May 2020 17:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF3296E0E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 17:42:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21264151-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 18:42:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 May 2020 18:42:07 +0100
Message-Id: <20200522174209.8885-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522174209.8885-1-chris@chris-wilson.co.uk>
References: <20200522174209.8885-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/4] mm/gup: refactor and de-duplicate gup_fast()
 code
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Hubbard <jhubbard@nvidia.com>

There were two nearly identical sets of code for gup_fast()
style of walking the page tables with interrupts disabled.
This has lead to the usual maintenance problems that arise from
having duplicated code.

There is already a core internal routine in gup.c for gup_fast(),
so just enhance it very slightly: allow skipping the fall-back
to "slow" (regular) get_user_pages(), via the new FOLL_FAST_ONLY
flag. Then, just call internal_get_user_pages_fast() from
__get_user_pages_fast(), and adjust the API to match pre-existing
API behavior.

There is a change in behavior from this refactoring: the nested
form of interrupt disabling is used in all gup_fast() variants
now. That's because there is only one place that interrupt disabling
for page walking is done, and so the safer form is required. This
should, if anything, eliminate possible (rare) bugs, because the
non-nested form of enabling interrupts was fragile at best.

Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 include/linux/mm.h |  1 +
 mm/gup.c           | 63 ++++++++++++++++++++++------------------------
 2 files changed, 31 insertions(+), 33 deletions(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 5a323422d783..bf1c6258198a 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2780,6 +2780,7 @@ struct page *follow_page(struct vm_area_struct *vma, unsigned long address,
 #define FOLL_LONGTERM	0x10000	/* mapping lifetime is indefinite: see below */
 #define FOLL_SPLIT_PMD	0x20000	/* split huge pmd before returning */
 #define FOLL_PIN	0x40000	/* pages must be released via unpin_user_page */
+#define FOLL_FAST_ONLY	0x80000	/* gup_fast: prevent fall-back to slow gup */
 
 /*
  * FOLL_PIN and FOLL_LONGTERM may be used in various combinations with each
diff --git a/mm/gup.c b/mm/gup.c
index a9a7e305bd46..dd2fe8f72b4b 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -2694,10 +2694,12 @@ static int internal_get_user_pages_fast(unsigned long start, int nr_pages,
 					struct page **pages)
 {
 	unsigned long addr, len, end;
+	unsigned long flags;
 	int nr_pinned = 0, ret = 0;
 
 	if (WARN_ON_ONCE(gup_flags & ~(FOLL_WRITE | FOLL_LONGTERM |
-				       FOLL_FORCE | FOLL_PIN | FOLL_GET)))
+				       FOLL_FORCE | FOLL_PIN | FOLL_GET |
+				       FOLL_FAST_ONLY)))
 		return -EINVAL;
 
 	start = untagged_addr(start) & PAGE_MASK;
@@ -2710,15 +2712,26 @@ static int internal_get_user_pages_fast(unsigned long start, int nr_pages,
 	if (unlikely(!access_ok((void __user *)start, len)))
 		return -EFAULT;
 
+	/*
+	 * Disable interrupts. The nested form is used, in order to allow full,
+	 * general purpose use of this routine.
+	 *
+	 * With interrupts disabled, we block page table pages from being
+	 * freed from under us. See struct mmu_table_batch comments in
+	 * include/asm-generic/tlb.h for more details.
+	 *
+	 * We do not adopt an rcu_read_lock(.) here as we also want to
+	 * block IPIs that come from THPs splitting.
+	 */
 	if (IS_ENABLED(CONFIG_HAVE_FAST_GUP) &&
 	    gup_fast_permitted(start, end)) {
-		local_irq_disable();
+		local_irq_save(flags);
 		gup_pgd_range(addr, end, gup_flags, pages, &nr_pinned);
-		local_irq_enable();
+		local_irq_restore(flags);
 		ret = nr_pinned;
 	}
 
-	if (nr_pinned < nr_pages) {
+	if (nr_pinned < nr_pages && !(gup_flags & FOLL_FAST_ONLY)) {
 		/* Try to get the remaining pages with get_user_pages */
 		start += nr_pinned << PAGE_SHIFT;
 		pages += nr_pinned;
@@ -2750,45 +2763,29 @@ static int internal_get_user_pages_fast(unsigned long start, int nr_pages,
 int __get_user_pages_fast(unsigned long start, int nr_pages, int write,
 			  struct page **pages)
 {
-	unsigned long len, end;
-	unsigned long flags;
-	int nr_pinned = 0;
+	int nr_pinned;
 	/*
 	 * Internally (within mm/gup.c), gup fast variants must set FOLL_GET,
 	 * because gup fast is always a "pin with a +1 page refcount" request.
+	 *
+	 * FOLL_FAST_ONLY is required in order to match the API description of
+	 * this routine: no fall back to regular ("slow") GUP.
 	 */
-	unsigned int gup_flags = FOLL_GET;
+	unsigned int gup_flags = FOLL_GET | FOLL_FAST_ONLY;
 
 	if (write)
 		gup_flags |= FOLL_WRITE;
 
-	start = untagged_addr(start) & PAGE_MASK;
-	len = (unsigned long) nr_pages << PAGE_SHIFT;
-	end = start + len;
-
-	if (end <= start)
-		return 0;
-	if (unlikely(!access_ok((void __user *)start, len)))
-		return 0;
-
+	nr_pinned = internal_get_user_pages_fast(start, nr_pages, gup_flags,
+						 pages);
 	/*
-	 * Disable interrupts.  We use the nested form as we can already have
-	 * interrupts disabled by get_futex_key.
-	 *
-	 * With interrupts disabled, we block page table pages from being
-	 * freed from under us. See struct mmu_table_batch comments in
-	 * include/asm-generic/tlb.h for more details.
-	 *
-	 * We do not adopt an rcu_read_lock(.) here as we also want to
-	 * block IPIs that come from THPs splitting.
+	 * As specified in the API description above, this routine is not
+	 * allowed to return negative values. However, the common core
+	 * routine internal_get_user_pages_fast() *can* return -errno.
+	 * Therefore, correct for that here:
 	 */
-
-	if (IS_ENABLED(CONFIG_HAVE_FAST_GUP) &&
-	    gup_fast_permitted(start, end)) {
-		local_irq_save(flags);
-		gup_pgd_range(start, end, gup_flags, pages, &nr_pinned);
-		local_irq_restore(flags);
-	}
+	if (nr_pinned < 0)
+		nr_pinned = 0;
 
 	return nr_pinned;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
