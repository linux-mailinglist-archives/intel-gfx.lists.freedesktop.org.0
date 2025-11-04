Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B12E3C3047A
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 10:34:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3234B10E259;
	Tue,  4 Nov 2025 09:34:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kOe8GYeI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74D8F10E259;
 Tue,  4 Nov 2025 09:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762248875; x=1793784875;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OBzKupSH6fknidmOlH3uLl2saDTXcY8dMg0l2W6i6YE=;
 b=kOe8GYeIzYjLgntyBiM1LTDzSPOPBx4B3O3WB15tdLYLCoaRJxqYYUJQ
 oqour5adOHkYELyQ+1fSrbbeB3urKsgZGDsofwLTsWF3B1DvnfyZ4xTkJ
 DvHE2mnbJucpZyf1Rt2o04YY4WNBlElwZYCFHqOPhFKN1cH8vK8KSjb3v
 F0OjEascwoIuvKfxNcEKW1Y6hecqEFARwtVO5mja2NysjlAClG7gqJ9tR
 ocE5V2x0+8bB6HMLiZn0imt+MKDlHBwfjA/k6eE0+rD0j7SWqxCNeaqbi
 adjjebecGy/Ntdv5XhA0lLX2TUN3FzKbRH/lArdMRBM8AjL8ttJx99kHn Q==;
X-CSE-ConnectionGUID: sIBxMJaFRxuZiYBpkjzMMQ==
X-CSE-MsgGUID: 7UJC6YoxRTyc033v3dwfAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="75788325"
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="75788325"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 01:34:34 -0800
X-CSE-ConnectionGUID: NdTnYxloQ8OpPTDRAx2KDA==
X-CSE-MsgGUID: VQzj9mrSTFmMemucL02LrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="187558488"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa009.fm.intel.com with ESMTP; 04 Nov 2025 01:34:32 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/ltphy: Implement HDMI Algo for Pll state
Date: Tue,  4 Nov 2025 15:04:24 +0530
Message-Id: <20251104093425.154941-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Implement the HDMI Algorithm to dynamically create LT PHY state
based on the port clock provided.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 324 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_lt_phy.h |   3 +
 2 files changed, 326 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index af48d6cde226..c1177b294013 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -31,6 +31,7 @@
 #define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
 					 INTEL_LT_PHY_LANE0)
 #define MODE_DP				3
