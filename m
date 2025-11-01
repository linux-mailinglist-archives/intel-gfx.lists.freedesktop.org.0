Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE9DC2768A
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:25:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C71AD10EC3F;
	Sat,  1 Nov 2025 03:25:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fo/0cHSP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19BDE10EC3C;
 Sat,  1 Nov 2025 03:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761967527; x=1793503527;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kuy/D2OBxjFOEtL7j3O04TD8KtM2/BFyoJNRFZuNdiQ=;
 b=Fo/0cHSPSlQGTci29g+85d3i4SQ+PvtUOmOFVw9Zuf0TVbDoVciQG754
 m8NcoIM61aEKFbwwXzcz2ZB/t2qKycLXriCvp7r/QheLmEii7GCkJ9I6N
 /VJ9HGOha/INOdW1yDusFNy4kR+3yR0JpLcelubMLP1FQpTNv6FTws732
 e6pmL1kS2iMGieSdcXX8gHXCpIcqcKXtFPRVMuQ/ej9wshCETpwatPCQR
 rN2nSPZoqH/+HgjPI8sY2j2tebabZOij6hiAACQWJ33KcZ5Bci/LpWb9I
 TgD11W9m1Iv0Xvtv1ZlChExGZMz55b4pV/d2evP0tpqSvUEMggoSTTQ6l w==;
X-CSE-ConnectionGUID: j3m4tmKATgyjeeBqMmp4wQ==
X-CSE-MsgGUID: mdpJr7axTTiX4JB/3jhZ7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="64019846"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="64019846"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:25:27 -0700
X-CSE-ConnectionGUID: AKnUQsHiRe6cUuXboOxL+w==
X-CSE-MsgGUID: ls/m7oV+T7SBwIxSK+bTWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217037951"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 31 Oct 2025 20:25:25 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v5 05/25] drm/i915/ltphy: Program sequence for PORT_CLOCK_CTL
 for LT Phy
Date: Sat,  1 Nov 2025 08:54:53 +0530
Message-Id: <20251101032513.4171255-6-suraj.kandpal@intel.com>
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

Program sequence from port clock ctl except for the SSC
enablement part which will be taken care of later.

Bspec: 74492
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c  | 37 ++++++++++++++++++++
 2 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index c92026fe7b8f..b111a893b428 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -43,6 +43,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
 int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
 void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
+bool intel_cx0_is_hdmi_frl(u32 clock);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 void intel_cx0_pll_power_save_wa(struct intel_display *display);
 void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index c65333cc9494..b6f71425cd19 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -11,6 +11,7 @@
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
+#include "intel_hdmi.h"
 #include "intel_lt_phy.h"
 #include "intel_lt_phy_regs.h"
 #include "intel_tc.h"
@@ -108,13 +109,49 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_phy_pulse_status, 0);
 }
 
+static void
+intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
+				    const struct intel_crtc_state *crtc_state,
+				    bool lane_reversal)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	u32 val = 0;
+
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, encoder->port),
+		     XELPDP_PORT_REVERSAL,
+		     lane_reversal ? XELPDP_PORT_REVERSAL : 0);
+
+	val |= XELPDP_FORWARD_CLOCK_UNGATE;
+
+	/*
+	 * We actually mean MACCLK here and not MAXPCLK when using LT Phy
+	 * but since the register bits still remain the same we use
+	 * the same definition
+	 */
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
+	    intel_hdmi_is_frl(crtc_state->port_clock))
+		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
+	else
+		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
+
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
+		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
+		     XELPDP_DDI_CLOCK_SELECT_MASK(display) | XELPDP_SSC_ENABLE_PLLA |
+		     XELPDP_SSC_ENABLE_PLLB, val);
+}
+
 void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state)
 {
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->lane_reversal;
+
 	/* 1. Enable MacCLK at default 162 MHz frequency. */
 	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
 
 	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes, gating, and SSC. */
+	intel_lt_phy_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
+
 	/* 3. Change owned PHY lanes power to Ready state. */
 	/*
 	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
-- 
2.34.1

