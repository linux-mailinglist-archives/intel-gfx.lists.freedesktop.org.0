Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D4EC2481D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:37:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC0010EB2C;
	Fri, 31 Oct 2025 10:37:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZwjHdG1Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FEF010EB29;
 Fri, 31 Oct 2025 10:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907067; x=1793443067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qSkpnVSinaVfGPMTlQFj7oh9L/cOh5f6b2MOPJwIqcE=;
 b=ZwjHdG1YfYU3E4af3ctTNBflF0rH6ppPkfRp/isbKCeS3pDCl7LonSMT
 zIMJw96xiLeYghxTqk1z9dZZsdoTEWHXSsat5/iMWERgZ/a1ljHTdd0Nj
 HpawpMNsqteMrmqUZ/JEEanlKf8zqPXiZzj8duRjzP3c+CMTeS4Zk9zyD
 lvai5zueQQT1zfADJvhPQiSxa9Enbh6bxw+p9hG6cvAdSCC1fef5WgD8D
 FC335NgiKCnnfxB793N4Ro9sRhXOwPzh7thiAdBsBJcBeJM0lRPehmvBC
 HUdU66ys5Kdel9Wy/H1EcnuiZpBsjVEIGg22HLibt4KC2yqYqmiQIREqy g==;
X-CSE-ConnectionGUID: 1g/fVk8JQpSCanLtAMQ78A==
X-CSE-MsgGUID: roaFLS3ySSml1gB7BIS9fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="86690899"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="86690899"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:37:47 -0700
X-CSE-ConnectionGUID: vpH4Z+rVQmC6fIfQAPXG5g==
X-CSE-MsgGUID: dv2U6hIDTc26NWawY9Orbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="190554737"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 31 Oct 2025 03:37:43 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 21/25] drm/i915/ltphy: Define the LT Phy state compare
 function
Date: Fri, 31 Oct 2025 16:06:39 +0530
Message-Id: <20251031103643.4147868-22-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103643.4147868-1-suraj.kandpal@intel.com>
References: <20251031103643.4147868-1-suraj.kandpal@intel.com>
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

Define function to compare the state and if mismatch is detected
dump both the states.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 33 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_lt_phy.c  | 30 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h  |  6 ++++
 3 files changed, 68 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 402064bbd6ec..6fa698c41179 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -101,6 +101,7 @@
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
 #include "intel_link_bw.h"
+#include "intel_lt_phy.h"
 #include "intel_lvds.h"
 #include "intel_lvds_regs.h"
 #include "intel_modeset_setup.h"
@@ -5002,6 +5003,24 @@ static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_s
 	       !intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
 }
 
+static void
+pipe_config_lt_phy_pll_mismatch(struct drm_printer *p, bool fastset,
+				const struct intel_crtc *crtc,
+				const char *name,
+				const struct intel_lt_phy_pll_state *a,
+				const struct intel_lt_phy_pll_state *b)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	char *chipname = "LTPHY";
+
+	pipe_config_mismatch(p, fastset, crtc, name, chipname);
+
+	drm_printf(p, "expected:\n");
+	intel_lt_phy_dump_hw_state(display, a);
+	drm_printf(p, "found:\n");
+	intel_lt_phy_dump_hw_state(display, b);
+}
+
 bool
 intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			  const struct intel_crtc_state *pipe_config,
@@ -5126,6 +5145,16 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} \
 } while (0)
 
+#define PIPE_CONF_CHECK_PLL_LT(name) do { \
+	if (!intel_lt_phy_pll_compare_hw_state(&current_config->name, \
+					       &pipe_config->name)) { \
+		pipe_config_lt_phy_pll_mismatch(&p, fastset, crtc, __stringify(name), \
+						&current_config->name, \
+						&pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)
+
 #define PIPE_CONF_CHECK_TIMINGS(name) do {     \
 	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
 	PIPE_CONF_CHECK_I(name.crtc_htotal); \
@@ -5353,7 +5382,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_PLL(dpll_hw_state);
 
 	/* FIXME convert MTL+ platforms over to dpll_mgr */
-	if (DISPLAY_VER(display) >= 14)
+	if (HAS_LT_PHY(display))
+		PIPE_CONF_CHECK_PLL_LT(dpll_hw_state.ltpll);
+	else if (DISPLAY_VER(display) >= 14)
 		PIPE_CONF_CHECK_PLL_CX0(dpll_hw_state.cx0pll);
 
 	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 8d0c99036c50..f8a32e289158 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1853,6 +1853,36 @@ void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
+void intel_lt_phy_dump_hw_state(struct intel_display *display,
+				const struct intel_lt_phy_pll_state *hw_state)
+{
+	int i, j;
+
+	drm_dbg_kms(display->drm, "lt_phy_pll_hw_state:\n");
+	for (i = 0; i < 3; i++) {
+		drm_dbg_kms(display->drm, "config[%d] = 0x%.4x,\n",
+			    i, hw_state->config[i]);
+	}
+
+	for (i = 0; i <= 12; i++)
+		for (j = 3; j >= 0; j--)
+			drm_dbg_kms(display->drm, "vdr_data[%d][%d] = 0x%.4x,\n",
+				    i, j, hw_state->data[i][j]);
+}
+
+bool
+intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
+				  const struct intel_lt_phy_pll_state *b)
+{
+	if (memcmp(&a->config, &b->config, sizeof(a->config)) != 0)
+		return false;
+
+	if (memcmp(&a->data, &b->data, sizeof(a->data)) != 0)
+		return false;
+
+	return true;
+}
+
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 6e67ae78801c..e93e5becc316 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+struct intel_display;
 struct intel_encoder;
 struct intel_crtc_state;
 struct intel_lt_phy_pll_state;
@@ -22,6 +23,11 @@ int intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state);
 void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *crtc_state);
+void intel_lt_phy_dump_hw_state(struct intel_display *display,
+				const struct intel_lt_phy_pll_state *hw_state);
+bool
+intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
+				  const struct intel_lt_phy_pll_state *b);
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state);
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
-- 
2.34.1

