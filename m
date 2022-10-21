Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA08607DA2
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 19:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 718FF10E53E;
	Fri, 21 Oct 2022 17:37:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B593410E53E
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 17:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666373852; x=1697909852;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rrBy1cIC9mtNO0fAXFdljfwmTu9F3fsplIwXhxGsZGI=;
 b=LmP2NKPDo8SOQfcPj+QewuCyZKzO3y/jPx55zvbhW6YP2l66LnbopMXW
 BXlat0Jy+iCJXl1/Ah48bdmtL5yXLKeN2KrKcF6k4S6jlGLeBriKQFcs3
 QznXLBf4/kF4HAIU8V42BqH1Vk73ZC9FIm1ijAY8sKqDJiRcUcgOHAF/D
 MVMygZLECCFVWvoyBudiIfLBgnpUfmJeDGC3IgJJMsUeAxLu0NfYv0KbZ
 mHziWhtgkf1KZEUlMObfmP3sjb9SNn+cM3VJVn12h6h62B/iIpIjfBE72
 ZdCiIQSIuVuSQnNK48Fd6BEXd8hAMDnj3JFOsrnQANRa120u+KcRqf9mO w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="286781662"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="286781662"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 10:37:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="755898785"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="755898785"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga004.jf.intel.com with ESMTP; 21 Oct 2022 10:37:31 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 10:39:41 -0700
Message-Id: <20221021173946.366210-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
References: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/6] drm/i915/pxp: Make gt and pxp init/fini
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
 drivers/gpu/drm/i915/i915_drv.h              |  4 ---
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 35 ++++++++++++++++----
 drivers/gpu/drm/i915/pxp/intel_pxp.h         |  2 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  2 +-
 4 files changed, 32 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7c64f8a17493..0921d1107825 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -923,10 +923,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
 
-#define HAS_PXP(dev_priv)  ((IS_ENABLED(CONFIG_DRM_I915_PXP) && \
-			    INTEL_INFO(dev_priv)->has_pxp) && \
-			    VDBOX_MASK(to_gt(dev_priv)))
-
 #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
 
 #define HAS_GMD_ID(i915)	(INTEL_INFO(i915)->has_gmd_id)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 5efe61f67546..545c075bf1aa 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -44,6 +44,30 @@ struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
 	return container_of(pxp, struct intel_gt, pxp);
 }
 
+static bool _gt_needs_teelink(struct intel_gt *gt)
+{
+	/* TODO: MTL won't rely on CONFIG_INTEL_MEI_PXP but on GSC engine */
+	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && intel_huc_is_loaded_by_gsc(&gt->uc.huc) &&
+		intel_uc_uses_huc(&gt->uc));
+}
+
+static bool _gt_supports_pxp(struct intel_gt *gt)
+{
+	/* TODO: MTL won't rely on CONFIG_INTEL_MEI_PXP but on GSC engine */
+	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && IS_ENABLED(CONFIG_DRM_I915_PXP) &&
+		INTEL_INFO((gt)->i915)->has_pxp && VDBOX_MASK(gt));
+}
+
+bool intel_gtpxp_is_supported(struct intel_pxp *pxp)
+{
+	struct intel_gt *gt = pxp_to_gt(pxp);
+
+	if (_gt_needs_teelink(gt) || _gt_supports_pxp(gt))
+		return true;
+
+	return false;
+}
+
 bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
 {
 	return pxp->ce;
@@ -142,22 +166,21 @@ void intel_pxp_init(struct intel_pxp *pxp)
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
+	if (_gt_supports_pxp(gt))
 		pxp_init_full(pxp);
-	else if (intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc))
+	else if (_gt_needs_teelink(gt))
 		intel_pxp_tee_component_init(pxp);
 }
 
 void intel_pxp_fini(struct intel_pxp *pxp)
 {
+	if (!intel_gtpxp_is_supported(pxp))
+		return;
+
 	pxp->arb_is_valid = false;
 
 	intel_pxp_tee_component_fini(pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 2da309088c6d..c12e4d419c78 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -13,6 +13,8 @@ struct intel_pxp;
 struct drm_i915_gem_object;
 
 struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
+bool intel_gtpxp_is_supported(struct intel_pxp *pxp);
+
 bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
 bool intel_pxp_is_active(const struct intel_pxp *pxp);
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
index 4359e8be4101..124663cf0047 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -70,7 +70,7 @@ void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *gt_root)
 	if (!gt_root)
 		return;
 
-	if (!HAS_PXP((pxp_to_gt(pxp)->i915)))
+	if (!intel_gtpxp_is_supported(pxp))
 		return;
 
 	root = debugfs_create_dir("pxp", gt_root);
-- 
2.34.1

