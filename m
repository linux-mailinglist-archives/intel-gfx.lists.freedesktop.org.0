Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AACC276C0
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:26:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BCE710EC6B;
	Sat,  1 Nov 2025 03:26:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="evDRjwRU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F257710EC6B;
 Sat,  1 Nov 2025 03:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761967562; x=1793503562;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mG5yDOg0oJvPvpvKWKq1tGfKl5HDL6XntxsNVd4qITk=;
 b=evDRjwRUL4v12qrngqKkAp7LjhfD6a4L4+sObWOoGg2nlIFMwz+HUsmW
 u0AzWjcmjGaHc7tQWR/ydFUZxUDW5V4dEjQytedPsj0KB8goaewHsDYau
 6pHV2eqaZy9XZLAIkgJoW1PrhM4Q2+69lpUxczuAaMxO9UoWJZALJPh9/
 UCz1fssSi+GAvupfPLicouei0Dlmp685dE6CWgzT6uC+xEm73LIc/bKf8
 066UtF1sDFeXSwbP+IIpGoAmWEtajDWF05vAq1MqjDA7H8SMllYNioP0y
 /9Oen21eNY2e/56EdlbziIpvFCVUkatncoQoCS5JPvLHbuxktiXXACNmM Q==;
X-CSE-ConnectionGUID: SVl/N/otSG6ui03N5DIBpg==
X-CSE-MsgGUID: usac4ve9QDu6sgNnel1RXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="64019881"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="64019881"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:26:02 -0700
X-CSE-ConnectionGUID: uI0T4RP3SBinCZaz4aCbxQ==
X-CSE-MsgGUID: 132LWtxjQ6qARLoVH4nLPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217038075"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 31 Oct 2025 20:26:00 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v5 23/25] drm/i915/ltphy: Define LT PHY PLL state verify
 function
Date: Sat,  1 Nov 2025 08:55:11 +0530
Message-Id: <20251101032513.4171255-24-suraj.kandpal@intel.com>
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

Define function to verify the LT PHY PLL state function and call it
in intel_modeset_verify_crtc.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 56 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  4 ++
 .../drm/i915/display/intel_modeset_verify.c   |  2 +
 4 files changed, 63 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 22eea532cd0f..b3b506d0e040 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3575,7 +3575,7 @@ void intel_cx0pll_state_verify(struct intel_atomic_state *state,
 	struct intel_encoder *encoder;
 	struct intel_cx0pll_state mpll_hw_state = {};
 
-	if (DISPLAY_VER(display) < 14)
+	if (!IS_DISPLAY_VER(display, 14, 30))
 		return;
 
 	if (!new_crtc_state->hw.active)
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index e51d941f3c1d..ca5f85c4de53 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1919,6 +1919,61 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
+void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
+				   struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_digital_port *dig_port;
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_encoder *encoder;
+	struct intel_lt_phy_pll_state pll_hw_state = {};
+	const struct intel_lt_phy_pll_state *pll_sw_state = &new_crtc_state->dpll_hw_state.ltpll;
+	int clock;
+	int i, j;
+
+	if (DISPLAY_VER(display) < 35)
+		return;
+
+	if (!new_crtc_state->hw.active)
+		return;
+
+	/* intel_get_crtc_new_encoder() only works for modeset/fastset commits */
+	if (!intel_crtc_needs_modeset(new_crtc_state) &&
+	    !intel_crtc_needs_fastset(new_crtc_state))
+		return;
+
+	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
+	intel_lt_phy_pll_readout_hw_state(encoder, new_crtc_state, &pll_hw_state);
+	clock = intel_lt_phy_calc_port_clock(encoder, new_crtc_state);
+
+	dig_port = enc_to_dig_port(encoder);
+	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+		return;
+
+	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.clock != clock,
+				 "[CRTC:%d:%s] mismatch in LT PHY: Register CLOCK (expected %d, found %d)",
+				 crtc->base.base.id, crtc->base.name,
+				 pll_sw_state->clock, pll_hw_state.clock);
+
+	for (i = 0; i < 3; i++) {
+		INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[i] != pll_sw_state->config[i],
+					 "[CRTC:%d:%s] mismatch in LT PHY PLL CONFIG%d: (expected 0x%04x, found 0x%04x)",
+					 crtc->base.base.id, crtc->base.name, i,
+					 pll_sw_state->config[i], pll_hw_state.config[i]);
+	}
+
+	for (i = 0; i <= 12; i++) {
+		for (j = 3; j >= 0; j--)
+			INTEL_DISPLAY_STATE_WARN(display,
+						 pll_hw_state.data[i][j] !=
+						 pll_sw_state->data[i][j],
+						 "[CRTC:%d:%s] mismatch in LT PHY PLL DATA[%d][%d]: (expected 0x%04x, found 0x%04x)",
+						 crtc->base.base.id, crtc->base.name, i, j,
+						 pll_sw_state->data[i][j], pll_hw_state.data[i][j]);
+	}
+}
+
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state)
 {
@@ -1938,4 +1993,5 @@ void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
 		intel_mtl_tbt_pll_disable(encoder);
 	else
 		intel_lt_phy_pll_disable(encoder);
+
 }
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index dd8cbb151b23..a538d4c69210 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -8,9 +8,11 @@
 
 #include <linux/types.h>
 
+struct intel_atomic_state;
 struct intel_display;
 struct intel_encoder;
 struct intel_crtc_state;
+struct intel_crtc;
 struct intel_lt_phy_pll_state;
 
 void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
@@ -31,6 +33,8 @@ intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
 void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state,
 				       struct intel_lt_phy_pll_state *pll_state);
+void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
+				   struct intel_crtc *crtc);
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state);
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index f2f6b9d9afa1..b361a77cd235 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -16,6 +16,7 @@
 #include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
+#include "intel_lt_phy.h"
 #include "intel_modeset_verify.h"
 #include "intel_snps_phy.h"
 #include "skl_watermark.h"
@@ -246,6 +247,7 @@ void intel_modeset_verify_crtc(struct intel_atomic_state *state,
 	intel_dpll_state_verify(state, crtc);
 	intel_mpllb_state_verify(state, crtc);
 	intel_cx0pll_state_verify(state, crtc);
+	intel_lt_phy_pll_state_verify(state, crtc);
 }
 
 void intel_modeset_verify_disabled(struct intel_atomic_state *state)
-- 
2.34.1

