Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69349C247F9
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:37:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4F210EB04;
	Fri, 31 Oct 2025 10:37:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k/TMtbVY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F017E10EB15;
 Fri, 31 Oct 2025 10:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907040; x=1793443040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TjtX08au4ctfsMsK+6GZmHiNBUx1rcDRpzO4r/ZPxso=;
 b=k/TMtbVYy5Rzcuy7630ifDqjTcJG40LHVOEcOry0x3/gyCpj4hmgmEjA
 qiO0PsFSUxn/Dk/0xYqpHCgCneYX7eEQKJ/c27YpemDMScGOicFw3nZBP
 6F1s8Wg7m+pqNswGxRPSRCWDlTp6Vokz5JdFkmnO2SgHgZOpFO9BQDW6E
 Z87GK+wX7ACL4nXUzQctsNgnBjk4sFNmZTXWI8mP4LSlZvgJ+MGROtSmo
 7YKsn7R6YJtsFlA2scPhIrvdzp1ygXn/vrpkXjrS9fCr8qGKP1THfuAW0
 N5xFXE22int0EEyfwLmlJdMWIf0gMrcIpwksZK7TiVG0YpKyhYM6fDLaK g==;
X-CSE-ConnectionGUID: ggqN3mo5TS2zX8zsaXVmXg==
X-CSE-MsgGUID: 2xQbQigORFKFkpBash23BQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="86690873"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="86690873"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:37:19 -0700
X-CSE-ConnectionGUID: MO6quYmuQZ2vfR6bKJtt5g==
X-CSE-MsgGUID: WolRju47TQS8/CSJLbgqHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="190554654"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 31 Oct 2025 03:37:16 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 11/25] drm/i915/ltphy: Enable SSC during port clock
 programming
Date: Fri, 31 Oct 2025 16:06:29 +0530
Message-Id: <20251031103643.4147868-12-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103643.4147868-1-suraj.kandpal@intel.com>
References: <20251031103643.4147868-1-suraj.kandpal@intel.com>
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

