Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B04D1BDC6CE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:09:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD05510E744;
	Wed, 15 Oct 2025 04:09:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Az/vu8nx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0133A10E73D;
 Wed, 15 Oct 2025 04:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760501376; x=1792037376;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tDjnfKaAek6ly8fZwRC1owIwi4raeSeRKKoc936q6A4=;
 b=Az/vu8nxJNRohP90hNT3iOvmx2qoLXGJMQMN3d3GLztKO0sEox1NitVj
 MTC68HPFDL4V3t7aQhF33qXIHYKBbUP0X+5pI5MogGCSXLvdl7UC3/UwK
 enXQuQ48Rk9ITkyEC1MLomkl5OyO0jeaH/RuKBwH0vyXDiFw+oN4VA3We
 WGaVQsVVKDgmpQSNACs3RdAzRzbYUxBy+cF6eI/0SSduHWU1mE/IWyEdA
 uSTAMqNE51YevVzn20UcJQ9YFbbcBn2uAraIKK3ZezILiqJ/9f9ff6GO0
 MVpfUo5QzDQP9wXcIlrLCS7g9rUPyoeALuSvbgwQxBNl9VvA/u9vlSgBl g==;
X-CSE-ConnectionGUID: EieJIEmBTL+cylA4nicp2A==
X-CSE-MsgGUID: phC09gyRRIelta7o+5kEyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66319013"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="66319013"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:09:36 -0700
X-CSE-ConnectionGUID: 35zIotWgTqS2hGEkOtI7Rg==
X-CSE-MsgGUID: b9UDYnhES4eG6tdol2uD/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="219196337"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 14 Oct 2025 21:09:33 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 24/25] drm/i915/ltphy: Modify the step that need to by skipped
Date: Wed, 15 Oct 2025 09:38:16 +0530
Message-Id: <20251015040817.3431297-25-suraj.kandpal@intel.com>
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

Bspec has changed the non tbt pll enable sequence now we skip
steps 5-17 if no config change has occurred.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 63 +++++++++++----------
 1 file changed, 33 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 72c3ba787e2a..0262c3a97020 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1664,40 +1664,43 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 					 XE3PLPD_MACCLK_TURNON_LATENCY_US, 2, NULL))
 			drm_warn(display->drm, "PHY %c PLL MacCLK Ack assertion Timeout after %dus.\n",
 				 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_US);
+
+		/*
+		 * 13. Ungate the forward clock by setting
+		 * PORT_CLOCK_CTL[Forward Clock Ungate] = 1.
+		 */
+		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
+			     XELPDP_FORWARD_CLOCK_UNGATE,
+			     XELPDP_FORWARD_CLOCK_UNGATE);
+
+		/* 14. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
+		intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
+			     lane_phy_pulse_status,
+			     lane_phy_pulse_status);
+		/*
+		 * 15. Clear the PHY VDR register 0xCC4[Rate Control VDR Update] over
+		 * PHY message bus for Owned PHY Lanes.
+		 */
+		rate_update = intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0, LT_PHY_RATE_UPDATE);
+		rate_update &= ~LT_PHY_RATE_CONTROL_VDR_UPDATE;
+		intel_lt_phy_write(encoder, owned_lane_mask, LT_PHY_RATE_UPDATE,
+				   rate_update, MB_WRITE_COMMITTED);
+
+		/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status = 1 for Owned PHY Lanes. */
+		if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
+					 lane_phy_pulse_status, lane_phy_pulse_status,
+					 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 2, NULL))
+			drm_warn(display->drm, "PHY %c PLL rate not changed after %dus.\n",
+				 phy_name(phy), XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
+
+		/* 17. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
+		intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
+			     lane_phy_pulse_status,
+			     lane_phy_pulse_status);
 	} else {
 		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), crtc_state->port_clock);
 	}
 
-	/* 13. Ungate the forward clock by setting PORT_CLOCK_CTL[Forward Clock Ungate] = 1. */
-	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
-		     XELPDP_FORWARD_CLOCK_UNGATE,
-		     XELPDP_FORWARD_CLOCK_UNGATE);
-
-	/* 14. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
-	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
-		     lane_phy_pulse_status,
-		     lane_phy_pulse_status);
-	/*
-	 * 15. Clear the PHY VDR register 0xCC4[Rate Control VDR Update] over PHY message bus for
-	 * Owned PHY Lanes.
-	 */
-	rate_update = intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0, LT_PHY_RATE_UPDATE);
-	rate_update &= ~LT_PHY_RATE_CONTROL_VDR_UPDATE;
-	intel_lt_phy_write(encoder, owned_lane_mask, LT_PHY_RATE_UPDATE,
-			   rate_update, MB_WRITE_COMMITTED);
-
-	/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status = 1 for Owned PHY Lanes. */
-	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
-				 lane_phy_pulse_status, lane_phy_pulse_status,
-				 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 2, NULL))
-		drm_warn(display->drm, "PHY %c PLL rate not changed after %dus.\n",
-			 phy_name(phy), XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
-
-	/* 17. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
-	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
-		     lane_phy_pulse_status,
-		     lane_phy_pulse_status);
-
 	/*
 	 * 18. Follow the Display Voltage Frequency Switching - Sequence After Frequency Change.
 	 * We handle this step in bxt_set_cdclk()
-- 
2.34.1

