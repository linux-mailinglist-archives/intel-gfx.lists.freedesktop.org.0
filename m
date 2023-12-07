Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD8980951A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 23:12:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D80A410E991;
	Thu,  7 Dec 2023 22:12:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5FDA10E991
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 22:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701987119; x=1733523119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=viuPZqtY8s8HaXJ3heBDcZNnQlG2y8OuxE/j7gh/8N0=;
 b=Pyvg0e52QV5Ua2rned0dYaQrOG2NMFRsLBECvuyRJGcXj3GnYPF7vS9O
 1Ap/MK2b7hGGSSjW1b8rh6TgAVzL09N3hwC/Atha2xz8Pj9wywb5KKJLj
 VHLs+vsNmnInzwYqxWd7xrzXiRVVFJmyD3d8pSHV6sSgTM/60OBEgDdJW
 CmuGrHXSBHySKKocYCn+QbYO4Nrne2kmgPlDQV+Mcj9HgSFksdl7RM2O0
 NroYM7L/Je/RuC9kngFrq9ocUixO9fe9AdTyIIq8VH7y8878/C8wFbl8O
 cJhg4KFkMcg1C2siQUUADR6P+B/2elpCTzseIFerhtYofr1LJrJgC/m9P g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1179283"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; 
   d="scan'208";a="1179283"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 14:11:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="13257012"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 14:11:58 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915/mtl: Use port clock compatible numbers for C20
 phy
Date: Thu,  7 Dec 2023 14:10:23 -0800
Message-Id: <20231207221025.2032207-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231207221025.2032207-1-radhakrishna.sripada@intel.com>
References: <20231207221025.2032207-1-radhakrishna.sripada@intel.com>
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

In C20 pll_state link_bit_rate and clock fields are bit redundant. Since
many of the helpers assume the clock values, which are different from
link_bit_rate for dp2.0, convert the helpers to use the numbers that
are compatible with link_bit_rate.

Currently link_bit_rate is compatible with crtc_state->port_clock. The
function intel_c20pll_calc_port_clock returns the number which is
compatible with crtc_state->port_clock. In order to avoid extra
conversions b/ween clock and link_bit_rate, remove "clock" field from the
C20 pll_state and then rename "link_bit_rate" as "clock".

While at it rely on crtc_state->port_clock during C20 Pll programming.

Cc: Clint Taylor <clinton.a.taylor@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 43 ++++++++++----------
 1 file changed, 22 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 5fbec5784b83..7d412be996ea 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2117,7 +2117,7 @@ int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
 static bool intel_c20_use_mplla(u32 clock)
 {
 	/* 10G and 20G rates use MPLLA */
-	if (clock == 312500 || clock == 625000)
+	if (clock == 1000000 || clock == 2000000)
 		return true;
 
 	return false;
@@ -2192,7 +2192,7 @@ void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
 	drm_dbg_kms(&i915->drm, "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
 		    hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2], hw_state->cmn[3]);
 
