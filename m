Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2228CD516
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:54:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55A2E10E374;
	Thu, 23 May 2024 13:54:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HHBVFf8W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11E9110E374
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716472460; x=1748008460;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ufX/SZ+adXbauqBDvTdrpK8PoZxZ9peTs7BZ6PjygH4=;
 b=HHBVFf8WoXCNZTcntEXaw8klhd7dfe50/HUJC2DnTZu0v4VP+3Fj6KHv
 hJ2udtb9ZdxpohUvJN2iS7yn1ySQEI59n5L5aX6gKp7dfK8uUTwRnS6SQ
 +xdjs3EJofWjkv62WhCfTdxZ/eoRieFnLGbKJBcoxOOw6i8Fkvq4Z8XZx
 oPmqquWtX8rYHJjgzahR90klMECxH2aISEfF/teeIS4FevAjPHh6MTiap
 4YtnqAW5gkdlA8KJpVEPXhoCXl+VBqyyNoTqlEHpVdRintzSx7wQckBa2
 nwUBhuHxg4t4lqHkU3qeOBE92IUiNdq/k5bM2RHZ5ndgkMlK6qYWyvOi9 A==;
X-CSE-ConnectionGUID: H9ZsklB6QYOD5D+qTpTtgg==
X-CSE-MsgGUID: blQ1ZIzTQQeE/vB6y9ngRg==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16576952"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="16576952"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:54:19 -0700
X-CSE-ConnectionGUID: ZXHDUXT+R/WZQWH93S+2jQ==
X-CSE-MsgGUID: 8+VSv5vHQ0Wj8rNrAo6mXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="38143490"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmviesa003.fm.intel.com with ESMTP; 23 May 2024 06:54:18 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 2/2] drm/i915/display: Add compare config for MTL+ platforms
Date: Thu, 23 May 2024 16:46:49 +0300
Message-Id: <20240523134649.31452-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240523134649.31452-1-mika.kahola@intel.com>
References: <20240523134649.31452-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Currently, we may bump into pll mismatch errors during the
state verification stage. This happens when we try to use
fastset instead of full modeset. Hence, we would need to add
a check for pipe configuration to ensure that the sw and the
hw configuration will match. In case of hw and sw mismatch,
we would need to disable fastset and use full modeset instead.

v2: Fix C10 error on PLL comparison (BAT)
    Use memcmp instead of fixed loops for pll config
    comparison (Jani)
    Clean up and use intel_cx0pll_dump_hw_state() to dump
    pll information (Jani)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 77 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  8 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 33 ++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
 4 files changed, 109 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index c9e5bb6ecfd7..41f684c970dc 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2038,6 +2038,7 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 		if (crtc_state->port_clock == tables[i]->clock) {
 			crtc_state->dpll_hw_state.cx0pll.c10 = *tables[i];
 			intel_c10pll_update_pll(crtc_state, encoder);
+			crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
 
 			return 0;
 		}
@@ -2105,8 +2106,8 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
 		      MB_WRITE_COMMITTED);
 }
 
-void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
-				const struct intel_c10pll_state *hw_state)
+static void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
+				       const struct intel_c10pll_state *hw_state)
 {
 	bool fracen;
 	int i;
@@ -2277,6 +2278,7 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 	for (i = 0; tables[i]; i++) {
 		if (crtc_state->port_clock == tables[i]->clock) {
 			crtc_state->dpll_hw_state.cx0pll.c20 = *tables[i];
+			crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
 			return 0;
 		}
 	}
@@ -2410,8 +2412,8 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
-void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
-				const struct intel_c20pll_state *hw_state)
+static void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
+				       const struct intel_c20pll_state *hw_state)
 {
 	int i;
 
@@ -2430,6 +2432,15 @@ void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
 	}
 }
 
