Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9871A643D99
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 08:23:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17C1A10E105;
	Tue,  6 Dec 2022 07:23:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9C2E10E0F7
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 07:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670311377; x=1701847377;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PujUksDDcj2+PYzfbPFwa5yXUoclrmeX8Nr7x0LxITw=;
 b=j8oF3JlpQjEIu7ByOZLMG0ayXIFwHyCwl087PPPDG/vuILc70K3EK5sY
 vAozqxmooh1IvT1HM/mDyyAbujYn0V43+rHmq1QY8nz1UyBYOv8/hUFM1
 CO/Eya+RNf3QSmOCR23oFGSRkxcxoFGD2W5CTQ7bULogOI/XV8/yoml4W
 3Pbd4AtRnDm2r8GInEQeznGH504FtNm0G/oWInmGqtHWT6p17PnQg6A5A
 ljWZXws1s6amcKFOGD0FSS/QYXfP4WGZNQi7LLUAPxBTa9HMOsJ1IRO3T
 xFN3LRmTHhgYOI50yNxSuoJyhlQDK/xq6RnRT6KXjrB3Oq/id196Vc9G/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="296247441"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="296247441"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 23:22:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="788379392"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="788379392"
Received: from aravind-dev.iind.intel.com ([10.145.162.80])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 23:22:56 -0800
From: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 13:07:28 +0530
Message-Id: <6f0bec943061dfa4604e3c479f44e98169ebd082.1670311877.git.aravind.iddamsetty@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
References: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/mtl: Define new PTE encode for MTL
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a separate PTE encode function for MTL. The number of PAT registers
have increased to 16 on MTL. All 16 PAT registers are available for
PPGTT mapped pages, but only the lower 4 are available for GGTT mapped
pages.

BSPEC: 63884

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Co-developed-by: Fei Yang <fei.yang@intel.com>
Signed-off-by: Fei Yang <fei.yang@intel.com>
Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 33 +++++++++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.h |  4 ++++
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 32 ++++++++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_gtt.h  | 13 +++++++++--
 4 files changed, 78 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 31e838eee2ef..4197b43150cc 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -55,6 +55,34 @@ static u64 gen8_pte_encode(dma_addr_t addr,
 	return pte;
 }
 
+static u64 mtl_pte_encode(dma_addr_t addr,
+			  enum i915_cache_level level,
+			  u32 flags)
+{
+	gen8_pte_t pte = addr | GEN8_PAGE_PRESENT | GEN8_PAGE_RW;
+
+	if (unlikely(flags & PTE_READ_ONLY))
+		pte &= ~GEN8_PAGE_RW;
+
+	if (flags & PTE_LM)
+		pte |= GEN12_PPGTT_PTE_LM | GEN12_PPGTT_PTE_NC;
+
+	switch (level) {
+	case I915_CACHE_NONE:
+		pte |= GEN12_PPGTT_PTE_PAT1;
+		break;
+	case I915_CACHE_LLC:
+	case I915_CACHE_L3_LLC:
+		pte |= GEN12_PPGTT_PTE_PAT0 | GEN12_PPGTT_PTE_PAT1;
+		break;
+	case I915_CACHE_WT:
+		pte |= GEN12_PPGTT_PTE_PAT0;
+		break;
+	}
+
+	return pte;
+}
+
 static void gen8_ppgtt_notify_vgt(struct i915_ppgtt *ppgtt, bool create)
 {
 	struct drm_i915_private *i915 = ppgtt->vm.i915;
@@ -963,7 +991,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
 	 */
 	ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
 
-	ppgtt->vm.pte_encode = gen8_pte_encode;
+	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
+		ppgtt->vm.pte_encode = mtl_pte_encode;
+	else
+		ppgtt->vm.pte_encode = gen8_pte_encode;
 
 	ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
 	ppgtt->vm.insert_entries = gen8_ppgtt_insert;
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
index f541d19264b4..c48f1fc32909 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
@@ -19,4 +19,8 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
 			 enum i915_cache_level level,
 			 u32 flags);
 
+u64 mtl_ggtt_pte_encode(dma_addr_t addr,
+			enum i915_cache_level level,
+			u32 flags);
+
 #endif
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 82203ad85b0e..3b6f1f6f780a 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -246,6 +246,33 @@ static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
 	}
 }
 
+u64 mtl_ggtt_pte_encode(dma_addr_t addr,
+			enum i915_cache_level level,
+			u32 flags)
+{
+	gen8_pte_t pte = addr | GEN8_PAGE_PRESENT;
+
+	GEM_BUG_ON(addr & ~GEN12_GGTT_PTE_ADDR_MASK);
+
+	if (flags & PTE_LM)
+		pte |= GEN12_GGTT_PTE_LM;
+
+	switch (level) {
+	case I915_CACHE_NONE:
+		pte |= MTL_GGTT_PTE_PAT1;
+		break;
+	case I915_CACHE_LLC:
+	case I915_CACHE_L3_LLC:
+		pte |= MTL_GGTT_PTE_PAT0 | MTL_GGTT_PTE_PAT1;
+		break;
+	case I915_CACHE_WT:
+		pte |= MTL_GGTT_PTE_PAT0;
+		break;
+	}
+
+	return pte;
+}
+
 u64 gen8_ggtt_pte_encode(dma_addr_t addr,
 			 enum i915_cache_level level,
 			 u32 flags)
@@ -993,7 +1020,10 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
 	ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
 
-	ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
+		ggtt->vm.pte_encode = mtl_ggtt_pte_encode;
+	else
+		ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
 
 	return ggtt_probe_common(ggtt, size);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 8a3e0a6793dd..4bb7a4005452 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -88,9 +88,18 @@ typedef u64 gen8_pte_t;
 #define BYT_PTE_SNOOPED_BY_CPU_CACHES	REG_BIT(2)
 #define BYT_PTE_WRITEABLE		REG_BIT(1)
 
+#define GEN12_PPGTT_PTE_PAT3    BIT_ULL(62)
 #define GEN12_PPGTT_PTE_LM	BIT_ULL(11)
-
-#define GEN12_GGTT_PTE_LM	BIT_ULL(1)
+#define GEN12_PPGTT_PTE_PAT2    BIT_ULL(7)
+#define GEN12_PPGTT_PTE_NC      BIT_ULL(5)
+#define GEN12_PPGTT_PTE_PAT1    BIT_ULL(4)
+#define GEN12_PPGTT_PTE_PAT0    BIT_ULL(3)
+
+#define GEN12_GGTT_PTE_LM		BIT_ULL(1)
+#define MTL_GGTT_PTE_PAT0		BIT_ULL(52)
+#define MTL_GGTT_PTE_PAT1		BIT_ULL(53)
+#define GEN12_GGTT_PTE_ADDR_MASK	GENMASK_ULL(45, 12)
+#define MTL_GGTT_PTE_PAT_MASK		GENMASK_ULL(53, 52)
 
 #define GEN12_PDE_64K BIT(6)
 #define GEN12_PTE_PS64 BIT(8)
-- 
2.25.1

