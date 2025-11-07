Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B75C3F2EA
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 10:35:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A989410EA4E;
	Fri,  7 Nov 2025 09:35:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b8oKqbI1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EBE610EA4E;
 Fri,  7 Nov 2025 09:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762508119; x=1794044119;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S1PG3/RsFuVNuBxR8ZtZ3PzI9wULG2jWJAuMD5mnhls=;
 b=b8oKqbI1re1eExNp8mZR7lHXsWf2cK9Bc6OX87YDqhy2mK9++CL998xz
 m4kWrbs5s5jDUHL7R+W38HHA68onO2FXvPW6iUGeSUxbA2gVYu8NubgPc
 f5NCGd3DP2W/s8GaPv340uK+xLIEp9H1pR66FpyEm6c2UVED4uCKjbPIY
 wE8UCpY3FxHTPlU6dniicTGubXYMa+lZkTAp9t5oJnczSe97F/MDe0riZ
 xRDozYr2VIDbxHyG27zJipLPWdsUKZfMjyG1//NVAU5J12QrNi6ysmCRG
 tSGRogLjvdxk28ifCf0KNK/pMS8IWGK0CjLK8s2tb8FB9QZX6p96gozAz Q==;
X-CSE-ConnectionGUID: XHcF43lJQ6Kn5gT21LENaQ==
X-CSE-MsgGUID: +bp/0hWLTiWntcD6t9R1IQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64562367"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64562367"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 01:35:19 -0800
X-CSE-ConnectionGUID: ZOM7L+smRjW7WkPv1agntA==
X-CSE-MsgGUID: owFaS4/kSIevMeRuLaF4nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="187252114"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa006.jf.intel.com with ESMTP; 07 Nov 2025 01:35:17 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 1/2] drm/i915/ltphy: Implement HDMI Algo for Pll state
Date: Fri,  7 Nov 2025 15:05:11 +0530
Message-Id: <20251107093512.533577-1-suraj.kandpal@intel.com>
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

v1 -> v2:
-Add new macro functions and definitions for address assignment(Ankit)
-Introduce a structure lt_phy_param for code readability (Ankit)

 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 320 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |   3 +
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  16 +
 3 files changed, 337 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index af48d6cde226..57a0f443eb1a 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -31,6 +31,32 @@
 #define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
 					 INTEL_LT_PHY_LANE0)
 #define MODE_DP				3
