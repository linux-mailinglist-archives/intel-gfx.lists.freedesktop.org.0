Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF389ACEE1
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 17:34:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E4510E819;
	Wed, 23 Oct 2024 15:34:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="czIWAXRA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A45D10E819;
 Wed, 23 Oct 2024 15:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729697650; x=1761233650;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bJJr4ICs7bp6593lgfCwjwxiYWR495ldtLbo/vIPVDI=;
 b=czIWAXRASfFUhnWLv/umu/GwDRgbQKE8ODsI27F9PVPEAWQQq+thSFot
 k3jicNbRWdAodwCnDgQEkkyUopijliOoWLsUfs7R0+z5BrBjCNtyRoi0p
 qe1jh+s2o+WM+l7TjuTRUv83fr6uEr9831KsQRY88tm58MY20vF8umogf
 +Of7KxeIHrMkB9Drxx4uddlSg0oZaOnGB2gViBfiFJRNuJhVvc/WDKYa1
 DsWiWLTOymk9ArPueYda/lDR7FMekPfqdaTjl7CfvvuGsAqx57gQTDa1T
 OcB7/Q8xySguNagYRC6wmHwq9L1mMujDW51lXwSa12dtaBBUSXfkwofXV g==;
X-CSE-ConnectionGUID: 9NV6zS0AQpaRtBXhXzZARA==
X-CSE-MsgGUID: iyaP0xv6T0aEzZsu0qZQtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29073365"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29073365"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 08:34:10 -0700
X-CSE-ConnectionGUID: q7XnVOJDT56aQm2f+Mvs6w==
X-CSE-MsgGUID: BjqhktprSCGaA5Mo+mi1zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80276223"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.110.239])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 08:34:09 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: [PATCH v2 2/2] drm/i915/xe2lpd: Update C20 algorithm to include
 tx_misc
Date: Wed, 23 Oct 2024 12:33:46 -0300
Message-ID: <20241023153352.144146-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241023153352.144146-1-gustavo.sousa@intel.com>
References: <20241023153352.144146-1-gustavo.sousa@intel.com>
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

There has been an update to the BSpec in which we need to set
tx_misc=0x5 field for C20 TX Context programming for HDMI TMDS for
Xe2_LPD and newer. That field is mapped to the bits 7:0 of
SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1, which in turn translates to tx[1] of
our state struct. Update the algorithm to reflect this change.

v2:
  - Fix Bspec reference (Sai Teja)
  - Use struct intel_display instead of drm_i915_private. (Jani)
  - Use the correct bit width for C20_PHY_TX_MISC_MASK. (Jani)

Bspec: 74491
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com> #v1
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 9 ++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 2 ++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 996c3c6edd41..9202f0b9e8b3 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2144,6 +2144,7 @@ static void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
 
 static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_c20pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll.c20;
 	u64 datarate;
 	u64 mpll_tx_clk_div;
@@ -2153,6 +2154,7 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
 	u64 mpll_multiplier;
 	u64 mpll_fracn_quot;
 	u64 mpll_fracn_rem;
+	u16 tx_misc;
 	u8  mpllb_ana_freq_vco;
 	u8  mpll_div_multiplier;
 
@@ -2172,6 +2174,11 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
 	mpll_div_multiplier = min_t(u8, div64_u64((vco_freq * 16 + (datarate >> 1)),
 						  datarate), 255);
 
+	if (DISPLAY_VER(display) >= 20)
+		tx_misc = 0x5;
+	else
+		tx_misc = 0x0;
+
 	if (vco_freq <= DATARATE_3000000000)
 		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_3;
 	else if (vco_freq <= DATARATE_3500000000)
@@ -2183,7 +2190,7 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
 
 	pll_state->clock	= crtc_state->port_clock;
 	pll_state->tx[0]	= 0xbe88;
-	pll_state->tx[1]	= 0x9800;
+	pll_state->tx[1]	= 0x9800 | C20_PHY_TX_MISC(tx_misc);
 	pll_state->tx[2]	= 0x0000;
 	pll_state->cmn[0]	= 0x0500;
 	pll_state->cmn[1]	= 0x0005;
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index ab3ae110b68f..fdce4152a7c9 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -280,6 +280,8 @@
 #define PHY_C20_B_TX_CNTX_CFG(i915, idx) \
 		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG : _MTL_C20_B_TX_CNTX_CFG) - (idx))
 #define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
+#define   C20_PHY_TX_MISC_MASK		REG_GENMASK16(7, 0)
+#define   C20_PHY_TX_MISC(val)		REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
 
 #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
 		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG : _MTL_C20_A_CMN_CNTX_CFG) - (idx))
-- 
2.47.0

