Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 441EEC05834
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 12:08:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47EE710EA4F;
	Fri, 24 Oct 2025 10:08:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HEN/469a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2969410EA48;
 Fri, 24 Oct 2025 10:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761300514; x=1792836514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T2Dxmoodo5lFqUAEdRWf34otrRqC9CYHUi5Zrg/9Q8A=;
 b=HEN/469aiW5wqHTeuH8woZDsl4YnSX8X8zlC7KILTY/g8PFbhMa2IdaB
 j4gGIZ11HIGxJWPIHnINUzsJrsRTppPS+iMYyWgVkbnhFbanU1hYYEOPo
 UWV+h/nQfOYhhp0X+Qdks857tywRN/KeaD/E2DviWXlhU5t4Gv9mUb6hA
 bprDaet8pqaNfYqfec5ltLi6IayN8YHSUt1a8qau4HvOMSgGUpJG67eFV
 w1J4E43OABDbPAXhGB7+3tsDRtN+45hwiy+TaDmkz8qKo1MxjZyEwfhRY
 C9uLLrHTyLcZJ70zLPudYKk3zkeFVirUC/uRY0CddFh/JeM7ww2dIYoa9 w==;
X-CSE-ConnectionGUID: yGOPew49TXq7vqRzoWg1+Q==
X-CSE-MsgGUID: ZVegvIVaS226xgzHUTqiRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67346883"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="67346883"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 03:08:34 -0700
X-CSE-ConnectionGUID: reXfL3hzS6mg+kVDgIjN9w==
X-CSE-MsgGUID: RtS0cyUORLOtvARsD+5Oow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="208039354"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa002.fm.intel.com with ESMTP; 24 Oct 2025 03:08:31 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 26/26] drm/i915/ltphy: Implement HDMI Algo for Pll state
Date: Fri, 24 Oct 2025 15:37:12 +0530
Message-Id: <20251024100712.3776261-27-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251024100712.3776261-1-suraj.kandpal@intel.com>
References: <20251024100712.3776261-1-suraj.kandpal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 318 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_lt_phy.h |   3 +
 2 files changed, 320 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 11070aaf320d..163e7d5ef483 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1357,6 +1357,318 @@ intel_lt_phy_pll_is_ssc_enabled(struct intel_crtc_state *crtc_state,
 	return false;
 }
 
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
+#define MULQ32_U32(x, y)	\
+	(((u64)((x) >> 32) * (y) << 32) + (u64)((x) & 0xFFFFFFFF) * (y))
+#define Q32_TO_INT(x)	((x) >> 32)
+#define Q32_TO_FRAC(x)	((x) & 0xFFFFFFFF)
+	bool found = false;
+	u32 ppm_value = 1;
+	u32 dco_min_freq = 11850;
+	u32 dco_max_freq = 16200;
+	u32 dco_min_freq_low = 10000;
+	u32 dco_max_freq_low = 12000;
+	u32 dcofmin = dco_min_freq;
+	u64 val = 0;
+	u64 refclk_khz = 38400;
+	u64 m2div = 0;
+	u64 val_with_frac = 0;
+	u64 ppm = 0;
+	u64 target_dco_mhz = 0;
+	u64 tdc_fine;
+	u64 iref_ndiv;
+	u64 tdc_targetcnt;
+	u64 feedfwdgain;
+	u64 feedfwd_cal_en;
+	u64 tdc_res = 30;
+	u32 prop_coeff;
+	u32 int_coeff;
+	u32 ndiv = 1;
+	u32 m1div = 1;
+	u32 m2div_int;
+	u32 m2div_frac;
+	u32 frac_en;
+	u32 settlingtime = 0;
+	u32 ana_cfg;
+	u32 loop_cnt = 0;
+	u32 dcofine0_tune_2_0 = 0;
+	u32 dcofine1_tune_2_0 = 0;
+	u32 dcofine2_tune_2_0 = 0;
+	u32 dcofine3_tune_2_0 = 0;
+	u32 dcodith0_tune_2_0 = 0;
+	u32 dcodith1_tune_2_0 = 0;
+	u32 gain_ctrl = 2;
+	u32 refclk_mhz_int = 38;
+	u32 pll_reg4 = (refclk_mhz_int << 17) +
+		(ndiv << 9) + (1 << 4);
+	u32 pll_bias2_addr = 0;
+	u32 pll_biastrim_addr = 0;
+	u32 pll_dco_med_addr = 0;
+	u32 pll_dcofine_addr = 0;
+	u32 pll_sscinj_addr = 0;
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
+	u32 dco12g = 0;
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
+	u32 lockthr = 0;
+	u32 unlockthr = 0;
+	u32 earlylock = 1;
+	u32 truelock = 2;
+	u32 lockovr_en = 1;
+	u32 biasovr_en = 1;
+	u32 coldstart = 1;
+	u32 ssc_en_local = 0;
+	u64 dynctrl_ovrd_en = 0;
+	u32 bias2 = 0;
+	u32 tdc = 0;
+	u32 cselmedthr = 8;
+	u32 cselmedratio = 39;
+	u32 cselmed_dynadj = 0;
+	u32 cselmed_en = 0;
+	u32 dco_med = 0;
+	u32 bonus_7_0 = 0;
+	u32 surv_bonus = (bonus_7_0 << 16);
+	u32 csel2fo = 11;
+	u32 csel2fo_ovrd_en = 1;
+	u32 biastrim = (csel2fo_ovrd_en << 30) + (csel2fo << 24);
+	u32 dcofine = 0;
+	int ppm_cnt, dcocount, y;
+	u64 refclk_mhz = div64_u64(refclk_khz, 1000);
+	u64 frequency_mhz = div64_u64(frequency_khz, 1000);
+	u64 temp0, temp1, temp2, temp3, scale;
+
+	settlingtime = 15;
+	for (ppm_cnt = 0; ppm_cnt < 5; ppm_cnt++) {
+		switch (ppm_cnt) {
+		case 0:
+			ppm_value = 1;
+			break;
+		case 1:
+			ppm_value = 1;
+			break;
+		case 2:
+			ppm_value = 2;
+			break;
+		default:
+			ppm_value = 1;
+			break;
+		}
+
+		for (dcocount = 0; dcocount < 2; dcocount++) {
+			if (dcocount == 1) {
+				dco_min_freq = dco_min_freq_low;
+				dco_max_freq = dco_max_freq_low;
+			}
+			for (y = 2; y <= 255; y += 2) {
+				val = ((u64)y * frequency_mhz * 5);
+				m2div = div64_u64(((val) << 32), 2 * refclk_mhz);
+				val_with_frac = MULQ32_U32(m2div, refclk_mhz * 2);
+				temp1 = Q32_TO_INT(val_with_frac);
+				temp0 = (temp1 > val) ? (temp1 - val) :
+					(val - temp1);
+				ppm = div64_u64(temp0, val);
+				if (temp1 >= dco_min_freq &&
+				    temp1 <= dco_max_freq &&
+				    ppm < ppm_value) {
+					/* Round to two places */
+					scale = (1ULL << 32) / 100;
+					temp0 = DIV_ROUND_CLOSEST_ULL(val_with_frac,
+								      scale);
+					target_dco_mhz = temp0 * scale;
+					loop_cnt = y;
+					found = true;
+					break;
+				}
+			}
+			if (found)
+				break;
+		}
+		if (found)
+			break;
+	}
+
+	if (!found)
+		return;
+
+	m2div = div64_u64(target_dco_mhz, (refclk_mhz * ndiv * m1div));
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
+	iref_ndiv = (refclk_khz > 80000) ? 4 : (refclk_khz > 38000) ? 2 : 1;
+	temp0 = tdc_res * 40 * 11;
+	temp1 = div64_u64((40000000ULL + temp0),  2 * temp0 * refclk_mhz);
+	temp2 = temp0 * refclk_mhz;
+	temp3 = div64_u64((80000000ULL + temp2), temp2);
+	tdc_targetcnt = tdc_res < 50 ? (int)(temp1) : (int)(temp3);
+	tdc_targetcnt = (refclk_khz < 25000) ? (int)(tdc_targetcnt / 4) :
+			(refclk_khz < 50000) ? (int)(tdc_targetcnt / 2) :
+			tdc_targetcnt;
+	temp0 = MULQ32_U32(target_dco_mhz, tdc_res);
+	temp0 >>= 32;
+	feedfwdgain = (m2div_frac > 0) ? div64_u64(m1div * 10000000ULL, temp0) : 0;
+	feedfwd_cal_en = frac_en;
+	settlingtime = (u32)div64_u64(refclk_khz, iref_ndiv * 1000);
+
+	temp0 = (u32)Q32_TO_INT(target_dco_mhz);
+	prop_coeff = (temp0 >= dcofmin) ? 3 : 4;
+	int_coeff = (temp0 >= dcofmin) ? 7 : 8;
+	ana_cfg = (temp0 >= dcofmin) ? 8 : 6;
+	dco12g = (temp0 >= dcofmin) ? 0 : 1;
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
+		   (gain_ctrl << 24) + (feedfwdgain << 16) +
+		   (int_coeff << 12) + (prop_coeff << 8) + tdc_targetcnt);
+
+	/* Compute ssc / bias2 */
+	ssc = (1 << 31) + (ana_cfg << 24) + (ssc_steplog << 16) +
+		(ssc_stepsize << 8) + ssc_steplen;
+	bias2 = (u32)((dynctrl_ovrd_en << 31) + (ssc_en_local << 30) +
+		      (1 << 23) + (1 << 24) + (32 << 16) + (1 << 8));
+
+	lockthr = tdc_fine ? 3 : 5;
+	unlockthr = tdc_fine ? 5 : 11;
+	settlingtime = 15;
+
+	/* Compute tdc/dco_med */
+	tdc = (u32)((2 << 30) + (settlingtime << 16) + (biasovr_en << 15) +
+		    (lockovr_en << 14) + (coldstart << 12) + (truelock << 10) +
+		    (earlylock << 8) + (unlockthr << 4) + lockthr);
+
+	dco_med = (cselmed_en << 31) + (cselmed_dynadj << 30) +
+		(cselmedratio << 24) + (cselmedthr << 21);
+
+	/* Compute dcofine */
+	dcofine0_tune_2_0 = dco12g ? 4 : 3;
+	dcofine1_tune_2_0 = dco12g ? 2 : 2;
+	dcofine2_tune_2_0 = dco12g ? 2 : 1;
+	dcofine3_tune_2_0 = dco12g ? 5 : 5;
+	dcodith0_tune_2_0 = dco12g ? 4 : 3;
+	dcodith1_tune_2_0 = dco12g ? 2 : 2;
+
+	dcofine = (dcodith1_tune_2_0 << 19)
+		+ (dcodith0_tune_2_0 << 16)
+		+ (dcofine3_tune_2_0 << 11)
+		+ (dcofine2_tune_2_0 << 8)
+		+ (dcofine1_tune_2_0 << 3)
+		+ dcofine0_tune_2_0;
+
+	pll_type = ((frequency_khz == 10000) || (frequency_khz == 20000) ||
+		    (frequency_khz == 2500) || (dco12g == 1)) ? 0 : 1;
+
+	pll_reg4_addr = pll_type ? 34576 : 34064;
+	pll_reg3_addr = pll_type ? 34572 : 34060;
+	pll_reg5_addr = pll_type ? 34580 : 34068;
+	pll_reg57_addr = pll_type ? 34788 : 34276;
+	pll_lf_addr = pll_type ? 34828 : 34316;
+	pll_tdc_addr = pll_type ? 34832 : 34320;
+	pll_ssc_addr = pll_type ? 34836 : 34324;
+	pll_bias2_addr = pll_type ? 34840 : 34328;
+	pll_biastrim_addr = pll_type ? 34888 : 34376;
+	pll_dco_med_addr = pll_type ? 34880 : 34368;
+	pll_dcofine_addr = pll_type ? 34892 : 34380;
+	pll_sscinj_addr = pll_type ? 34852 : 34340;
+	pll_surv_bonus_addr = pll_type ? 34884 : 34372;
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
+	lt_state->addr_msb[8] = (pll_biastrim_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[8] = pll_biastrim_addr & 0xFF;
+	lt_state->addr_msb[9] = (pll_dco_med_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[9] = pll_dco_med_addr & 0xFF;
+	lt_state->addr_msb[10] = (pll_dcofine_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[10] = pll_dcofine_addr & 0xFF;
+	lt_state->addr_msb[11] = (pll_sscinj_addr >> 8) & 0xFF;
+	lt_state->addr_lsb[11] = pll_sscinj_addr & 0xFF;
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
+	DATA_ASSIGN(8, biastrim);
+	DATA_ASSIGN(9, dco_med);
+	DATA_ASSIGN(10, dcofine);
+	DATA_ASSIGN(11, 0);
+	DATA_ASSIGN(12, surv_bonus);
+}
+
 static int
 intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
 {
@@ -1455,7 +1767,11 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
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

