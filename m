Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DA1C057EF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 12:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6589F10EA20;
	Fri, 24 Oct 2025 10:07:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L5DU+Oe8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1C9710EA23;
 Fri, 24 Oct 2025 10:07:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761300466; x=1792836466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RxfdPnTtTJYvdGmtyP0FSvVkjrfxsDzM+kQUncBSvDc=;
 b=L5DU+Oe8MWCwbuNpE7B1aLRxxfnpYn+k+eaHGaKDP5UCZMBG4AYrrQOv
 qoJhyGVWP6acbHz+RyyDRcG5RWXIYcogv8kU1W7lhl0+l646URD3bfqj/
 /lFPUcRE8ilHlajYabAsr5j607pN7r+0BXrvv36+XwqvYIas/X25e8KJ+
 Xp5WYjEt82Gr4rm2LsfAt2x+pT4uBhfz5H3urrK+yhdVKWxJz5RmA0Ak7
 qUE4ZvlLLWsukMoQASaQ+F92aXh94Hm3h37yvRVdeK+0y+XwiMwJj6GaY
 WFe/sLLplMqwt4OcqVKUWY08XMyvxCzqKhukMOt3ssVsEoYLss9phOFI6 A==;
X-CSE-ConnectionGUID: nVov7B2kSEer+Km8P+DJ9w==
X-CSE-MsgGUID: SbTZdDkoQI2SN1Z5w+/Y+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67346804"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="67346804"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 03:07:45 -0700
X-CSE-ConnectionGUID: aOnNBS6wTraxAkK4mxyy1A==
X-CSE-MsgGUID: zsTHDre+Tb29gGDLZP+1nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="208039232"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa002.fm.intel.com with ESMTP; 24 Oct 2025 03:07:43 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 09/26] drm/i915/ltphy: Program the VDR PLL registers for LT
 PHY
Date: Fri, 24 Oct 2025 15:36:55 +0530
Message-Id: <20251024100712.3776261-10-suraj.kandpal@intel.com>
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

Fetch the tables which need to be used and program it in
the specified VDR register space. Everything is done over
the respective lanes.

Bspec: 68862, 74500
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
V1 -> V2: Reframe commit message (Arun)
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  7 ++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  5 +++
 drivers/gpu/drm/i915/display/intel_lt_phy.c  | 38 ++++++++++++++++++++
 3 files changed, 45 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index c8848e8bfe8c..00c6bac55872 100644
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
@@ -359,8 +356,8 @@ static void __intel_cx0_write(struct intel_encoder *encoder,
 		     "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, i);
 }
 
-static void intel_cx0_write(struct intel_encoder *encoder,
-			    u8 lane_mask, u16 addr, u8 data, bool committed)
+void intel_cx0_write(struct intel_encoder *encoder,
+		     u8 lane_mask, u16 addr, u8 data, bool committed)
 {
 	int lane;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index b448ce936c37..283be36d5dff 100644
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
@@ -48,6 +51,8 @@ void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
 bool intel_cx0_is_hdmi_frl(u32 clock);
 u8 intel_cx0_read(struct intel_encoder *encoder,
 		  u8 lane_mask, u16 addr);
+void intel_cx0_write(struct intel_encoder *encoder,
+		     u8 lane_mask, u16 addr, u8 data, bool committed);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 void intel_cx0_pll_power_save_wa(struct intel_display *display);
 void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index b0399bf21fd1..b506bda8a751 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -993,6 +993,12 @@ static u8 intel_lt_phy_read(struct intel_encoder *encoder,
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
@@ -1230,6 +1236,36 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
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
@@ -1260,6 +1296,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
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

