Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B3246EE12
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 17:55:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 486F110E601;
	Thu,  9 Dec 2021 16:53:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46AA110E116
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 06:03:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="298779407"
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="298779407"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 16:59:53 -0800
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="612311354"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 16:59:53 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Dec 2021 16:56:10 -0800
Message-Id: <20211209005610.1499729-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211209005610.1499729-1-daniele.ceraolospurio@intel.com>
References: <20211209005610.1499729-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/guc: support bigger RSA keys
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

Some of the newer HW will use bigger RSA keys to authenticate the GuC
binary. On those platforms the HW will read the key from memory instead
of the RSA registers, so we need to copy it in a dedicated vma, like we
do for the HuC. The address of the key is provided to the HW via the
first RSA register.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c | 30 ++++++--
 drivers/gpu/drm/i915/gt/uc/intel_huc.c    | 73 +------------------
 drivers/gpu/drm/i915/gt/uc/intel_huc.h    |  2 -
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c  | 86 ++++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h  |  1 +
 5 files changed, 113 insertions(+), 79 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index 796483a41353..811f032199eb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -40,9 +40,8 @@ static void guc_prepare_xfer(struct intel_uncore *uncore)
 	}
 }
 
-/* Copy RSA signature from the fw image to HW for verification */
-static int guc_xfer_rsa(struct intel_uc_fw *guc_fw,
-			struct intel_uncore *uncore)
+static int guc_xfer_rsa_mmio(struct intel_uc_fw *guc_fw,
+			     struct intel_uncore *uncore)
 {
 	u32 rsa[UOS_RSA_SCRATCH_COUNT];
 	size_t copied;
@@ -58,6 +57,27 @@ static int guc_xfer_rsa(struct intel_uc_fw *guc_fw,
 	return 0;
 }
 
+static int guc_xfer_rsa_vma(struct intel_uc_fw *guc_fw,
+			    struct intel_uncore *uncore)
+{
+	struct intel_guc *guc = container_of(guc_fw, struct intel_guc, fw);
+
+	intel_uncore_write(uncore, UOS_RSA_SCRATCH(0),
+			   intel_guc_ggtt_offset(guc, guc_fw->rsa_data));
+
+	return 0;
+}
+
+/* Copy RSA signature from the fw image to HW for verification */
+static int guc_xfer_rsa(struct intel_uc_fw *guc_fw,
+			struct intel_uncore *uncore)
+{
+	if (guc_fw->rsa_data)
+		return guc_xfer_rsa_vma(guc_fw, uncore);
+	else
+		return guc_xfer_rsa_mmio(guc_fw, uncore);
+}
+
 /*
  * Read the GuC status register (GUC_STATUS) and store it in the
  * specified location; then return a boolean indicating whether
@@ -142,7 +162,9 @@ int intel_guc_fw_upload(struct intel_guc *guc)
 	/*
 	 * Note that GuC needs the CSS header plus uKernel code to be copied
 	 * by the DMA engine in one operation, whereas the RSA signature is
-	 * loaded via MMIO.
+	 * loaded separately, either by copying it to the UOS_RSA_SCRATCH
+	 * register (if key size <= 256) or through a ggtt-pinned vma (if key
+	 * size > 256).
 	 */
 	ret = guc_xfer_rsa(&guc->fw, uncore);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index c10736dddfb4..d10b227ac4aa 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -54,65 +54,6 @@ void intel_huc_init_early(struct intel_huc *huc)
 	}
 }
 
