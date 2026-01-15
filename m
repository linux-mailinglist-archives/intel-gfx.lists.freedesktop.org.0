Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 966C8D22F0F
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 08:51:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1464610E6E5;
	Thu, 15 Jan 2026 07:51:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aLmy5a9g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DC9410E6E4;
 Thu, 15 Jan 2026 07:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768463478; x=1799999478;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uYTpTlue0oEY+LiZufRPXTbHkGHyfTyiokVsmUk78hk=;
 b=aLmy5a9gTjcZwVIA2jswjuGvocjm/XOf/NeZZUbYGkDzhHu2eF4WFoWK
 YrFlX3jBfqhhZyF4kUA2Kh1eMVbN870Yl0HpQFGfLu5kn3p4Nqeeg3HTz
 4/jMIVonXTl+RfB1+8BtxKG+qllc8O42tOB5Q1kpC4nrF91vr3wfm2a5X
 LVuXigiG8LvpwoVKzE14Jz58jX97amC48SlwNXlOXFnNrUwKcn/sLgP9o
 l+hXwNu5AcoNkS0WwZ38sJsFDqqkbd2bb9MqC9s7JoRSoqB/8cL04fOaO
 Na6GzaB7JzdL/Ip+uuayfQhRcR/q5eEbPM9pREdx9hrOBGzUQZGyCxi08 A==;
X-CSE-ConnectionGUID: QC2I6RjdTHaT4VM3QWvZ+Q==
X-CSE-MsgGUID: Rhwrm7y8Q7+Ae5uDDlRS8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="92436220"
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="92436220"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 23:51:18 -0800
X-CSE-ConnectionGUID: GuE7YhRLReu6n0fpK3kOWA==
X-CSE-MsgGUID: pqDglA9TS7CoU6czktewYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="204101765"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa010.jf.intel.com with ESMTP; 14 Jan 2026 23:51:17 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 08/15] drm/i915/display: Add helper function for fuzzy
 clock check
Date: Thu, 15 Jan 2026 07:50:54 +0000
Message-ID: <20260115075101.2214842-9-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260115075101.2214842-1-mika.kahola@intel.com>
References: <20260115075101.2214842-1-mika.kahola@intel.com>
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

The hard coded clock rate stored in the PLL state will be removed by
a follow-up change. The clock is calculated instead of
using clock from the PLL divider values. Since this calculated clock
may vary due to fixed point rounding issues, a +-1 kHz variation is
allowed with the request clock rate against the calculated clock rate.

v2:
- Use the stricter +-1 kHz allowed difference.
- Derive the clock from PLL dividers in intel_cx0pll_enable().
- Move corresponding fuzzy check for LT PHY PLLs to this patch.

v3: Reword commit message (Suraj)
    Move clock check to intel_dpll and rename it (Suraj)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 22 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dpll.c    |  5 +++++
 drivers/gpu/drm/i915/display/intel_dpll.h    |  1 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c  |  7 ++++++-
 4 files changed, 30 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 8e780480f6c0..26d3d41d41a7 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -18,6 +18,7 @@
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
 #include "intel_dp.h"
+#include "intel_dpll.h"
 #include "intel_hdmi.h"
 #include "intel_lt_phy.h"
 #include "intel_panel.h"
@@ -2224,7 +2225,10 @@ static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
 	int i;
 
 	for (i = 0; tables[i].name; i++) {
-		if (port_clock == tables[i].clock_rate) {
+		int clock = intel_c10pll_calc_port_clock(tables[i].c10);
+
+		drm_WARN_ON(display->drm, !intel_dpll_clock_matches(clock, tables[i].clock_rate));
+		if (intel_dpll_clock_matches(port_clock, clock)) {
 			pll_state->c10 = *tables[i].c10;
 			intel_cx0pll_update_ssc(encoder, pll_state, is_dp);
 			intel_c10pll_update_pll(encoder, pll_state);
@@ -2710,6 +2714,7 @@ static const struct intel_cx0pll_params *
 intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
 			 struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	const struct intel_cx0pll_params *tables;
 	int i;
 
@@ -2717,9 +2722,13 @@ intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
 	if (!tables)
 		return NULL;
 
-	for (i = 0; tables[i].name; i++)
-		if (crtc_state->port_clock == tables[i].clock_rate)
+	for (i = 0; tables[i].name; i++) {
+		int clock = intel_c20pll_calc_port_clock(tables[i].c20);
+
+		drm_WARN_ON(display->drm, !intel_dpll_clock_matches(clock, tables[i].clock_rate));
+		if (intel_dpll_clock_matches(crtc_state->port_clock, clock))
 			return &tables[i];
+	}
 
 	return NULL;
 }
@@ -3255,7 +3264,6 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
 static void intel_cx0pll_enable(struct intel_encoder *encoder,
 				const struct intel_cx0pll_state *pll_state)
 {
-	int port_clock = pll_state->use_c10 ? pll_state->c10.clock : pll_state->c20.clock;
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
@@ -3263,6 +3271,12 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
 					  INTEL_CX0_LANE0;
 	struct ref_tracker *wakeref = intel_cx0_phy_transaction_begin(encoder);
+	int port_clock;
+
+	if (pll_state->use_c10)
+		port_clock = intel_c10pll_calc_port_clock(&pll_state->c10);
+	else
+		port_clock = intel_c20pll_calc_port_clock(&pll_state->c20);
 
 	/*
 	 * Lane reversal is never used in DP-alt mode, in that case the
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 1b5b18fa0a36..f55b51d5701e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -2334,3 +2334,8 @@ void assert_pll_disabled(struct intel_display *display, enum pipe pipe)
 {
 	assert_pll(display, pipe, false);
 }
+
+bool intel_dpll_clock_matches(int clock1, int clock2)
+{
+        return abs(clock1 - clock2) <= 1;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index 3444a2dd3166..8cd0d17e974e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -48,5 +48,6 @@ void chv_crtc_clock_get(struct intel_crtc_state *crtc_state);
 
 void assert_pll_enabled(struct intel_display *display, enum pipe pipe);
 void assert_pll_disabled(struct intel_display *display, enum pipe pipe);
+bool intel_dpll_clock_matches(int clock1, int clock2);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index a86ae6139ff0..2790caba5457 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -14,6 +14,7 @@
 #include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
 #include "intel_hdmi.h"
 #include "intel_lt_phy.h"
@@ -1796,6 +1797,7 @@ int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	const struct intel_lt_phy_pll_params *tables;
 	int i;
 
@@ -1804,7 +1806,10 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 
 	for (i = 0; tables[i].name; i++) {
-		if (crtc_state->port_clock == tables[i].clock_rate) {
+		int clock = intel_lt_phy_calc_port_clock(display, tables[i].state);
+
+		drm_WARN_ON(display->drm, !intel_dpll_clock_matches(clock, tables[i].clock_rate));
+		if (intel_dpll_clock_matches(crtc_state->port_clock, clock)) {
 			crtc_state->dpll_hw_state.ltpll = *tables[i].state;
 			if (intel_crtc_has_dp_encoder(crtc_state)) {
 				if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
-- 
2.43.0