+#define Q32_TO_INT(x)	((x) >> 32)
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_rbr = {
 	.clock = 162000,
@@ -1356,6 +1357,323 @@ intel_lt_phy_pll_is_ssc_enabled(struct intel_crtc_state *crtc_state,
 	return false;
 }
 
+static u64 mul_q32_u32(u64 a_q32, u32 b)
+{
+	u64 p0, p1, carry, result;
+	u64 x_hi = a_q32 >> 32;
+	u64 x_lo = a_q32 & 0xFFFFFFFFULL;
+
+	p0 = x_lo * (u64)b;
+	p1 = x_hi * (u64)b;
+	carry = p0 >> 32;
+	result = (p1 << 32) + (carry << 32) + (p0 & 0xFFFFFFFFULL);
+
+	return result;
+}
+
+static bool
+calculate_targe_dco_and_loop_cnt(u32 frequency_khz, u64 *target_dco_mhz, u32 *loop_cnt)
+{
+	u32 ppm_value = 1;
+	u32 dco_min_freq = 11850;
+	u32 dco_max_freq = 16200;
+	u32 dco_min_freq_low = 10000;
+	u32 dco_max_freq_low = 12000;
+	u64 val = 0;
+	u64 refclk_khz = 38400;
+	u64 m2div = 0;
+	u64 val_with_frac = 0;
+	u64 ppm = 0;
+	u64 temp0 = 0, temp1, scale;
+	int ppm_cnt, dco_count, y;
+	bool found = false;
+
+	for (ppm_cnt = 0; ppm_cnt < 5; ppm_cnt++) {
+		ppm_value = ppm_cnt == 2 ? 2 : 1;
+		for (dco_count = 0; dco_count < 2; dco_count++) {
+			if (dco_count == 1) {
+				dco_min_freq = dco_min_freq_low;
+				dco_max_freq = dco_max_freq_low;
+			}
+			for (y = 2; y <= 255; y += 2) {
+				val = div64_u64((u64)y * frequency_khz, 200);
+				m2div = div64_u64(((u64)(val) << 32), refclk_khz);
+				m2div = mul_q32_u32(m2div, 500);
+				val_with_frac = mul_q32_u32(m2div, refclk_khz);
+				val_with_frac = div64_u64(val_with_frac, 500);
+				temp1 = Q32_TO_INT(val_with_frac);
+				temp0 = (temp1 > val) ? (temp1 - val) :
+					(val - temp1);
+				ppm = div64_u64(temp0, val);
+				if (temp1 >= dco_min_freq &&
+				    temp1 <= dco_max_freq &&
+				    ppm < ppm_value) {
+					/* Round to two places */
+					scale = (1ULL << 32) / 100;
+					temp0 = DIV_ROUND_UP_ULL(val_with_frac,
+								 scale);
+					*target_dco_mhz = temp0 * scale;
+					*loop_cnt = y;
+					found = true;
+					break;
+				}
+			}
+			if (found)
+				return true;
+		}
+		if (found)
+			return true;
+	}
+
+	return false;
+}
+
+void
+intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
+				  u32 frequency_khz)
+{
+#define DATA_ASSIGN(i, val)	\
+	do {			\
+		lt_state->data[i][0] = (u8)(((val) & 0xFF000000) >> 24); \
+		lt_state->data[i][1] = (u8)(((val) & 0x00FF0000) >> 16); \
+		lt_state->data[i][2] = (u8)(((val) & 0x0000FF00) >> 8); \
+		lt_state->data[i][3] = (u8)(((val) & 0x000000FF));	\
+	} while (0)
+#define Q32_TO_FRAC(x)	((x) & 0xFFFFFFFF)
+	bool found = false;
+	u32 dco_fmin = 11850;
+	u64 refclk_khz = 38400;
+	u64 m2div = 0;
+	u64 target_dco_mhz = 0;
+	u64 tdc_fine;
+	u64 tdc_targetcnt;
+	u64 feedfwd_gain;
+	u64 feedfwd_cal_en;
+	u64 tdc_res = 30;
+	u32 prop_coeff;
+	u32 int_coeff;
+	u32 ndiv = 1;
+	u32 m1div = 1;
+	u32 m2div_int;
+	u32 m2div_frac;
+	u32 frac_en;
+	u32 settling_time = 15;
+	u32 ana_cfg;
+	u32 loop_cnt = 0;
+	u32 dco_fine0_tune_2_0 = 0;
+	u32 dco_fine1_tune_2_0 = 0;
+	u32 dco_fine2_tune_2_0 = 0;
+	u32 dco_fine3_tune_2_0 = 0;
+	u32 dco_dith0_tune_2_0 = 0;
+	u32 dco_dith1_tune_2_0 = 0;
+	u32 gain_ctrl = 2;
+	u32 refclk_mhz_int = 38;
+	u32 pll_reg4 = (refclk_mhz_int << 17) +
+		(ndiv << 9) + (1 << 4);
+	u32 pll_bias2_addr = 0;
+	u32 pll_bias_trim_addr = 0;
+	u32 pll_dco_med_addr = 0;
+	u32 pll_dco_fine_addr = 0;
+	u32 pll_ssc_inj_addr = 0;
+	u32 pll_surv_bonus_addr = 0;
+	u32 pll_lf_addr = 0;
+	u32 pll_reg3_addr = 0;
+	u32 pll_reg4_addr = 0;
+	u32 pll_reg57_addr = 0;
+	u32 pll_reg5_addr = 0;
+	u32 pll_ssc_addr = 0;
+	u32 pll_tdc_addr = 0;
+	u32 pll_reg3 = 0;
+	u32 pll_reg5 = 0;
+	u32 postdiv = 0;
+	u32 d6_new = 0;
+	u32 pll_reg57 = 0;
+	u32 dco_12g = 0;
+	u32 pll_type = 0;
+	u32 d1 = 2;
+	u32 d3 = 5;
+	u32 d5 = 0;
+	u32 d6 = 0;
+	u32 d7;
+	u32 d8 = 0;
+	u32 d4 = 0;
+	u32 lf = 0;
+	int ssc_stepsize = 0;
+	int ssc_steplen = 0;
+	int ssc_steplog = 0;
+	u32 ssc = 0;
+	u32 lock_thr = 0;
+	u32 unlock_thr = 0;
+	u32 early_lock = 1;
+	u32 true_lock = 2;
+	u32 lock_ovr_en = 1;
+	u32 bias_ovr_en = 1;
+	u32 coldstart = 1;
+	u32 ssc_en_local = 0;
+	u64 dynctrl_ovrd_en = 0;
+	u32 bias2 = 0;
+	u32 tdc = 0;
+	u32 cselmed_thr = 8;
+	u32 cselmed_ratio = 39;
+	u32 cselmed_dyn_adj = 0;
+	u32 cselmed_en = 0;
+	u32 dco_med = 0;
+	u32 bonus_7_0 = 0;
+	u32 surv_bonus = (bonus_7_0 << 16);
+	u32 csel2fo = 11;
+	u32 csel2fo_ovrd_en = 1;
+	u32 bias_trim = (csel2fo_ovrd_en << 30) + (csel2fo << 24);
+	u32 dco_fine = 0;
+	u64 temp0, temp1, temp2, temp3;
+
+	found = calculate_targe_dco_and_loop_cnt(frequency_khz, &target_dco_mhz, &loop_cnt);
+	if (!found)
+		return;
+
+	m2div = div64_u64(target_dco_mhz, (refclk_khz * ndiv * m1div));
+	m2div = mul_q32_u32(m2div, 1000);
+	if (Q32_TO_INT(m2div) > 511)
+		return;
+
+	m2div_int = (u32)Q32_TO_INT(m2div);
+	m2div_frac = (u32)(Q32_TO_FRAC(m2div));
+	frac_en = (m2div_frac > 0) ? 1 : 0;
+
+	if (frac_en > 0)
+		tdc_res = 70;
+	else
+		tdc_res = 36;
+	tdc_fine = tdc_res > 50 ? 1 : 0;
+	temp0 = tdc_res * 40 * 11;
+	temp1 = div64_u64((40000000ULL + temp0) * 500, temp0 * refclk_khz);
+	temp2 = div64_u64(temp0 * refclk_khz, 1000);
+	temp3 = div64_u64((80000000ULL + temp2), temp2);
+	tdc_targetcnt = tdc_res < 50 ? (int)(temp1) : (int)(temp3);
+	tdc_targetcnt = (refclk_khz < 25000) ? (int)(tdc_targetcnt / 4) :
+			(refclk_khz < 50000) ? (int)(tdc_targetcnt / 2) :
+			tdc_targetcnt;
+	temp0 = mul_q32_u32(target_dco_mhz, tdc_res);
+	temp0 >>= 32;
+	feedfwd_gain = (m2div_frac > 0) ? div64_u64(m1div * 10000000ULL, temp0) : 0;
+	feedfwd_cal_en = frac_en;
+
+	temp0 = (u32)Q32_TO_INT(target_dco_mhz);
+	prop_coeff = (temp0 >= dco_fmin) ? 3 : 4;
+	int_coeff = (temp0 >= dco_fmin) ? 7 : 8;
+	ana_cfg = (temp0 >= dco_fmin) ? 8 : 6;
+	dco_12g = (temp0 >= dco_fmin) ? 0 : 1;
+
+	if (temp0 > 12960)
+		d7 = 10;
+	else
+		d7 = 8;
+
+	d8 = loop_cnt / 2;
+	d4 = d8 * 2;
+
+	/* Compute pll_reg3,5,57 & lf */
+	pll_reg3 = (u32)((d4 << 21) + (d3 << 18) + (d1 << 15) + (m2div_int << 5));
+	pll_reg5 = m2div_frac;
+	postdiv = (d5 == 0) ? 9 : d5;
+	d6_new = (d6 == 0) ? 40 : d6;
+	pll_reg57 = (d7 << 24) + (postdiv << 15) + (d8 << 7) + d6_new;
+	lf = (u32)((frac_en << 31) + (1 << 30) + (frac_en << 29) +
+		   (feedfwd_cal_en << 28) + (tdc_fine << 27) +
+		   (gain_ctrl << 24) + (feedfwd_gain << 16) +
+		   (int_coeff << 12) + (prop_coeff << 8) + tdc_targetcnt);
+
+	/* Compute ssc / bias2 */
+	ssc = (1 << 31) + (ana_cfg << 24) + (ssc_steplog << 16) +
+		(ssc_stepsize << 8) + ssc_steplen;
+	bias2 = (u32)((dynctrl_ovrd_en << 31) + (ssc_en_local << 30) +
+		      (1 << 23) + (1 << 24) + (32 << 16) + (1 << 8));
+
+	lock_thr = tdc_fine ? 3 : 5;
+	unlock_thr = tdc_fine ? 5 : 11;
+
+	/* Compute tdc/dco_med */
+	tdc = (u32)((2 << 30) + (settling_time << 16) + (bias_ovr_en << 15) +
+		    (lock_ovr_en << 14) + (coldstart << 12) + (true_lock << 10) +
+		    (early_lock << 8) + (unlock_thr << 4) + lock_thr);
+
+	dco_med = (cselmed_en << 31) + (cselmed_dyn_adj << 30) +
+		(cselmed_ratio << 24) + (cselmed_thr << 21);
+
+	/* Compute dcofine */
+	dco_fine0_tune_2_0 = dco_12g ? 4 : 3;
+	dco_fine1_tune_2_0 = 2;
+	dco_fine2_tune_2_0 = dco_12g ? 2 : 1;
+	dco_fine3_tune_2_0 = 5;
+	dco_dith0_tune_2_0 = dco_12g ? 4 : 3;
+	dco_dith1_tune_2_0 = 2;
+
+	dco_fine = (dco_dith1_tune_2_0 << 19)
+		+ (dco_dith0_tune_2_0 << 16)
+		+ (dco_fine3_tune_2_0 << 11)
+		+ (dco_fine2_tune_2_0 << 8)
+		+ (dco_fine1_tune_2_0 << 3)
+		+ dco_fine0_tune_2_0;
+
+	pll_type = ((frequency_khz == 10000) || (frequency_khz == 20000) ||
+		    (frequency_khz == 2500) || (dco_12g == 1)) ? 0 : 1;
+
+	pll_reg4_addr = pll_type ? 0x8710 : 0x8510;
+	pll_reg3_addr = pll_type ? 0x870C : 0x84F8;
+	pll_reg5_addr = pll_type ? 0x8714 : 0x8514;
+	pll_reg57_addr = pll_type ? 0x87E4 : 0x85E4;
+	pll_lf_addr = pll_type ? 0x880C : 0x860C;
+	pll_tdc_addr = pll_type ? 0x8810 : 0x8610;
+	pll_ssc_addr = pll_type ? 0x8814 : 0x8614;
+	pll_bias2_addr = pll_type ? 0x8818 : 0x8618;
+	pll_bias_trim_addr = pll_type ? 0x8848 : 0x8648;
+	pll_dco_med_addr = pll_type ? 0x8840 : 0x8640;
+	pll_dco_fine_addr = pll_type ? 0x884C : 0x864C;
+	pll_ssc_inj_addr = pll_type ? 0x8824 : 0x8624;
+	pll_surv_bonus_addr = pll_type ? 0x8844 : 0x8644;
+
+	lt_state->config[0] = 0x84;
+	lt_state->config[1] = 0x2d;
+	lt_state->addr_msb[0] = (pll_reg4_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[0] = pll_reg4_addr & 0xFF;
+	lt_state->addr_msb[1] = (pll_reg3_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[1] = pll_reg3_addr & 0xFF;
+	lt_state->addr_msb[2] = (pll_reg5_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[2] = pll_reg5_addr & 0xFF;
+	lt_state->addr_msb[3] = (pll_reg57_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[3] = pll_reg57_addr & 0xFF;
+	lt_state->addr_msb[4] = (pll_lf_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[4] = pll_lf_addr & 0xFF;
+	lt_state->addr_msb[5] = (pll_tdc_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[5] = pll_tdc_addr & 0xFF;
+	lt_state->addr_msb[6] = (pll_ssc_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[6] = pll_ssc_addr & 0xFF;
+	lt_state->addr_msb[7] = (pll_bias2_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[7] = pll_bias2_addr & 0xFF;
+	lt_state->addr_msb[8] = (pll_bias_trim_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[8] = pll_bias_trim_addr & 0xFF;
+	lt_state->addr_msb[9] = (pll_dco_med_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[9] = pll_dco_med_addr & 0xFF;
+	lt_state->addr_msb[10] = (pll_dco_fine_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[10] = pll_dco_fine_addr & 0xFF;
+	lt_state->addr_msb[11] = (pll_ssc_inj_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[11] = pll_ssc_inj_addr & 0xFF;
+	lt_state->addr_msb[12] = (pll_surv_bonus_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[12] = pll_surv_bonus_addr & 0xFF;
+	DATA_ASSIGN(0, pll_reg4);
+	DATA_ASSIGN(1, pll_reg3);
+	DATA_ASSIGN(2, pll_reg5);
+	DATA_ASSIGN(3, pll_reg57);
+	DATA_ASSIGN(4, lf);
+	DATA_ASSIGN(5, tdc);
+	DATA_ASSIGN(6, ssc);
+	DATA_ASSIGN(7, bias2);
+	DATA_ASSIGN(8, bias_trim);
+	DATA_ASSIGN(9, dco_med);
+	DATA_ASSIGN(10, dco_fine);
+	DATA_ASSIGN(11, 0);
+	DATA_ASSIGN(12, surv_bonus);
+}
+
 static int
 intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
 {
@@ -1472,7 +1790,11 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	/* TODO: Add a function to compute the data for HDMI TMDS*/
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		intel_lt_phy_calculate_hdmi_state(&crtc_state->dpll_hw_state.ltpll,
+						  crtc_state->port_clock);
+		return 0;
+	}
 
 	return -EINVAL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index a538d4c69210..1693e9f2bc6c 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -35,6 +35,9 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       struct intel_lt_phy_pll_state *pll_state);
 void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc);
+void
+intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
+				  u32 frequency_khz);
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state);
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
-- 
2.34.1

