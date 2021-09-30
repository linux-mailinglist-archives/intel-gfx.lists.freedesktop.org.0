Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1602241D638
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 11:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6592B6E3BB;
	Thu, 30 Sep 2021 09:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B926E3B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 09:23:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="212223079"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="212223079"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:23:21 -0700
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="520280555"
Received: from vmurthy-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.37.18])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:23:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Date: Thu, 30 Sep 2021 12:22:59 +0300
Message-Id: <a9b77692a145891789eefb0447e082cfc22aaa85.1632992608.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632992608.git.jani.nikula@intel.com>
References: <cover.1632992608.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=true
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/pps: move pps (panel) modeset
 asserts to intel_pps.c
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

Move assert_panel_unlocked() to intel_pps.c and rename
assert_pps_unlocked(). Keep the functionality and the assert code
together.

There's still a bit of a split between the eDP PPS usage in intel_pps.c
and all the other PPS usage, and assert_pps_unlocked() is arguably more
related to the latter. However, intel_pps.c is the best fit for anything
touching the PPS registers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 60 +-------------------
 drivers/gpu/drm/i915/display/intel_display.h |  2 -
 drivers/gpu/drm/i915/display/intel_dpll.c    | 13 +++--
 drivers/gpu/drm/i915/display/intel_pps.c     | 59 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pps.h     |  3 +
 5 files changed, 71 insertions(+), 66 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 02400e5f518d..929f8a50b0e7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -428,64 +428,6 @@ void assert_dsi_pll(struct drm_i915_private *dev_priv, bool state)
 			onoff(state), onoff(cur_state));
 }
 
