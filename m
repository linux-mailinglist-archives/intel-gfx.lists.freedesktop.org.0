Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10229206E8D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 10:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D2096E17C;
	Wed, 24 Jun 2020 08:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B526789F49
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 08:03:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21599198-1500050 
 for multiple; Wed, 24 Jun 2020 09:02:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: linux-mm@kvack.org
Date: Wed, 24 Jun 2020 09:02:47 +0100
Message-Id: <20200624080248.3701-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] mm/mmu_notifier: Mark up direct reclaim
 paths with MAYFAIL
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
Cc: Jason Gunthorpe <jgg@ziepe.ca>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When direct reclaim enters the shrinker and tries to reclaim pages, it
has to opportunitically unmap them [try_to_unmap_one]. For direct
reclaim, the calling context is unknown and may include attempts to
unmap one page of a dma object while attempting to allocate more pages
for that object. Pass the information along that we are inside an
opportunistic unmap that can allow that page to remain referenced and
mapped, and let the callback opt in to avoiding a recursive wait.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andrew Morton <akpm@linux-foundation.org>
CC: Jason Gunthorpe <jgg@ziepe.ca>
---
 include/linux/mmu_notifier.h | 15 ++++++++++++++-
 mm/mmu_notifier.c            |  3 +++
 mm/rmap.c                    |  5 +++--
 3 files changed, 20 insertions(+), 3 deletions(-)

diff --git a/include/linux/mmu_notifier.h b/include/linux/mmu_notifier.h
index fc68f3570e19..ee1ad008951c 100644
--- a/include/linux/mmu_notifier.h
+++ b/include/linux/mmu_notifier.h
@@ -48,7 +48,8 @@ enum mmu_notifier_event {
 	MMU_NOTIFY_RELEASE,
 };
 
-#define MMU_NOTIFIER_RANGE_BLOCKABLE (1 << 0)
+#define MMU_NOTIFIER_RANGE_BLOCKABLE	BIT(0)
+#define MMU_NOTIFIER_RANGE_MAYFAIL	BIT(1)
 
 struct mmu_notifier_ops {
 	/*
@@ -169,6 +170,12 @@ struct mmu_notifier_ops {
 	 * a non-blocking behavior then the same applies to
 	 * invalidate_range_end.
 	 *
+	 * If mayfail is set then the callback may return -EAGAIN while still
+	 * holding its page references. This flag is set inside direct
+	 * reclaim paths that are opportunistically trying to unmap pages
+	 * from unknown contexts. The callback must be prepared to handle
+	 * the matching invalidate_range_end even after failing the
+	 * invalidate_range_start.
 	 */
 	int (*invalidate_range_start)(struct mmu_notifier *subscription,
 				      const struct mmu_notifier_range *range);
@@ -397,6 +404,12 @@ mmu_notifier_range_blockable(const struct mmu_notifier_range *range)
 	return (range->flags & MMU_NOTIFIER_RANGE_BLOCKABLE);
 }
 
+static inline bool
+mmu_notifier_range_mayfail(const struct mmu_notifier_range *range)
+{
+	return (range->flags & MMU_NOTIFIER_RANGE_MAYFAIL);
+}
+
 static inline void mmu_notifier_release(struct mm_struct *mm)
 {
 	if (mm_has_notifiers(mm))
diff --git a/mm/mmu_notifier.c b/mm/mmu_notifier.c
index 352bb9f3ecc0..95b89cee7af4 100644
--- a/mm/mmu_notifier.c
+++ b/mm/mmu_notifier.c
@@ -493,6 +493,9 @@ static int mn_hlist_invalidate_range_start(
 			_ret = ops->invalidate_range_start(subscription, range);
 			if (!mmu_notifier_range_blockable(range))
 				non_block_end();
+			if (_ret == -EAGAIN &&
+			    mmu_notifier_range_mayfail(range))
+				_ret = 0;
 			if (_ret) {
 				pr_info("%pS callback failed with %d in %sblockable context.\n",
 					ops->invalidate_range_start, _ret,
diff --git a/mm/rmap.c b/mm/rmap.c
index 5fe2dedce1fc..912b737a3353 100644
--- a/mm/rmap.c
+++ b/mm/rmap.c
@@ -1406,8 +1406,9 @@ static bool try_to_unmap_one(struct page *page, struct vm_area_struct *vma,
 	 * Note that the page can not be free in this function as call of
 	 * try_to_unmap() must hold a reference on the page.
 	 */
-	mmu_notifier_range_init(&range, MMU_NOTIFY_CLEAR, 0, vma, vma->vm_mm,
-				address,
+	mmu_notifier_range_init(&range,
+				MMU_NOTIFY_CLEAR, MMU_NOTIFIER_RANGE_MAYFAIL,
+				vma, vma->vm_mm, address,
 				min(vma->vm_end, address + page_size(page)));
 	if (PageHuge(page)) {
 		/*
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
