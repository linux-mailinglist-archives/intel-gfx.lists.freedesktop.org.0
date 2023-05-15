Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F362704159
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 01:17:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97A3410E10A;
	Mon, 15 May 2023 23:17:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BBDF10E2AE
 for <Intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 23:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684192623; x=1715728623;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zPxG0q6ovrSsBCR0ZAspTkavJAWHuMueAH5begRi5z4=;
 b=lI1ckOcU4bbl4xzoieou+jLqB1i4H5o7WqOP1Ua8ui4nMwtn7quSls0/
 gUXREwW/YmlLRrN+zUcbywEOWE6fnBblWD6JMy4VAaFlXDPBin2WBTD1Y
 xN1p4dSIhtK3hcrmKhqicwA9/VR+J/cDuMHxJbiCCPUJU6CbcyNEZhjCB
 qWERGEvDydS1vciZuVbGg1C6zRSBuj4ylm09GasxOB85ykOAAyt+yGzfB
 4LJtpJXZfUMP/l7Y+/2FA2TCONkt3GMi5tfhULd2XL35etyyR2ZGaEmEx
 L0z/4DqSlO23LiAGzYJV7Kql2UTeBgucvFzwNGPzHyZUlUfhJQcomzfy2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="348828696"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="348828696"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 16:17:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="678609246"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="678609246"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.136])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 16:17:02 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 16:17:25 -0700
Message-Id: <20230515231725.3815199-3-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230515231725.3815199-1-clinton.a.taylor@intel.com>
References: <20230515231725.3815199-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/hdmi: C20 computed PLL
 frequencies
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

Use algorithm to generate HDMI C20 PLL clock frequencies.
i
v2: checkpatch fixes
BSPEC: 64568
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 89 +++++++++++++++++--
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 53 +++++++++++
 2 files changed, 136 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ef0615cdc8a0..e04cdf89dbe9 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3,6 +3,8 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/log2.h>
+#include <linux/math64.h>
 #include "i915_reg.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
@@ -1901,6 +1903,74 @@ void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
 			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
 }
 
+static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_state *pll_state)
+{
+	u64 datarate;
+	u64 mpll_tx_clk_div;
+	u64 vco_freq_shift;
+	u64 vco_freq;
+	u64 multiplier;
+	u64 mpll_multiplier;
+	u64 mpll_fracn_quot;
+	u64 mpll_fracn_rem;
+	u8  mpllb_ana_freq_vco;
+	u8  mpll_div_multiplier;
+
+	if (pixel_clock < 25175 || pixel_clock > 600000)
+		return -EINVAL;
+
+	datarate = ((u64)pixel_clock * 1000) * 10;
+	mpll_tx_clk_div = ilog2(div64_u64((u64)CLOCK_9999MHZ, (u64)datarate));
+	vco_freq_shift = ilog2(div64_u64((u64)CLOCK_4999MHZ * (u64)256, (u64)datarate));
+	vco_freq = (datarate << vco_freq_shift) >> 8;
+	multiplier = div64_u64((vco_freq << 28), (REFCLK_38_4_MHZ >> 4));
+	mpll_multiplier = 2 * (multiplier >> 32);
+
+	mpll_fracn_quot = (multiplier >> 16) & 0xFFFF;
+	mpll_fracn_rem  = multiplier & 0xFFFF;
+
+	mpll_div_multiplier = min_t(u8, div64_u64((vco_freq * 16 + (datarate >> 1)), datarate), 255);
+
+	if (vco_freq <= DATARATE_3000000000)
+		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_3;
+	else if (vco_freq <= DATARATE_3500000000)
+		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_2;
+	else if (vco_freq <= DATARATE_4000000000)
+		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_1;
+	else
+		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_0;
+
+	pll_state->link_bit_rate	= pixel_clock;
+	pll_state->clock	= pixel_clock;
+	pll_state->tx[0]	= 0xbe88;
+	pll_state->tx[1]	= 0x9800;
+	pll_state->tx[2]	= 0x0000;
+	pll_state->cmn[0]	= 0x0500;
+	pll_state->cmn[1]	= 0x0005;
+	pll_state->cmn[2]	= 0x0000;
+	pll_state->cmn[3]	= 0x0000;
+	pll_state->mpllb[0]	= (MPLL_TX_CLK_DIV(mpll_tx_clk_div) |
+				   MPLL_MULTIPLIER(mpll_multiplier));
+	pll_state->mpllb[1]	= (CAL_DAC_CODE(CAL_DAC_CODE_31) |
+				   WORD_CLK_DIV |
+				   MPLL_DIV_MULTIPLIER(mpll_div_multiplier));
+	pll_state->mpllb[2]	= (MPLLB_ANA_FREQ_VCO(mpllb_ana_freq_vco) |
+				   CP_PROP(CP_PROP_20) |
+				   CP_INT(CP_INT_6));
+	pll_state->mpllb[3]	= (V2I(V2I_2) |
+				   CP_PROP_GS(CP_PROP_GS_30) |
+				   CP_INT_GS(CP_INT_GS_28));
+	pll_state->mpllb[4]	= 0x0000;
+	pll_state->mpllb[5]	= 0x0000;
+	pll_state->mpllb[6]	= (C20_MPLLB_FRACEN | SSC_UP_SPREAD);
+	pll_state->mpllb[7]	= MPLL_FRACN_DEN;
+	pll_state->mpllb[8]	= mpll_fracn_quot;
+	pll_state->mpllb[9]	= mpll_fracn_rem;
+	pll_state->mpllb[10]	= HDMI_DIV(HDMI_DIV_1);
+
+	return 0;
+}
+
 static int intel_c20_phy_check_hdmi_link_rate(int clock)
 {
 	const struct intel_c20pll_state * const *tables = mtl_c20_hdmi_tables;
@@ -1911,6 +1981,9 @@ static int intel_c20_phy_check_hdmi_link_rate(int clock)
 			return MODE_OK;
 	}
 