-static int intel_huc_rsa_data_create(struct intel_huc *huc)
-{
-	struct intel_gt *gt = huc_to_gt(huc);
-	struct intel_guc *guc = &gt->uc.guc;
-	struct i915_vma *vma;
-	size_t copied;
-	void *vaddr;
-	int err;
-
-	err = i915_inject_probe_error(gt->i915, -ENXIO);
-	if (err)
-		return err;
-
-	/*
-	 * HuC firmware will sit above GUC_GGTT_TOP and will not map
-	 * through GTT. Unfortunately, this means GuC cannot perform
-	 * the HuC auth. as the rsa offset now falls within the GuC
-	 * inaccessible range. We resort to perma-pinning an additional
-	 * vma within the accessible range that only contains the rsa
-	 * signature. The GuC can use this extra pinning to perform
-	 * the authentication since its GGTT offset will be GuC
-	 * accessible.
-	 */
-	GEM_BUG_ON(huc->fw.rsa_size > PAGE_SIZE);
-	vma = intel_guc_allocate_vma(guc, PAGE_SIZE);
-	if (IS_ERR(vma))
-		return PTR_ERR(vma);
-
-	vaddr = i915_gem_object_pin_map_unlocked(vma->obj,
-						 i915_coherent_map_type(gt->i915,
-									vma->obj, true));
-	if (IS_ERR(vaddr)) {
-		i915_vma_unpin_and_release(&vma, 0);
-		err = PTR_ERR(vaddr);
-		goto unpin_out;
-	}
-
-	copied = intel_uc_fw_copy_rsa(&huc->fw, vaddr, vma->size);
-	i915_gem_object_unpin_map(vma->obj);
-
-	if (copied < huc->fw.rsa_size) {
-		err = -ENOMEM;
-		goto unpin_out;
-	}
-
-	huc->rsa_data = vma;
-
-	return 0;
-
-unpin_out:
-	i915_vma_unpin_and_release(&vma, 0);
-	return err;
-}
-
-static void intel_huc_rsa_data_destroy(struct intel_huc *huc)
-{
-	i915_vma_unpin_and_release(&huc->rsa_data, 0);
-}
-
 int intel_huc_init(struct intel_huc *huc)
 {
 	struct drm_i915_private *i915 = huc_to_gt(huc)->i915;
@@ -122,21 +63,10 @@ int intel_huc_init(struct intel_huc *huc)
 	if (err)
 		goto out;
 
-	/*
-	 * HuC firmware image is outside GuC accessible range.
-	 * Copy the RSA signature out of the image into
-	 * a perma-pinned region set aside for it
-	 */
-	err = intel_huc_rsa_data_create(huc);
-	if (err)
-		goto out_fini;
-
 	intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_LOADABLE);
 
 	return 0;
 
-out_fini:
-	intel_uc_fw_fini(&huc->fw);
 out:
 	i915_probe_error(i915, "failed with %d\n", err);
 	return err;
@@ -147,7 +77,6 @@ void intel_huc_fini(struct intel_huc *huc)
 	if (!intel_uc_fw_is_loadable(&huc->fw))
 		return;
 
-	intel_huc_rsa_data_destroy(huc);
 	intel_uc_fw_fini(&huc->fw);
 }
 