-void assert_panel_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
-{
-	i915_reg_t pp_reg;
-	u32 val;
-	enum pipe panel_pipe = INVALID_PIPE;
-	bool locked = true;
-
-	if (drm_WARN_ON(&dev_priv->drm, HAS_DDI(dev_priv)))
-		return;
-
-	if (HAS_PCH_SPLIT(dev_priv)) {
-		u32 port_sel;
-
-		pp_reg = PP_CONTROL(0);
-		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;
-
-		switch (port_sel) {
-		case PANEL_PORT_SELECT_LVDS:
-			intel_lvds_port_enabled(dev_priv, PCH_LVDS, &panel_pipe);
-			break;
-		case PANEL_PORT_SELECT_DPA:
-			g4x_dp_port_enabled(dev_priv, DP_A, PORT_A, &panel_pipe);
-			break;
-		case PANEL_PORT_SELECT_DPC:
-			g4x_dp_port_enabled(dev_priv, PCH_DP_C, PORT_C, &panel_pipe);
-			break;
-		case PANEL_PORT_SELECT_DPD:
-			g4x_dp_port_enabled(dev_priv, PCH_DP_D, PORT_D, &panel_pipe);
-			break;
-		default:
-			MISSING_CASE(port_sel);
-			break;
-		}
-	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		/* presumably write lock depends on pipe, not port select */
-		pp_reg = PP_CONTROL(pipe);
-		panel_pipe = pipe;
-	} else {
-		u32 port_sel;
-
-		pp_reg = PP_CONTROL(0);
-		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;
-
-		drm_WARN_ON(&dev_priv->drm,
-			    port_sel != PANEL_PORT_SELECT_LVDS);
-		intel_lvds_port_enabled(dev_priv, LVDS, &panel_pipe);
-	}
-
-	val = intel_de_read(dev_priv, pp_reg);
-	if (!(val & PANEL_POWER_ON) ||
-	    ((val & PANEL_UNLOCK_MASK) == PANEL_UNLOCK_REGS))
-		locked = false;
-
-	I915_STATE_WARN(panel_pipe == pipe && locked,
-	     "panel assertion failure, pipe %c regs locked\n",
-	     pipe_name(pipe));
-}
-
 void assert_transcoder(struct drm_i915_private *dev_priv,
 		       enum transcoder cpu_transcoder, bool state)
 {
@@ -2130,7 +2072,7 @@ static void ilk_pch_enable(const struct intel_atomic_state *state,
 	intel_enable_shared_dpll(crtc_state);
 
 	/* set transcoder timing, panel must allow it */
-	assert_panel_unlocked(dev_priv, pipe);
+	assert_pps_unlocked(dev_priv, pipe);
 	ilk_pch_transcoder_set_timings(crtc_state, pipe);
 
 	intel_fdi_normal_train(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 8cb3bb33cbe0..5306d119b2c0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -645,8 +645,6 @@ void intel_init_pch_refclk(struct drm_i915_private *dev_priv);
 int intel_modeset_all_pipes(struct intel_atomic_state *state);
 
 /* modesetting asserts */
-void assert_panel_unlocked(struct drm_i915_private *dev_priv,
-			   enum pipe pipe);
 void assert_pll(struct drm_i915_private *dev_priv,
 		enum pipe pipe, bool state);
 #define assert_pll_enabled(d, p) assert_pll(d, p, true)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 784e3ee658b5..66784204f6f7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -2,16 +2,19 @@
 /*
  * Copyright © 2020 Intel Corporation
  */
+
 #include <linux/kernel.h>
+
 #include "intel_crtc.h"
 #include "intel_de.h"
-#include "intel_display_types.h"
 #include "intel_display.h"
+#include "intel_display_types.h"
 #include "intel_dpll.h"
 #include "intel_lvds.h"
 #include "intel_panel.h"
+#include "intel_pps.h"
 #include "intel_sideband.h"
-#include "display/intel_snps_phy.h"
+#include "intel_snps_phy.h"
 
 struct intel_limit {
 	struct {
@@ -1438,7 +1441,7 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 
 	/* PLL is protected by panel, make sure we can write it */
 	if (i9xx_has_pps(dev_priv))
-		assert_panel_unlocked(dev_priv, pipe);
+		assert_pps_unlocked(dev_priv, pipe);
 
 	intel_de_write(dev_priv, FP0(pipe), crtc_state->dpll_hw_state.fp0);
 	intel_de_write(dev_priv, FP1(pipe), crtc_state->dpll_hw_state.fp1);
@@ -1617,7 +1620,7 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
 
 	/* PLL is protected by panel, make sure we can write it */
-	assert_panel_unlocked(dev_priv, pipe);
+	assert_pps_unlocked(dev_priv, pipe);
 
 	/* Enable Refclk */
 	intel_de_write(dev_priv, DPLL(pipe),
@@ -1769,7 +1772,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
 
 	/* PLL is protected by panel, make sure we can write it */
-	assert_panel_unlocked(dev_priv, pipe);
+	assert_pps_unlocked(dev_priv, pipe);
 
 	/* Enable Refclk and SSC */
 	intel_de_write(dev_priv, DPLL(pipe),
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index a36ec4a818ff..e9c679bb1b2e 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -9,6 +9,7 @@
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dpll.h"
+#include "intel_lvds.h"
 #include "intel_pps.h"
 
 static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
@@ -1408,3 +1409,61 @@ void intel_pps_setup(struct drm_i915_private *i915)
 	else
 		i915->pps_mmio_base = PPS_BASE;
 }
+
+void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
+{
+	i915_reg_t pp_reg;
+	u32 val;
+	enum pipe panel_pipe = INVALID_PIPE;
+	bool locked = true;
+
+	if (drm_WARN_ON(&dev_priv->drm, HAS_DDI(dev_priv)))
+		return;
+
+	if (HAS_PCH_SPLIT(dev_priv)) {
+		u32 port_sel;
+
+		pp_reg = PP_CONTROL(0);
+		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;
+
+		switch (port_sel) {
+		case PANEL_PORT_SELECT_LVDS:
+			intel_lvds_port_enabled(dev_priv, PCH_LVDS, &panel_pipe);
+			break;
+		case PANEL_PORT_SELECT_DPA:
+			g4x_dp_port_enabled(dev_priv, DP_A, PORT_A, &panel_pipe);
+			break;
+		case PANEL_PORT_SELECT_DPC:
+			g4x_dp_port_enabled(dev_priv, PCH_DP_C, PORT_C, &panel_pipe);
+			break;
+		case PANEL_PORT_SELECT_DPD:
+			g4x_dp_port_enabled(dev_priv, PCH_DP_D, PORT_D, &panel_pipe);
+			break;
+		default:
+			MISSING_CASE(port_sel);
+			break;
+		}
+	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+		/* presumably write lock depends on pipe, not port select */
+		pp_reg = PP_CONTROL(pipe);
+		panel_pipe = pipe;
+	} else {
+		u32 port_sel;
+
+		pp_reg = PP_CONTROL(0);
+		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;
+
+		drm_WARN_ON(&dev_priv->drm,
+			    port_sel != PANEL_PORT_SELECT_LVDS);
+		intel_lvds_port_enabled(dev_priv, LVDS, &panel_pipe);
+	}
+
+	val = intel_de_read(dev_priv, pp_reg);
+	if (!(val & PANEL_POWER_ON) ||
+	    ((val & PANEL_UNLOCK_MASK) == PANEL_UNLOCK_REGS))
+		locked = false;
+
+	I915_STATE_WARN(panel_pipe == pipe && locked,
+			"panel assertion failure, pipe %c regs locked\n",
+			pipe_name(pipe));
+}
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index fbbcca782e7b..fbb47f6f453e 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -10,6 +10,7 @@
 
 #include "intel_wakeref.h"
 
+enum pipe;
 struct drm_i915_private;
 struct intel_connector;
 struct intel_crtc_state;
@@ -49,4 +50,6 @@ void vlv_pps_init(struct intel_encoder *encoder,
 void intel_pps_unlock_regs_wa(struct drm_i915_private *i915);
 void intel_pps_setup(struct drm_i915_private *i915);
 
+void assert_pps_unlocked(struct drm_i915_private *i915, enum pipe pipe);
+
 #endif /* __INTEL_PPS_H__ */
-- 
2.30.2

