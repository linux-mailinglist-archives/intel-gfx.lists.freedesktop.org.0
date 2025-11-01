Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46258C2768D
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:25:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF27B10EC40;
	Sat,  1 Nov 2025 03:25:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aZi/Wq2e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 071D910EC3D;
 Sat,  1 Nov 2025 03:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761967529; x=1793503529;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qygtZP98gUwD5zMMNHotUqkP0dZHGCrl1ZcDvGUAP3o=;
 b=aZi/Wq2eo/SWist8eHE5BL+unM7sr17PWXkJpgblhIXQvFhKZFZhKPgW
 Y2o2Epq2CFQsRDiAN5bCuNtt5czsLpRbklydWw40VeQAsonxTGTpjwHma
 pXeLBEYPQ4b5UCjmxTtSOCyIj2tmXN958BJWvYSOjbeCjYt+8DQqP/SMN
 biZPVKx4DKogzw3OU4KzdYAnLC16K4rtBLJWFkFGxD3Z4w/6xBJavqv6l
 GdnrvmQgA2IfZM0KZz6vj69Rv9cycA4jXbbvCEpwsVMRSMc5fyua12moh
 /Fb7EnCvwqzP0wdUzF0bfrBr5+bOixEEiyMpMiXW7AlYh+FYbFKtknYsX Q==;
X-CSE-ConnectionGUID: xQMROh8ZQi2bAkZbunD2jw==
X-CSE-MsgGUID: Y/tCH1TKRDalnkmNO7T8/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="64019848"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="64019848"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:25:29 -0700
X-CSE-ConnectionGUID: 9Rt1cKzbTXC7B0F9Z6/gaA==
X-CSE-MsgGUID: 1FixJ3k2TrGPY1DKYgmi+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217037954"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 31 Oct 2025 20:25:27 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v5 06/25] drm/i915/ltphy: Add a wrapper for LT Phy powerdown
 change sequence
Date: Sat,  1 Nov 2025 08:54:54 +0530
Message-Id: <20251101032513.4171255-7-suraj.kandpal@intel.com>
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

Add a wrapper on cx0 powerdown change sequence for LT Phy usage,
as the sequence remains unchanged when going from SNPS Phy to
LT Phy.

Bspec: 74495
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  6 +++---
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 ++
 drivers/gpu/drm/i915/display/intel_lt_phy.c  | 13 +++++++++++++
 3 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ff5a54c5f4ff..233fefe89eec 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2802,8 +2802,8 @@ static u32 intel_cx0_get_powerdown_state(u8 lane_mask, u8 state)
 	return val;
 }
 
-static void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
-						u8 lane_mask, u8 state)
+void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
+					 u8 lane_mask, u8 state)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
@@ -2833,7 +2833,7 @@ static void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
 	/* Update Timeout Value */
 	if (intel_de_wait_custom(display, buf_ctl2_reg,
 				 intel_cx0_get_powerdown_update(lane_mask), 0,
-				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
+				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 2, NULL))
 		drm_warn(display->drm,
 			 "PHY %c failed to bring out of Lane reset after %dus.\n",
 			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index b111a893b428..8c9b97f0922d 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -41,6 +41,8 @@ bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
 				   const struct intel_cx0pll_state *b);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
+void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
+					 u8 lane_mask, u8 state);
 int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
 void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
 bool intel_cx0_is_hdmi_frl(u32 clock);
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index b6f71425cd19..239f7cdd373b 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -43,6 +43,13 @@ intel_lt_phy_setup_powerdown(struct intel_encoder *encoder, u8 lane_count)
 	intel_cx0_setup_powerdown(encoder);
 }
 
+static void
+intel_lt_phy_powerdown_change_sequence(struct intel_encoder *encoder,
+				       u8 lane_mask, u8 state)
+{
+	intel_cx0_powerdown_change_sequence(encoder, lane_mask, state);
+}
+
 static void
 intel_lt_phy_lane_reset(struct intel_encoder *encoder,
 			u8 lane_count)
@@ -70,6 +77,8 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
 		     XE3PLPDP_PHY_MODE_MASK, XE3PLPDP_PHY_MODE_DP);
 
 	intel_lt_phy_setup_powerdown(encoder, lane_count);
+	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
+					       XELPDP_P2_STATE_RESET);
 
 	intel_de_rmw(display, XE3PLPD_PORT_BUF_CTL5(port),
 		     XE3PLPD_MACCLK_RESET_0, 0);
@@ -145,6 +154,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->lane_reversal;
+	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
 
 	/* 1. Enable MacCLK at default 162 MHz frequency. */
 	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
@@ -153,6 +163,9 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	intel_lt_phy_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
 
 	/* 3. Change owned PHY lanes power to Ready state. */
+	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
+					       XELPDP_P2_STATE_READY);
+
 	/*
 	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
 	 * encoded rate and encoded mode.
-- 
2.34.1

