Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DA266E0FD
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 15:40:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCB310E550;
	Tue, 17 Jan 2023 14:39:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EAE010E54E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 14:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673966396; x=1705502396;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2i+qhKCyE9PwozmAD2wFwuGY157hIYijVP+Iah4HxUI=;
 b=KseW/KsdVaZql3M0KkX/180Jd1sxl4AUq0eLbZKDzsyONWXI1ZodlUgP
 REN8dWu97HhkobDb6hZmXXgWLsaNKMRdbSxZEnH+LduUyUu7X474BHoP8
 pB3s9E66DX9K+jLkIVi/O2SfLRZUGt0MPZdqHU79sgIfnVpEMKngYXIV0
 q/at+ffLB9X7CtKWuZ2w2pWSjZRXuT2h3l7DfY+HCbfB8lXoUI+7ihxax
 09NtKFraiWZWwPK8lkAmDsE70tW+KFjAbftUvThEIz3ycsKCQi3Bzl2Gw
 GDYb2iIJqxvcEUFKXMDc6hbT2Ng4sJ1EI/d7vUSrrKvYKCtQb8kcfLGuO A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="326777854"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="326777854"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 06:39:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="904672810"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="904672810"
Received: from vishvend-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.14.88])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 06:39:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Jan 2023 16:39:45 +0200
Message-Id: <20230117143946.2426043-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117143946.2426043-1-jani.nikula@intel.com>
References: <20230117143946.2426043-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: move pch_ssc_use to display
 sub-struct under dpll
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the display related member to the struct drm_i915_private display
sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h |  5 +++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c     |  4 ++--
 drivers/gpu/drm/i915/display/intel_pch_refclk.c   | 10 +++++-----
 drivers/gpu/drm/i915/i915_drv.h                   |  2 --
 4 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 2e85dd0ef4b5..c0eb753112d5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -122,6 +122,11 @@ struct intel_dpll {
 		int nssc;
 		int ssc;
 	} ref_clks;
+
+	/*
+	 * Bitmask of PLLs using the PCH SSC, indexed using enum intel_dpll_id.
+	 */
+	u8 pch_ssc_use;
 };
 
 struct intel_frontbuffer_tracking {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 1974eb580ed1..380368eff31a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -618,7 +618,7 @@ static void hsw_ddi_wrpll_disable(struct drm_i915_private *dev_priv,
 	 * Try to set up the PCH reference clock once all DPLLs
 	 * that depend on it have been shut down.
 	 */
-	if (dev_priv->pch_ssc_use & BIT(id))
+	if (dev_priv->display.dpll.pch_ssc_use & BIT(id))
 		intel_init_pch_refclk(dev_priv);
 }
 
@@ -636,7 +636,7 @@ static void hsw_ddi_spll_disable(struct drm_i915_private *dev_priv,
 	 * Try to set up the PCH reference clock once all DPLLs
 	 * that depend on it have been shut down.
 	 */
-	if (dev_priv->pch_ssc_use & BIT(id))
+	if (dev_priv->display.dpll.pch_ssc_use & BIT(id))
 		intel_init_pch_refclk(dev_priv);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 08a94365b7d1..3657b2940702 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -467,24 +467,24 @@ static void lpt_init_pch_refclk(struct drm_i915_private *dev_priv)
 	 * clock hierarchy. That would also allow us to do
 	 * clock bending finally.
 	 */
-	dev_priv->pch_ssc_use = 0;
+	dev_priv->display.dpll.pch_ssc_use = 0;
 
 	if (spll_uses_pch_ssc(dev_priv)) {
 		drm_dbg_kms(&dev_priv->drm, "SPLL using PCH SSC\n");
-		dev_priv->pch_ssc_use |= BIT(DPLL_ID_SPLL);
+		dev_priv->display.dpll.pch_ssc_use |= BIT(DPLL_ID_SPLL);
 	}
 
 	if (wrpll_uses_pch_ssc(dev_priv, DPLL_ID_WRPLL1)) {
 		drm_dbg_kms(&dev_priv->drm, "WRPLL1 using PCH SSC\n");
-		dev_priv->pch_ssc_use |= BIT(DPLL_ID_WRPLL1);
+		dev_priv->display.dpll.pch_ssc_use |= BIT(DPLL_ID_WRPLL1);
 	}
 
 	if (wrpll_uses_pch_ssc(dev_priv, DPLL_ID_WRPLL2)) {
 		drm_dbg_kms(&dev_priv->drm, "WRPLL2 using PCH SSC\n");
-		dev_priv->pch_ssc_use |= BIT(DPLL_ID_WRPLL2);
+		dev_priv->display.dpll.pch_ssc_use |= BIT(DPLL_ID_WRPLL2);
 	}
 
-	if (dev_priv->pch_ssc_use)
+	if (dev_priv->display.dpll.pch_ssc_use)
 		return;
 
 	if (has_fdi) {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 33da0f867a93..9ac80a45362f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -368,8 +368,6 @@ struct drm_i915_private {
 
 	struct intel_pxp *pxp;
 
-	u8 pch_ssc_use;
-
 	/* For i915gm/i945gm vblank irq workaround */
 	u8 vblank_enabled;
 
-- 
2.34.1