-	if (intel_c20_use_mplla(hw_state->clock)) {
+	if (intel_c20_use_mplla(hw_state->link_bit_rate)) {
 		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
 			drm_dbg_kms(&i915->drm, "mplla[%d] = 0x%.4x\n", i, hw_state->mplla[i]);
 	} else {
@@ -2220,11 +2220,11 @@ static u8 intel_c20_get_dp_rate(u32 clock)
 		return 6;
 	case 432000: /* 4.32 Gbps eDP */
 		return 7;
-	case 312500: /* 10 Gbps DP2.0 */
+	case 1000000: /* 10 Gbps DP2.0 */
 		return 8;
-	case 421875: /* 13.5 Gbps DP2.0 */
+	case 1350000: /* 13.5 Gbps DP2.0 */
 		return 9;
-	case 625000: /* 20 Gbps DP2.0*/
+	case 2000000: /* 20 Gbps DP2.0 */
 		return 10;
 	case 648000: /* 6.48 Gbps eDP*/
 		return 11;
@@ -2242,13 +2242,13 @@ static u8 intel_c20_get_hdmi_rate(u32 clock)
 		return 0;
 
 	switch (clock) {
-	case 166670: /* 3 Gbps */
-	case 333330: /* 6 Gbps */
-	case 666670: /* 12 Gbps */
+	case 300000: /* 3 Gbps */
+	case 600000: /* 6 Gbps */
+	case 1200000: /* 12 Gbps */
 		return 1;
-	case 444440: /* 8 Gbps */
+	case 800000: /* 8 Gbps */
 		return 2;
-	case 555560: /* 10 Gbps */
+	case 1000000: /* 10 Gbps */
 		return 3;
 	default:
 		MISSING_CASE(clock);
@@ -2259,7 +2259,7 @@ static u8 intel_c20_get_hdmi_rate(u32 clock)
 static bool is_dp2(u32 clock)
 {
 	/* DP2.0 clock rates */
-	if (clock == 312500 || clock == 421875 || clock  == 625000)
+	if (clock == 1000000 || clock == 1350000 || clock  == 2000000)
 		return true;
 
 	return false;
@@ -2268,11 +2268,11 @@ static bool is_dp2(u32 clock)
 static bool is_hdmi_frl(u32 clock)
 {
 	switch (clock) {
-	case 166670: /* 3 Gbps */
-	case 333330: /* 6 Gbps */
-	case 444440: /* 8 Gbps */
-	case 555560: /* 10 Gbps */
-	case 666670: /* 12 Gbps */
+	case 300000: /* 3 Gbps */
+	case 600000: /* 6 Gbps */
+	case 800000: /* 8 Gbps */
+	case 1000000: /* 10 Gbps */
+	case 1200000: /* 12 Gbps */
 		return true;
 	default:
 		return false;
@@ -2305,6 +2305,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	const struct intel_c20pll_state *pll_state = &crtc_state->cx0pll_state.c20;
 	bool dp = false;
 	int lane = crtc_state->lane_count > 2 ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
+	u32 clock = crtc_state->port_clock;
 	bool cntx;
 	int i;
 
@@ -2343,7 +2344,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	}
 
 	/* 3.3 mpllb or mplla configuration */
-	if (intel_c20_use_mplla(pll_state->clock)) {
+	if (intel_c20_use_mplla(clock)) {
 		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
 			if (cntx)
 				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
@@ -2370,23 +2371,23 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	/* 4. Program custom width to match the link protocol */
 	intel_cx0_rmw(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_WIDTH,
 		      PHY_C20_CUSTOM_WIDTH_MASK,
-		      PHY_C20_CUSTOM_WIDTH(intel_get_c20_custom_width(pll_state->clock, dp)),
+		      PHY_C20_CUSTOM_WIDTH(intel_get_c20_custom_width(clock, dp)),
 		      MB_WRITE_COMMITTED);
 
 	/* 5. For DP or 6. For HDMI */
 	if (dp) {
 		intel_cx0_rmw(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
 			      BIT(6) | PHY_C20_CUSTOM_SERDES_MASK,
-			      BIT(6) | PHY_C20_CUSTOM_SERDES(intel_c20_get_dp_rate(pll_state->clock)),
+			      BIT(6) | PHY_C20_CUSTOM_SERDES(intel_c20_get_dp_rate(clock)),
 			      MB_WRITE_COMMITTED);
 	} else {
 		intel_cx0_rmw(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
 			      BIT(7) | PHY_C20_CUSTOM_SERDES_MASK,
-			      is_hdmi_frl(pll_state->clock) ? BIT(7) : 0,
+			      is_hdmi_frl(clock) ? BIT(7) : 0,
 			      MB_WRITE_COMMITTED);
 
 		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
-				intel_c20_get_hdmi_rate(pll_state->clock),
+				intel_c20_get_hdmi_rate(clock),
 				MB_WRITE_COMMITTED);
 	}
 
-- 
2.34.1