+void intel_cx0pll_dump_hw_state(struct drm_i915_private *i915,
+				const struct intel_cx0pll_state *hw_state)
+{
+	if (hw_state->use_c10)
+		intel_c10pll_dump_hw_state(i915, &hw_state->c10);
+	else
+		intel_c20pll_dump_hw_state(i915, &hw_state->c20);
+}
+
 static u8 intel_c20_get_dp_rate(u32 clock)
 {
 	switch (clock) {
@@ -3266,10 +3277,64 @@ static void intel_c10pll_state_verify(const struct intel_crtc_state *state,
 void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 				   struct intel_cx0pll_state *pll_state)
 {
-	if (intel_encoder_is_c10phy(encoder))
+	pll_state->use_c10 = false;
+
+	if (intel_encoder_is_c10phy(encoder)) {
 		intel_c10pll_readout_hw_state(encoder, &pll_state->c10);
-	else
+		pll_state->use_c10 = true;
+	} else {
 		intel_c20pll_readout_hw_state(encoder, &pll_state->c20);
+	}
+}
+
+static bool mtl_compare_hw_state_c10(const struct intel_c10pll_state *a,
+				     const struct intel_c10pll_state *b)
+{
+	if (a->tx != b->tx)
+		return false;
+
+	if (a->cmn != b->cmn)
+		return false;
+
+	if (memcmp(&a->pll, &b->pll, sizeof(a->pll)) != 0)
+		return false;
+
+	return true;
+}
+
+static bool mtl_compare_hw_state_c20(const struct intel_c20pll_state *a,
+				     const struct intel_c20pll_state *b)
+{
+	if (memcmp(&a->tx, &b->tx, sizeof(a->tx)) != 0)
+		return false;
+
+	if (memcmp(&a->cmn, &b->cmn, sizeof(a->cmn)) != 0)
+		return false;
+
+	if (a->tx[0] & C20_PHY_USE_MPLLB) {
+		if (memcmp(&a->mpllb, &b->mpllb, sizeof(a->mpllb)) != 0)
+			return false;
+	} else {
+		if (memcmp(&a->mplla, &b->mplla, sizeof(a->mplla)) != 0)
+			return false;
+	}
+
+	return true;
+}
+
+bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
+				   const struct intel_cx0pll_state *b)
+{
+
+	if (a->use_c10 != b->use_c10)
+		return false;
+
+	if (a->use_c10)
+		return mtl_compare_hw_state_c10(&a->c10,
+						&b->c10);
+	else
+		return mtl_compare_hw_state_c20(&a->c20,
+						&b->c20);
 }
 
 int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 3e03af3e006c..9004b99bb51f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -35,12 +35,12 @@ void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_cx0pll_state *pll_state);
 
-void intel_c10pll_dump_hw_state(struct drm_i915_private *dev_priv,
-				const struct intel_c10pll_state *hw_state);
+void intel_cx0pll_dump_hw_state(struct drm_i915_private *dev_priv,
+				const struct intel_cx0pll_state *hw_state);
 void intel_cx0pll_state_verify(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc);
-void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
-				const struct intel_c20pll_state *hw_state);
+bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
+				   const struct intel_cx0pll_state *b);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
 int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cce1420fb541..146208675b6e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -66,6 +66,7 @@
 #include "intel_crtc.h"
 #include "intel_crtc_state_dump.h"
 #include "intel_cursor_regs.h"
+#include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_driver.h"
@@ -5002,6 +5003,24 @@ pipe_config_pll_mismatch(struct drm_printer *p, bool fastset,
 	intel_dpll_dump_hw_state(i915, p, b);
 }
 
+static void
+pipe_config_cx0pll_mismatch(struct drm_printer *p, bool fastset,
+			    const struct intel_crtc *crtc,
+			    const char *name,
+			    const struct intel_cx0pll_state *a,
+			    const struct intel_cx0pll_state *b)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	char *chipname = a->use_c10 ? "C10" : "C20";
+
+	pipe_config_mismatch(p, fastset, crtc, name, chipname);
+
+	drm_printf(p, "expected:\n");
+	intel_cx0pll_dump_hw_state(i915, a);
+	drm_printf(p, "found:\n");
+	intel_cx0pll_dump_hw_state(i915, b);
+}
+
 bool
 intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			  const struct intel_crtc_state *pipe_config,
@@ -5105,6 +5124,16 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} \
 } while (0)
 
+#define PIPE_CONF_CHECK_PLL_CX0(name) do { \
+	if (!intel_cx0pll_compare_hw_state(&current_config->name, \
+					   &pipe_config->name)) { \
+		pipe_config_cx0pll_mismatch(&p, fastset, crtc, __stringify(name), \
+					    &current_config->name, \
+					    &pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)
+
 #define PIPE_CONF_CHECK_TIMINGS(name) do {     \
 	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
 	PIPE_CONF_CHECK_I(name.crtc_htotal); \
@@ -5337,6 +5366,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (dev_priv->display.dpll.mgr || HAS_GMCH(dev_priv))
 		PIPE_CONF_CHECK_PLL(dpll_hw_state);
 
+	/* FIXME convert MTL+ platforms over to dpll_mgr */
+	if (DISPLAY_VER(dev_priv) >= 14)
+		PIPE_CONF_CHECK_PLL_CX0(dpll_hw_state.cx0pll);
+
 	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
 	PIPE_CONF_CHECK_X(dsi_pll.div);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index f09e513ce05b..36baed75b89a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -264,6 +264,7 @@ struct intel_cx0pll_state {
 		struct intel_c20pll_state c20;
 	};
 	bool ssc_enabled;
+	bool use_c10;
 };
 
 struct intel_dpll_hw_state {
-- 
2.34.1

