Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C593BAFAD5
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE2D910E6C3;
	Wed,  1 Oct 2025 08:38:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xe2hiHBU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 337E810E6BB;
 Wed,  1 Oct 2025 08:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307933; x=1790843933;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XL9kCS/O+e9dM77/EUesBfrRjqE5AcDtrSBPrDRIpDs=;
 b=Xe2hiHBUvwJHdoI1Ie1IgoLSEgJfMIZAB2ATAxsAikfnKozVHoDXXxMh
 EWMjdLBvoJdt3QWAvvk9wp5IPBlTMa2HMnKQeIGdoBvWgCiAX5sXlxgWy
 z5yFe8JQ1BSLsgE/KhqVy9Q2etYj96usioYbGV2QZ+FPZ6E9nM42MayGx
 Yg/MNMHj0GqyUT665ZA6Qe6rThX1ijc9ntlhtWekZSaZhuJKpxgELgfbd
 6VRFaR1G+dax621oCnw8YytbrfgRSjcZqnCLPjTzwxdP1LU2d9UQb6oCC
 3XPaoLeyO4UHR9tzJUyOnhDDQim7Q7mNLzK+QIrYzSMgpvdLMk+g7tSrw Q==;
X-CSE-ConnectionGUID: vXREySvHT1SJ837zQmiWDw==
X-CSE-MsgGUID: bKn6eHdlSh6QIyAEZoHgXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742737"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742737"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:38:52 -0700
X-CSE-ConnectionGUID: 01S0W2ZeRUant5JTEEgCpA==
X-CSE-MsgGUID: zfoImC+pT2Cgvg75UWXINw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142564"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:50 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [RFC PATCH 13/39] drm/i915/display: Move definition of Cx0 PHY
 functions earlier
Date: Wed,  1 Oct 2025 11:28:13 +0300
Message-Id: <20251001082839.2585559-14-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
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

From: Imre Deak <imre.deak@intel.com>

Move the definitions of the
  intel_c10pll_calc_port_clock()
  intel_c20_get_dp_rate()
  intel_c20_get_hdmi_rate()
  is_hdmi_frl()
  is_dp2()
  intel_get_c20_custom_width()
functions earlier to avoid the forward declarations.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 232 +++++++++----------
 1 file changed, 112 insertions(+), 120 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 3f426f5b4929..2aba1ebae428 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2131,7 +2131,31 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 }
 
 static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
-					const struct intel_c10pll_state *pll_state);
+					const struct intel_c10pll_state *pll_state)
+{
+	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
+	unsigned int multiplier, tx_clk_div, hdmi_div, refclk = 38400;
+	int tmpclk = 0;
+
+	if (pll_state->pll[0] & C10_PLL0_FRACEN) {
+		frac_quot = pll_state->pll[12] << 8 | pll_state->pll[11];
+		frac_rem =  pll_state->pll[14] << 8 | pll_state->pll[13];
+		frac_den =  pll_state->pll[10] << 8 | pll_state->pll[9];
+	}
+
+	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, pll_state->pll[3]) << 8 |
+		      pll_state->pll[2]) / 2 + 16;
+
+	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state->pll[15]);
+	hdmi_div = REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state->pll[15]);
+
+	tmpclk = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier << 16) + frac_quot) +
+				     DIV_ROUND_CLOSEST(refclk * frac_rem, frac_den),
+				     10 << (tx_clk_div + 16));
+	tmpclk *= (hdmi_div ? 2 : 1);
+
+	return tmpclk;
+}
 
 static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 					  struct intel_cx0pll_state *cx0pll_state)
@@ -2362,10 +2386,93 @@ intel_c20_pll_tables_get(const struct intel_crtc_state *crtc_state,
 	return NULL;
 }
 
-static u8 intel_c20_get_dp_rate(u32 clock);
-static u8 intel_c20_get_hdmi_rate(u32 clock);
-static bool is_hdmi_frl(u32 clock);
-static int intel_get_c20_custom_width(u32 clock, bool dp);
+static u8 intel_c20_get_dp_rate(u32 clock)
+{
+	switch (clock) {
+	case 162000: /* 1.62 Gbps DP1.4 */
+		return 0;
+	case 270000: /* 2.7 Gbps DP1.4 */
+		return 1;
+	case 540000: /* 5.4 Gbps DP 1.4 */
+		return 2;
+	case 810000: /* 8.1 Gbps DP1.4 */
+		return 3;
+	case 216000: /* 2.16 Gbps eDP */
+		return 4;
+	case 243000: /* 2.43 Gbps eDP */
+		return 5;
+	case 324000: /* 3.24 Gbps eDP */
+		return 6;
+	case 432000: /* 4.32 Gbps eDP */
+		return 7;
+	case 1000000: /* 10 Gbps DP2.0 */
+		return 8;
+	case 1350000: /* 13.5 Gbps DP2.0 */
+		return 9;
+	case 2000000: /* 20 Gbps DP2.0 */
+		return 10;
+	case 648000: /* 6.48 Gbps eDP*/
+		return 11;
+	case 675000: /* 6.75 Gbps eDP*/
+		return 12;
+	default:
+		MISSING_CASE(clock);
+		return 0;
+	}
+}
+
+static u8 intel_c20_get_hdmi_rate(u32 clock)
+{
+	if (clock >= 25175 && clock <= 600000)
+		return 0;
+
+	switch (clock) {
+	case 300000: /* 3 Gbps */
+	case 600000: /* 6 Gbps */
+	case 1200000: /* 12 Gbps */
+		return 1;
+	case 800000: /* 8 Gbps */
+		return 2;
+	case 1000000: /* 10 Gbps */
+		return 3;
+	default:
+		MISSING_CASE(clock);
+		return 0;
+	}
+}
+
+static bool is_hdmi_frl(u32 clock)
+{
+	switch (clock) {
+	case 300000: /* 3 Gbps */
+	case 600000: /* 6 Gbps */
+	case 800000: /* 8 Gbps */
+	case 1000000: /* 10 Gbps */
+	case 1200000: /* 12 Gbps */
+		return true;
+	default:
+		return false;
+	}
+}
+
+static bool is_dp2(u32 clock)
+{
+	/* DP2.0 clock rates */
+	if (clock == 1000000 || clock == 1350000 || clock  == 2000000)
+		return true;
+
+	return false;
+}
+
+static int intel_get_c20_custom_width(u32 clock, bool dp)
+{
+	if (dp && is_dp2(clock))
+		return 2;
+	else if (is_hdmi_frl(clock))
+		return 1;
+	else
+		return 0;
+}
 
 static void intel_c20_calc_vdr_params(struct intel_c20pll_vdr_state *vdr, bool is_dp,
 				      int port_clock)
