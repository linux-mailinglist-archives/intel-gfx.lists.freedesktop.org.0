Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7B230DE03
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 16:24:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071386EB0B;
	Wed,  3 Feb 2021 15:24:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 454A46EB0B
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 15:24:21 +0000 (UTC)
IronPort-SDR: KKZa6tZk7dstg9HVNsSCPLyZ9/HW1FnCU7NNAqBEc6ew8TSF7dP/7EmBUT0CuxFqC305YhSEsS
 t4f/arA1GtXg==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="160222536"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="160222536"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 07:24:21 -0800
IronPort-SDR: DsF+XJtFDvMn+XsvunYNBCXt+Q+VIXRkmZVeh5TvRa6S/wc02DiKFkxHcnqZgffCwW21uJMNLa
 NX/bAXZiTicg==
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="371515764"
Received: from mcampone-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.21.36])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 07:24:19 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 15:23:32 +0000
Message-Id: <20210203152333.511453-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210203152333.511453-1-matthew.auld@intel.com>
References: <20210203152333.511453-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/3] drm/i915/gtt/dg1: add PTE_LM plumbing
 for ppGTT
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

v2: just use gen8_pte_encode for dg1

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c  | 12 +++++++++++-
 drivers/gpu/drm/i915/gt/intel_gtt.h   |  3 +++
 drivers/gpu/drm/i915/gt/intel_ppgtt.c |  4 ++++
 3 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 03a9d4396373..176c19633412 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -5,6 +5,8 @@
 
 #include <linux/log2.h>
 
+#include "gem/i915_gem_lmem.h"
+
 #include "gen8_ppgtt.h"
 #include "i915_scatterlist.h"
 #include "i915_trace.h"
@@ -35,6 +37,9 @@ static u64 gen8_pte_encode(dma_addr_t addr,
 	if (unlikely(flags & PTE_READ_ONLY))
 		pte &= ~_PAGE_RW;
 
+	if (flags & PTE_LM)
+		pte |= GEN12_PPGTT_PTE_LM;
+
 	switch (level) {
 	case I915_CACHE_NONE:
 		pte |= PPAT_UNCACHED;
@@ -558,6 +563,7 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
 
 static int gen8_init_scratch(struct i915_address_space *vm)
 {
+	u32 pte_flags;
 	int ret;
 	int i;
 
@@ -581,9 +587,13 @@ static int gen8_init_scratch(struct i915_address_space *vm)
 	if (ret)
 		return ret;
 
+	pte_flags = vm->has_read_only;
+	if (i915_gem_object_is_lmem(vm->scratch[0]))
+		pte_flags |= PTE_LM;
+
 	vm->scratch[0]->encode =
 		gen8_pte_encode(px_dma(vm->scratch[0]),
-				I915_CACHE_LLC, vm->has_read_only);
+				I915_CACHE_LLC, pte_flags);
 
 	for (i = 1; i <= vm->top; i++) {
 		struct drm_i915_gem_object *obj;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 29c10fde8ce3..0eef625dd787 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -85,6 +85,8 @@ typedef u64 gen8_pte_t;
 #define BYT_PTE_SNOOPED_BY_CPU_CACHES	REG_BIT(2)
 #define BYT_PTE_WRITEABLE		REG_BIT(1)
 
+#define GEN12_PPGTT_PTE_LM BIT_ULL(11)
+
 /*
  * Cacheability Control is a 4-bit value. The low three bits are stored in bits
  * 3:1 of the PTE, while the fourth bit is stored in bit 11 of the PTE.
@@ -264,6 +266,7 @@ struct i915_address_space {
 			  enum i915_cache_level level,
 			  u32 flags); /* Create a valid PTE */
 #define PTE_READ_ONLY	BIT(0)
+#define PTE_LM		BIT(1)
 
 	void (*allocate_va_range)(struct i915_address_space *vm,
 				  struct i915_vm_pt_stash *stash,
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index 3f940ae27028..a91955af50a6 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -5,6 +5,8 @@
 
 #include <linux/slab.h>
 
+#include "gem/i915_gem_lmem.h"
+
 #include "i915_trace.h"
 #include "intel_gtt.h"
 #include "gen6_ppgtt.h"
@@ -192,6 +194,8 @@ void ppgtt_bind_vma(struct i915_address_space *vm,
 	pte_flags = 0;
 	if (i915_gem_object_is_readonly(vma->obj))
 		pte_flags |= PTE_READ_ONLY;
+	if (i915_gem_object_is_lmem(vma->obj))
+		pte_flags |= PTE_LM;
 
 	vm->insert_entries(vm, vma, cache_level, pte_flags);
 	wmb();
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
