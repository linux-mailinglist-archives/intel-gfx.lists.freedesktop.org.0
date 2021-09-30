Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEA741D63A
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 11:23:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB98D6E3C1;
	Thu, 30 Sep 2021 09:23:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C6456E3C1
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 09:23:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="225184539"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="225184539"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:23:27 -0700
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="555648833"
Received: from vmurthy-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.37.18])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:23:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Date: Thu, 30 Sep 2021 12:23:00 +0300
Message-Id: <0229659fb8af6c91c774408c6f7bb8c4ff8735e3.1632992608.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632992608.git.jani.nikula@intel.com>
References: <cover.1632992608.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/dpll: move dpll modeset asserts to
 intel_dpll.c
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
 drivers/gpu/drm/i915/display/intel_color.c    |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 14 ------------
 drivers/gpu/drm/i915/display/intel_display.h  |  4 ----
 .../drm/i915/display/intel_display_power.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_dpll.c     | 22 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpll.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
 7 files changed, 29 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index f5923f1c38bd..34463aeec25c 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -25,6 +25,7 @@
 #include "intel_color.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dpll.h"
 
 #define CTM_COEFF_SIGN	(1ULL << 63)
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 929f8a50b0e7..725562791a07 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -398,20 +398,6 @@ intel_wait_for_pipe_off(const struct intel_crtc_state *old_crtc_state)
 	}
 }
 
-/* Only for pre-ILK configs */
-void assert_pll(struct drm_i915_private *dev_priv,
-		enum pipe pipe, bool state)
-{
-	u32 val;
-	bool cur_state;
-
-	val = intel_de_read(dev_priv, DPLL(pipe));
-	cur_state = !!(val & DPLL_VCO_ENABLE);
-	I915_STATE_WARN(cur_state != state,
-	     "PLL state assertion failure (expected %s, current %s)\n",
-			onoff(state), onoff(cur_state));
-}
-
 /* XXX: the dsi pll is shared between MIPI DSI ports */
 void assert_dsi_pll(struct drm_i915_private *dev_priv, bool state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 5306d119b2c0..b3ccec541aa0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -645,10 +645,6 @@ void intel_init_pch_refclk(struct drm_i915_private *dev_priv);
 int intel_modeset_all_pipes(struct intel_atomic_state *state);
 
 /* modesetting asserts */
-void assert_pll(struct drm_i915_private *dev_priv,
-		enum pipe pipe, bool state);
-#define assert_pll_enabled(d, p) assert_pll(d, p, true)
-#define assert_pll_disabled(d, p) assert_pll(d, p, false)
 void assert_dsi_pll(struct drm_i915_private *dev_priv, bool state);
 #define assert_dsi_pll_enabled(d) assert_dsi_pll(d, true)
 #define assert_dsi_pll_disabled(d) assert_dsi_pll(d, false)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2410c1a617ea..06e9879aedd7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -9,11 +9,12 @@
 #include "i915_irq.h"
 #include "intel_cdclk.h"
 #include "intel_combo_phy.h"
-#include "intel_display_power.h"
 #include "intel_de.h"
+#include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dpio_phy.h"
+#include "intel_dpll.h"
 #include "intel_hotplug.h"
 #include "intel_pm.h"
 #include "intel_pps.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 66784204f6f7..b84ed4a1bd95 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1923,3 +1923,25 @@ void vlv_force_pll_off(struct drm_i915_private *dev_priv, enum pipe pipe)
 	else
 		vlv_disable_pll(dev_priv, pipe);
 }
+
+/* Only for pre-ILK configs */
+static void assert_pll(struct drm_i915_private *dev_priv,
+		       enum pipe pipe, bool state)
+{
+	bool cur_state;
+
+	cur_state = intel_de_read(dev_priv, DPLL(pipe)) & DPLL_VCO_ENABLE;
+	I915_STATE_WARN(cur_state != state,
+			"PLL state assertion failure (expected %s, current %s)\n",
+			onoff(state), onoff(cur_state));
+}
+
+void assert_pll_enabled(struct drm_i915_private *i915, enum pipe pipe)
+{
+	assert_pll(i915, pipe, true);
+}
+
+void assert_pll_disabled(struct drm_i915_private *i915, enum pipe pipe)
+{
+	assert_pll(i915, pipe, false);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index db396b3e1141..1af0ac43cca4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -36,4 +36,7 @@ bool bxt_find_best_dpll(struct intel_crtc_state *crtc_state,
 			struct dpll *best_clock);
 int chv_calc_dpll_params(int refclk, struct dpll *pll_clock);
 
+void assert_pll_enabled(struct drm_i915_private *i915, enum pipe pipe);
+void assert_pll_disabled(struct drm_i915_private *i915, enum pipe pipe);
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 6520a8984651..0819b791e857 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -44,6 +44,7 @@
 #include "intel_connector.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dpll.h"
 #include "intel_fdi.h"
 #include "intel_gmbus.h"
 #include "intel_lvds.h"
-- 
2.30.2

