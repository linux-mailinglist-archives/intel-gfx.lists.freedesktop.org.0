Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 204CCC276BA
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:26:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 909E610EC68;
	Sat,  1 Nov 2025 03:26:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iI4xLHRB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25CE210EC64;
 Sat,  1 Nov 2025 03:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761967558; x=1793503558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/97WyjwRBiO08gvU0I+jZCbrMLNa7vwQXrKAP5vIltQ=;
 b=iI4xLHRB7t8M/4KzkNk8x08AUc9yFgoWGomznJgMLbSbLTI+d40ZypvF
 v053/pDBZZUcCtOh3EmKeW4NVpMtSXLUUZ4F34G+3ueKWqXbrD79VJD3/
 RFZ9ukEQllW2wGtX5q6qTouUs74kdlPSJ28pFrGyfVK4yOd+tVBLRMmzh
 3H3mOXGcY0QzRLYgl4f1ETDYq3oWEit4rVJjVduo73sc/eeHXnw2LvT58
 njQnLIDCbNm2L/VIznJ0MMvr9ihua6R7yervg9VSiNlRlFSgTviZWV6wP
 /Ns7we4TUK8cX0JWYbtoAVMdREFdqw9n6Rsw9Z7T1etOXJmKUJvLpgUpi A==;
X-CSE-ConnectionGUID: v6nxCzXDQWe+mSM/nHBMMg==
X-CSE-MsgGUID: 3jsntYfTSA+XC0C3p5YJ0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="64019878"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="64019878"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:25:58 -0700
X-CSE-ConnectionGUID: qzmLXbBqSZSRl4+aAc8Ndg==
X-CSE-MsgGUID: YKpqFIHLSt2bpOWkXeLTAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217038054"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 31 Oct 2025 20:25:56 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v5 21/25] drm/i915/ltphy: Define the LT Phy state compare
 function
Date: Sat,  1 Nov 2025 08:55:09 +0530
Message-Id: <20251101032513.4171255-22-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101032513.4171255-1-suraj.kandpal@intel.com>
References: <20251101032513.4171255-1-suraj.kandpal@intel.com>
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
index 2b362736d54d..42ec78798666 100644
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
@@ -5001,6 +5002,24 @@ static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_s
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
@@ -5125,6 +5144,16 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
@@ -5352,7 +5381,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_PLL(dpll_hw_state);
 
 	/* FIXME convert MTL+ platforms over to dpll_mgr */
-	if (DISPLAY_VER(display) >= 14)
+	if (HAS_LT_PHY(display))
+		PIPE_CONF_CHECK_PLL_LT(dpll_hw_state.ltpll);
+	else if (DISPLAY_VER(display) >= 14)
 		PIPE_CONF_CHECK_PLL_CX0(dpll_hw_state.cx0pll);
 
 	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 5f75e72abd34..3a5b3f739b31 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1856,6 +1856,36 @@ void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
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

