Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 983ACC1EC7E
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:35:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB9BD10E8DD;
	Thu, 30 Oct 2025 07:35:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aZ2qoV+V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA08410E8BA;
 Thu, 30 Oct 2025 07:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809694; x=1793345694;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ilCktjG/6p05QrBToOaHKvx/wJoBXi+BEdmn2vSm37s=;
 b=aZ2qoV+Vj/JoZeaZvRKl3dB+KqPPwgSmhSjYIf5zq4MWk+GoVEa8vwls
 2dKUM+MqAeXyTmCICZOl9sP6wW5L7rUp4vv0DpqdsE/95oB6E9gLdWflR
 BQPJhBN/mqXv+xGB/efa5PIrKW8Oh3Xu4Nwo3XoYarKa83EJL7UjArt1N
 zkKvTt8nyN0oFWuAPGA27OcKbROFGa+MOfETzpvb/RED6RgszRfqSvCou
 w3yIX4jDsyglFHqB/1H2EJkCBtZnjvQmn9JuGUmrodABxY13eeeVw0ceI
 2+QoMqkzjNeJRr4/Ye4TE2IGskHbc9zIA6tKna0LpwuTrKJdNqb76Pzx/ A==;
X-CSE-ConnectionGUID: WrGERKcdSiqboEEJnuBLFg==
X-CSE-MsgGUID: HfzE2k/9R4OKJfbiKi5jpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063375"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063375"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:34:53 -0700
X-CSE-ConnectionGUID: ve4oDDIoRqO8jgP6A8n/OQ==
X-CSE-MsgGUID: OTAJJvgvTRuRN1rqWv0Atw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075343"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:34:52 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 10/32] drm/i915/display: Read out the Cx0 PHY SSC enabled state
Date: Thu, 30 Oct 2025 09:22:27 +0200
Message-Id: <20251030072249.155095-11-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251030072249.155095-1-mika.kahola@intel.com>
References: <20251030072249.155095-1-mika.kahola@intel.com>
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
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 25 ++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index b394b0397d62..f6b25291cd18 100644
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

