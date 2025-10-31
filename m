Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2F9C2493D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:48:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5162710EB5F;
	Fri, 31 Oct 2025 10:48:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XZo7vxe6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05CFE10EB1F;
 Fri, 31 Oct 2025 10:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907675; x=1793443675;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ilCktjG/6p05QrBToOaHKvx/wJoBXi+BEdmn2vSm37s=;
 b=XZo7vxe6i5eIpRMIPJ2H0xb34ovHblhZ91TQaUgZbJlIb199EA84LPD6
 IAGW7WC467vEsJ8WCCjFIQC1+GoFdE2ff/3VxfnlSrWYluuLcGnm/1FYq
 VMwSopgigvdXTrIE7n1y61uWLRXuHuBLBiBv7Rec6rtUQUQ+H1KkUiqEM
 OCUPtn9vOapRWGfJnu2MYqpgoSGlXEZEqSdCIRjzzCJ9GqdMgiAUSDUVK
 LF6O59AiPhm3UQ+WA9HARo6NJPjFH16WN89zACE14bp1TxhGg8yDiaQs2
 KpN2jxXA7LNXi9NuI8B4q11cv8ivITZItmc6tpsDeTQveppOV6GmU6pYN w==;
X-CSE-ConnectionGUID: osvhhcX8TpW/AMoDRhtFVg==
X-CSE-MsgGUID: E/UVN6qCTlaeBMXP25WePg==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217560"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217560"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:47:55 -0700
X-CSE-ConnectionGUID: K+12PDfGTB264WWCNAcPnw==
X-CSE-MsgGUID: c2vCayCYSUi8xv4SgOf2tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441345"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:47:53 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [CI 10/32] drm/i915/display: Read out the Cx0 PHY SSC enabled state
Date: Fri, 31 Oct 2025 12:35:27 +0200
Message-Id: <20251031103549.173208-11-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103549.173208-1-mika.kahola@intel.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
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

