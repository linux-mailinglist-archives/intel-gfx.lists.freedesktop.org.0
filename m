Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F485BDC69E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:09:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28F1F10E721;
	Wed, 15 Oct 2025 04:08:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WMn9pkTI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDA4F10E721;
 Wed, 15 Oct 2025 04:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760501338; x=1792037338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YHcm3KqcZlEiWrmXZMS0n1iQJzjLuH8igPxZAh87GdQ=;
 b=WMn9pkTIE+rCwVD2ka9oPVCFLJbkRYTrk+Q5Q2k6HSX5ZVJDIzOJehpJ
 Spp0LQ35gS9bm85/LMyq3zq8LQpcrCG/ArTrE2BZRglnv1Wt7bCtovzPC
 0sLn60G5blZA7fYvxRrV5pA0FLtNa8RKAK09IP26Y0azlxKP6tuD1tTzR
 9ZjXbvqdg8asVpqPH3DsRQKqK8Gm0nK2c1DfcmV9iug02tQAKs6FF+mm8
 6lQRg4+wnpqUSTJ3L0H3TNh7a3YVRdXYz+57wuu2/CMW8IQKQcg45sZRW
 80/7SY8dzE+FjHXVSO6kHM1oKHmbb2go5oRh9Bs8MmacEHfyjaL866DjI w==;
X-CSE-ConnectionGUID: fEF/9ziWSbqqGFd0obEwwA==
X-CSE-MsgGUID: thQwFvd4QrqENHS8XaKVnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66318962"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="66318962"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:08:57 -0700
X-CSE-ConnectionGUID: LZuKEz3GT9u8D1s8eMNStA==
X-CSE-MsgGUID: W4Qgw+BIQKGE51qGKfIfEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="219196150"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 14 Oct 2025 21:08:55 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 11/25] drm/i915/ltphy: Add function to calculate LT PHY port
 clock
Date: Wed, 15 Oct 2025 09:38:03 +0530
Message-Id: <20251015040817.3431297-12-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015040817.3431297-1-suraj.kandpal@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
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

The current algorithm is very wrong and was made wrose with
changes in algorithm that were done. It needs to be rewritten
to be able to extract the correct values and get the right port clock.

Bspec: 74667
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c   |  2 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 80 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h |  3 +
 3 files changed, 85 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 8c3ef5867a12..2e1f67be8eda 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1247,6 +1247,8 @@ static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
 		return ret;
 
 	/* TODO: Do the readback via intel_compute_shared_dplls() */
+	crtc_state->port_clock =
+			intel_lt_phy_calc_port_clock(encoder, crtc_state);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 6ee785fbcad2..3aa8b3b345d3 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1236,6 +1236,86 @@ intel_lt_phy_pll_is_ssc_enabled(struct intel_crtc_state *crtc_state,
 	return false;
 }
 
+static int
+intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
+{
+#define DIV_CONST 10000000
+#define REF_CLK 38400
+#define REGVAL(i) (				\
+	(lt_state->data[i][3])		|	\
+	(lt_state->data[i][2] << 8)	|	\
+	(lt_state->data[i][1] << 16)	|	\
+	(lt_state->data[i][0] << 24)		\
+)
+
+	int clk = 0;
+	u32 d8, pll_reg_5, pll_reg_3, pll_reg_57, m2div_frac, m2div_int;
+	u64 temp0, temp1;
+
+	/*
+	 * d7 max val can be 10 so 4 bits
+	 * postdiv can be max 9 hence needs 4 bits
+	 * d8 since loop_cnt / 2 and loop count can be max 255
+	 * henc we needs  only 7 bits to represent but 8 bits is given.
+	 * d8 since loop_cnt / 2 and loop count can be max 255
+	 * hence we needs  only 7 bits to represent but 8 bits is given
+	 * PLL_reg57 = ((D7 << 24) + (postdiv << 15) + (D8 << 7) + D6_new);
+	 * PLL_reg57 = ((D7 << 24) + (postdiv << 15) + (D8 << 7) + D6_new);
+	 * d4 max val can be 256 so 9 bits
+	 * d3 can be max 9 hence needs 4 bits
+	 * d1 can be max 2 hence needs 2 bits
+	 * m2div can never be > 511 hence m2div_int
+	 * usees up to 9 bits but since it is shifted
+	 * by 5 in forward algo and then d1 is shifted to 15th bit
+	 * it has 10 bits.
+	 * PLL_reg3 = (uint32_t)((D4 << 21) + (D3 << 18) + (D1 << 15)+ (m2div_int << 5));
+	 */
+
+	pll_reg_5 = REGVAL(2);
+	pll_reg_3 = REGVAL(1);
+	pll_reg_57 = REGVAL(3);
+	m2div_frac = pll_reg_5;
+
+	d8 = (pll_reg_57 & REG_GENMASK(14, 7)) >> 7;
+	m2div_int = (pll_reg_3  & REG_GENMASK(14, 5)) >> 5;
+	temp0 = ((u64)m2div_frac * REF_CLK) >> 32;
+	temp1 = (u64)m2div_int * REF_CLK;
+	if (d8 == 0)
+		return 0;
+
+	clk = div_u64((temp1 + temp0), d8 * 10);
+
+	return clk;
+}
+
+int
+intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
+			     const struct intel_crtc_state *crtc_state)
+{
+	int clk;
+	const struct intel_lt_phy_pll_state *lt_state =
+		&crtc_state->dpll_hw_state.ltpll;
+	u8 mode, rate;
+
+	mode = REG_FIELD_GET8(LT_PHY_VDR_MODE_ENCODING_MASK,
+			      lt_state->config[0]);
+	/*
+	 * For edp/dp read the clock value from the tables
+	 * and return the clock as the algorithm used for
+	 * calculating the port clock does not exactly matches
+	 * with edp/dp clock.
+	 */
+	if (mode == MODE_DP) {
+		rate = REG_FIELD_GET8(LT_PHY_VDR_RATE_ENCODING_MASK,
+				      lt_state->config[0]);
+		clk = intel_lt_phy_get_dp_clock(rate);
+	} else {
+		clk = intel_lt_phy_calc_hdmi_port_clock(lt_state);
+	}
+
+	return clk;
+}
+
 int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 3f255c9b0f96..5b4e0d9c940f 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -10,12 +10,15 @@
 
 struct intel_encoder;
 struct intel_crtc_state;
+struct intel_lt_phy_pll_state;
 
 void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state);
 int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder);
+int intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
+				 const struct intel_crtc_state *crtc_state);
 
 #define HAS_LT_PHY(display) (DISPLAY_VER(display) >= 35)
 
-- 
2.34.1

