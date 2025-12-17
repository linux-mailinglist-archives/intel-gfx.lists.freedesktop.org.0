Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BCCCC8707
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 16:29:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A764A10ECFD;
	Wed, 17 Dec 2025 15:29:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jI12VO7/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC8210ED07;
 Wed, 17 Dec 2025 15:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765985331; x=1797521331;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eaG8dJ/ekyrDZgccVo96Ciu/oA/AfHKvgAl+K460Fr0=;
 b=jI12VO7/zAkNyc/oeVi3qaFvTUkCzMtFpVSReVjf0Wr1SnzxzKcXFIUE
 PFEaHHHj9brL4oZ5iXq64jrSAlNo8BmtRpiCJmMV25FdyP16D+evO1vh3
 ewf1/ib37mlSJoIxcf5dGOW2VKeoa543ST1h5P47RtFocbFFNZrMR+Rwe
 DBB7gj/eKFsLJCpx+/aBLuUGhnHGAH8g3jgWc3bY9LKZKFVVMsI8PqTW+
 VJs8E8swy4f/NGb57VZPJLDKa61wFRq683TOnSqkoEVr2YJwEijUxjiQT
 h9DF3mtEm1UTdWrT/beW99OeSd5BcIxVCpr0FplPi1IuUugCzCI5AqBPZ A==;
X-CSE-ConnectionGUID: NGmvaRRYR7i4rz1pkizUqg==
X-CSE-MsgGUID: MTnmPmelRIGjv2hFl9mHVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="71781450"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="71781450"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 07:28:51 -0800
X-CSE-ConnectionGUID: TrfWbOeASNSjJ69VNvW/oQ==
X-CSE-MsgGUID: X8yu0O4zTcOjZGa04Tn7Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198097309"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa009.jf.intel.com with ESMTP; 17 Dec 2025 07:28:49 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 08/15] drm/i915/display: Add helper function for fuzzy
 clock check
Date: Wed, 17 Dec 2025 17:19:48 +0200
Message-Id: <20251217151955.1690202-9-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251217151955.1690202-1-mika.kahola@intel.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
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
a follow-up change. Prepare for that here to calculate instead the
clock from the PLL divider values in the PLL state. Since this
calculated clock can have a +-1 kHz difference wrt. the request clock,
use a fuzzy check when looking up the corresponding table entry.

v2:
- Use the stricter +-1 kHz allowed difference.
- Derive the clock from PLL dividers in intel_cx0pll_enable().
- Move corresponding fuzzy check for LT PHY PLLs to this patch.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 26 +++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c  |  6 ++++-
 3 files changed, 28 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ab402bd8a125..4d006c14c049 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2211,6 +2211,11 @@ static int intel_c20pll_calc_port_clock(const struct intel_c20pll_state *pll_sta
 	return vco << tx_rate_mult >> tx_clk_div >> tx_rate;
 }
 
+bool intel_cx0pll_clock_matches(int clock1, int clock2)
+{
+	return abs(clock1 - clock2) <= 1;
+}
+
 /*
  * TODO: Convert the following to align with intel_c20pll_find_table() and
  * intel_c20pll_calc_state_from_table().
@@ -2224,7 +2229,10 @@ static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
 	int i;
 
 	for (i = 0; tables[i].name; i++) {
-		if (port_clock == tables[i].clock_rate) {
+		int clock = intel_c10pll_calc_port_clock(tables[i].c10);
+
+		drm_WARN_ON(display->drm, !intel_cx0pll_clock_matches(clock, tables[i].clock_rate));
+		if (intel_cx0pll_clock_matches(port_clock, clock)) {
 			pll_state->c10 = *tables[i].c10;
 			intel_cx0pll_update_ssc(encoder, pll_state, is_dp);
 			intel_c10pll_update_pll(encoder, pll_state);
@@ -2710,6 +2718,7 @@ static const struct intel_cx0pll_params *
 intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
 			 struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	const struct intel_cx0pll_params *tables;
 	int i;
 
@@ -2717,9 +2726,13 @@ intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
 	if (!tables)
 		return NULL;
 
-	for (i = 0; tables[i].name; i++)
-		if (crtc_state->port_clock == tables[i].clock_rate)
+	for (i = 0; tables[i].name; i++) {
+		int clock = intel_c20pll_calc_port_clock(tables[i].c20);
+
+		drm_WARN_ON(display->drm, !intel_cx0pll_clock_matches(clock, tables[i].clock_rate));
+		if (intel_cx0pll_clock_matches(crtc_state->port_clock, clock))
 			return &tables[i];
+	}
 
 	return NULL;
 }
@@ -3252,7 +3265,6 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
 static void intel_cx0pll_enable(struct intel_encoder *encoder,
 				const struct intel_cx0pll_state *pll_state)
 {
-	int port_clock = pll_state->use_c10 ? pll_state->c10.clock : pll_state->c20.clock;
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
@@ -3260,6 +3272,12 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
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
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 9f10113e2d18..3d9c580eb562 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -43,6 +43,7 @@ void intel_mtl_tbt_pll_enable_clock(struct intel_encoder *encoder,
 				    int port_clock);
 void intel_mtl_tbt_pll_disable_clock(struct intel_encoder *encoder);
 
+bool intel_cx0pll_clock_matches(int clock1, int clock2);
 int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder,
 			    struct intel_dpll_hw_state *hw_state);
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 64e223f35fdf..e33f6f48a6ce 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1792,6 +1792,7 @@ int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	const struct intel_lt_phy_pll_params *tables;
 	int i;
 
@@ -1800,7 +1801,10 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 
 	for (i = 0; tables[i].name; i++) {
-		if (crtc_state->port_clock == tables[i].clock_rate) {
+		int clock = intel_lt_phy_calc_port_clock(display, tables[i].state);
+
+		drm_WARN_ON(display->drm, !intel_cx0pll_clock_matches(clock, tables[i].clock_rate));
+		if (intel_cx0pll_clock_matches(crtc_state->port_clock, clock)) {
 			crtc_state->dpll_hw_state.ltpll = *tables[i].state;
 			if (intel_crtc_has_dp_encoder(crtc_state)) {
 				if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
-- 
2.34.1

