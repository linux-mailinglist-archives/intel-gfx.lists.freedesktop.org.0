Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D56BDC695
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:08:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB31210E713;
	Wed, 15 Oct 2025 04:08:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Um+51GMu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 189A210E713;
 Wed, 15 Oct 2025 04:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760501329; x=1792037329;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y3HkbmB35GBZuI4fDZNwgF5I90EcQczvM4k+kikMxK8=;
 b=Um+51GMu57G7p3FPR2yXbB9/2oX75HOdjFOvkalZI16v4XoSyFbVRYLH
 KSTs2PN61DYItvkDbE7M/MhmS0R4lmgYHwnUVSQXRzlHnCHBxpdi6sgVP
 69B+bkmeSI0H57eC/Bm4YB5fRERgnKg1FpoB+3Iuid7obpr+1JmL4/WnK
 KhQzdqbI9xLseYFP77usMyrkcUeDRzQh+7mMVFhDXZP0NbKPR2FMO324l
 26joHmOUjgcO1GZSrjtvl1GEe1aaCCr6ZabfCXacJLDKpF4ZH7XKzB66c
 vJ1KD8KcpgNx/0O8+aXuuUCvHxDOCMGYMy/GmFXvmenKf7TM9XSQag5o4 Q==;
X-CSE-ConnectionGUID: sE+A5j6vTxqAjrFA15xA7w==
X-CSE-MsgGUID: HScFK2PgTBiLQUyZ+nXVKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66318957"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="66318957"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:08:49 -0700
X-CSE-ConnectionGUID: fxbaOetYR06K2doun1N1/g==
X-CSE-MsgGUID: ywBj4H+qSHCM7/xTCArNEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="219196125"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 14 Oct 2025 21:08:46 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 08/25] drm/i915/ltphy: Program the VDR PLL registers for LT PHY
Date: Wed, 15 Oct 2025 09:38:00 +0530
Message-Id: <20251015040817.3431297-9-suraj.kandpal@intel.com>
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

Calculate the tables which needs to be used and program it in
the specified VDR register space. Everything is done over Lane0
as mentioned in the tables.

Bspec: 68862, 74500
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  7 ++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  5 +++
 drivers/gpu/drm/i915/display/intel_lt_phy.c  | 38 ++++++++++++++++++++
 3 files changed, 45 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 4e074754a78f..c50233f17bc6 100644
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
index c8910262efb6..9380ba530901 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -992,6 +992,12 @@ static u8 intel_lt_phy_read(struct intel_encoder *encoder,
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
@@ -1229,6 +1235,36 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
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
@@ -1259,6 +1295,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
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