+	if (clock >= 25175 && clock <= 594000)
+		return MODE_OK;
+
 	return MODE_CLOCK_RANGE;
 }
 
@@ -1944,6 +2017,13 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 	const struct intel_c20pll_state * const *tables;
 	int i;
 
+	/* try computed C20 HDMI tables before using consolidated tables */
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		if (intel_c20_compute_hdmi_tmds_pll(crtc_state->port_clock,
+						    &crtc_state->cx0pll_state.c20) == 0)
+			return 0;
+	}
+
 	tables = intel_c20_pll_tables_get(crtc_state, encoder);
 	if (!tables)
 		return -EINVAL;
@@ -2093,13 +2173,10 @@ static u8 intel_c20_get_dp_rate(u32 clock)
 
 static u8 intel_c20_get_hdmi_rate(u32 clock)
 {
-	switch (clock) {
-	case 25175:
-	case 27000:
-	case 74250:
-	case 148500:
-	case 594000:
+	if (clock >= 25175 && clock <= 600000)
 		return 0;
+
+	switch (clock) {
 	case 166670: /* 3 Gbps */
 	case 333330: /* 6 Gbps */
 	case 666670: /* 12 Gbps */
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index ab9d1d983b88..cb5d1be2ba19 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -218,4 +218,57 @@
 
 #define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx) (0x303D + (idx))
 
+/* C20 HDMI computed pll definitions */
+#define REFCLK_38_4_MHZ		38400000
+#define CLOCK_4999MHZ		4999999999
+#define CLOCK_9999MHZ		9999999999
+#define DATARATE_3000000000	3000000000
+#define DATARATE_3500000000	3500000000
+#define DATARATE_4000000000	4000000000
+#define MPLL_FRACN_DEN		0xFFFF
+
+#define SSC_UP_SPREAD		REG_BIT16(9)
+#define WORD_CLK_DIV		REG_BIT16(8)
+
+#define MPLL_TX_CLK_DIV(val)	REG_FIELD_PREP16(C20_MPLLB_TX_CLK_DIV_MASK, val)
+#define MPLL_MULTIPLIER(val)	REG_FIELD_PREP16(C20_MULTIPLIER_MASK, val)
+
+#define MPLLB_ANA_FREQ_VCO_0	0
+#define MPLLB_ANA_FREQ_VCO_1	1
+#define MPLLB_ANA_FREQ_VCO_2	2
+#define MPLLB_ANA_FREQ_VCO_3	3
+#define MPLLB_ANA_FREQ_VCO_MASK	REG_GENMASK16(15, 14)
+#define MPLLB_ANA_FREQ_VCO(val)	REG_FIELD_PREP16(MPLLB_ANA_FREQ_VCO_MASK, val)
+
+#define MPLL_DIV_MULTIPLIER_MASK	REG_GENMASK16(7, 0)
+#define MPLL_DIV_MULTIPLIER(val)	REG_FIELD_PREP16(MPLL_DIV_MULTIPLIER_MASK, val)
+
+#define CAL_DAC_CODE_31		31
+#define CAL_DAC_CODE_MASK	REG_GENMASK16(14, 10)
+#define CAL_DAC_CODE(val)	REG_FIELD_PREP16(CAL_DAC_CODE_MASK, val)
+
+#define CP_INT_GS_28		28
+#define CP_INT_GS_MASK		REG_GENMASK16(6, 0)
+#define CP_INT_GS(val)		REG_FIELD_PREP16(CP_INT_GS_MASK, val)
+
+#define CP_PROP_GS_30		30
+#define CP_PROP_GS_MASK		REG_GENMASK16(13, 7)
+#define CP_PROP_GS(val)		REG_FIELD_PREP16(CP_PROP_GS_MASK, val)
+
+#define CP_INT_6		6
+#define CP_INT_MASK		REG_GENMASK16(6, 0)
+#define CP_INT(val)		REG_FIELD_PREP16(CP_INT_MASK, val)
+
+#define CP_PROP_20		20
+#define CP_PROP_MASK		REG_GENMASK16(13, 7)
+#define CP_PROP(val)		REG_FIELD_PREP16(CP_PROP_MASK, val)
+
+#define V2I_2			2
+#define V2I_MASK		REG_GENMASK16(15, 14)
+#define V2I(val)		REG_FIELD_PREP16(V2I_MASK, val)
+
+#define HDMI_DIV_1		1
+#define HDMI_DIV_MASK		REG_GENMASK16(2, 0)
+#define HDMI_DIV(val)		REG_FIELD_PREP16(HDMI_DIV_MASK, val)
+
 #endif /* __INTEL_CX0_REG_DEFS_H__ */
-- 
2.25.1

