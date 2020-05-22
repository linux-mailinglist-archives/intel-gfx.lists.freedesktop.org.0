Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BFC1DEE70
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 19:42:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B66E36E0E2;
	Fri, 22 May 2020 17:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EE0F6EA11
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 17:42:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21264150-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 18:42:08 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 May 2020 18:42:06 +0100
Message-Id: <20200522174209.8885-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/4] mm/gup: move __get_user_pages_fast() down a
 few lines in gup.c
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

This is in order to avoid a forward declaration of
internal_get_user_pages_fast(), in the next patch.

This is code movement only--all generated code should
be identical.

Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 mm/gup.c | 112 +++++++++++++++++++++++++++----------------------------
 1 file changed, 56 insertions(+), 56 deletions(-)

diff --git a/mm/gup.c b/mm/gup.c
index 87a6a59fe667..a9a7e305bd46 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -2666,62 +2666,6 @@ static bool gup_fast_permitted(unsigned long start, unsigned long end)
 }
 #endif
 
-/*
- * Like get_user_pages_fast() except it's IRQ-safe in that it won't fall back to
- * the regular GUP.
- * Note a difference with get_user_pages_fast: this always returns the
- * number of pages pinned, 0 if no pages were pinned.
- *
- * If the architecture does not support this function, simply return with no
- * pages pinned.
- */
-int __get_user_pages_fast(unsigned long start, int nr_pages, int write,
-			  struct page **pages)
-{
-	unsigned long len, end;
-	unsigned long flags;
-	int nr_pinned = 0;
-	/*
-	 * Internally (within mm/gup.c), gup fast variants must set FOLL_GET,
-	 * because gup fast is always a "pin with a +1 page refcount" request.
-	 */
-	unsigned int gup_flags = FOLL_GET;
-
-	if (write)
-		gup_flags |= FOLL_WRITE;
-
-	start = untagged_addr(start) & PAGE_MASK;
-	len = (unsigned long) nr_pages << PAGE_SHIFT;
-	end = start + len;
-
-	if (end <= start)
-		return 0;
-	if (unlikely(!access_ok((void __user *)start, len)))
-		return 0;
-
-	/*
-	 * Disable interrupts.  We use the nested form as we can already have
-	 * interrupts disabled by get_futex_key.
-	 *
-	 * With interrupts disabled, we block page table pages from being
-	 * freed from under us. See struct mmu_table_batch comments in
-	 * include/asm-generic/tlb.h for more details.
-	 *
-	 * We do not adopt an rcu_read_lock(.) here as we also want to
-	 * block IPIs that come from THPs splitting.
-	 */
-
-	if (IS_ENABLED(CONFIG_HAVE_FAST_GUP) &&
-	    gup_fast_permitted(start, end)) {
-		local_irq_save(flags);
-		gup_pgd_range(start, end, gup_flags, pages, &nr_pinned);
-		local_irq_restore(flags);
-	}
-
-	return nr_pinned;
-}
-EXPORT_SYMBOL_GPL(__get_user_pages_fast);
-
 static int __gup_longterm_unlocked(unsigned long start, int nr_pages,
 				   unsigned int gup_flags, struct page **pages)
 {
@@ -2794,6 +2738,62 @@ static int internal_get_user_pages_fast(unsigned long start, int nr_pages,
 	return ret;
 }
 
+/*
+ * Like get_user_pages_fast() except it's IRQ-safe in that it won't fall back to
+ * the regular GUP.
+ * Note a difference with get_user_pages_fast: this always returns the
+ * number of pages pinned, 0 if no pages were pinned.
+ *
+ * If the architecture does not support this function, simply return with no
+ * pages pinned.
+ */
+int __get_user_pages_fast(unsigned long start, int nr_pages, int write,
+			  struct page **pages)
+{
+	unsigned long len, end;
+	unsigned long flags;
+	int nr_pinned = 0;
+	/*
+	 * Internally (within mm/gup.c), gup fast variants must set FOLL_GET,
+	 * because gup fast is always a "pin with a +1 page refcount" request.
+	 */
+	unsigned int gup_flags = FOLL_GET;
+
+	if (write)
+		gup_flags |= FOLL_WRITE;
+
+	start = untagged_addr(start) & PAGE_MASK;
+	len = (unsigned long) nr_pages << PAGE_SHIFT;
+	end = start + len;
+
+	if (end <= start)
+		return 0;
+	if (unlikely(!access_ok((void __user *)start, len)))
+		return 0;
+
+	/*
+	 * Disable interrupts.  We use the nested form as we can already have
+	 * interrupts disabled by get_futex_key.
+	 *
+	 * With interrupts disabled, we block page table pages from being
+	 * freed from under us. See struct mmu_table_batch comments in
+	 * include/asm-generic/tlb.h for more details.
+	 *
+	 * We do not adopt an rcu_read_lock(.) here as we also want to
+	 * block IPIs that come from THPs splitting.
+	 */
+
+	if (IS_ENABLED(CONFIG_HAVE_FAST_GUP) &&
+	    gup_fast_permitted(start, end)) {
+		local_irq_save(flags);
+		gup_pgd_range(start, end, gup_flags, pages, &nr_pinned);
+		local_irq_restore(flags);
+	}
+
+	return nr_pinned;
+}
+EXPORT_SYMBOL_GPL(__get_user_pages_fast);
+
 /**
  * get_user_pages_fast() - pin user pages in memory
  * @start:      starting user address
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
