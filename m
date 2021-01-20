Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4792FCDC6
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 11:18:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8A766E14B;
	Wed, 20 Jan 2021 10:18:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE77F6E14B
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 10:18:45 +0000 (UTC)
IronPort-SDR: r/aGu8eFwy+0WBvXlm2YeJQFCW7u5295XdDdPpRZi5XzfyxgCeybLahwUrqX85Hd0c3XdBF8jv
 aUFDpLE8IOwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="158260123"
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="158260123"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 02:18:45 -0800
IronPort-SDR: QdNfB988sSEP7+QagRaqblpMycJSM2ovat3p++E/xa9QlHHp44MLOb4iFuy0vlfoBHF2d3QyGM
 G3W9XIF1tU4w==
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="355998548"
Received: from oreunova-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.45.61])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 02:18:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Jan 2021 12:18:32 +0200
Message-Id: <20210120101834.19813-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210120101834.19813-1-jani.nikula@intel.com>
References: <20210120101834.19813-1-jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/pps: move pps code over from
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

Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 41 ++------------------
 drivers/gpu/drm/i915/display/intel_display.h |  1 -
 drivers/gpu/drm/i915/display/intel_pps.c     | 34 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pps.h     |  3 ++
 drivers/gpu/drm/i915/i915_drv.c              |  1 +
 5 files changed, 42 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7373f54b216e..20c087552a95 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -83,6 +83,7 @@
 #include "intel_overlay.h"
 #include "intel_pipe_crc.h"
 #include "intel_pm.h"
+#include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_quirks.h"
 #include "intel_sideband.h"
@@ -13791,48 +13792,12 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
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
@@ -14844,6 +14809,8 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
 
 	intel_panel_sanitize_ssc(i915);
 
+	intel_pps_setup(i915);
+
 	intel_gmbus_setup(i915);
 
 	drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index bb72de152949..64ffa34544a7 100644
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
index da6ee0b52741..69d9d41b6d22 100644
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
index f5666b44ea9d..b37b189e219c 100644
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
