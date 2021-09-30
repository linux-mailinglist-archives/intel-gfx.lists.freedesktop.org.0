Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B1C41D639
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 11:23:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1771F6E3B7;
	Thu, 30 Sep 2021 09:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 553C46E3B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 09:23:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="223256122"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="223256122"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:23:31 -0700
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="563979002"
Received: from vmurthy-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.37.18])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:23:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Date: Thu, 30 Sep 2021 12:23:01 +0300
Message-Id: <0a5fa9b8d4d4615d4e6503b6bb33541c0bccffbb.1632992608.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632992608.git.jani.nikula@intel.com>
References: <cover.1632992608.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/dsi: move dsi pll modeset asserts
 to vlv_dsi_pll.c
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

Keep the functionality and the assert code together.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   |  1 +
 drivers/gpu/drm/i915/display/intel_display.c | 16 --------------
 drivers/gpu/drm/i915/display/intel_display.h |  3 ---
 drivers/gpu/drm/i915/display/intel_dsi.h     |  3 +++
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c   | 23 ++++++++++++++++++++
 5 files changed, 27 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 34463aeec25c..5359b7305a78 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -26,6 +26,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dpll.h"
+#include "intel_dsi.h"
 
 #define CTM_COEFF_SIGN	(1ULL << 63)
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 725562791a07..ef540a7835b7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -398,22 +398,6 @@ intel_wait_for_pipe_off(const struct intel_crtc_state *old_crtc_state)
 	}
 }
 
-/* XXX: the dsi pll is shared between MIPI DSI ports */
-void assert_dsi_pll(struct drm_i915_private *dev_priv, bool state)
-{
-	u32 val;
-	bool cur_state;
-
-	vlv_cck_get(dev_priv);
-	val = vlv_cck_read(dev_priv, CCK_REG_DSI_PLL_CONTROL);
-	vlv_cck_put(dev_priv);
-
-	cur_state = val & DSI_PLL_VCO_EN;
-	I915_STATE_WARN(cur_state != state,
-	     "DSI PLL state assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
-}
-
 void assert_transcoder(struct drm_i915_private *dev_priv,
 		       enum transcoder cpu_transcoder, bool state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b3ccec541aa0..3028072c2cf3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -645,9 +645,6 @@ void intel_init_pch_refclk(struct drm_i915_private *dev_priv);
 int intel_modeset_all_pipes(struct intel_atomic_state *state);
 
 /* modesetting asserts */
-void assert_dsi_pll(struct drm_i915_private *dev_priv, bool state);
-#define assert_dsi_pll_enabled(d) assert_dsi_pll(d, true)
-#define assert_dsi_pll_disabled(d) assert_dsi_pll(d, false)
 void assert_transcoder(struct drm_i915_private *dev_priv,
 		       enum transcoder cpu_transcoder, bool state);
 #define assert_transcoder_enabled(d, t) assert_transcoder(d, t, true)
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index 50d6da0b2419..fbc40ffdc02e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -207,6 +207,9 @@ u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
 		     struct intel_crtc_state *config);
 void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port);
 
+void assert_dsi_pll_enabled(struct drm_i915_private *i915);
+void assert_dsi_pll_disabled(struct drm_i915_private *i915);
+
 /* intel_dsi_vbt.c */
 bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id);
 void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is_on);
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index 90185b219447..0078973cd219 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -568,3 +568,26 @@ void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
 	}
 	intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), CLOCKSTOP);
 }
+
+static void assert_dsi_pll(struct drm_i915_private *i915, bool state)
+{
+	bool cur_state;
+
+	vlv_cck_get(i915);
+	cur_state = vlv_cck_read(i915, CCK_REG_DSI_PLL_CONTROL) & DSI_PLL_VCO_EN;
+	vlv_cck_put(i915);
+
+	I915_STATE_WARN(cur_state != state,
+			"DSI PLL state assertion failure (expected %s, current %s)\n",
+			onoff(state), onoff(cur_state));
+}
+
+void assert_dsi_pll_enabled(struct drm_i915_private *i915)
+{
+	assert_dsi_pll(i915, true);
+}
+
+void assert_dsi_pll_disabled(struct drm_i915_private *i915)
+{
+	assert_dsi_pll(i915, false);
+}
-- 
2.30.2

