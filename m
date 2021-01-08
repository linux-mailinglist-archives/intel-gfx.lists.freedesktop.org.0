Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6842EF6C0
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:45:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C5E96E863;
	Fri,  8 Jan 2021 17:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E3E6E862
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:45:55 +0000 (UTC)
IronPort-SDR: tR6CPUr2nXzkdjbQ2RGJbawTsycTi2oNZ3U+j1g3Aa//MOEBInFl8+wZMRpInlTcUqfaVESGiS
 A7NKInhskXng==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="156813674"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="156813674"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:55 -0800
IronPort-SDR: fWwCi7wwuNaHRVKC4S3WqgyykfNNBbcQZcSULLi6W5IFNZF30EhGA6w8lVeUwdUdl7UGQ1P0nL
 lRw0eMRCiEXg==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="344281403"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 19:44:23 +0200
Message-Id: <f190c7dadbf4e3d2b216709975fdd50ba0f850d0.1610127741.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1610127741.git.jani.nikula@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 15/17] drm/i915/pps: move pps code over from
 intel_display.c and refactor
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_display.c has some pps functions that belong to intel_pps.c. Move
them over.

While at it, refactor the duplicate intel_pps_init() in intel_display.c
into an orthogonal intel_pps_setup() in intel_pps.c, and call it earlier
in intel_modeset_init_nogem().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 41 ++------------------
 drivers/gpu/drm/i915/display/intel_display.h |  1 -
 drivers/gpu/drm/i915/display/intel_pps.c     | 34 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pps.h     |  3 ++
 drivers/gpu/drm/i915/i915_drv.c              |  1 +
 5 files changed, 42 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0189d379a55e..f8806c4ecb21 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -81,6 +81,7 @@
 #include "intel_overlay.h"
 #include "intel_pipe_crc.h"
 #include "intel_pm.h"
+#include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_quirks.h"
 #include "intel_sideband.h"
@@ -16100,48 +16101,12 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 	return true;
 }
 
-void intel_pps_unlock_regs_wa(struct drm_i915_private *dev_priv)
-{
-	int pps_num;
-	int pps_idx;
-
-	if (HAS_DDI(dev_priv))
-		return;
-	/*
-	 * This w/a is needed at least on CPT/PPT, but to be sure apply it
-	 * everywhere where registers can be write protected.
-	 */
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		pps_num = 2;
-	else
-		pps_num = 1;
-
-	for (pps_idx = 0; pps_idx < pps_num; pps_idx++) {
-		u32 val = intel_de_read(dev_priv, PP_CONTROL(pps_idx));
-
-		val = (val & ~PANEL_UNLOCK_MASK) | PANEL_UNLOCK_REGS;
-		intel_de_write(dev_priv, PP_CONTROL(pps_idx), val);
-	}
-}
-
-static void intel_pps_init(struct drm_i915_private *dev_priv)
-{
-	if (HAS_PCH_SPLIT(dev_priv) || IS_GEN9_LP(dev_priv))
-		dev_priv->pps_mmio_base = PCH_PPS_BASE;
-	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		dev_priv->pps_mmio_base = VLV_PPS_BASE;
-	else
-		dev_priv->pps_mmio_base = PPS_BASE;
-
-	intel_pps_unlock_regs_wa(dev_priv);
-}
-
 static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *encoder;
 	bool dpd_is_edp = false;
 
-	intel_pps_init(dev_priv);
+	intel_pps_unlock_regs_wa(dev_priv);
 
 	if (!HAS_DISPLAY(dev_priv))
 		return;
@@ -17199,6 +17164,8 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
 
 	intel_panel_sanitize_ssc(i915);
 
+	intel_pps_setup(i915);
+
 	intel_gmbus_setup(i915);
 
 	drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 7ddbc00a0f41..bbd5dbc61ce9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -546,7 +546,6 @@ unsigned int intel_rotation_info_size(const struct intel_rotation_info *rot_info
 unsigned int intel_remapped_info_size(const struct intel_remapped_info *rem_info);
 bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv);
 int intel_display_suspend(struct drm_device *dev);
-void intel_pps_unlock_regs_wa(struct drm_i915_private *dev_priv);
 void intel_encoder_destroy(struct drm_encoder *encoder);
 struct drm_display_mode *
 intel_encoder_current_mode(struct intel_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index b4d026ca3313..c3a0fc933500 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1370,3 +1370,37 @@ void intel_pps_init(struct intel_dp *intel_dp)
 
 	intel_pps_encoder_reset(intel_dp);
 }
+
+void intel_pps_unlock_regs_wa(struct drm_i915_private *dev_priv)
+{
+	int pps_num;
+	int pps_idx;
+
+	if (HAS_DDI(dev_priv))
+		return;
+	/*
+	 * This w/a is needed at least on CPT/PPT, but to be sure apply it
+	 * everywhere where registers can be write protected.
+	 */
+	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+		pps_num = 2;
+	else
+		pps_num = 1;
+
+	for (pps_idx = 0; pps_idx < pps_num; pps_idx++) {
+		u32 val = intel_de_read(dev_priv, PP_CONTROL(pps_idx));
+
+		val = (val & ~PANEL_UNLOCK_MASK) | PANEL_UNLOCK_REGS;
+		intel_de_write(dev_priv, PP_CONTROL(pps_idx), val);
+	}
+}
+
+void intel_pps_setup(struct drm_i915_private *i915)
+{
+	if (HAS_PCH_SPLIT(i915) || IS_GEN9_LP(i915))
+		i915->pps_mmio_base = PCH_PPS_BASE;
+	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		i915->pps_mmio_base = VLV_PPS_BASE;
+	else
+		i915->pps_mmio_base = PPS_BASE;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 22045c5cdc86..fbbcca782e7b 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -46,4 +46,7 @@ void intel_pps_reset_all(struct drm_i915_private *i915);
 void vlv_pps_init(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state);
 
+void intel_pps_unlock_regs_wa(struct drm_i915_private *i915);
+void intel_pps_setup(struct drm_i915_private *i915);
+
 #endif /* __INTEL_PPS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 3e504247f2da..7282c8f08318 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -58,6 +58,7 @@
 #include "display/intel_hotplug.h"
 #include "display/intel_overlay.h"
 #include "display/intel_pipe_crc.h"
+#include "display/intel_pps.h"
 #include "display/intel_sprite.h"
 #include "display/intel_vga.h"
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
