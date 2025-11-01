Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A93C2769C
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:25:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2277010EC4D;
	Sat,  1 Nov 2025 03:25:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UceCnw28";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E33F10EC4B;
 Sat,  1 Nov 2025 03:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761967538; x=1793503538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TjtX08au4ctfsMsK+6GZmHiNBUx1rcDRpzO4r/ZPxso=;
 b=UceCnw28mxiptBbrvhIo4x4OX6GSV0kmxzTM1V5KPPoFEnc/v9V3zeMW
 m4evOOlT6yCecmJjexRH3CLE6HW3LY8Zm6Sz8h+hBsRowMIdH46zsuMNX
 bXocQvcx6CEvIpa5fXJ7mSdAHKQxXLCXByNzqYQNg0HByxTRlMg2rsZ9P
 T+2k3M8hhpRd4lXNJ/BrCunmF6ybFVDR5PtFbX0vExJee5MFOlWn6EWMa
 4NQfdkYRTP3aHnS6PNHK8i+tTorfpjLX8LVil2wmm+X9EE+i3KBR4WJBw
 kkNzjoxxgRJTEBVoSoG6uw2YzQFBsJHDRo7W2d2m6vaPCc8YQDGU6E3As w==;
X-CSE-ConnectionGUID: /PzSWBixT7Cqkf0WdTM6og==
X-CSE-MsgGUID: MvmgYY7+RZWK4jo4ZO2JJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="64019858"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="64019858"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:25:38 -0700
X-CSE-ConnectionGUID: ZS2sy4WZTL2yTu0dYi+vtQ==
X-CSE-MsgGUID: Wy1Zww0ySYCNpmZojfU9/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217037989"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 31 Oct 2025 20:25:37 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v5 11/25] drm/i915/ltphy: Enable SSC during port clock
 programming
Date: Sat,  1 Nov 2025 08:54:59 +0530
Message-Id: <20251101032513.4171255-12-suraj.kandpal@intel.com>
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

We enable SSC when we program PORT_CLOCK_CTL register. We logically
determine if ssc is enabled or not while we calculate our state.

Bspec: 74492, 74667
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 26 +++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 892dea3b975f..1b7d92fff834 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -16,6 +16,7 @@
 #include "intel_hdmi.h"
 #include "intel_lt_phy.h"
 #include "intel_lt_phy_regs.h"
+#include "intel_panel.h"
 #include "intel_psr.h"
 #include "intel_tc.h"
 
@@ -1109,6 +1110,12 @@ intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
 	else
 		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
 
+	 /* DP2.0 10G and 20G rates enable MPLLA*/
+	if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000)
+		val |= XELPDP_SSC_ENABLE_PLLA;
+	else
+		val |= crtc_state->dpll_hw_state.ltpll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+
 	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
 		     XELPDP_DDI_CLOCK_SELECT_MASK(display) | XELPDP_SSC_ENABLE_PLLA |
@@ -1211,6 +1218,23 @@ intel_lt_phy_pll_tables_get(struct intel_crtc_state *crtc_state,
 	return NULL;
 }
 
+static bool
+intel_lt_phy_pll_is_ssc_enabled(struct intel_crtc_state *crtc_state,
+				struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (intel_panel_use_ssc(display)) {
+			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+			return (intel_dp->dpcd[DP_MAX_DOWNSPREAD] & DP_MAX_DOWNSPREAD_0_5);
+		}
+	}
+
+	return false;
+}
+
 int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder)
@@ -1229,6 +1253,8 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 				if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
 					crtc_state->dpll_hw_state.ltpll.config[2] = 1;
 			}
+			crtc_state->dpll_hw_state.ltpll.ssc_enabled =
+				intel_lt_phy_pll_is_ssc_enabled(crtc_state, encoder);
 			return 0;
 		}
 	}
-- 
2.34.1