+#define Q32_TO_INT(x)	((x) >> 32)
+#define Q32_TO_FRAC(x)	((x) & 0xFFFFFFFF)
+#define DCO_MIN_FREQ_MHZ	11850
+#define REF_CLK_KHZ	38400
+#define TDC_RES_MULTIPLIER	10000000ULL
+
+struct phy_param_t {
+	u32 val;
+	u32 addr;
+};
+
+struct lt_phy_params {
+	struct phy_param_t pll_reg4;
+	struct phy_param_t pll_reg3;
+	struct phy_param_t pll_reg5;
+	struct phy_param_t pll_reg57;
+	struct phy_param_t lf;
+	struct phy_param_t tdc;
+	struct phy_param_t ssc;
+	struct phy_param_t bias2;
+	struct phy_param_t bias_trim;
+	struct phy_param_t dco_med;
+	struct phy_param_t dco_fine;
+	struct phy_param_t ssc_inj;
+	struct phy_param_t surv_bonus;
+};
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_rbr = {
 	.clock = 162000,
@@ -1356,10 +1382,297 @@ intel_lt_phy_pll_is_ssc_enabled(struct intel_crtc_state *crtc_state,
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
+calculate_target_dco_and_loop_cnt(u32 frequency_khz, u64 *target_dco_mhz, u32 *loop_cnt)
+{
+	u32 ppm_value = 1;
+	u32 dco_min_freq = DCO_MIN_FREQ_MHZ;
+	u32 dco_max_freq = 16200;
+	u32 dco_min_freq_low = 10000;
+	u32 dco_max_freq_low = 12000;
+	u64 val = 0;
+	u64 refclk_khz = REF_CLK_KHZ;
+	u64 m2div = 0;
+	u64 val_with_frac = 0;
+	u64 ppm = 0;
+	u64 temp0 = 0, temp1, scale;
+	int ppm_cnt, dco_count, y;
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
+					return true;
+				}
+			}
+		}
+	}
+
+	return false;
+}
+
+static void set_phy_vdr_addresses(struct lt_phy_params *p, int pll_type)
+{
+	p->pll_reg4.addr = PLL_REG_ADDR(PLL_REG4_ADDR, pll_type);
+	p->pll_reg3.addr = PLL_REG_ADDR(PLL_REG3_ADDR, pll_type);
+	p->pll_reg5.addr = PLL_REG_ADDR(PLL_REG5_ADDR, pll_type);
+	p->pll_reg57.addr = PLL_REG_ADDR(PLL_REG57_ADDR, pll_type);
+	p->lf.addr = PLL_REG_ADDR(PLL_LF_ADDR, pll_type);
+	p->tdc.addr = PLL_REG_ADDR(PLL_TDC_ADDR, pll_type);
+	p->ssc.addr = PLL_REG_ADDR(PLL_SSC_ADDR, pll_type);
+	p->bias2.addr = PLL_REG_ADDR(PLL_BIAS2_ADDR, pll_type);
+	p->bias_trim.addr = PLL_REG_ADDR(PLL_BIAS_TRIM_ADDR, pll_type);
+	p->dco_med.addr = PLL_REG_ADDR(PLL_DCO_MED_ADDR, pll_type);
+	p->dco_fine.addr = PLL_REG_ADDR(PLL_DCO_FINE_ADDR, pll_type);
+	p->ssc_inj.addr = PLL_REG_ADDR(PLL_SSC_INJ_ADDR, pll_type);
+	p->surv_bonus.addr = PLL_REG_ADDR(PLL_SURV_BONUS_ADDR, pll_type);
+}
+
+int
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
+#define ADDR_ASSIGN(i, pll_reg)	\
+	do {			\
+		lt_state->addr_msb[i] = ((pll_reg).addr >> 8) & 0xFF;	\
+		lt_state->addr_lsb[i] = (pll_reg).addr & 0xFF;		\
+	} while (0)
+
+	bool found = false;
+	struct lt_phy_params p;
+	u32 dco_fmin = DCO_MIN_FREQ_MHZ;
+	u64 refclk_khz = REF_CLK_KHZ;
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
+	u32 postdiv = 0;
+	u32 d6_new = 0;
+	u32 dco_12g = 0;
+	u32 pll_type = 0;
+	u32 d1 = 2;
+	u32 d3 = 5;
+	u32 d5 = 0;
+	u32 d6 = 0;
+	u32 d7;
+	u32 d8 = 0;
+	u32 d4 = 0;
+	int ssc_stepsize = 0;
+	int ssc_steplen = 0;
+	int ssc_steplog = 0;
+	u32 lock_thr = 0;
+	u32 unlock_thr = 0;
+	u32 early_lock = 1;
+	u32 true_lock = 2;
+	u32 lock_ovr_en = 1;
+	u32 bias_ovr_en = 1;
+	u32 coldstart = 1;
+	u32 ssc_en_local = 0;
+	u64 dynctrl_ovrd_en = 0;
+	u32 cselmed_thr = 8;
+	u32 cselmed_ratio = 39;
+	u32 cselmed_dyn_adj = 0;
+	u32 cselmed_en = 0;
+	u32 bonus_7_0 = 0;
+	u32 csel2fo = 11;
+	u32 csel2fo_ovrd_en = 1;
+	u64 temp0, temp1, temp2, temp3;
+
+	p.surv_bonus.val = (bonus_7_0 << 16);
+	p.pll_reg4.val = (refclk_mhz_int << 17) +
+		(ndiv << 9) + (1 << 4);
+	p.bias_trim.val = (csel2fo_ovrd_en << 30) + (csel2fo << 24);
+	p.ssc_inj.val = 0;
+	found = calculate_target_dco_and_loop_cnt(frequency_khz, &target_dco_mhz, &loop_cnt);
+	if (!found)
+		return -EINVAL;
+
+	m2div = div64_u64(target_dco_mhz, (refclk_khz * ndiv * m1div));
+	m2div = mul_q32_u32(m2div, 1000);
+	if (Q32_TO_INT(m2div) > 511)
+		return -EINVAL;
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
+	temp1 = div64_u64(((4 * TDC_RES_MULTIPLIER) + temp0) * 500, temp0 * refclk_khz);
+	temp2 = div64_u64(temp0 * refclk_khz, 1000);
+	temp3 = div64_u64(((8 * TDC_RES_MULTIPLIER) + temp2), temp2);
+	tdc_targetcnt = tdc_res < 50 ? (int)(temp1) : (int)(temp3);
+	tdc_targetcnt = (int)(tdc_targetcnt / 2);
+	temp0 = mul_q32_u32(target_dco_mhz, tdc_res);
+	temp0 >>= 32;
+	feedfwd_gain = (m2div_frac > 0) ? div64_u64(m1div * TDC_RES_MULTIPLIER, temp0) : 0;
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
+	p.pll_reg3.val = (u32)((d4 << 21) + (d3 << 18) + (d1 << 15) + (m2div_int << 5));
+	p.pll_reg5.val = m2div_frac;
+	postdiv = (d5 == 0) ? 9 : d5;
+	d6_new = (d6 == 0) ? 40 : d6;
+	p.pll_reg57.val = (d7 << 24) + (postdiv << 15) + (d8 << 7) + d6_new;
+	p.lf.val = (u32)((frac_en << 31) + (1 << 30) + (frac_en << 29) +
+		   (feedfwd_cal_en << 28) + (tdc_fine << 27) +
+		   (gain_ctrl << 24) + (feedfwd_gain << 16) +
+		   (int_coeff << 12) + (prop_coeff << 8) + tdc_targetcnt);
+
+	/* Compute ssc / bias2 */
+	p.ssc.val = (1 << 31) + (ana_cfg << 24) + (ssc_steplog << 16) +
+		(ssc_stepsize << 8) + ssc_steplen;
+	p.bias2.val = (u32)((dynctrl_ovrd_en << 31) + (ssc_en_local << 30) +
+		      (1 << 23) + (1 << 24) + (32 << 16) + (1 << 8));
+
+	lock_thr = tdc_fine ? 3 : 5;
+	unlock_thr = tdc_fine ? 5 : 11;
+
+	/* Compute tdc/dco_med */
+	p.tdc.val = (u32)((2 << 30) + (settling_time << 16) + (bias_ovr_en << 15) +
+		    (lock_ovr_en << 14) + (coldstart << 12) + (true_lock << 10) +
+		    (early_lock << 8) + (unlock_thr << 4) + lock_thr);
+
+	p.dco_med.val = (cselmed_en << 31) + (cselmed_dyn_adj << 30) +
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
+	p.dco_fine.val = (dco_dith1_tune_2_0 << 19)
+		+ (dco_dith0_tune_2_0 << 16)
+		+ (dco_fine3_tune_2_0 << 11)
+		+ (dco_fine2_tune_2_0 << 8)
+		+ (dco_fine1_tune_2_0 << 3)
+		+ dco_fine0_tune_2_0;
+
+	pll_type = ((frequency_khz == 10000) || (frequency_khz == 20000) ||
+		    (frequency_khz == 2500) || (dco_12g == 1)) ? 0 : 1;
+
+	set_phy_vdr_addresses(&p, pll_type);
+
+	lt_state->config[0] = 0x84;
+	lt_state->config[1] = 0x2d;
+	ADDR_ASSIGN(0, p.pll_reg4);
+	ADDR_ASSIGN(1, p.pll_reg3);
+	ADDR_ASSIGN(2, p.pll_reg5);
+	ADDR_ASSIGN(3, p.pll_reg57);
+	ADDR_ASSIGN(4, p.lf);
+	ADDR_ASSIGN(5, p.tdc);
+	ADDR_ASSIGN(6, p.ssc);
+	ADDR_ASSIGN(7, p.bias2);
+	ADDR_ASSIGN(8, p.bias_trim);
+	ADDR_ASSIGN(9, p.dco_med);
+	ADDR_ASSIGN(10, p.dco_fine);
+	ADDR_ASSIGN(11, p.ssc_inj);
+	ADDR_ASSIGN(12, p.surv_bonus);
+	DATA_ASSIGN(0, p.pll_reg4.val);
+	DATA_ASSIGN(1, p.pll_reg3.val);
+	DATA_ASSIGN(2, p.pll_reg5.val);
+	DATA_ASSIGN(3, p.pll_reg57.val);
+	DATA_ASSIGN(4, p.lf.val);
+	DATA_ASSIGN(5, p.tdc.val);
+	DATA_ASSIGN(6, p.ssc.val);
+	DATA_ASSIGN(7, p.bias2.val);
+	DATA_ASSIGN(8, p.bias_trim.val);
+	DATA_ASSIGN(9, p.dco_med.val);
+	DATA_ASSIGN(10, p.dco_fine.val);
+	DATA_ASSIGN(11, p.ssc_inj.val);
+	DATA_ASSIGN(12, p.surv_bonus.val);
+
+	return 0;
+}
+
 static int
 intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
 {
-#define REF_CLK_KHZ 38400
 #define REGVAL(i) (				\
 	(lt_state->data[i][3])		|	\
 	(lt_state->data[i][2] << 8)	|	\
@@ -1472,7 +1785,10 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	/* TODO: Add a function to compute the data for HDMI TMDS*/
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		return intel_lt_phy_calculate_hdmi_state(&crtc_state->dpll_hw_state.ltpll,
+							 crtc_state->port_clock);
+	}
 
 	return -EINVAL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index a538d4c69210..b7911acd7dcd 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -35,6 +35,9 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       struct intel_lt_phy_pll_state *pll_state);
 void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc);
