Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 093107130F8
	for <lists+intel-gfx@lfdr.de>; Sat, 27 May 2023 02:53:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E45110E206;
	Sat, 27 May 2023 00:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E096B10E205;
 Sat, 27 May 2023 00:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685148778; x=1716684778;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ymtrLjKmAywlPytAqQ+KJOYgTTP2qm8f6txLj8yY4OI=;
 b=WL3RUry1Qpz4Uf7TToxtck2jCkGtoq2RtYKmCTMiuYPjZ6w5UhUNiDHQ
 zbyf4kMv+NrgyhalmhD3r1DnLNq4fBvSumzq0mYF1YN2Usik2iNpEnq2m
 mNcBcciL2/d5GJZm6HdD9k+JL/LLZXq4RtsYge1bBPhraRvpbesPZv6DX
 PVGuPKza4SVUlZJjeeNQ+4BfFIoPnQf1vGm1rrnzFcCtqiYbQ7LSvOgzS
 lkjg6ds7PlIiuBTyMJ6T6JEZyRidm/RjDDGiaGJxmK840Qsgtatjnt1nG
 Yi9g6NEUomzLHfutnsnemgVxgjN3mhavOWVXBkqY5RJ4bkXAYULx1SufZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="440698929"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="440698929"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 17:52:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="736191829"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="736191829"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 17:52:57 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 17:52:36 -0700
Message-Id: <20230527005242.1346093-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230527005242.1346093-1-daniele.ceraolospurio@intel.com>
References: <20230527005242.1346093-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/7] drm/i915/uc: perma-pin firmwares
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that each FW has its own reserved area, we can keep them always
pinned and skip the pin/unpin dance on reset. This will make things
easier for the 2-step HuC authentication, which requires the FW to be
pinned in GGTT after the xfer is completed.
Since the vma is now valid for a long time and not just for the quick
pin-load-unpin dance, the name "dummy" is no longer appropriare and has
been replaced with vma_res. All the functions have also been updated to
operate on vma_res for consistency.
Given that we pin the vma behind the allocator's back (which is ok
because we do the pinning in an area that was previously reserved for
thus purpose), we do need to explicitly re-pin on resume because the
automated helper won't cover us.

v2: better comments and commit message, s/dummy/vma_res/

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c      |  3 ++
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c |  7 +++-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c    |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc.c    |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c     |  8 ++++
 drivers/gpu/drm/i915/gt/uc/intel_uc.h     |  2 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c  | 50 ++++++++++++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h  | 22 ++++++----
 8 files changed, 71 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 2a7942fac798..f4e8aa8246e8 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1326,6 +1326,9 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
 		ggtt->vm.scratch_range(&ggtt->vm, ggtt->error_capture.start,
 				       ggtt->error_capture.size);
 
+	list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
+		intel_uc_resume_mappings(&gt->uc);
+
 	ggtt->invalidate(ggtt);
 
 	if (flush)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
