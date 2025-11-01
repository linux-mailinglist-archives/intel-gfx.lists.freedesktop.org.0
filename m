Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C769C2762C
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:05:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2D5710EAB3;
	Sat,  1 Nov 2025 03:05:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dTKcfOus";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D254310E38F;
 Sat,  1 Nov 2025 03:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761966306; x=1793502306;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c4AvUnqqB/lnbCxL0lH/Z0mK5t6XeDEb/3hRxsvR5oQ=;
 b=dTKcfOusH+eYI11dyzdxE0P4Hh9MpHMi8Iyxkjtmpe8iv+Nxp08NEKlH
 sXDPvsQOasckUEuWlh14oJnPypVQuKICVSGXhz6zIFO1wokwTzXAkmfUU
 KlAwS5kcvQrSMUs5PlEMhY/HnNaomJt5Uk0Drwk0XB5dr9YrNQ8L7E4Xu
 unmhRrx3PYaHajTofEzjAITmenixHJ91LH72WBU2d/kUX5yLSjvzZx41B
 uv5kj2msI7mpnnppS/cF5tjMIpFxxcBsMvCrWzsxKROf+j3a+SObkQrpe
 PXdkuoT4BI9zax5uJ1WkRv7ToMBf3Wij7/DyJ26Hx/7nMLrgaOuyk4ZKU g==;
X-CSE-ConnectionGUID: lu8m0+UkSC2sm5SFfDer/w==
X-CSE-MsgGUID: 1ZDuMWAfRLiHUkHT6tnVKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="81759514"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="81759514"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:05:06 -0700
X-CSE-ConnectionGUID: t8KHXgDjStmQqOOwWZmYZA==
X-CSE-MsgGUID: e03W36SLRseGaOnU0OyQ5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217222622"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 31 Oct 2025 20:05:01 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v4 09/25] drm/i915/ltphy: Program the VDR PLL registers for LT
 PHY
Date: Sat,  1 Nov 2025 08:34:18 +0530
Message-Id: <20251101030434.4159839-10-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101030434.4159839-1-suraj.kandpal@intel.com>
References: <20251101030434.4159839-1-suraj.kandpal@intel.com>
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

Fetch the tables which need to be used and program it in
the specified VDR register space. Everything is done over
the respective lanes.

Bspec: 68862, 74500
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
V1 -> V2:
-Reframe commit message (Arun)

 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  7 ++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  5 +++
 drivers/gpu/drm/i915/display/intel_lt_phy.c  | 38 ++++++++++++++++++++
 3 files changed, 45 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index d87334137cd3..273cc43f66ed 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -23,9 +23,6 @@
 #include "intel_snps_hdmi_pll.h"
 #include "intel_tc.h"
 
-#define MB_WRITE_COMMITTED      true
-#define MB_WRITE_UNCOMMITTED    false
-
 #define for_each_cx0_lane_in_mask(__lane_mask, __lane) \
 	for ((__lane) = 0; (__lane) < 2; (__lane)++) \
 		for_each_if((__lane_mask) & BIT(__lane))
@@ -358,8 +355,8 @@ static void __intel_cx0_write(struct intel_encoder *encoder,
 		     "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, i);
 }
 
-static void intel_cx0_write(struct intel_encoder *encoder,
-			    u8 lane_mask, u16 addr, u8 data, bool committed)
+void intel_cx0_write(struct intel_encoder *encoder,
+		     u8 lane_mask, u16 addr, u8 data, bool committed)
 {
 	int lane;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 948fd626846d..c1e61d16fb68 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -8,6 +8,9 @@
 
 #include <linux/types.h>
 
+#define MB_WRITE_COMMITTED      true
+#define MB_WRITE_UNCOMMITTED    false
+
 enum icl_port_dpll_id;
 struct intel_atomic_state;
 struct intel_c10pll_state;
@@ -47,6 +50,8 @@ int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
 void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
 bool intel_cx0_is_hdmi_frl(u32 clock);
 u8 intel_cx0_read(struct intel_encoder *encoder, u8 lane_mask, u16 addr);
+void intel_cx0_write(struct intel_encoder *encoder,
+		     u8 lane_mask, u16 addr, u8 data, bool committed);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 void intel_cx0_pll_power_save_wa(struct intel_display *display);
 void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 22686da809d0..ece81e8d558d 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -992,6 +992,12 @@ static u8 intel_lt_phy_read(struct intel_encoder *encoder, u8 lane_mask, u16 add
 	return intel_cx0_read(encoder, lane_mask, addr);
 }
 
+static void intel_lt_phy_write(struct intel_encoder *encoder,
+			       u8 lane_mask, u16 addr, u8 data, bool committed)
+{
+	intel_cx0_write(encoder, lane_mask, addr, data, committed);
+}
+
 static void
 intel_lt_phy_setup_powerdown(struct intel_encoder *encoder, u8 lane_count)
 {
@@ -1228,6 +1234,36 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 	return -EINVAL;
 }
 
+static void
+intel_lt_phy_program_pll(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state)
+{
+	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
+	int i, j, k;
+
+	intel_lt_phy_write(encoder, owned_lane_mask, LT_PHY_VDR_0_CONFIG,
+			   crtc_state->dpll_hw_state.ltpll.config[0], MB_WRITE_COMMITTED);
+	intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_1_CONFIG,
+			   crtc_state->dpll_hw_state.ltpll.config[1], MB_WRITE_COMMITTED);
+	intel_lt_phy_write(encoder, owned_lane_mask, LT_PHY_VDR_2_CONFIG,
+			   crtc_state->dpll_hw_state.ltpll.config[2], MB_WRITE_COMMITTED);
+
+	for (i = 0; i <= 12; i++) {
+		intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_X_ADDR_MSB(i),
+				   crtc_state->dpll_hw_state.ltpll.addr_msb[i],
+				   MB_WRITE_COMMITTED);
+		intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_X_ADDR_LSB(i),
+				   crtc_state->dpll_hw_state.ltpll.addr_lsb[i],
+				   MB_WRITE_COMMITTED);
+
+		for (j = 3, k = 0; j >= 0; j--, k++)
+			intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0,
+					   LT_PHY_VDR_X_DATAY(i, j),
+					   crtc_state->dpll_hw_state.ltpll.data[i][k],
+					   MB_WRITE_COMMITTED);
+	}
+}
+
 void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state)
 {
@@ -1258,6 +1294,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 		 * 5. Program the PHY internal PLL registers over PHY message bus for the desired
 		 * frequency and protocol type
 		 */
+		intel_lt_phy_program_pll(encoder, crtc_state);
+
 		/* 6. Use the P2P transaction flow */
 		/*
 		 * 6.1. Set the PHY VDR register 0xCC4[Rate Control VDR Update] = 1 over PHY message
-- 
2.34.1