+int
+intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
+				  u32 frequency_khz);
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state);
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
index 9223487d764e..dc7b7679cd06 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
@@ -72,4 +72,20 @@
 #define XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(port, lane)	 _XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(__xe2lpd_port_idx(port), \
 											    lane)
 #define   XE3LPD_PORT_P2M_ADDR_MASK			REG_GENMASK(11, 0)
+
+#define PLL_REG4_ADDR		0x8510
+#define PLL_REG3_ADDR		0x850C
+#define PLL_REG5_ADDR		0x8514
+#define PLL_REG57_ADDR		0x85E4
+#define PLL_LF_ADDR		0x860C
+#define PLL_TDC_ADDR		0x8610
+#define PLL_SSC_ADDR		0x8614
+#define PLL_BIAS2_ADDR		0x8618
+#define PLL_BIAS_TRIM_ADDR	0x8648
+#define PLL_DCO_MED_ADDR	0x8640
+#define PLL_DCO_FINE_ADDR	0x864C
+#define PLL_SSC_INJ_ADDR	0x8624
+#define PLL_SURV_BONUS_ADDR	0x8644
+#define PLL_TYPE_OFFSET		0x200
+#define PLL_REG_ADDR(base, pll_type)		((pll_type) ? (base) + PLL_TYPE_OFFSET : (base))
 #endif /* __INTEL_LT_PHY_REGS_H__ */
-- 
2.34.1