index fb0984f875f9..b26f493f86fa 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
@@ -90,7 +90,12 @@ void intel_gsc_uc_init_early(struct intel_gsc_uc *gsc)
 {
 	struct intel_gt *gt = gsc_uc_to_gt(gsc);
 
-	intel_uc_fw_init_early(&gsc->fw, INTEL_UC_FW_TYPE_GSC);
+	/*
+	 * GSC FW needs to be copied to a dedicated memory allocations for
+	 * loading (see gsc->local), so we don't need to GGTT map the FW image
+	 * itself into GGTT.
+	 */
+	intel_uc_fw_init_early(&gsc->fw, INTEL_UC_FW_TYPE_GSC, false);
 	INIT_WORK(&gsc->work, gsc_work);
 
 	/* we can arrive here from i915_driver_early_probe for primary
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index c9f20385f6a0..2eb891b270ae 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -164,7 +164,7 @@ void intel_guc_init_early(struct intel_guc *guc)
 	struct intel_gt *gt = guc_to_gt(guc);
 	struct drm_i915_private *i915 = gt->i915;
 
-	intel_uc_fw_init_early(&guc->fw, INTEL_UC_FW_TYPE_GUC);
+	intel_uc_fw_init_early(&guc->fw, INTEL_UC_FW_TYPE_GUC, true);
 	intel_guc_ct_init_early(&guc->ct);
 	intel_guc_log_init_early(&guc->log);
 	intel_guc_submission_init_early(guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index 04724ff56ded..268e036f8f28 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -276,7 +276,7 @@ void intel_huc_init_early(struct intel_huc *huc)
 	struct drm_i915_private *i915 = huc_to_gt(huc)->i915;
 	struct intel_gt *gt = huc_to_gt(huc);
 
-	intel_uc_fw_init_early(&huc->fw, INTEL_UC_FW_TYPE_HUC);
+	intel_uc_fw_init_early(&huc->fw, INTEL_UC_FW_TYPE_HUC, true);
 
 	/*
 	 * we always init the fence as already completed, even if HuC is not
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index c8b9cbb7ba3a..1e7f5cc9d550 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -700,6 +700,12 @@ void intel_uc_suspend(struct intel_uc *uc)
 	}
 }
 
+static void __uc_resume_mappings(struct intel_uc *uc)
+{
+	intel_uc_fw_resume_mapping(&uc->guc.fw);
+	intel_uc_fw_resume_mapping(&uc->huc.fw);
+}
+
 static int __uc_resume(struct intel_uc *uc, bool enable_communication)
 {
 	struct intel_guc *guc = &uc->guc;
@@ -767,4 +773,6 @@ static const struct intel_uc_ops uc_ops_on = {
 
 	.init_hw = __uc_init_hw,
 	.fini_hw = __uc_fini_hw,
+
+	.resume_mappings = __uc_resume_mappings,
 };
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index d585524d94de..014bb7d83689 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -24,6 +24,7 @@ struct intel_uc_ops {
 	void (*fini)(struct intel_uc *uc);
 	int (*init_hw)(struct intel_uc *uc);
 	void (*fini_hw)(struct intel_uc *uc);
+	void (*resume_mappings)(struct intel_uc *uc);
 };
 
 struct intel_uc {
@@ -114,6 +115,7 @@ intel_uc_ops_function(init, init, int, 0);
 intel_uc_ops_function(fini, fini, void, );
 intel_uc_ops_function(init_hw, init_hw, int, 0);
 intel_uc_ops_function(fini_hw, fini_hw, void, );
+intel_uc_ops_function(resume_mappings, resume_mappings, void, );
 #undef intel_uc_ops_function
 
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index dc5c96c503a9..31776c279f32 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -471,12 +471,14 @@ static void __uc_fw_user_override(struct drm_i915_private *i915, struct intel_uc
  * intel_uc_fw_init_early - initialize the uC object and select the firmware
  * @uc_fw: uC firmware
  * @type: type of uC
+ * @needs_ggtt_mapping: whether the FW needs to be GGTT mapped for loading
  *
  * Initialize the state of our uC object and relevant tracking and select the
  * firmware to fetch and load.
  */
 void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
-			    enum intel_uc_fw_type type)
+			    enum intel_uc_fw_type type,
+			    bool needs_ggtt_mapping)
 {
 	struct intel_gt *gt = ____uc_fw_to_gt(uc_fw, type);
 	struct drm_i915_private *i915 = gt->i915;
@@ -490,6 +492,7 @@ void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
 	GEM_BUG_ON(uc_fw->file_selected.path);
 
 	uc_fw->type = type;
+	uc_fw->needs_ggtt_mapping = needs_ggtt_mapping;
 
 	if (HAS_GT_UC(i915)) {
 		if (!validate_fw_table_type(i915, type)) {
@@ -755,7 +758,7 @@ static int try_firmware_load(struct intel_uc_fw *uc_fw, const struct firmware **
 	if (err)
 		return err;
 
-	if ((*fw)->size > INTEL_UC_RSVD_GGTT_PER_FW) {
+	if (uc_fw->needs_ggtt_mapping && (*fw)->size > INTEL_UC_RSVD_GGTT_PER_FW) {
 		gt_err(gt, "%s firmware %s: size (%zuKB) exceeds max supported size (%uKB)\n",
 		       intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
 		       (*fw)->size / SZ_1K, INTEL_UC_RSVD_GGTT_PER_FW / SZ_1K);
@@ -940,29 +943,32 @@ static void uc_fw_bind_ggtt(struct intel_uc_fw *uc_fw)
 {
 	struct drm_i915_gem_object *obj = uc_fw->obj;
 	struct i915_ggtt *ggtt = __uc_fw_to_gt(uc_fw)->ggtt;
-	struct i915_vma_resource *dummy = &uc_fw->dummy;
+	struct i915_vma_resource *vma_res = &uc_fw->vma_res;
 	u32 pte_flags = 0;
 
-	dummy->start = uc_fw_ggtt_offset(uc_fw);
-	dummy->node_size = obj->base.size;
-	dummy->bi.pages = obj->mm.pages;
+	if (!uc_fw->needs_ggtt_mapping)
+		return;
+
+	vma_res->start = uc_fw_ggtt_offset(uc_fw);
+	vma_res->node_size = obj->base.size;
+	vma_res->bi.pages = obj->mm.pages;
 
 	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
 
 	/* uc_fw->obj cache domains were not controlled across suspend */
 	if (i915_gem_object_has_struct_page(obj))
-		drm_clflush_sg(dummy->bi.pages);
+		drm_clflush_sg(vma_res->bi.pages);
 
 	if (i915_gem_object_is_lmem(obj))
 		pte_flags |= PTE_LM;
 
 	if (ggtt->vm.raw_insert_entries)
-		ggtt->vm.raw_insert_entries(&ggtt->vm, dummy,
+		ggtt->vm.raw_insert_entries(&ggtt->vm, vma_res,
 					    i915_gem_get_pat_index(ggtt->vm.i915,
 								   I915_CACHE_NONE),
 					    pte_flags);
 	else
-		ggtt->vm.insert_entries(&ggtt->vm, dummy,
+		ggtt->vm.insert_entries(&ggtt->vm, vma_res,
 					i915_gem_get_pat_index(ggtt->vm.i915,
 							       I915_CACHE_NONE),
 					pte_flags);
@@ -970,11 +976,13 @@ static void uc_fw_bind_ggtt(struct intel_uc_fw *uc_fw)
 
 static void uc_fw_unbind_ggtt(struct intel_uc_fw *uc_fw)
 {
-	struct drm_i915_gem_object *obj = uc_fw->obj;
 	struct i915_ggtt *ggtt = __uc_fw_to_gt(uc_fw)->ggtt;
-	u64 start = uc_fw_ggtt_offset(uc_fw);
+	struct i915_vma_resource *vma_res = &uc_fw->vma_res;
+
+	if (!vma_res->node_size)
+		return;
 
-	ggtt->vm.clear_range(&ggtt->vm, start, obj->base.size);
+	ggtt->vm.clear_range(&ggtt->vm, vma_res->start, vma_res->node_size);
 }
 
 static int uc_fw_xfer(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
@@ -991,7 +999,7 @@ static int uc_fw_xfer(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
 
 	/* Set the source address for the uCode */
-	offset = uc_fw_ggtt_offset(uc_fw);
+	offset = uc_fw->vma_res.start;
 	GEM_BUG_ON(upper_32_bits(offset) & 0xFFFF0000);
 	intel_uncore_write_fw(uncore, DMA_ADDR_0_LOW, lower_32_bits(offset));
 	intel_uncore_write_fw(uncore, DMA_ADDR_0_HIGH, upper_32_bits(offset));
@@ -1065,9 +1073,7 @@ int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 		return -ENOEXEC;
 
 	/* Call custom loader */
-	uc_fw_bind_ggtt(uc_fw);
 	err = uc_fw_xfer(uc_fw, dst_offset, dma_flags);
-	uc_fw_unbind_ggtt(uc_fw);
 	if (err)
 		goto fail;
 
@@ -1171,6 +1177,8 @@ int intel_uc_fw_init(struct intel_uc_fw *uc_fw)
 		goto out_unpin;
 	}
 
+	uc_fw_bind_ggtt(uc_fw);
+
 	return 0;
 
 out_unpin:
@@ -1181,6 +1189,7 @@ int intel_uc_fw_init(struct intel_uc_fw *uc_fw)
 
 void intel_uc_fw_fini(struct intel_uc_fw *uc_fw)
 {
+	uc_fw_unbind_ggtt(uc_fw);
 	uc_fw_rsa_data_destroy(uc_fw);
 
 	if (i915_gem_object_has_pinned_pages(uc_fw->obj))
@@ -1189,6 +1198,17 @@ void intel_uc_fw_fini(struct intel_uc_fw *uc_fw)
 	intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_AVAILABLE);
 }
 
+void intel_uc_fw_resume_mapping(struct intel_uc_fw *uc_fw)
+{
+	if (!intel_uc_fw_is_available(uc_fw))
+		return;
+
+	if (!i915_gem_object_has_pinned_pages(uc_fw->obj))
+		return;
+
+	uc_fw_bind_ggtt(uc_fw);
+}
+
 /**
  * intel_uc_fw_cleanup_fetch - cleanup uC firmware
  * @uc_fw: uC firmware
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index 6ba00e6b3975..2be9470eb712 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -99,13 +99,19 @@ struct intel_uc_fw {
 	struct drm_i915_gem_object *obj;
 
 	/**
-	 * @dummy: A vma used in binding the uc fw to ggtt. We can't define this
-	 * vma on the stack as it can lead to a stack overflow, so we define it
-	 * here. Safe to have 1 copy per uc fw because the binding is single
-	 * threaded as it done during driver load (inherently single threaded)
-	 * or during a GT reset (mutex guarantees single threaded).
+	 * @needs_ggtt_mapping: indicates whether the fw object needs to be
+	 * pinned to ggtt. If true, the fw is pinned at init time and unpinned
+	 * during driver unload.
 	 */
-	struct i915_vma_resource dummy;
+	bool needs_ggtt_mapping;
+
+	/**
+	 * @vma_res: A vma resource used in binding the uc fw to ggtt. The fw is
+	 * pinned in a reserved area of the ggtt (above the maximum address
+	 * usable by GuC); therefore, we can't use the normal vma functions to
+	 * do the pinning and we instead use this resource to do so.
+	 */
+	struct i915_vma_resource vma_res;
 	struct i915_vma *rsa_data;
 
 	u32 rsa_size;
@@ -282,12 +288,14 @@ static inline u32 intel_uc_fw_get_upload_size(struct intel_uc_fw *uc_fw)
 }
 
 void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
-			    enum intel_uc_fw_type type);
+			    enum intel_uc_fw_type type,
+			    bool needs_ggtt_mapping);
 int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw);
 void intel_uc_fw_cleanup_fetch(struct intel_uc_fw *uc_fw);
 int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, u32 offset, u32 dma_flags);
 int intel_uc_fw_init(struct intel_uc_fw *uc_fw);
 void intel_uc_fw_fini(struct intel_uc_fw *uc_fw);
+void intel_uc_fw_resume_mapping(struct intel_uc_fw *uc_fw);
 size_t intel_uc_fw_copy_rsa(struct intel_uc_fw *uc_fw, void *dst, u32 max_len);
 int intel_uc_fw_mark_load_failed(struct intel_uc_fw *uc_fw, int err);
 void intel_uc_fw_dump(const struct intel_uc_fw *uc_fw, struct drm_printer *p);
-- 
2.40.0

