Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6126421B491
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:01:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D80D96EC20;
	Fri, 10 Jul 2020 12:01:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E68976EC20
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:01:16 +0000 (UTC)
IronPort-SDR: SgyuMJvxfW/xi7ij4J+rBpfB9VZMdCMOkEpc1tfpHLAieomJFQXxeGQrp7mWhd/wnMPgCNldiF
 EQgyacaXgWMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209716795"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="209716795"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:16 -0700
IronPort-SDR: vyUtoMD+u6HEFm/0pXk4vO1733qR07ifZsyvWedogkm3+WxV5dKIxyWcfQnFBE7THmqvLwLeRH
 qgqoNzZmP2vQ==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458258265"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:12 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:46 +0100
Message-Id: <20200710115757.290984-50-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 49/60] drm/i915: add i915_gem_object_is_devmem()
 function
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Chris P Wilson <chris.p.wilson@intel.com>, Neel Desai <neel.desai@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: CQ Tang <cq.tang@intel.com>

We have three memory region types: INTEL_SMEM, INTEL_LMEM, and
INTEL_STOLEN. We also have two types of memory:	system memory
and device memory (or called local memory).

Memory region with type INTEL_SMEM only has system memory; the
other two types of memory regions could have either system memory
or device memory.

This function is used to distinguish real local device memory or
system memory (including fake local memmory and bios stolen system
memory) for INTEL_LMEM and INTEL_STOLEN memory region type.

PPGTT will program PTE_LM bit based on this value.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Cc: Chris P Wilson <chris.p.wilson@intel.com>
Cc: Francesco Balestrieri <francesco.balestrieri@intel.com>
Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Cc: Venkata S Dhanalakota <venkata.s.dhanalakota@intel.com>
Cc: Neel Desai <neel.desai@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Signed-off-by: CQ Tang <cq.tang@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c   | 11 ++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_lmem.h   |  1 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_ppgtt.c      |  2 +-
 drivers/gpu/drm/i915/intel_memory_region.h |  1 +
 drivers/gpu/drm/i915/intel_region_lmem.c   |  3 +++
 6 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
index e324328639d2..c719f6b5e785 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
@@ -217,7 +217,16 @@ i915_gem_object_lmem_io_map_page_atomic(struct drm_i915_gem_object *obj,
 
 bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj)
 {
-	return obj->ops == &i915_gem_lmem_obj_ops;
+	struct intel_memory_region *region = obj->mm.region;
+
+	return region && (region->is_devmem || region->type == INTEL_MEMORY_LOCAL);
+}
+
+bool i915_gem_object_is_devmem(struct drm_i915_gem_object *obj)
+{
+	struct intel_memory_region *region = obj->mm.region;
+
+	return region && region->is_devmem;
 }
 
 struct drm_i915_gem_object *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
index a24d94bc380f..a1b6a10050bf 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
@@ -21,6 +21,7 @@ i915_gem_object_lmem_io_map_page_atomic(struct drm_i915_gem_object *obj,
 					unsigned long n);
 
 bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj);
+bool i915_gem_object_is_devmem(struct drm_i915_gem_object *obj);
 
 struct drm_i915_gem_object *
 i915_gem_object_create_lmem(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 138546610f1f..a693278a9578 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -457,7 +457,7 @@ static int ggtt_bind_vma(struct i915_address_space *vm,
 	pte_flags = 0;
 	if (vma->vm->has_read_only && i915_gem_object_is_readonly(obj))
 		pte_flags |= PTE_READ_ONLY;
-	if (i915_gem_object_is_lmem(obj))
+	if (i915_gem_object_is_devmem(obj))
 		pte_flags |= PTE_LM;
 
 	vm->insert_entries(vm, vma, cache_level, pte_flags);
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index e79c93b662c5..30d0c7281f79 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -177,7 +177,7 @@ int ppgtt_bind_vma(struct i915_address_space *vm,
 	pte_flags = 0;
 	if (i915_gem_object_is_readonly(vma->obj))
 		pte_flags |= PTE_READ_ONLY;
-	if (i915_gem_object_is_lmem(vma->obj))
+	if (i915_gem_object_is_devmem(vma->obj))
 		pte_flags |= PTE_LM;
 
 	vm->insert_entries(vm, vma, cache_level, pte_flags);
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 83241b47e923..334ef0e3a792 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -91,6 +91,7 @@ struct intel_memory_region {
 	u16 instance;
 	enum intel_region_id id;
 	char name[8];
+	bool is_devmem;	/* true for device memory */
 
 	dma_addr_t remap_addr;
 
diff --git a/drivers/gpu/drm/i915/intel_region_lmem.c b/drivers/gpu/drm/i915/intel_region_lmem.c
index 3a8997fd832d..46a2aa468054 100644
--- a/drivers/gpu/drm/i915/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/intel_region_lmem.c
@@ -70,6 +70,9 @@ setup_lmem(struct drm_i915_private *dev_priv)
 			 (u64)mem->io_start);
 		DRM_INFO("Intel graphics LMEM size: %llx\n",
 			 (u64)lmem_size);
+
+		/* this is real device memory */
+		mem->is_devmem = true;
 	}
 
 	return mem;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
