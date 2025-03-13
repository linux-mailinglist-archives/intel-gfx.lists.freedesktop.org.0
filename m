Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B494AA5F747
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 15:09:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48EDA10E8A5;
	Thu, 13 Mar 2025 14:09:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bLw34tfE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C33610E178
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Mar 2025 14:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741874964; x=1773410964;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=B8eAYzHrbd/omPSZqny8oQmP0kcRoQkgGbKeTHeIh6c=;
 b=bLw34tfEVDXndocb8tPSyRxsvwZW4OWHza2W7ZVowRitvWCi59Lu25wH
 LwI4Pr1G6x2vBR3Vwg7rds8K1WVGuCcoHD7VQY9HE/Xy6NMd4ZVIuagik
 okmYQB+wjESpj9Bpg7N5YxoSkAIzVowvzcB2BnYFHJvJjPxY/YlGisU1l
 NGwkvXDvcT7MuYGXPJ9+d24bs9BRAcr5d9NwARtgWnI6c7kPbHIcgKbGj
 IkM+MHvRzdGhX6R07JIieLoJdzryjAxHvmtTibtsxUuaQ6CHuP5VeGyTk
 Ot7FEeMN9Bj8AVUl4Jh7hu8ZPrEjWd2hHp+9/AS60rzWYgAUdpTFj6ock Q==;
X-CSE-ConnectionGUID: 9duZXVr2TpC+U2JeOHSPkw==
X-CSE-MsgGUID: XDDm6jUEQC+pvKGFbsGx1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42854926"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="42854926"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:08:52 -0700
X-CSE-ConnectionGUID: UP/5iOACSZGUswfXEilPrA==
X-CSE-MsgGUID: JOhkRyRZRACwzsbKFgHf0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="126138429"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 13 Mar 2025 07:08:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Mar 2025 16:08:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/10] drm/i915/ggtt: Add intel_ggtt_read_entry()
Date: Thu, 13 Mar 2025 16:08:32 +0200
Message-ID: <20250313140838.29742-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
References: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The BIOS FB takeover code wants to read out the PTEs (or at least
one of them) to figure out wher the FB is lcoated in memory.
Currently we only do that for systems with LMEMBAR, and we've
open coded the PTE decoding in the display code. Introduce a more
proper abstract interface (intel_ggtt_read_entry()) for this purpose,
and implement it for all platforms.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c      | 56 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c |  8 ++++
 drivers/gpu/drm/i915/gt/intel_gtt.h       |  6 +++
 3 files changed, 70 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index f6c59f20832f..46a5aa4ab9c8 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -289,6 +289,14 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
 	return pte;
 }
 
+static dma_addr_t gen8_ggtt_pte_decode(u64 pte, bool *is_present, bool *is_local)
+{
+	*is_present = pte & GEN8_PAGE_PRESENT;
+	*is_local = pte & GEN12_GGTT_PTE_LM;
+
+	return pte & GEN12_GGTT_PTE_ADDR_MASK;
+}
+
 static bool should_update_ggtt_with_bind(struct i915_ggtt *ggtt)
 {
 	struct intel_gt *gt = ggtt->vm.gt;
@@ -435,6 +443,11 @@ static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
 	writeq(pte, addr);
 }
 
