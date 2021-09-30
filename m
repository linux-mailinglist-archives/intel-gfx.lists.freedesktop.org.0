Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A945941D637
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 11:23:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0961C6E3B2;
	Thu, 30 Sep 2021 09:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B7026E3B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 09:23:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="225184504"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="225184504"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:23:17 -0700
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="563978930"
Received: from vmurthy-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.37.18])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:23:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Date: Thu, 30 Sep 2021 12:22:58 +0300
Message-Id: <427d27eb4e5daca208d496d6c2ffc91ed90ba714.1632992608.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632992608.git.jani.nikula@intel.com>
References: <cover.1632992608.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/fdi: move fdi modeset asserts to
 intel_fdi.c
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
 drivers/gpu/drm/i915/display/intel_display.c | 72 ----------------
 drivers/gpu/drm/i915/display/intel_display.h |  4 -
 drivers/gpu/drm/i915/display/intel_fdi.c     | 91 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fdi.h     | 10 +++
 drivers/gpu/drm/i915/display/intel_lvds.c    |  1 +
 5 files changed, 102 insertions(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4ce80ca7751f..02400e5f518d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -428,78 +428,6 @@ void assert_dsi_pll(struct drm_i915_private *dev_priv, bool state)
 			onoff(state), onoff(cur_state));
 }
 
