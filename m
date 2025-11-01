Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE734C2765C
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:05:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 798C610EC32;
	Sat,  1 Nov 2025 03:05:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eY0u56Ub";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3991410EC2F;
 Sat,  1 Nov 2025 03:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761966349; x=1793502349;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lLAOKIpKZNJluj/lFzIn2N/Rx0ueZ9WJZ1gkD9yF+LE=;
 b=eY0u56UbduS0f6oBtgM4ZcxsOxjShb9u/KNez1BtxivNEO++LMCvc8yh
 QJgk46/X3swo/tHDuhK8/g8wAcpJ34bRP3ifZQ4fHvV4iEkd+WFTFM5H1
 TPoY4Ij3qDGytO1pwIgshft5M6jd90zz19b/36xAnDp+IiAhwk0ZT7qgd
 P3cchgzhGHChn1LjjWUnGUT3EcBA28ZUKY2Yyxsz2lxJjUCus/tTwuEKp
 Wu9V9/5pt1AmxJJ1n9qdjOllmuhCpbzDsyaGLo97FXtQmmfO0z+dUzkRa
 NUIjIqQP1M4WgaYfV8hZ6m216SpRawGlxCQyqERJhXexIgmR3K+XoX/N2 Q==;
X-CSE-ConnectionGUID: YdNNfVPZQ96fUW8hhkOVuQ==
X-CSE-MsgGUID: seFW1fgdS/+aWhj9kJyZcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="81759558"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="81759558"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:05:49 -0700
X-CSE-ConnectionGUID: zbLCR42FQqma8t5UlRjJAQ==
X-CSE-MsgGUID: 8IXoEwFRQ2S/E/kuACUS+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217222841"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 31 Oct 2025 20:05:45 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v4 25/25] drm/i915/ltphy: Modify the step that need to be
 skipped
Date: Sat,  1 Nov 2025 08:34:34 +0530
Message-Id: <20251101030434.4159839-26-suraj.kandpal@intel.com>
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

Bspec has changed the non tbt pll enable sequence now we skip
steps 5-17 if no config change has occurred.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 63 +++++++++++----------
 1 file changed, 33 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index ca5f85c4de53..af48d6cde226 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1677,40 +1677,43 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
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