+static gen8_pte_t gen8_get_pte(void __iomem *addr)
+{
+	return readq(addr);
+}
+
 static void gen8_ggtt_insert_page(struct i915_address_space *vm,
 				  dma_addr_t addr,
 				  u64 offset,
@@ -450,6 +463,16 @@ static void gen8_ggtt_insert_page(struct i915_address_space *vm,
 	ggtt->invalidate(ggtt);
 }
 
+static dma_addr_t gen8_ggtt_read_entry(struct i915_address_space *vm,
+				       u64 offset, bool *is_present, bool *is_local)
+{
+	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
+	gen8_pte_t __iomem *pte =
+		(gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
+
+	return ggtt->vm.pte_decode(gen8_get_pte(pte), is_present, is_local);
+}
+
 static void gen8_ggtt_insert_page_bind(struct i915_address_space *vm,
 				       dma_addr_t addr, u64 offset,
 				       unsigned int pat_index, u32 flags)
@@ -605,6 +628,17 @@ static void gen6_ggtt_insert_page(struct i915_address_space *vm,
 	ggtt->invalidate(ggtt);
 }
 
+static dma_addr_t gen6_ggtt_read_entry(struct i915_address_space *vm,
+				       u64 offset,
+				       bool *is_present, bool *is_local)
+{
+	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
+	gen6_pte_t __iomem *pte =
+		(gen6_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
+
+	return vm->pte_decode(ioread32(pte), is_present, is_local);
+}
+
 /*
  * Binds an object into the global gtt with the specified cache level.
  * The object will be accessible to the GPU via commands whose operands
@@ -769,6 +803,14 @@ void intel_ggtt_unbind_vma(struct i915_address_space *vm,
 	vm->clear_range(vm, vma_res->start, vma_res->vma_size);
 }
 
+dma_addr_t intel_ggtt_read_entry(struct i915_address_space *vm,
+				 u64 offset, bool *is_present, bool *is_local)
+{
+	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
+
+	return ggtt->vm.read_entry(vm, offset, is_present, is_local);
+}
+
 /*
  * Reserve the top of the GuC address space for firmware images. Addresses
  * beyond GUC_GGTT_TOP in the GuC address space are inaccessible by GuC,
@@ -1245,6 +1287,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	ggtt->vm.scratch_range = gen8_ggtt_clear_range;
 
 	ggtt->vm.insert_entries = gen8_ggtt_insert_entries;
+	ggtt->vm.read_entry = gen8_ggtt_read_entry;
 
 	/*
 	 * Serialize GTT updates with aperture access on BXT if VT-d is on,
@@ -1291,6 +1334,8 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	else
 		ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
 
+	ggtt->vm.pte_decode = gen8_ggtt_pte_decode;
+
 	return ggtt_probe_common(ggtt, size);
 }
 
@@ -1390,6 +1435,14 @@ static u64 iris_pte_encode(dma_addr_t addr,
 	return pte;
 }
 
+static dma_addr_t gen6_pte_decode(u64 pte, bool *is_present, bool *is_local)
+{
+	*is_present = pte & GEN6_PTE_VALID;
+	*is_local = false;
+
+	return ((pte & 0xff0) << 28) | (pte & ~0xfff);
+}
+
 static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 {
 	struct drm_i915_private *i915 = ggtt->vm.i915;
@@ -1428,6 +1481,7 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 	ggtt->vm.scratch_range = gen6_ggtt_clear_range;
 	ggtt->vm.insert_page = gen6_ggtt_insert_page;
 	ggtt->vm.insert_entries = gen6_ggtt_insert_entries;
+	ggtt->vm.read_entry = gen6_ggtt_read_entry;
 	ggtt->vm.cleanup = gen6_gmch_remove;
 
 	ggtt->invalidate = gen6_ggtt_invalidate;
@@ -1443,6 +1497,8 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 	else
 		ggtt->vm.pte_encode = snb_pte_encode;
 
+	ggtt->vm.pte_decode = gen6_pte_decode;
+
 	ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
 	ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c b/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
index 59eed0a0ce90..c5f5f0bdfb2c 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
@@ -27,6 +27,13 @@ static void gmch_ggtt_insert_page(struct i915_address_space *vm,
 	intel_gmch_gtt_insert_page(addr, offset >> PAGE_SHIFT, flags);
 }
 
+static dma_addr_t gmch_ggtt_read_entry(struct i915_address_space *vm,
+				       u64 offset, bool *is_present, bool *is_local)
+{
+	return intel_gmch_gtt_read_entry(offset >> PAGE_SHIFT,
+					 is_present, is_local);
+}
+
 static void gmch_ggtt_insert_entries(struct i915_address_space *vm,
 				     struct i915_vma_resource *vma_res,
 				     unsigned int pat_index,
@@ -103,6 +110,7 @@ int intel_ggtt_gmch_probe(struct i915_ggtt *ggtt)
 	ggtt->vm.insert_entries = gmch_ggtt_insert_entries;
 	ggtt->vm.clear_range = gmch_ggtt_clear_range;
 	ggtt->vm.scratch_range = gmch_ggtt_clear_range;
+	ggtt->vm.read_entry = gmch_ggtt_read_entry;
 	ggtt->vm.cleanup = gmch_ggtt_remove;
 
 	ggtt->invalidate = gmch_ggtt_invalidate;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 0a36ea751b63..9d3a3ad567a0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -312,6 +312,7 @@ struct i915_address_space {
 	u64 (*pte_encode)(dma_addr_t addr,
 			  unsigned int pat_index,
 			  u32 flags); /* Create a valid PTE */
+	dma_addr_t (*pte_decode)(u64 pte, bool *is_present, bool *is_local);
 #define PTE_READ_ONLY	BIT(0)
 #define PTE_LM		BIT(1)
 
@@ -340,6 +341,8 @@ struct i915_address_space {
 				   struct i915_vma_resource *vma_res,
 				   unsigned int pat_index,
 				   u32 flags);
+	dma_addr_t (*read_entry)(struct i915_address_space *vm,
+				 u64 offset, bool *is_present, bool *is_local);
 	void (*cleanup)(struct i915_address_space *vm);
 
 	void (*foreach)(struct i915_address_space *vm,
@@ -590,6 +593,9 @@ void intel_ggtt_bind_vma(struct i915_address_space *vm,
 void intel_ggtt_unbind_vma(struct i915_address_space *vm,
 			   struct i915_vma_resource *vma_res);
 
+dma_addr_t intel_ggtt_read_entry(struct i915_address_space *vm,
+				 u64 offset, bool *is_present, bool *is_local);
+
 int i915_ggtt_probe_hw(struct drm_i915_private *i915);
 int i915_ggtt_init_hw(struct drm_i915_private *i915);
 int i915_ggtt_enable_hw(struct drm_i915_private *i915);
-- 
2.45.3

