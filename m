Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A44ACC05808
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 12:08:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7144C10EA2E;
	Fri, 24 Oct 2025 10:08:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lalS5Rt+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15D2210EA28;
 Fri, 24 Oct 2025 10:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761300474; x=1792836474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/oa4u1uOvd4XgKZEzML0cQsWj0/W8ZUfIb05g4Nxtug=;
 b=lalS5Rt+v8d6pD/B6W5uywY3Vlwec2L0gMdRUQ+RNcPKmZIm+DU1X1Qp
 oSSNyVweRvT/IEjr4cyF1Lk6EyxPbLTABepHm9orIG8NqA4jGgYpqRaar
 fD/I02VwozPFaLFOEcqazrzf+/fibSeVf54LwQefCULx/RKuKTMzONTRW
 wa3KcWckBjvufK/ri1qaJNRC1eFhfPo2G+M7CSa7GTobaSz5xrtjKUkjb
 ErRlTlfLu29ljYYzQZ6OKCXCIVEzJarMUFfhNdiYPwbEMH/P8j6Q8Tlnw
 JzaqNW+yzyfrFlgQiBu+DyJTe4HPIabrBMCVtKXznU35LX5LcsW+xD/uG g==;
X-CSE-ConnectionGUID: Hhwpi89TSHio4supNTFbNg==
X-CSE-MsgGUID: I5aZBtMbSW2KZOy0FjeyAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67346820"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="67346820"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 03:07:54 -0700
X-CSE-ConnectionGUID: QjpvSn6GT3qyHvIex8NnOQ==
X-CSE-MsgGUID: 2UKUDN+0RueL4nZLQsFQQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="208039260"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa002.fm.intel.com with ESMTP; 24 Oct 2025 03:07:51 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v2 12/26] drm/i915/ltphy: Add function to calculate LT PHY
 port clock
Date: Fri, 24 Oct 2025 15:36:58 +0530
Message-Id: <20251024100712.3776261-13-suraj.kandpal@intel.com>
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

The current algorithm is very wrong and was made wrose with
changes in algorithm that were done. It needs to be rewritten
to be able to extract the correct values and get the right port clock.

Bspec: 74667
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
V1 -> V2: Correct comment grammar
---
 drivers/gpu/drm/i915/display/intel_dpll.c   |  2 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 74 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h |  3 +
 3 files changed, 79 insertions(+)

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
index 0b1b320f5c3a..c7a109e4422c 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1237,6 +1237,80 @@ intel_lt_phy_pll_is_ssc_enabled(struct intel_crtc_state *crtc_state,
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
+	 * d7 max val can be 10 so 4 bits.
+	 * postdiv can be max 9 hence it needs 4 bits.
+	 * d8 = loop_cnt / 2 and loop count can be max 255
+	 * hence we it needs only 7 bits to but 8 bits is given to it.
+	 * PLL_reg57 = ((D7 << 24) + (postdiv << 15) + (D8 << 7) + D6_new);
+	 * d4 max val can be 256 so 9 bits.
+	 * d3 can be max 9 hence needs 4 bits.
+	 * d1 can be max 2 hence needs 2 bits.
+	 * m2div can never be > 511 hence m2div_int
+	 * needs up to 9 bits but it is given 10.
+	 * PLL_reg3 = (uint32_t)((D4 << 21) + (D3 << 18) + (D1 << 15)+ (m2div_int << 5));
+	 */
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