@@ -177,7 +106,7 @@ int intel_huc_auth(struct intel_huc *huc)
 		goto fail;
 
 	ret = intel_guc_auth_huc(guc,
-				 intel_guc_ggtt_offset(guc, huc->rsa_data));
+				 intel_guc_ggtt_offset(guc, huc->fw.rsa_data));
 	if (ret) {
 		DRM_ERROR("HuC: GuC did not ack Auth request %d\n", ret);
 		goto fail;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.h b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
index daee43b661d4..ae8c8a6c8cc8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
@@ -15,8 +15,6 @@ struct intel_huc {
 	struct intel_uc_fw fw;
 
 	/* HuC-specific additions */
-	struct i915_vma *rsa_data;
-
 	struct {
 		i915_reg_t reg;
 		u32 mask;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 01683f5f95bd..ee1254f3f30b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -537,6 +537,75 @@ int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 	return err;
 }
 
+static inline bool uc_fw_need_rsa_in_memory(struct intel_uc_fw *uc_fw)
+{
+	/*
+	 * The HW reads the GuC RSA from memory if the key size is > 256 bytes,
+	 * while it reads it from the 64 RSA registers if it is smaller.
+	 * The HuC RSA is always read from memory.
+	 */
+	return uc_fw->type == INTEL_UC_FW_TYPE_HUC || uc_fw->rsa_size > 256;
+}
+
+static int uc_fw_rsa_data_create(struct intel_uc_fw *uc_fw)
+{
+	struct intel_gt *gt = __uc_fw_to_gt(uc_fw);
+	struct i915_vma *vma;
+	size_t copied;
+	void *vaddr;
+	int err;
+
+	err = i915_inject_probe_error(gt->i915, -ENXIO);
+	if (err)
+		return err;
+
+	if (!uc_fw_need_rsa_in_memory(uc_fw))
+		return 0;
+
+	/*
+	 * uC firmwares will sit above GUC_GGTT_TOP and will not map through
+	 * GGTT. Unfortunately, this means that the GuC HW cannot perform the uC
+	 * authentication from memory, as the RSA offset now falls within the
+	 * GuC inaccessible range. We resort to perma-pinning an additional vma
+	 * within the accessible range that only contains the RSA signature.
+	 * The GuC HW can use this extra pinning to perform the authentication
+	 * since its GGTT offset will be GuC accessible.
+	 */
+	GEM_BUG_ON(uc_fw->rsa_size > PAGE_SIZE);
+	vma = intel_guc_allocate_vma(&gt->uc.guc, PAGE_SIZE);
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
+
+	vaddr = i915_gem_object_pin_map_unlocked(vma->obj,
+						 i915_coherent_map_type(gt->i915, vma->obj, true));
+	if (IS_ERR(vaddr)) {
+		i915_vma_unpin_and_release(&vma, 0);
+		err = PTR_ERR(vaddr);
+		goto unpin_out;
+	}
+
+	copied = intel_uc_fw_copy_rsa(uc_fw, vaddr, vma->size);
+	i915_gem_object_unpin_map(vma->obj);
+
+	if (copied < uc_fw->rsa_size) {
+		err = -ENOMEM;
+		goto unpin_out;
+	}
+
+	uc_fw->rsa_data = vma;
+
+	return 0;
+
+unpin_out:
+	i915_vma_unpin_and_release(&vma, 0);
+	return err;
+}
+
+static void uc_fw_rsa_data_destroy(struct intel_uc_fw *uc_fw)
+{
+	i915_vma_unpin_and_release(&uc_fw->rsa_data, 0);
+}
+
 int intel_uc_fw_init(struct intel_uc_fw *uc_fw)
 {
 	int err;
@@ -551,14 +620,29 @@ int intel_uc_fw_init(struct intel_uc_fw *uc_fw)
 	if (err) {
 		DRM_DEBUG_DRIVER("%s fw pin-pages err=%d\n",
 				 intel_uc_fw_type_repr(uc_fw->type), err);
-		intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_INIT_FAIL);
+		goto out;
 	}
 
+	err = uc_fw_rsa_data_create(uc_fw);
+	if (err) {
+		DRM_DEBUG_DRIVER("%s fw rsa data creation failed, err=%d\n",
+				 intel_uc_fw_type_repr(uc_fw->type), err);
+		goto out_unpin;
+	}
+
+	return 0;
+
+out_unpin:
+	i915_gem_object_unpin_pages(uc_fw->obj);
+out:
+	intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_INIT_FAIL);
 	return err;
 }
 
 void intel_uc_fw_fini(struct intel_uc_fw *uc_fw)
 {
+	uc_fw_rsa_data_destroy(uc_fw);
+
 	if (i915_gem_object_has_pinned_pages(uc_fw->obj))
 		i915_gem_object_unpin_pages(uc_fw->obj);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index fd17abf2ab02..d9d1dc0b4cbb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -86,6 +86,7 @@ struct intel_uc_fw {
 	 * or during a GT reset (mutex guarantees single threaded).
 	 */
 	struct i915_vma dummy;
+	struct i915_vma *rsa_data;
 
 	/*
 	 * The firmware build process will generate a version header file with major and
-- 
2.25.1