-static void assert_fdi_tx(struct drm_i915_private *dev_priv,
-			  enum pipe pipe, bool state)
-{
-	bool cur_state;
-
-	if (HAS_DDI(dev_priv)) {
-		/*
-		 * DDI does not have a specific FDI_TX register.
-		 *
-		 * FDI is never fed from EDP transcoder
-		 * so pipe->transcoder cast is fine here.
-		 */
-		enum transcoder cpu_transcoder = (enum transcoder)pipe;
-		u32 val = intel_de_read(dev_priv,
-					TRANS_DDI_FUNC_CTL(cpu_transcoder));
-		cur_state = !!(val & TRANS_DDI_FUNC_ENABLE);
-	} else {
-		u32 val = intel_de_read(dev_priv, FDI_TX_CTL(pipe));
-		cur_state = !!(val & FDI_TX_ENABLE);
-	}
-	I915_STATE_WARN(cur_state != state,
-	     "FDI TX state assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
-}
-#define assert_fdi_tx_enabled(d, p) assert_fdi_tx(d, p, true)
-#define assert_fdi_tx_disabled(d, p) assert_fdi_tx(d, p, false)
-
-static void assert_fdi_rx(struct drm_i915_private *dev_priv,
-			  enum pipe pipe, bool state)
-{
-	u32 val;
-	bool cur_state;
-
-	val = intel_de_read(dev_priv, FDI_RX_CTL(pipe));
-	cur_state = !!(val & FDI_RX_ENABLE);
-	I915_STATE_WARN(cur_state != state,
-	     "FDI RX state assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
-}
-#define assert_fdi_rx_enabled(d, p) assert_fdi_rx(d, p, true)
-#define assert_fdi_rx_disabled(d, p) assert_fdi_rx(d, p, false)
-
-static void assert_fdi_tx_pll_enabled(struct drm_i915_private *dev_priv,
-				      enum pipe pipe)
-{
-	u32 val;
-
-	/* ILK FDI PLL is always enabled */
-	if (IS_IRONLAKE(dev_priv))
-		return;
-
-	/* On Haswell, DDI ports are responsible for the FDI PLL setup */
-	if (HAS_DDI(dev_priv))
-		return;
-
-	val = intel_de_read(dev_priv, FDI_TX_CTL(pipe));
-	I915_STATE_WARN(!(val & FDI_TX_PLL_ENABLE), "FDI TX PLL assertion failure, should be active but is disabled\n");
-}
-
-void assert_fdi_rx_pll(struct drm_i915_private *dev_priv,
-		       enum pipe pipe, bool state)
-{
-	u32 val;
-	bool cur_state;
-
-	val = intel_de_read(dev_priv, FDI_RX_CTL(pipe));
-	cur_state = !!(val & FDI_RX_PLL_ENABLE);
-	I915_STATE_WARN(cur_state != state,
-	     "FDI RX PLL assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
-}
-
 void assert_panel_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
 	i915_reg_t pp_reg;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 87b96fed5e0b..8cb3bb33cbe0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -654,10 +654,6 @@ void assert_pll(struct drm_i915_private *dev_priv,
 void assert_dsi_pll(struct drm_i915_private *dev_priv, bool state);
 #define assert_dsi_pll_enabled(d) assert_dsi_pll(d, true)
 #define assert_dsi_pll_disabled(d) assert_dsi_pll(d, false)
-void assert_fdi_rx_pll(struct drm_i915_private *dev_priv,
-		       enum pipe pipe, bool state);
-#define assert_fdi_rx_pll_enabled(d, p) assert_fdi_rx_pll(d, p, true)
-#define assert_fdi_rx_pll_disabled(d, p) assert_fdi_rx_pll(d, p, false)
 void assert_transcoder(struct drm_i915_private *dev_priv,
 		       enum transcoder cpu_transcoder, bool state);
 #define assert_transcoder_enabled(d, t) assert_transcoder(d, t, true)
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index af01d1fa761e..02d3294bad7b 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -10,6 +10,97 @@
 #include "intel_fdi.h"
 #include "intel_sideband.h"
 
+static void assert_fdi_tx(struct drm_i915_private *dev_priv,
+			  enum pipe pipe, bool state)
+{
+	bool cur_state;
+
+	if (HAS_DDI(dev_priv)) {
+		/*
+		 * DDI does not have a specific FDI_TX register.
+		 *
+		 * FDI is never fed from EDP transcoder
+		 * so pipe->transcoder cast is fine here.
+		 */
+		enum transcoder cpu_transcoder = (enum transcoder)pipe;
+		cur_state = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder)) & TRANS_DDI_FUNC_ENABLE;
+	} else {
+		cur_state = intel_de_read(dev_priv, FDI_TX_CTL(pipe)) & FDI_TX_ENABLE;
+	}
+	I915_STATE_WARN(cur_state != state,
+			"FDI TX state assertion failure (expected %s, current %s)\n",
+			onoff(state), onoff(cur_state));
+}
+
+void assert_fdi_tx_enabled(struct drm_i915_private *i915, enum pipe pipe)
+{
+	assert_fdi_tx(i915, pipe, true);
+}
+
+void assert_fdi_tx_disabled(struct drm_i915_private *i915, enum pipe pipe)
+{
+	assert_fdi_tx(i915, pipe, false);
+}
+
+static void assert_fdi_rx(struct drm_i915_private *dev_priv,
+			  enum pipe pipe, bool state)
+{
+	bool cur_state;
+
+	cur_state = intel_de_read(dev_priv, FDI_RX_CTL(pipe)) & FDI_RX_ENABLE;
+	I915_STATE_WARN(cur_state != state,
+			"FDI RX state assertion failure (expected %s, current %s)\n",
+			onoff(state), onoff(cur_state));
+}
+
+void assert_fdi_rx_enabled(struct drm_i915_private *i915, enum pipe pipe)
+{
+	assert_fdi_rx(i915, pipe, true);
+}
+
+void assert_fdi_rx_disabled(struct drm_i915_private *i915, enum pipe pipe)
+{
+	assert_fdi_rx(i915, pipe, false);
+}
+
+void assert_fdi_tx_pll_enabled(struct drm_i915_private *i915,
+			       enum pipe pipe)
+{
+	bool cur_state;
+
+	/* ILK FDI PLL is always enabled */
+	if (IS_IRONLAKE(i915))
+		return;
+
+	/* On Haswell, DDI ports are responsible for the FDI PLL setup */
+	if (HAS_DDI(i915))
+		return;
+
+	cur_state = intel_de_read(i915, FDI_TX_CTL(pipe)) & FDI_TX_PLL_ENABLE;
+	I915_STATE_WARN(!cur_state, "FDI TX PLL assertion failure, should be active but is disabled\n");
+}
+
+static void assert_fdi_rx_pll(struct drm_i915_private *i915,
+			      enum pipe pipe, bool state)
+{
+	bool cur_state;
+
+	cur_state = intel_de_read(i915, FDI_RX_CTL(pipe)) & FDI_RX_PLL_ENABLE;
+	I915_STATE_WARN(cur_state != state,
+			"FDI RX PLL assertion failure (expected %s, current %s)\n",
+			onoff(state), onoff(cur_state));
+}
+
+void assert_fdi_rx_pll_enabled(struct drm_i915_private *i915, enum pipe pipe)
+{
+	assert_fdi_rx_pll(i915, pipe, true);
+}
+
+void assert_fdi_rx_pll_disabled(struct drm_i915_private *i915, enum pipe pipe)
+{
+	assert_fdi_rx_pll(i915, pipe, false);
+}
+
 void intel_fdi_link_train(struct intel_crtc *crtc,
 			  const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
index 61cb216a09f5..d557fc603d7d 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -6,6 +6,7 @@
 #ifndef _INTEL_FDI_H_
 #define _INTEL_FDI_H_
 
+enum pipe;
 struct drm_i915_private;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -28,4 +29,13 @@ void lpt_fdi_program_mphy(struct drm_i915_private *i915);
 
 void intel_fdi_link_train(struct intel_crtc *crtc,
 			  const struct intel_crtc_state *crtc_state);
+
+void assert_fdi_tx_enabled(struct drm_i915_private *i915, enum pipe pipe);
+void assert_fdi_tx_disabled(struct drm_i915_private *i915, enum pipe pipe);
+void assert_fdi_rx_enabled(struct drm_i915_private *i915, enum pipe pipe);
+void assert_fdi_rx_disabled(struct drm_i915_private *i915, enum pipe pipe);
+void assert_fdi_tx_pll_enabled(struct drm_i915_private *i915, enum pipe pipe);
+void assert_fdi_rx_pll_enabled(struct drm_i915_private *i915, enum pipe pipe);
+void assert_fdi_rx_pll_disabled(struct drm_i915_private *i915, enum pipe pipe);
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index e9fb402708a7..6520a8984651 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -44,6 +44,7 @@
 #include "intel_connector.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_fdi.h"
 #include "intel_gmbus.h"
 #include "intel_lvds.h"
 #include "intel_panel.h"
-- 
2.30.2

