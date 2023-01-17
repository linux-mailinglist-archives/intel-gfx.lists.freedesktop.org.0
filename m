Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C41166E0FC
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 15:39:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A591910E54D;
	Tue, 17 Jan 2023 14:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00F3910E54D
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 14:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673966393; x=1705502393;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=71ekr/OA+gfB8h/KGJeg85zJFw1RLtIQUVWhvTyPqNE=;
 b=ctA+BxEA77OSkGjwFmMZY/TF5wm+hLWhSQs0vDSmw3u1h9FG11iXSJ3H
 quiIhS0RgCPT/HC8SuX/sL3G3vLlwdVDisw+/zNZ2AmFy9BU//MLU0Ivi
 smZCVAB78XHHAX7ediCtJl5f4P7zLZhiTHWuiwiqLAf7j/5cY3/5wFXAj
 x/BqWQ8tWb9QckVMvB4bna3BzzLLgmU/pJEoBQpbpuS+7Gni4AvsITV1S
 +Cc5yXG83lS8+xGMHXdO+sRadOQnJH4I93XzvfHvK1jBS3o+9BRSW5NHI
 sqWg1074EDKkziug5PY1WUa4RI2VeVnR3vFNMx92sfue1zdfHCaufn6wC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="326777841"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="326777841"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 06:39:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="904672770"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="904672770"
Received: from vishvend-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.14.88])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 06:39:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Jan 2023 16:39:44 +0200
Message-Id: <20230117143946.2426043-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: move snps_phy_failed_calibration
 to display sub-struct under snps
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
 drivers/gpu/drm/i915/display/intel_ddi.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_display_core.h | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_snps_phy.c     | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                   | 6 ------
 4 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1f5a471a0adf..0034a43f56e5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4323,7 +4323,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	}
 
 	if (intel_phy_is_snps(dev_priv, phy) &&
-	    dev_priv->snps_phy_failed_calibration & BIT(phy)) {
+	    dev_priv->display.snps.phy_failed_calibration & BIT(phy)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "SNPS PHY %c failed to calibrate, proceeding anyway\n",
 			    phy_name(phy));
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 57ddce3ba02b..2e85dd0ef4b5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -428,6 +428,14 @@ struct intel_display {
 		u32 block_time_us;
 	} sagv;
 
+	struct {
+		/*
+		 * DG2: Mask of PHYs that were not calibrated by the firmware
+		 * and should not be used.
+		 */
+		u8 phy_failed_calibration;
+	} snps;
+
 	struct {
 		/* ordered wq for modesets */
 		struct workqueue_struct *modeset;
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 9494cfd45519..c65c771f5c46 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -40,7 +40,7 @@ void intel_snps_phy_wait_for_calibration(struct drm_i915_private *i915)
 		 */
 		if (intel_de_wait_for_clear(i915, DG2_PHY_MISC(phy),
 					    DG2_PHY_DP_TX_ACK_MASK, 25))
-			i915->snps_phy_failed_calibration |= BIT(phy);
+			i915->display.snps.phy_failed_calibration |= BIT(phy);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 48fd82722f12..33da0f867a93 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -375,12 +375,6 @@ struct drm_i915_private {
 
 	bool irq_enabled;
 
-	/*
-	 * DG2: Mask of PHYs that were not calibrated by the firmware
-	 * and should not be used.
-	 */
-	u8 snps_phy_failed_calibration;
-
 	struct i915_pmu pmu;
 
 	struct i915_drm_clients clients;
-- 
2.34.1

