Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CB3D22EF7
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 08:51:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B2B10E6D5;
	Thu, 15 Jan 2026 07:51:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j7cLjNJX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FD0810E6D2;
 Thu, 15 Jan 2026 07:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768463468; x=1799999468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hEpvVrR6VeXaavKCS1YkeprH0g9XZFKuygfPgWdwymc=;
 b=j7cLjNJXOhiOdsfPa8BlvNTT6jzDrhCSpib3fyNpqtnnyZR0X0SMb0gr
 BE56yrezz9IAQFFqbzhY/y38Wl32XbUlc4ZzjsxpfDbAOBZ5K9y858Fe0
 T/miBL6rYvZetNwi/zni1iZgIHj5uJaobUQfyM8K1Dr4T1hohL/sjbdU1
 WRMJN8VlfGY3YYonA6xZHooGWfkkXKlvA7N4pTsIgasaj2rXDoIBcIh9z
 /QV0F9H3h1oxT9xyDabEbDpijFSyzMNNRgTdHqPUvqic7BncqHvJfGvu/
 mJ9DBdlYfXKLgUnxikcKX1EOB3tehL0e8X/LgEIGiVDMEKiNE1y9tlD0V Q==;
X-CSE-ConnectionGUID: /wawGN3sTc6Qa4kUDTDx2g==
X-CSE-MsgGUID: HOqu1qr0QiqJs+28do/QIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="92436201"
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="92436201"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 23:51:08 -0800
X-CSE-ConnectionGUID: yZrComClThKXf0kXv0tL6g==
X-CSE-MsgGUID: CVUk+KcaQ1aUMzCtr1mVNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="204101694"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa010.jf.intel.com with ESMTP; 14 Jan 2026 23:51:06 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 01/15] drm/i915/cx0: Move C10 port clock calculation
Date: Thu, 15 Jan 2026 07:50:47 +0000
Message-ID: <20260115075101.2214842-2-mika.kahola@intel.com>
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

Prepare removal of .clock member from pll state
structures by moving intel_c10pll_calc_port_clock()
function.

No functional changes.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 54 ++++++++++----------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 7288065d2461..5cd756321373 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2103,6 +2103,33 @@ static bool cx0pll_state_is_dp(const struct intel_cx0pll_state *pll_state)
 	return c20pll_state_is_dp(&pll_state->c20);
 }
 
+static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
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
+
 /*
  * TODO: Convert the following to align with intel_c20pll_find_table() and
  * intel_c20pll_calc_state_from_table().
@@ -2166,33 +2193,6 @@ static int intel_c10pll_calc_state(const struct intel_crtc_state *crtc_state,
 	return 0;
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
 static int readout_enabled_lane_count(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-- 
2.43.0

