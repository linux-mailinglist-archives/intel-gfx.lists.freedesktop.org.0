Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D465E30D992
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 13:12:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3ECA89DE5;
	Wed,  3 Feb 2021 12:12:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C42A89D89
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 12:12:07 +0000 (UTC)
IronPort-SDR: 5ZWoiSDBzdl4zk9Cq59T82eTIhxM0ZGFlFXzr9YSrtG0FnIIrW20dHvhQnkzkspu8dP1ihP/cM
 8IbG2iOawlYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="160196291"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="160196291"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 04:12:07 -0800
IronPort-SDR: 1X2euFVQ5BUSAnAEa7cfkrwmS4Eep2evS1t3JgIN1FIr/ZB2u5ZZFvmURWcdKHgFeX5xfMV53O
 6//YcBV5tVIg==
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="372359060"
Received: from mcampone-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.21.36])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 04:12:05 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 12:11:19 +0000
Message-Id: <20210203121119.481146-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210203121119.481146-1-matthew.auld@intel.com>
References: <20210203121119.481146-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/gtt/dg1: add PTE_LM plumbing for
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
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 19 ++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  3 ++-
 2 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 30187483cd92..5c78d41f6542 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -10,6 +10,7 @@
 
 #include <drm/i915_drm.h>
 
+#include "gem/i915_gem_lmem.h"
 #include "intel_gt.h"
 #include "i915_drv.h"
 #include "i915_scatterlist.h"
@@ -189,7 +190,12 @@ static u64 gen8_ggtt_pte_encode(dma_addr_t addr,
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
@@ -217,7 +223,7 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
 				     enum i915_cache_level level,
 				     u32 flags)
 {
-	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, 0);
+	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, flags);
 	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
 	gen8_pte_t __iomem *gte;
 	gen8_pte_t __iomem *end;
@@ -459,6 +465,8 @@ static void ggtt_bind_vma(struct i915_address_space *vm,
 	pte_flags = 0;
 	if (i915_gem_object_is_readonly(obj))
 		pte_flags |= PTE_READ_ONLY;
+	if (i915_gem_object_is_lmem(obj))
+		pte_flags |= PTE_LM;
 
 	vm->insert_entries(vm, vma, cache_level, pte_flags);
 	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
@@ -794,6 +802,7 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 	struct drm_i915_private *i915 = ggtt->vm.i915;
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	phys_addr_t phys_addr;
+	u32 pte_flags;
 	int ret;
 
 	/* For Modern GENs the PTEs and register space are split in the BAR */
@@ -823,9 +832,13 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
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
index 4a1d9b5cc75b..55873663d37f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -85,7 +85,8 @@ typedef u64 gen8_pte_t;
 #define BYT_PTE_SNOOPED_BY_CPU_CACHES	REG_BIT(2)
 #define BYT_PTE_WRITEABLE		REG_BIT(1)
 
-#define GEN12_PPGTT_PTE_LM (1 << 11)
+#define GEN12_GGTT_PTE_LM	(1 << 1)
+#define GEN12_PPGTT_PTE_LM	(1 << 11)
 
 /*
  * Cacheability Control is a 4-bit value. The low three bits are stored in bits
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
