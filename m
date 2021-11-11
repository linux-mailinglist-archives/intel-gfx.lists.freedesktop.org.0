Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E13C544CE7D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 01:45:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 760A86E828;
	Thu, 11 Nov 2021 00:45:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8BDD6E81A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Nov 2021 00:45:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10164"; a="212853093"
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="212853093"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 16:45:53 -0800
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="501715572"
Received: from menghsia-mobl.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.209.91.138])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 16:45:53 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Nov 2021 16:45:47 -0800
Message-Id: <20211111004549.144706-2-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211111004549.144706-1-michael.cheng@intel.com>
References: <20211111004549.144706-1-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/3] drm/i915: Introduce new macros for i915
 PTE
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
Cc: michael.cheng@intel.com, wayne.boyer@intel.com, jani.nikula@intel.com,
 lucas.demarchi@intel.com, siva.mullati@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Certain functions within i915 uses macros that are defined for
specific architectures by the mmu, such as _PAGE_RW and _PAGE_PRESENT
(Some architectures don't even have these macros defined, like ARM64).

Instead of re-using bits defined for the CPU, we should use bits
defined for i915. This patch introduces two new macros,
I915_PAGE_PRESENT and I915_PAGE_RW, to check for bits 0 and 1 and, to
replace all occurrences of _PAGE_RW and _PAGE_PRESENT within i915.

Looking at the bspecs for pre gen 12 and gen 12, bit 0 and 1 are the
same throughout the generations.

Signed-off-by: Michael Cheng <michael.cheng@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c |  6 +++---
 drivers/gpu/drm/i915/gt/intel_ggtt.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  3 +++
 drivers/gpu/drm/i915/gvt/gtt.c       | 12 ++++++------
 4 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 9966e9dc5218..f89b50ffc286 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -18,7 +18,7 @@
 static u64 gen8_pde_encode(const dma_addr_t addr,
 			   const enum i915_cache_level level)
 {
-	u64 pde = addr | _PAGE_PRESENT | _PAGE_RW;
+	u64 pde = addr | I915_PAGE_PRESENT | I915_PAGE_RW;
 
 	if (level != I915_CACHE_NONE)
 		pde |= PPAT_CACHED_PDE;
@@ -32,10 +32,10 @@ static u64 gen8_pte_encode(dma_addr_t addr,
 			   enum i915_cache_level level,
 			   u32 flags)
 {
-	gen8_pte_t pte = addr | _PAGE_PRESENT | _PAGE_RW;
+	gen8_pte_t pte = addr | I915_PAGE_PRESENT | I915_PAGE_RW;
 
 	if (unlikely(flags & PTE_READ_ONLY))
-		pte &= ~_PAGE_RW;
+		pte &= ~I915_PAGE_RW;
 
 	if (flags & PTE_LM)
 		pte |= GEN12_PPGTT_PTE_LM;
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 1fb4a03d7ac3..3f8e1ee0fbfa 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -207,7 +207,7 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
 			 enum i915_cache_level level,
 			 u32 flags)
 {
-	gen8_pte_t pte = addr | _PAGE_PRESENT;
+	gen8_pte_t pte = addr | I915_PAGE_PRESENT;
 
 	if (flags & PTE_LM)
 		pte |= GEN12_GGTT_PTE_LM;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index dfeaef680aac..fba9c0c18f4a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -39,6 +39,9 @@
 
 #define NALLOC 3 /* 1 normal, 1 for concurrent threads, 1 for preallocation */
 
+#define I915_PAGE_PRESENT BIT_ULL(0)
+#define I915_PAGE_RW BIT_ULL(1)
+
 #define I915_GTT_PAGE_SIZE_4K	BIT_ULL(12)
 #define I915_GTT_PAGE_SIZE_64K	BIT_ULL(16)
 #define I915_GTT_PAGE_SIZE_2M	BIT_ULL(21)
diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index 53d0cb327539..8f6a055854f7 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -446,17 +446,17 @@ static bool gen8_gtt_test_present(struct intel_gvt_gtt_entry *e)
 			|| e->type == GTT_TYPE_PPGTT_ROOT_L4_ENTRY)
 		return (e->val64 != 0);
 	else
-		return (e->val64 & _PAGE_PRESENT);
+		return (e->val64 & I915_PAGE_PRESENT);
 }
 
 static void gtt_entry_clear_present(struct intel_gvt_gtt_entry *e)
 {
-	e->val64 &= ~_PAGE_PRESENT;
+	e->val64 &= ~I915_PAGE_PRESENT;
 }
 
 static void gtt_entry_set_present(struct intel_gvt_gtt_entry *e)
 {
-	e->val64 |= _PAGE_PRESENT;
+	e->val64 |= I915_PAGE_PRESENT;
 }
 
 static bool gen8_gtt_test_64k_splited(struct intel_gvt_gtt_entry *e)
@@ -2439,7 +2439,7 @@ static int alloc_scratch_pages(struct intel_vgpu *vgpu,
 		/* The entry parameters like present/writeable/cache type
 		 * set to the same as i915's scratch page tree.
 		 */
-		se.val64 |= _PAGE_PRESENT | _PAGE_RW;
+		se.val64 |= I915_PAGE_PRESENT | I915_PAGE_RW;
 		if (type == GTT_TYPE_PPGTT_PDE_PT)
 			se.val64 |= PPAT_CACHED;
 
@@ -2896,7 +2896,7 @@ void intel_gvt_restore_ggtt(struct intel_gvt *gvt)
 		offset = vgpu_aperture_gmadr_base(vgpu) >> PAGE_SHIFT;
 		for (idx = 0; idx < num_low; idx++) {
 			pte = mm->ggtt_mm.host_ggtt_aperture[idx];
-			if (pte & _PAGE_PRESENT)
+			if (pte & I915_PAGE_PRESENT)
 				write_pte64(vgpu->gvt->gt->ggtt, offset + idx, pte);
 		}
 
@@ -2904,7 +2904,7 @@ void intel_gvt_restore_ggtt(struct intel_gvt *gvt)
 		offset = vgpu_hidden_gmadr_base(vgpu) >> PAGE_SHIFT;
 		for (idx = 0; idx < num_hi; idx++) {
 			pte = mm->ggtt_mm.host_ggtt_hidden[idx];
-			if (pte & _PAGE_PRESENT)
+			if (pte & I915_PAGE_PRESENT)
 				write_pte64(vgpu->gvt->gt->ggtt, offset + idx, pte);
 		}
 	}
-- 
2.25.1

