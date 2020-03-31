Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D77851996B9
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 14:42:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 426CE6E31A;
	Tue, 31 Mar 2020 12:42:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D30F6E31A
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 12:42:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20751955-1500050 
 for multiple; Tue, 31 Mar 2020 13:42:03 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 13:42:02 +0100
Message-Id: <20200331124202.4497-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Fill all the unused space in the
 GGTT
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
Cc: Matthew Auld <matthew.auld@intel.com>, stable@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When we allocate space in the GGTT we may have to allocate a larger
region than will be populated by the object to accommodate fencing. Make
sure that this space beyond the end of the buffer points safely into
scratch space, in case the HW tries to access it anyway (e.g. fenced
access to the last tile row).

Reported-by: Imre Deak <imre.deak@intel.com>
References: https://gitlab.freedesktop.org/drm/intel/-/issues/1554
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: stable@vger.kernel.org
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index d8944dabed55..ad56059651b8 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -191,10 +191,11 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
 				     enum i915_cache_level level,
 				     u32 flags)
 {
+	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, 0);
 	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
 	struct sgt_iter sgt_iter;
-	gen8_pte_t __iomem *gtt_entries;
-	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, 0);
+	gen8_pte_t __iomem *gte;
+	gen8_pte_t __iomem *end;
 	dma_addr_t addr;
 
 	/*
@@ -202,10 +203,16 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
 	 * not to allow the user to override access to a read only page.
 	 */
 
-	gtt_entries = (gen8_pte_t __iomem *)ggtt->gsm;
-	gtt_entries += vma->node.start / I915_GTT_PAGE_SIZE;
+	gte = (gen8_pte_t __iomem *)ggtt->gsm;
+	gte += vma->node.start / I915_GTT_PAGE_SIZE;
+	end = gte + vma->node.size / I915_GTT_PAGE_SIZE;
 	for_each_sgt_daddr(addr, sgt_iter, vma->pages)
-		gen8_set_pte(gtt_entries++, pte_encode | addr);
+		gen8_set_pte(gte++, pte_encode | addr);
+	GEM_BUG_ON(gte > end);
+
+	/* Fill the allocated but "unused" space beyond the end of the buffer */
+	while (gte < end)
+		gen8_set_pte(gte++, vm->scratch[0].encode);
 
 	/*
 	 * We want to flush the TLBs only after we're certain all the PTE
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
