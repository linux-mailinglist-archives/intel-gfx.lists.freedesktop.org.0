Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D35FC2769F
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:25:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D7F710EC4B;
	Sat,  1 Nov 2025 03:25:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m82fpQYe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD37610EC50;
 Sat,  1 Nov 2025 03:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761967540; x=1793503540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RLRQtaFum116R8sk5OdG4oy5Mf0bqrZcvYgefzHr0VE=;
 b=m82fpQYey8qaMoc5Z8RmP5iVVNFkjATl4aYoSNfK0km/TY2RymPMORmM
 IPWmD7JbuZWEcPNwfQXhGxsbbx6jPrzn3ATgPAdoLwwIfRczMW9mEbW9p
 oITwxLFlta/LJmQgD5g41Omb1kUQWXGsMCMwKMoaasNUIgvJEJgXpSZH9
 vF0w4yCFLiOP76Cp8v7Y5hNf2wGQKgm54Ic3N3p1sBR8HrjLkOMpp2Tjz
 4dN6CS/3Sppo3OOdetOyAseLntJuflDh05y+5meRycDuPf8y7QinABczQ
 8iMAnrrLR+3vYpffiDVwZFb3lg4aX9O8uviLkXe0dmeMMOlzc6hHEN66e Q==;
X-CSE-ConnectionGUID: i9wz6ZbxT1+9G/OJ07Llbw==
X-CSE-MsgGUID: V0TwsoWiQ+CbPcewoxbqew==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="64019860"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="64019860"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:25:40 -0700
X-CSE-ConnectionGUID: 6M8EewX0S7mMcw1qOpGpGg==
X-CSE-MsgGUID: 2Tmt8RH3TOWtr3mHd7yGAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217037996"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 31 Oct 2025 20:25:39 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v5 12/25] drm/i915/ltphy: Add function to calculate LT PHY
 port clock
Date: Sat,  1 Nov 2025 08:55:00 +0530
Message-Id: <20251101032513.4171255-13-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101032513.4171255-1-suraj.kandpal@intel.com>
References: <20251101032513.4171255-1-suraj.kandpal@intel.com>
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

Create a reverse algorithm which is used to find port clock
from the LT PHY state is provided which is used for
comparision & verification functions.

Bspec: 74667
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c   |  2 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 92 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h |  3 +
 3 files changed, 97 insertions(+)

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
index 1b7d92fff834..fb7cf720d317 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1235,6 +1235,98 @@ intel_lt_phy_pll_is_ssc_enabled(struct intel_crtc_state *crtc_state,
 	return false;
 }
 
+static int
+intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
+{
+#define REF_CLK_KHZ 38400
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
+	/*
+	 * The algorithm uses '+' to combine bitfields when
+	 * constructing PLL_reg3 and PLL_reg57:
+	 * PLL_reg57 = (D7 << 24) + (postdiv << 15) + (D8 << 7) + D6_new;
+	 * PLL_reg3 = (D4 << 21) + (D3 << 18) + (D1 << 15) + (m2div_int << 5);
+	 *
+	 * However, this is likely intended to be a bitwise OR operation,
+	 * as each field occupies distinct, non-overlapping bits in the register.
+	 *
+	 * PLL_reg57 is composed of following fields packed into a 32-bit value:
+	 * - D7: max value 10 -> fits in 4 bits -> placed at bits 24-27
+	 * - postdiv: max value 9 -> fits in 4 bits -> placed at bits 15-18
+	 * - D8: derived from loop_cnt / 2, max 127 -> fits in 7 bits
+	 *	(though 8 bits are given to it) -> placed at bits 7-14
+	 * - D6_new: fits in lower 7 bits -> placed at bits 0-6
+	 * PLL_reg57 = (D7 << 24) | (postdiv << 15) | (D8 << 7) | D6_new;
+	 *
+	 * Similarly, PLL_reg3 is packed as:
+	 * - D4: max value 256 -> fits in 9 bits -> placed at bits 21-29
+	 * - D3: max value 9 -> fits in 4 bits -> placed at bits 18-21
+	 * - D1: max value 2 -> fits in 2 bits -> placed at bits 15-16
+	 * - m2div_int: max value 511 -> fits in 9 bits (10 bits allocated)
+	 *   -> placed at bits 5-14
+	 * PLL_reg3 = (D4 << 21) | (D3 << 18) | (D1 << 15) | (m2div_int << 5);
+	 */
+	pll_reg_5 = REGVAL(2);
+	pll_reg_3 = REGVAL(1);
+	pll_reg_57 = REGVAL(3);
+	m2div_frac = pll_reg_5;
+
+	/*
+	 * From forward algorithm we know
+	 * m2div = 2 * m2
+	 * val = y * frequency * 5
+	 * So now,
+	 * frequency = (m2 * 2 * refclk_khz / (d8 * 10))
+	 * frequency = (m2div * refclk_khz / (d8 * 10))
+	 */
+	d8 = (pll_reg_57 & REG_GENMASK(14, 7)) >> 7;
+	m2div_int = (pll_reg_3  & REG_GENMASK(14, 5)) >> 5;
+	temp0 = ((u64)m2div_frac * REF_CLK_KHZ) >> 32;
+	temp1 = (u64)m2div_int * REF_CLK_KHZ;
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

