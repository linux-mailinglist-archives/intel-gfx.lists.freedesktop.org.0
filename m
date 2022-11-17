Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E147862CF90
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 01:28:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA3DD10E4F9;
	Thu, 17 Nov 2022 00:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8420F10E4F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 00:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668644889; x=1700180889;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HJRsAR7ALfFAIfBVGeVVOWZRiVo2HC1pL4yIiJc8RIU=;
 b=ZWsx1KTf5+LE/LEJz6/Q0/TbYcBDfp8Fgl+vmpiyfIZKvufZvg150BR3
 G4JE9vGh4OLxbCPY+o2zA9npDR04ffGErOeO7EYMbcmvWJuQwNi2CO05r
 wu/ubICjjNyPNR1MyENcay1AP/tZCjNeAxKo5rKVruS52c29UHfN3wjII
 Qd7SomJBYXpJl8mBMOgYLS4IukDYsiglxnVAMBdO8TGWkhF211JXI2o9o
 ycKRxq/Zg1jRYp1bjVSI1ZlqyoZ7cuyA0V49Zy77cowZdDQm/omhncsYB
 Rs9At5nWDBJAtcYz+NCycFRmdspTf7u3sSmU26PBpthFQ8ek2ia3le2Mb g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="312722092"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="312722092"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 16:27:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="781985081"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="781985081"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2022 16:27:48 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Nov 2022 16:30:13 -0800
Message-Id: <20221117003018.1433115-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/6] drm/i915/pxp: Make gt and pxp init/fini
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
device-info this depends on which tile owns the VEBOX and KCR.
PXP is still a global feature though (despite its control-context
located in the owning GT structure). Additionally, we find
that the HAS_PXP macro is only used within the pxp module,

That said, lets drop that HAS_PXP macro altogether and replace it
with a more fitting named intel_gtpxp_is_supported and helpers
so that PXP init/fini can use to verify if the referenced gt supports
PXP or teelink.

Add TODO for Meteorlake that will come in future series.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h              |  4 ----
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 22 ++++++++++++++------
 drivers/gpu/drm/i915/pxp/intel_pxp.h         |  3 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  2 +-
 4 files changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7e3820d2c404..0616e5f0bd31 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -933,10 +933,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
 
-#define HAS_PXP(dev_priv)  ((IS_ENABLED(CONFIG_DRM_I915_PXP) && \
-			    INTEL_INFO(dev_priv)->has_pxp) && \
-			    VDBOX_MASK(to_gt(dev_priv)))
-
 #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
 
 #define HAS_GMD_ID(i915)	(INTEL_INFO(i915)->has_gmd_id)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 5efe61f67546..d993e752bd36 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -44,6 +44,20 @@ struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
 	return container_of(pxp, struct intel_gt, pxp);
 }
 
+static bool _gt_needs_teelink(struct intel_gt *gt)
+{
+	/* TODO: MTL won't rely on CONFIG_INTEL_MEI_PXP but on GSC engine */
+	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && intel_huc_is_loaded_by_gsc(&gt->uc.huc) &&
+		intel_uc_uses_huc(&gt->uc));
+}
+
+bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp)
+{
+	/* TODO: MTL won't rely on CONFIG_INTEL_MEI_PXP but on GSC engine */
+	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && IS_ENABLED(CONFIG_DRM_I915_PXP) &&
+		INTEL_INFO((pxp_to_gt(pxp))->i915)->has_pxp && VDBOX_MASK(pxp_to_gt(pxp)));
+}
+
 bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
 {
 	return pxp->ce;
@@ -142,17 +156,13 @@ void intel_pxp_init(struct intel_pxp *pxp)
 {
 	struct intel_gt *gt = pxp_to_gt(pxp);
 
-	/* we rely on the mei PXP module */
-	if (!IS_ENABLED(CONFIG_INTEL_MEI_PXP))
-		return;
-
 	/*
 	 * If HuC is loaded by GSC but PXP is disabled, we can skip the init of
 	 * the full PXP session/object management and just init the tee channel.
 	 */
-	if (HAS_PXP(gt->i915))
+	if (intel_pxp_supported_on_gt(pxp))
 		pxp_init_full(pxp);
-	else if (intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc))
+	else if (_gt_needs_teelink(gt))
 		intel_pxp_tee_component_init(pxp);
 }
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 2da309088c6d..efa83f9d5e24 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -13,6 +13,9 @@ struct intel_pxp;
 struct drm_i915_gem_object;
 
 struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
+
+bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp);
+
 bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
 bool intel_pxp_is_active(const struct intel_pxp *pxp);
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
index 4359e8be4101..f0ad6f34624a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -70,7 +70,7 @@ void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *gt_root)
 	if (!gt_root)
 		return;
 
-	if (!HAS_PXP((pxp_to_gt(pxp)->i915)))
+	if (!intel_pxp_supported_on_gt(pxp))
 		return;
 
 	root = debugfs_create_dir("pxp", gt_root);
-- 
2.34.1

