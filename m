Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D14055F5A81
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 21:17:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DB8910E752;
	Wed,  5 Oct 2022 19:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC25210E752
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 19:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664997403; x=1696533403;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XkvRKFPX9SyyZdlcfGZTDftMd4uyFE8djihBnY7dkc0=;
 b=IYgf3bo0EZ5lsDmsZv4bCQndOr5mFGZZ6XNj2eFpWyTbOMAaSUIO07KK
 2HZrNkwHMPyG+iaQbxyMdGeYZ8rOkfydqld8Z7/Kls70G3a7INabqqhoU
 69kXOsk6XM5iJ6/BLvtZzEjAfHWjF6hBufVj79lZvKpGgtt0QL2cspNop
 ITz2YaDHmPkA+Is5z0uXW+Asw406yhY9Dn7t194uHAJYl4yFA1je63BEj
 YCyLHbnwT65nsb1bY2bt48doY5mPkgAjxUYVkXFMuT6C4mWNBiW8T/BOy
 +ymsVQOWzRrwDBqnGDzxKTwFOZ+jz2tWbUreJYTSs054MwJM9p+T3qogV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="283618486"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="283618486"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 12:16:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="602132209"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="602132209"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 05 Oct 2022 12:16:36 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 12:18:33 -0700
Message-Id: <20221005191838.466351-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221005191838.466351-1-alan.previn.teres.alexis@intel.com>
References: <20221005191838.466351-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/pxp: Make gt and pxp init/fini
 aware of PXP-owning-GT
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

In preparation for future MTL-PXP feature support, PXP control
context should only valid on the correct gt tile. Depending on the
device-info this mat not necessarily be the root GT tile and
depends on which tile owns the VEBOX and KCR.

PXP is still a global feature (despite the control-context being
accessed via the owning GT structure) so let's also update HAS_PXP
macro be called with the i915 handle instead of the gt handle.
the correct gt-ptr access to grab the pxp handle.

Update intel_pxp_init/fini aware of PXP-owning-GT to only initialize
the PXP control-context of the correct GT structure.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c           |  4 ++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h     |  5 +++++
 drivers/gpu/drm/i915/gt/intel_sa_media.c     |  4 ++++
 drivers/gpu/drm/i915/i915_drv.h              |  6 +++---
 drivers/gpu/drm/i915/i915_pci.c              |  1 +
 drivers/gpu/drm/i915/intel_device_info.h     |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 22 +++++++++++++++++---
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  2 +-
 8 files changed, 38 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index b367cfff48d5..e61f6c5ed440 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -850,6 +850,10 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
 	gt->name = "Primary GT";
 	gt->info.engine_mask = RUNTIME_INFO(i915)->platform_engine_mask;
 
+	/* device config determines which GT owns the global pxp-tee context */
+	if (VDBOX_MASK(gt) && !INTEL_INFO(i915)->has_nonroot_pxpgt)
+		gt->pxptee_iface_owner = true;
+
 	drm_dbg(&i915->drm, "Setting up %s\n", gt->name);
 	ret = intel_gt_tile_setup(gt, phys_addr);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 30003d68fd51..fd554ec415cd 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -279,6 +279,11 @@ struct intel_gt {
 		u8 wb_index; /* Only used on HAS_L3_CCS_READ() platforms */
 	} mocs;
 
+	/*
+	 * In a multi-tile GPU, only one GT-tile can contain
+	 * the single valid global pxp + tee context.
+	 */
+	bool pxptee_iface_owner;
 	struct intel_pxp pxp;
 
 	/* gt/gtN sysfs */
diff --git a/drivers/gpu/drm/i915/gt/intel_sa_media.c b/drivers/gpu/drm/i915/gt/intel_sa_media.c
index e8f3d18c12b8..038344b48760 100644
--- a/drivers/gpu/drm/i915/gt/intel_sa_media.c
+++ b/drivers/gpu/drm/i915/gt/intel_sa_media.c
@@ -36,6 +36,10 @@ int intel_sa_mediagt_setup(struct intel_gt *gt, phys_addr_t phys_addr,
 	gt->uncore = uncore;
 	gt->phys_addr = phys_addr;
 
+	/* On MTL, the standalone media owns the global PXP/TEE context. */
+	if (HAS_PXP(gt) && gt->info.id == 1)
+		gt->pxptee_iface_owner = true;
+
 	/*
 	 * For current platforms we can assume there's only a single
 	 * media GT and cache it for quick lookup.
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 90ed8e6db2fe..9fd0c065aa23 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -928,9 +928,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
 
-#define HAS_PXP(dev_priv)  ((IS_ENABLED(CONFIG_DRM_I915_PXP) && \
-			    INTEL_INFO(dev_priv)->has_pxp) && \
-			    VDBOX_MASK(to_gt(dev_priv)))
+#define HAS_PXP(gt)  (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+		      (INTEL_INFO((gt)->i915)->has_pxp) && \
+		      VDBOX_MASK(gt))
 
 #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 38460a0bd7cb..6ee1cd6f1194 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1149,6 +1149,7 @@ static const struct intel_device_info mtl_info = {
 	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
 	.require_force_probe = 1,
+	.has_nonroot_pxpgt = 1,
 };
 
 #undef PLATFORM
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index bc87d3156b14..8508d3795593 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -167,6 +167,7 @@ enum intel_ppgtt_type {
 	func(has_mslice_steering); \
 	func(has_one_eu_per_fuse_bit); \
 	func(has_pxp); \
+	func(has_nonroot_pxpgt); \
 	func(has_rc6); \
 	func(has_rc6p); \
 	func(has_rps); \
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 5efe61f67546..a18dfeca919b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -138,11 +138,22 @@ static void pxp_init_full(struct intel_pxp *pxp)
 	destroy_vcs_context(pxp);
 }
 
+static bool _gt_needs_teelink(struct intel_gt *gt)
+{
+	return intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc);
+}
+
 void intel_pxp_init(struct intel_pxp *pxp)
 {
 	struct intel_gt *gt = pxp_to_gt(pxp);
 
-	/* we rely on the mei PXP module */
+	/*
+	 * In current platforms we only need a single pxp component but must reside
+	 * within the owner gt.
+	 */
+	if (!gt->pxptee_iface_owner)
+		return;
+
 	if (!IS_ENABLED(CONFIG_INTEL_MEI_PXP))
 		return;
 
@@ -150,14 +161,19 @@ void intel_pxp_init(struct intel_pxp *pxp)
 	 * If HuC is loaded by GSC but PXP is disabled, we can skip the init of
 	 * the full PXP session/object management and just init the tee channel.
 	 */
-	if (HAS_PXP(gt->i915))
+	if (HAS_PXP(gt))
 		pxp_init_full(pxp);
-	else if (intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc))
+	else if (_gt_needs_teelink(gt))
 		intel_pxp_tee_component_init(pxp);
 }
 
 void intel_pxp_fini(struct intel_pxp *pxp)
 {
+	struct intel_gt *gt = pxp_to_gt(pxp);
+
+	if (!gt->pxptee_iface_owner)
+		return;
+
 	pxp->arb_is_valid = false;
 
 	intel_pxp_tee_component_fini(pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
index 4359e8be4101..7b37f061044d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -70,7 +70,7 @@ void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *gt_root)
 	if (!gt_root)
 		return;
 
-	if (!HAS_PXP((pxp_to_gt(pxp)->i915)))
+	if (!HAS_PXP((pxp_to_gt(pxp))))
 		return;
 
 	root = debugfs_create_dir("pxp", gt_root);
-- 
2.34.1

