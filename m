Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A115E5A0304
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 22:51:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07807C9303;
	Wed, 24 Aug 2022 20:50:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91C2CB5216
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347118; x=1692883118;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CvFwO/ljVtVGqMEr0hwNAEeMV/974OyKwrpgOVqGFYA=;
 b=YDckHrkwUnquXhZ8iTHEfi2vST11ySSus3YXc3/R57bYowDQeJeF0Ga5
 s2e3JcRrqlrM8W6neyTPZ9wYHIus5agxbuKxDKsmDfPN28afgdpY+r9qp
 eWyru+b+QkZA1Ef6Xz76gA0CkwEUaJjv37J+9eC8Nv+OTO0CY0R6gY8+X
 znT5c65j++p8pm2y9I7D/nDXksuZx1Y31IP1P8IoLpw+FwhDFfuXq1HE6
 SIH+D9kj+eYFxksb2FD7Rh7WNx7uz76u+ieErKxwTtbAsqqqGiQhasGee
 q47AES4Jn4QAnszEjB7/uAsdjBrTy89fzePlFOv25y1B7h/bziExfsT/4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="280936802"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="280936802"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:18:37 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="560598718"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:18:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:16:00 +0300
Message-Id: <be47e9cf9e397484be3cc432660f195d4a46e396.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 34/38] drm/i915/quirks: abstract checking for
 display quirks
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add intel_has_quirk() for checking if a display quirk is present. Avoid
accessing i915->quirks all over the place.

v2: Rebase

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 9 +++++----
 drivers/gpu/drm/i915/display/intel_ddi.c       | 3 ++-
 drivers/gpu/drm/i915/display/intel_panel.c     | 5 +++--
 drivers/gpu/drm/i915/display/intel_pps.c       | 3 ++-
 drivers/gpu/drm/i915/display/intel_quirks.c    | 5 +++++
 drivers/gpu/drm/i915/display/intel_quirks.h    | 5 ++++-
 6 files changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index f20f3c06ca96..11a1342d6d37 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -18,6 +18,7 @@
 #include "intel_panel.h"
 #include "intel_pci_config.h"
 #include "intel_pps.h"
+#include "intel_quirks.h"
 
 /**
  * scale - scale values from one range to another
@@ -88,7 +89,7 @@ u32 intel_backlight_invert_pwm_level(struct intel_connector *connector, u32 val)
 		return val;
 
 	if (dev_priv->params.invert_brightness > 0 ||
-	    dev_priv->quirks & QUIRK_INVERT_BRIGHTNESS) {
+	    intel_has_quirk(dev_priv, QUIRK_INVERT_BRIGHTNESS)) {
 		return panel->backlight.pwm_level_max - val + panel->backlight.pwm_level_min;
 	}
 
@@ -128,7 +129,7 @@ u32 intel_backlight_level_from_pwm(struct intel_connector *connector, u32 val)
 			 panel->backlight.max == 0 || panel->backlight.pwm_level_max == 0);
 
 	if (dev_priv->params.invert_brightness > 0 ||
-	    (dev_priv->params.invert_brightness == 0 && dev_priv->quirks & QUIRK_INVERT_BRIGHTNESS))
+	    (dev_priv->params.invert_brightness == 0 && intel_has_quirk(dev_priv, QUIRK_INVERT_BRIGHTNESS)))
 		val = panel->backlight.pwm_level_max - (val - panel->backlight.pwm_level_min);
 
 	return scale(val, panel->backlight.pwm_level_min, panel->backlight.pwm_level_max,
@@ -1605,7 +1606,7 @@ int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
 	int ret;
 
 	if (!connector->panel.vbt.backlight.present) {
-		if (dev_priv->quirks & QUIRK_BACKLIGHT_PRESENT) {
+		if (intel_has_quirk(dev_priv, QUIRK_BACKLIGHT_PRESENT)) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "no backlight present per VBT, but present per quirk\n");
 		} else {
@@ -1777,7 +1778,7 @@ void intel_backlight_init_funcs(struct intel_panel *panel)
 		if (intel_dp_aux_init_backlight_funcs(connector) == 0)
 			return;
 
-		if (!(dev_priv->quirks & QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
+		if (!intel_has_quirk(dev_priv, QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
 			connector->panel.backlight.power = intel_pps_backlight_power;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b7702c4581aa..f5416433826d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -57,6 +57,7 @@
 #include "intel_lspcon.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
+#include "intel_quirks.h"
 #include "intel_snps_phy.h"
 #include "intel_sprite.h"
 #include "intel_tc.h"
@@ -631,7 +632,7 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 
 	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), ctl);
 
-	if (dev_priv->quirks & QUIRK_INCREASE_DDI_DISABLED_TIME &&
+	if (intel_has_quirk(dev_priv, QUIRK_INCREASE_DDI_DISABLED_TIME) &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Quirk Increase DDI disabled time\n");
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 43dbc5a3ec37..a1b4ef1ad917 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -37,13 +37,14 @@
 #include "intel_display_types.h"
 #include "intel_drrs.h"
 #include "intel_panel.h"
+#include "intel_quirks.h"
 
 bool intel_panel_use_ssc(struct drm_i915_private *i915)
 {
 	if (i915->params.panel_use_ssc >= 0)
 		return i915->params.panel_use_ssc != 0;
-	return i915->display.vbt.lvds_use_ssc
-		&& !(i915->quirks & QUIRK_LVDS_SSC_DISABLE);
+	return i915->display.vbt.lvds_use_ssc &&
+		!intel_has_quirk(i915, QUIRK_LVDS_SSC_DISABLE);
 }
 
 const struct drm_display_mode *
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 9a66e03aa2d6..21944f5bf3a8 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -12,6 +12,7 @@
 #include "intel_dpll.h"
 #include "intel_lvds.h"
 #include "intel_pps.h"
+#include "intel_quirks.h"
 
 static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
 				      enum pipe pipe);
@@ -1202,7 +1203,7 @@ static void pps_init_delays_vbt(struct intel_dp *intel_dp,
 	 * just fails to power back on. Increasing the delay to 800ms
 	 * seems sufficient to avoid this problem.
 	 */
-	if (dev_priv->quirks & QUIRK_INCREASE_T12_DELAY) {
+	if (intel_has_quirk(dev_priv, QUIRK_INCREASE_T12_DELAY)) {
 		vbt->t11_t12 = max_t(u16, vbt->t11_t12, 1300 * 10);
 		drm_dbg_kms(&dev_priv->drm,
 			    "Increasing T12 panel delay as per the quirk to %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index c8488f5ebd04..9b5db1193a00 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -213,3 +213,8 @@ void intel_init_quirks(struct drm_i915_private *i915)
 			intel_dmi_quirks[i].hook(i915);
 	}
 }
+
+bool intel_has_quirk(struct drm_i915_private *i915, unsigned long quirk)
+{
+	return i915->quirks & quirk;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index b0fcff142a56..f5e399a6e7d3 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -6,8 +6,11 @@
 #ifndef __INTEL_QUIRKS_H__
 #define __INTEL_QUIRKS_H__
 
+#include <linux/types.h>
+
 struct drm_i915_private;
 
-void intel_init_quirks(struct drm_i915_private *dev_priv);
+void intel_init_quirks(struct drm_i915_private *i915);
+bool intel_has_quirk(struct drm_i915_private *i915, unsigned long quirk);
 
 #endif /* __INTEL_QUIRKS_H__ */
-- 
2.34.1

