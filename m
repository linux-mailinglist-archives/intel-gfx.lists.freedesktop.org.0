Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE0230DE04
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 16:24:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 585A86EB10;
	Wed,  3 Feb 2021 15:24:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D742A6EB10
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 15:24:22 +0000 (UTC)
IronPort-SDR: nBwh1G67jA1MbG7t1bPeEq8R55YGnHZfAQ0fHonINMrc5ugio9we3osh+5ggkjYLDEz8soVWVu
 AHzYIPQp0BRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="160222537"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="160222537"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 07:24:22 -0800
IronPort-SDR: WdqYTAHdm3Q1g86sA+YEQssH2FIcmT9Rks83zjrvnRjZnebSc27UWT+Wlz8BaYLs3mfY0dM/9L
 EDK201URcTqA==
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="371515770"
Received: from mcampone-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.21.36])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 07:24:21 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 15:23:33 +0000
Message-Id: <20210203152333.511453-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210203152333.511453-1-matthew.auld@intel.com>
References: <20210203152333.511453-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/gtt/dg1: add PTE_LM plumbing
 for GGTT
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For the PTEs we get an LM bit, to signal whether the page resides in
SMEM or LMEM.

Based on a patch from Michel Thierry.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 24 +++++++++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  4 +++-
 2 files changed, 22 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index fc399ac16eda..b0b8ded834f0 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -10,6 +10,8 @@
 
 #include <drm/i915_drm.h>
 
+#include "gem/i915_gem_lmem.h"
+
 #include "intel_gt.h"
 #include "i915_drv.h"
 #include "i915_scatterlist.h"
@@ -189,7 +191,12 @@ static u64 gen8_ggtt_pte_encode(dma_addr_t addr,
 				enum i915_cache_level level,
 				u32 flags)
 {
-	return addr | _PAGE_PRESENT;
+	gen8_pte_t pte = addr | _PAGE_PRESENT;
+
+	if (flags & PTE_LM)
+		pte |= GEN12_GGTT_PTE_LM;
+
+	return pte;
 }
 
 static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
@@ -201,13 +208,13 @@ static void gen8_ggtt_insert_page(struct i915_address_space *vm,
 				  dma_addr_t addr,
 				  u64 offset,
 				  enum i915_cache_level level,
-				  u32 unused)
+				  u32 flags)
 {
 	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
 	gen8_pte_t __iomem *pte =
 		(gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
 
-	gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, 0));
+	gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
 
 	ggtt->invalidate(ggtt);
 }
@@ -217,7 +224,7 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
 				     enum i915_cache_level level,
 				     u32 flags)
 {
-	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, 0);
+	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, flags);
 	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
 	gen8_pte_t __iomem *gte;
 	gen8_pte_t __iomem *end;
@@ -459,6 +466,8 @@ static void ggtt_bind_vma(struct i915_address_space *vm,
 	pte_flags = 0;
 	if (i915_gem_object_is_readonly(obj))
 		pte_flags |= PTE_READ_ONLY;
+	if (i915_gem_object_is_lmem(obj))
+		pte_flags |= PTE_LM;
 
 	vm->insert_entries(vm, vma, cache_level, pte_flags);
 	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
@@ -794,6 +803,7 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 	struct drm_i915_private *i915 = ggtt->vm.i915;
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	phys_addr_t phys_addr;
+	u32 pte_flags;
 	int ret;
 
 	/* For Modern GENs the PTEs and register space are split in the BAR */
@@ -823,9 +833,13 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 		return ret;
 	}
 
+	pte_flags = 0;
+	if (i915_gem_object_is_lmem(ggtt->vm.scratch[0]))
+		pte_flags |= PTE_LM;
+
 	ggtt->vm.scratch[0]->encode =
 		ggtt->vm.pte_encode(px_dma(ggtt->vm.scratch[0]),
-				    I915_CACHE_NONE, 0);
+				    I915_CACHE_NONE, pte_flags);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 0eef625dd787..24b5808df16d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -85,7 +85,9 @@ typedef u64 gen8_pte_t;
 #define BYT_PTE_SNOOPED_BY_CPU_CACHES	REG_BIT(2)
 #define BYT_PTE_WRITEABLE		REG_BIT(1)
 
-#define GEN12_PPGTT_PTE_LM BIT_ULL(11)
+#define GEN12_PPGTT_PTE_LM	BIT_ULL(11)
+
+#define GEN12_GGTT_PTE_LM	BIT_ULL(1)
 
 /*
  * Cacheability Control is a 4-bit value. The low three bits are stored in bits
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