@@ -2654,84 +2761,6 @@ void intel_cx0pll_dump_hw_state(struct intel_display *display,
 		intel_c20pll_dump_hw_state(display, &hw_state->c20);
 }
 
-static u8 intel_c20_get_dp_rate(u32 clock)
-{
-	switch (clock) {
-	case 162000: /* 1.62 Gbps DP1.4 */
-		return 0;
-	case 270000: /* 2.7 Gbps DP1.4 */
-		return 1;
-	case 540000: /* 5.4 Gbps DP 1.4 */
-		return 2;
-	case 810000: /* 8.1 Gbps DP1.4 */
-		return 3;
-	case 216000: /* 2.16 Gbps eDP */
-		return 4;
-	case 243000: /* 2.43 Gbps eDP */
-		return 5;
-	case 324000: /* 3.24 Gbps eDP */
-		return 6;
-	case 432000: /* 4.32 Gbps eDP */
-		return 7;
-	case 1000000: /* 10 Gbps DP2.0 */
-		return 8;
-	case 1350000: /* 13.5 Gbps DP2.0 */
-		return 9;
-	case 2000000: /* 20 Gbps DP2.0 */
-		return 10;
-	case 648000: /* 6.48 Gbps eDP*/
-		return 11;
-	case 675000: /* 6.75 Gbps eDP*/
-		return 12;
-	default:
-		MISSING_CASE(clock);
-		return 0;
-	}
-}
-
-static u8 intel_c20_get_hdmi_rate(u32 clock)
-{
-	if (clock >= 25175 && clock <= 600000)
-		return 0;
-
-	switch (clock) {
-	case 300000: /* 3 Gbps */
-	case 600000: /* 6 Gbps */
-	case 1200000: /* 12 Gbps */
-		return 1;
-	case 800000: /* 8 Gbps */
-		return 2;
-	case 1000000: /* 10 Gbps */
-		return 3;
-	default:
-		MISSING_CASE(clock);
-		return 0;
-	}
-}
-
-static bool is_dp2(u32 clock)
-{
-	/* DP2.0 clock rates */
-	if (clock == 1000000 || clock == 1350000 || clock  == 2000000)
-		return true;
-
-	return false;
-}
-
-static bool is_hdmi_frl(u32 clock)
-{
-	switch (clock) {
-	case 300000: /* 3 Gbps */
-	case 600000: /* 6 Gbps */
-	case 800000: /* 8 Gbps */
-	case 1000000: /* 10 Gbps */
-	case 1200000: /* 12 Gbps */
-		return true;
-	default:
-		return false;
-	}
-}
-
 static bool intel_c20_protocol_switch_valid(struct intel_encoder *encoder)
 {
 	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
@@ -2741,16 +2770,6 @@ static bool intel_c20_protocol_switch_valid(struct intel_encoder *encoder)
 	return intel_tc_port_in_legacy_mode(intel_dig_port);
 }
 
-static int intel_get_c20_custom_width(u32 clock, bool dp)
-{
-	if (dp && is_dp2(clock))
-		return 2;
-	else if (is_hdmi_frl(clock))
-		return 1;
-	else
-		return 0;
-}
-
 static void intel_c20_pll_program(struct intel_display *display,
 				  struct intel_encoder *encoder,
 				  const struct intel_c20pll_state *pll_state)
@@ -2837,33 +2856,6 @@ static void intel_c20_pll_program(struct intel_display *display,
 		      MB_WRITE_COMMITTED);
 }
 
-static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
-					const struct intel_c10pll_state *pll_state)
-{
-	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
-	unsigned int multiplier, tx_clk_div, hdmi_div, refclk = 38400;
-	int tmpclk = 0;
-
-	if (pll_state->pll[0] & C10_PLL0_FRACEN) {
-		frac_quot = pll_state->pll[12] << 8 | pll_state->pll[11];
-		frac_rem =  pll_state->pll[14] << 8 | pll_state->pll[13];
-		frac_den =  pll_state->pll[10] << 8 | pll_state->pll[9];
-	}
-
-	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, pll_state->pll[3]) << 8 |
-		      pll_state->pll[2]) / 2 + 16;
-
-	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state->pll[15]);
-	hdmi_div = REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state->pll[15]);
-
-	tmpclk = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier << 16) + frac_quot) +
-				     DIV_ROUND_CLOSEST(refclk * frac_rem, frac_den),
-				     10 << (tx_clk_div + 16));
-	tmpclk *= (hdmi_div ? 2 : 1);
-
-	return tmpclk;
-}
-
 static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 					 const struct intel_cx0pll_state *pll_state,
 					 bool is_dp, int port_clock,
-- 
2.34.1

