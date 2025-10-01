Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E310ABAFAE4
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 554F310E6CC;
	Wed,  1 Oct 2025 08:38:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XYCYSRmt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 249CA10E6B7;
 Wed,  1 Oct 2025 08:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307938; x=1790843938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iAZrLebvoAlcDA6DxvQG79TzxoiBvzmpdv1OJR4ztLE=;
 b=XYCYSRmtbdS8ifxJmQreU70McR6t3tqKRwN1dde14cER/UgibVaDGK9U
 VZ5lB6Kbgckg55m55E6xU/AZmb8oQdbxOYBg/R8VEfZAUzRFdp6NE4Ucl
 tOMmxp6QLa7II6Ew7ZhmCO5zYkrqXR6JeopT/IYSjqWiwA2fWFLowXEWT
 jXnMkjS3A3fOhcxjZ0K2lPvEf1a6ewZGbO1Rdpd4F9tilPTPqjo6yTRMZ
 BHmL9gQ76TkhjLu4cNMabSvGesMGKVwRiGOpHHrTEIf2xQP75VdHSVoqi
 b/jWQNRwW4ir3z+sSsq+2yHDLZl7fONLfWl7kJRdm+rQ4Tv1NMyFsqiQO Q==;
X-CSE-ConnectionGUID: sg+48spTTlKa++a3nlpY8g==
X-CSE-MsgGUID: 3y0BOZWjSJS/+MePbPjBfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742753"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742753"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:38:57 -0700
X-CSE-ConnectionGUID: 915v0kZPQZak6iS0GgSnhg==
X-CSE-MsgGUID: w++2hvJQQ4SzsIU8vbAjtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142595"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:55 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 17/39] drm/i915/display: Read out the Cx0 PHY SSC enabled
 state
Date: Wed,  1 Oct 2025 11:28:17 +0300
Message-Id: <20251001082839.2585559-18-mika.kahola@intel.com>
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

Read out the C10, C20 PHY PLLs SSC enabled state, so the PLL HW/SW state
verification can check this state as well.

C10 PHY PLLs program some PLL registers zeroed out for the non-SSC case,
while programming non-zero values to the same registers for the SSC
case, so check that these PLL registers being zero or non-zero matches
the PLL's overall SSC-enabled state (stored in the
intel_c10pll_state::ssc_enabled flag).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 25 ++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 88cb605e95dd..93e37b7ac3d9 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2067,6 +2067,12 @@ static void intel_cx0pll_update_ssc(struct intel_encoder *encoder,
 #define C10_PLL_SSC_REG_START_IDX	4
 #define C10_PLL_SSC_REG_COUNT		5
 
+static bool intel_c10pll_ssc_enabled(const struct intel_c10pll_state *pll_state)
+{
+	return memchr_inv(&pll_state->pll[C10_PLL_SSC_REG_START_IDX],
+			  0, sizeof(pll_state->pll[0]) * C10_PLL_SSC_REG_COUNT);
+}
+
 static void intel_c10pll_update_pll(struct intel_encoder *encoder,
 				    struct intel_cx0pll_state *pll_state)
 {
@@ -2198,10 +2204,20 @@ static int readout_enabled_lane_count(struct intel_encoder *encoder)
 	return enabled_tx_lane_count;
 }
 
+static bool readout_ssc_state(struct intel_encoder *encoder, bool is_mpll_b)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	return intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port)) &
+		(is_mpll_b ? XELPDP_SSC_ENABLE_PLLB : XELPDP_SSC_ENABLE_PLLA);
+}
+
 static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 					  struct intel_cx0pll_state *cx0pll_state)
 {
 	struct intel_c10pll_state *pll_state = &cx0pll_state->c10;
+	struct intel_display *display = to_intel_display(encoder);
+	enum phy phy = intel_encoder_to_phy(encoder);
 	u8 lane = INTEL_CX0_LANE0;
 	intel_wakeref_t wakeref;
 	int i;
@@ -2227,6 +2243,13 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 
 	pll_state->clock = intel_c10pll_calc_port_clock(encoder, pll_state);
+
+	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, true);
+	drm_WARN(display->drm,
+		 cx0pll_state->ssc_enabled != intel_c10pll_ssc_enabled(pll_state),
+		 "PHY %c: SSC enabled state (%s), doesn't match PLL configuration (%s)\n",
+		 phy_name(phy), str_yes_no(cx0pll_state->ssc_enabled),
+		 intel_c10pll_ssc_enabled(pll_state) ? "SSC-enabled" : "SSC-disabled");
 }
 
 static void intel_c10_pll_program(struct intel_display *display,
@@ -2772,6 +2795,8 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 	pll_state->clock = intel_c20pll_calc_port_clock(encoder, pll_state);
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
+
+	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, intel_c20phy_use_mpllb(pll_state));
 }
 
 static void intel_c20pll_dump_hw_state(struct intel_display *display,
-- 
2.34.1

