Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC69264598
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 13:59:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D436E912;
	Thu, 10 Sep 2020 11:59:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8633C6E912
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 11:59:14 +0000 (UTC)
IronPort-SDR: BomhvY5bjvYp+MA7Xu1SiriRLK9hX2BI1Av4Hhz0aWX67AnQK3bupkTYtyUaErnaHZOS2TVLSW
 SWmFE2s4xVHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="146219273"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="146219273"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 04:59:14 -0700
IronPort-SDR: gYbbv+j9xr+HmoU7hdFkaAtISNpLA/s4fnVaK8JnZ9HoF7Bdn6e0tenaDsSl4eA+IT/CmZhUo4
 F3lXX5YlyymQ==
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="449573085"
Received: from rstossel-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.254.148.251])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 04:59:10 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Sep 2020 12:58:59 +0100
Message-Id: <20200910115900.407686-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910115900.407686-1-tvrtko.ursulin@linux.intel.com>
References: <20200910115900.407686-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix DMA mapped scatterlist walks
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
Cc: Tom Murphy <murphyt7@tcd.ie>, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>, Logan Gunthorpe <logang@deltatee.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

When walking DMA mapped scatterlists sg_dma_len has to be used since it
can be different (coalesced) from the backing store entry.

This also means we have to end the walk when encountering a zero length
DMA entry and cannot rely on the normal sg list end marker.

Both issues were there in theory for some time but were hidden by the fact
Intel IOMMU driver was never coalescing entries. As there are ongoing
efforts to change this we need to start handling it.

v2:
 * Use unsigned int for local storing sg_dma_len. (Logan)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: 85d1225ec066 ("drm/i915: Introduce & use new lightweight SGL iterators")
References: b31144c0daa8 ("drm/i915: Micro-optimise gen6_ppgtt_insert_entries()")
Reported-by: Tom Murphy <murphyt7@tcd.ie>
Suggested-by: Tom Murphy <murphyt7@tcd.ie> # __sgt_iter
Suggested-by: Logan Gunthorpe <logang@deltatee.com> # __sgt_iter
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Lu Baolu <baolu.lu@linux.intel.com>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c    |  6 +++---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c    | 17 ++++++++++-------
 drivers/gpu/drm/i915/gt/intel_gtt.h     |  2 +-
 drivers/gpu/drm/i915/i915_scatterlist.h | 12 ++++++++----
 4 files changed, 22 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index fd0d24d28763..c0d17f87b00f 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -131,17 +131,17 @@ static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
 
 	vaddr = kmap_atomic_px(i915_pt_entry(pd, act_pt));
 	do {
-		GEM_BUG_ON(iter.sg->length < I915_GTT_PAGE_SIZE);
+		GEM_BUG_ON(sg_dma_len(iter.sg) < I915_GTT_PAGE_SIZE);
 		vaddr[act_pte] = pte_encode | GEN6_PTE_ADDR_ENCODE(iter.dma);
 
 		iter.dma += I915_GTT_PAGE_SIZE;
 		if (iter.dma == iter.max) {
 			iter.sg = __sg_next(iter.sg);
-			if (!iter.sg)
+			if (!iter.sg || sg_dma_len(iter.sg) == 0)
 				break;
 
 			iter.dma = sg_dma_address(iter.sg);
-			iter.max = iter.dma + iter.sg->length;
+			iter.max = iter.dma + sg_dma_len(iter.sg);
 		}
 
 		if (++act_pte == GEN6_PTES) {
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index eb64f474a78c..b236aa046f91 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -372,19 +372,19 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 	pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
 	vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
 	do {
-		GEM_BUG_ON(iter->sg->length < I915_GTT_PAGE_SIZE);
+		GEM_BUG_ON(sg_dma_len(iter->sg) < I915_GTT_PAGE_SIZE);
 		vaddr[gen8_pd_index(idx, 0)] = pte_encode | iter->dma;
 
 		iter->dma += I915_GTT_PAGE_SIZE;
 		if (iter->dma >= iter->max) {
 			iter->sg = __sg_next(iter->sg);
-			if (!iter->sg) {
+			if (!iter->sg || sg_dma_len(iter->sg) == 0) {
 				idx = 0;
 				break;
 			}
 
 			iter->dma = sg_dma_address(iter->sg);
-			iter->max = iter->dma + iter->sg->length;
+			iter->max = iter->dma + sg_dma_len(iter->sg);
 		}
 
 		if (gen8_pd_index(++idx, 0) == 0) {
@@ -413,8 +413,8 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 				   u32 flags)
 {
 	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
+	unsigned int rem = sg_dma_len(iter->sg);
 	u64 start = vma->node.start;
-	dma_addr_t rem = iter->sg->length;
 
 	GEM_BUG_ON(!i915_vm_is_4lvl(vma->vm));
 
@@ -456,7 +456,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 		}
 
 		do {
-			GEM_BUG_ON(iter->sg->length < page_size);
+			GEM_BUG_ON(sg_dma_len(iter->sg) < page_size);
 			vaddr[index++] = encode | iter->dma;
 
 			start += page_size;
@@ -467,7 +467,10 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 				if (!iter->sg)
 					break;
 
-				rem = iter->sg->length;
+				rem = sg_dma_len(iter->sg);
+				if (!rem)
+					break;
+
 				iter->dma = sg_dma_address(iter->sg);
 				iter->max = iter->dma + rem;
 
@@ -525,7 +528,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 		}
 
 		vma->page_sizes.gtt |= page_size;
-	} while (iter->sg);
+	} while (iter->sg && sg_dma_len(iter->sg));
 }
 
 static void gen8_ppgtt_insert(struct i915_address_space *vm,
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index c13c650ced22..8a33940a71f3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -580,7 +580,7 @@ static inline struct sgt_dma {
 	struct scatterlist *sg = vma->pages->sgl;
 	dma_addr_t addr = sg_dma_address(sg);
 
-	return (struct sgt_dma){ sg, addr, addr + sg->length };
+	return (struct sgt_dma){ sg, addr, addr + sg_dma_len(sg) };
 }
 
 #endif
diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h b/drivers/gpu/drm/i915/i915_scatterlist.h
index b7b59328cb76..510856887628 100644
--- a/drivers/gpu/drm/i915/i915_scatterlist.h
+++ b/drivers/gpu/drm/i915/i915_scatterlist.h
@@ -27,13 +27,17 @@ static __always_inline struct sgt_iter {
 } __sgt_iter(struct scatterlist *sgl, bool dma) {
 	struct sgt_iter s = { .sgp = sgl };
 
-	if (s.sgp) {
+	if (dma && s.sgp && sg_dma_len(s.sgp) == 0) {
+		s.sgp = NULL;
+	} else if (s.sgp) {
 		s.max = s.curr = s.sgp->offset;
-		s.max += s.sgp->length;
-		if (dma)
+		if (dma) {
 			s.dma = sg_dma_address(s.sgp);
-		else
+			s.max += sg_dma_len(s.sgp);
+		} else {
 			s.pfn = page_to_pfn(sg_page(s.sgp));
+			s.max += s.sgp->length;
+		}
 	}
 
 	return s;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
