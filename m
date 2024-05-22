Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F408CBB1B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 08:21:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8805710F149;
	Wed, 22 May 2024 06:21:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PjhxEev1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96A8C10EDF9
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2024 06:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716358873; x=1747894873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7zg7z8J9DJCUX4s40fIs6mIR22ZZIwVnllJL0pGNvco=;
 b=PjhxEev1FvNJQfchRt2WNC/wJzM/NmQqfqGOQHJC6sf8SBmKCY0MuSLu
 pnZCp8Onv5bN+TfodcYW+Nq4sGNh8kxjzmDvE2Mp9WQchoNl9IH0blm80
 NPXZkH0xnSxnAl9SUQsGOoEAI3psWJIar0gzBoCi3kcPTGLc6COz2ysYw
 nXieTof8Yb9ZGPOEYPlQaA4xI7KxYPqlRLUL+e5vzJsSpBp9OZg4v870d
 GsR9Umh7Yqkmqc85fygrKsgb3KDnubFUfx6HvRbQsemRiAAz0QFbeiA0r
 LnrLx+MCfJcS2kXC1lnmC1+i1xseugXVdtbTVlnq3e4w1WCPB98OcG1qm g==;
X-CSE-ConnectionGUID: 2DpBGIhiT06Bf6DdOdeKfw==
X-CSE-MsgGUID: TuERvWZORwSahbdVDNVZ/Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="35098129"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="35098129"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 23:21:13 -0700
X-CSE-ConnectionGUID: 8qUPO7KqT7a55+wQMsQ5iA==
X-CSE-MsgGUID: ZqnN+N5vT4Cp+fGmqxBzAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="56404506"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmviesa002.fm.intel.com with ESMTP; 21 May 2024 23:21:11 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 2/2] drm/i915/display: Add compare config for MTL+ platforms
Date: Wed, 22 May 2024 09:13:50 +0300
Message-Id: <20240522061350.248749-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240522061350.248749-1-mika.kahola@intel.com>
References: <20240522061350.248749-1-mika.kahola@intel.com>
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

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 74 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  2 +
 drivers/gpu/drm/i915/display/intel_display.c  | 39 ++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
 4 files changed, 116 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index c9e5bb6ecfd7..f549753ab1cf 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2038,6 +2038,7 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 		if (crtc_state->port_clock == tables[i]->clock) {
 			crtc_state->dpll_hw_state.cx0pll.c10 = *tables[i];
 			intel_c10pll_update_pll(crtc_state, encoder);
+			crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
 
 			return 0;
 		}
@@ -2277,6 +2278,7 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 	for (i = 0; tables[i]; i++) {
 		if (crtc_state->port_clock == tables[i]->clock) {
 			crtc_state->dpll_hw_state.cx0pll.c20 = *tables[i];
+			crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
 			return 0;
 		}
 	}
@@ -3272,6 +3274,78 @@ void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 		intel_c20pll_readout_hw_state(encoder, &pll_state->c20);
 }
 
+static bool mtl_compare_hw_state_c10(const struct intel_c10pll_state *a,
+				     const struct intel_c10pll_state *b)
+{
+	return a->clock == b->clock ||
+	       a->tx == b->tx ||
+	       a->cmn == b->cmn ||
+	       a->pll[0] == b->pll[0] ||
+	       a->pll[1] == b->pll[1] ||
+	       a->pll[2] == b->pll[2] ||
+	       a->pll[3] == b->pll[3] ||
+	       a->pll[4] == b->pll[4] ||
+	       a->pll[5] == b->pll[5] ||
+	       a->pll[6] == b->pll[6] ||
+	       a->pll[7] == b->pll[7] ||
+	       a->pll[8] == b->pll[8] ||
+	       a->pll[9] == b->pll[9] ||
+	       a->pll[10] == b->pll[10] ||
+	       a->pll[11] == b->pll[11] ||
+	       a->pll[12] == b->pll[12] ||
+	       a->pll[13] == b->pll[13] ||
+	       a->pll[14] == b->pll[14] ||
+	       a->pll[15] == b->pll[15] ||
+	       a->pll[16] == b->pll[16] ||
+	       a->pll[17] == b->pll[17] ||
+	       a->pll[18] == b->pll[18] ||
+	       a->pll[19] == b->pll[19];
+}
+
+static bool mtl_compare_hw_state_c20(const struct intel_c20pll_state *a,
+				     const struct intel_c20pll_state *b)
+{
+	int i;
+
+	if (a->clock != b->clock)
+		return false;
+
+	for (i = 0; i < 3; i++) {
+		if (a->tx[i] != b->tx[i])
+			return false;
+	}
+
+	for (i = 4; i < 4; i++) {
+		if (a->cmn[i] != b->cmn[i])
+			return false;
+	}
+
+	if (a->tx[0] & C20_PHY_USE_MPLLB) {
+		for (i = 0; i < ARRAY_SIZE(a->mpllb); i++) {
+			if (a->mpllb[i] != b->mpllb[i])
+				return false;
+		}
+	} else {
+		for (i = 0; i < ARRAY_SIZE(a->mplla); i++) {
+			if (a->mplla[i] != b->mplla[i])
+				return false;
+		}
+	}
+
+	return true;
+}
+
+bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
+				   const struct intel_cx0pll_state *b)
+{
+	if (a->use_c10 && b->use_c10)
+		return mtl_compare_hw_state_c10(&a->c10,
+						&b->c10);
+	else
+		return mtl_compare_hw_state_c20(&a->c20,
+						&b->c20);
+}
+
 int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_cx0pll_state *pll_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 3e03af3e006c..180821df1834 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -39,6 +39,8 @@ void intel_c10pll_dump_hw_state(struct drm_i915_private *dev_priv,
 				const struct intel_c10pll_state *hw_state);
 void intel_cx0pll_state_verify(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc);
+bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
+				   const struct intel_cx0pll_state *b);
 void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
 				const struct intel_c20pll_state *hw_state);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cce1420fb541..17b43b2ae0e9 100644
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
@@ -5002,6 +5003,30 @@ pipe_config_pll_mismatch(struct drm_printer *p, bool fastset,
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
+
+	pipe_config_mismatch(p, fastset, crtc, name, " "); /* stupid -Werror=format-zero-length */
+
+	if (a->use_c10) {
+		drm_printf(p, "expected:\n");
+		intel_c10pll_dump_hw_state(i915, &a->c10);
+		drm_printf(p, "found:\n");
+		intel_c10pll_dump_hw_state(i915, &b->c10);
+	} else {
+		drm_printf(p, "expected:\n");
+		intel_c20pll_dump_hw_state(i915, &a->c20);
+		drm_printf(p, "found:\n");
+		intel_c20pll_dump_hw_state(i915, &b->c20);
+	}
+}
+
 bool
 intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			  const struct intel_crtc_state *pipe_config,
@@ -5105,6 +5130,16 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
@@ -5337,6 +5372,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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

