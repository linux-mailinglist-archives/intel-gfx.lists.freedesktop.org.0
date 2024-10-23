Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DED6C9ACEE0
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 17:34:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FA2810E817;
	Wed, 23 Oct 2024 15:34:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V6kqehXP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2F6610E813;
 Wed, 23 Oct 2024 15:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729697649; x=1761233649;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pty4XCCyrBUvFy3L3ZrpR6pqxtTnlFrp/06rNyGV164=;
 b=V6kqehXPq5/ib6Ed/5bESZZHWAYQlpQlZiRvVuWEhHiqD99fOxtaZyiB
 8Km3VfkZXVcwKUgWvO9G4FtkzW0g0/t/+e8+th3VX8PZyVu6r7mSUFGUa
 C2bnMGDtf90HLrTD18XtWD4UMtTkegW4Mpne3Cc9u1SZNuHdSgPRAFf8B
 kseJh03ddn4L1sZ4BArgebPDTkImzb+CnHT49PWajQsL0mdaeTvwJFXxz
 crVQQI3y8cW8DEjA/+9CmOHUMQ75vUHv2zuFw9lKCX+0L+0uCiKApS5Lj
 pgW3YIfARQvrFjVBC1qW7k8xDYUfR4mRqdHjPOgvr9apNqC4X/byblHjn A==;
X-CSE-ConnectionGUID: wC0NpKkyRli+y96721hwLw==
X-CSE-MsgGUID: Dd8YjNSiRp6jURle5KGroQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29073362"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29073362"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 08:34:08 -0700
X-CSE-ConnectionGUID: 9ghEDY2pSpCVBcCZovg7Sg==
X-CSE-MsgGUID: VJtSwBDLQeuqzRdJoj624A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80276211"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.110.239])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 08:34:07 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: [PATCH v2 1/2] drm/i915/cx0: Pass crtc_state to
 intel_c20_compute_hdmi_tmds_pll()
Date: Wed, 23 Oct 2024 12:33:45 -0300
Message-ID: <20241023153352.144146-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241023153352.144146-1-gustavo.sousa@intel.com>
References: <20241023153352.144146-1-gustavo.sousa@intel.com>
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

The variable crtc_state already contains everything that
intel_c20_compute_hdmi_tmds_pll() needs. Simplify the function's
signature by passing that struct instead of separate variables.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f73d576fd99e..996c3c6edd41 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2142,8 +2142,9 @@ static void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
 			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
 }
 
-static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_state *pll_state)
+static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
 {
+	struct intel_c20pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll.c20;
 	u64 datarate;
 	u64 mpll_tx_clk_div;
 	u64 vco_freq_shift;
@@ -2155,10 +2156,10 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
 	u8  mpllb_ana_freq_vco;
 	u8  mpll_div_multiplier;
 
-	if (pixel_clock < 25175 || pixel_clock > 600000)
+	if (crtc_state->port_clock < 25175 || crtc_state->port_clock > 600000)
 		return -EINVAL;
 
-	datarate = ((u64)pixel_clock * 1000) * 10;
+	datarate = ((u64)crtc_state->port_clock * 1000) * 10;
 	mpll_tx_clk_div = ilog2(div64_u64((u64)CLOCK_9999MHZ, (u64)datarate));
 	vco_freq_shift = ilog2(div64_u64((u64)CLOCK_4999MHZ * (u64)256, (u64)datarate));
 	vco_freq = (datarate << vco_freq_shift) >> 8;
@@ -2180,7 +2181,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
 	else
 		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_0;
 
-	pll_state->clock	= pixel_clock;
+	pll_state->clock	= crtc_state->port_clock;
 	pll_state->tx[0]	= 0xbe88;
 	pll_state->tx[1]	= 0x9800;
 	pll_state->tx[2]	= 0x0000;
@@ -2266,8 +2267,7 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 
 	/* try computed C20 HDMI tables before using consolidated tables */
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
-		if (intel_c20_compute_hdmi_tmds_pll(crtc_state->port_clock,
-						    &crtc_state->dpll_hw_state.cx0pll.c20) == 0)
+		if (intel_c20_compute_hdmi_tmds_pll(crtc_state) == 0)
 			return 0;
 	}
 
-- 
2.47.0

