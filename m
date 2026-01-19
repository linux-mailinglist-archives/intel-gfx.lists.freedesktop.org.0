Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1B5D3A336
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 10:38:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9747A10E3E3;
	Mon, 19 Jan 2026 09:38:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vq0gLjNT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CA2F10E3E3;
 Mon, 19 Jan 2026 09:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768815498; x=1800351498;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h3JfUYghbZ+9x7ny+z5oa8lUe47TzCOCW9h2Vs+h5jU=;
 b=Vq0gLjNT5VVajPm274vy4SrPianZtcUbnh+rTqwNNAYBcwjtS0NptwNH
 ujhX/cSDwJ+mHI3skQ7YbqDMAu850n2oA8CF+ddUaYEcJ2IAqmSiUp/04
 AQmJNZnRwxDVS+AMaFBJOCACST44sQfrRFbeFQ24/YPaRpUT3cOkyWMEz
 U2dArQ3HO3IKNTFNgFzdKEDwBeCEaZfqi/tctAvAaNEA8ChIBEesHsT9G
 hxtvLGG5l5lNCJ99ibcrPSisM70ZLQwV2iI49g6tKSe0PGsTubrB6m7cu
 vkPHHbtwm0RiSEwFftF5uV0oPFOelw3o+I0SJjD32vQ9vHGeb3qFl9Nub w==;
X-CSE-ConnectionGUID: KrTbsvHhRASyzv4Wxd6hqw==
X-CSE-MsgGUID: c5V/T7tyQcWCxWfP7yRaWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="87602188"
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="87602188"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 01:38:18 -0800
X-CSE-ConnectionGUID: NaXlJ7rcSJukzzqZUzwccw==
X-CSE-MsgGUID: Icgi+/2ZS8aIEO6j6Je7uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="210838464"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa005.jf.intel.com with ESMTP; 19 Jan 2026 01:38:17 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI 12/15] drm/i915/lt_phy: Add verification for lt phy pll dividers
Date: Mon, 19 Jan 2026 09:37:53 +0000
Message-ID: <20260119093757.2850233-13-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119093757.2850233-1-mika.kahola@intel.com>
References: <20260119093757.2850233-1-mika.kahola@intel.com>
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

Add verification for lt phy pll dividers during boot. The port clock
is calculated from pll dividers and compared against the requested
port clock value. If there are a difference exceeding +-1 kHz an
drm_warn() is thrown out to indicate possible pll divider mismatch.

v2:
- Move the LT_PHY_PLL_PARAMS -> LT_PHY_PLL_DP/HDMI_PARAMS change
  earlier.
- Use tables[i].name != NULL as a terminating condition.
- Use state vs. params term consistently in intel_c10pll_verify_clock()
  and intel_c20pll_verify_clock().

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 63 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  1 +
 3 files changed, 66 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 7127bc2a0898..f35a9252f4e1 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -38,6 +38,7 @@
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
 #include "intel_hti.h"
+#include "intel_lt_phy.h"
 #include "intel_mg_phy_regs.h"
 #include "intel_pch_refclk.h"
 #include "intel_step.h"
@@ -4639,6 +4640,7 @@ void intel_dpll_init(struct intel_display *display)
 	 * debug option.
 	 */
 	intel_cx0pll_verify_plls(display);
+	intel_lt_phy_verify_plls(display);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 2790caba5457..dbe2b2dc9887 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2337,3 +2337,66 @@ void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
 		intel_lt_phy_pll_disable(encoder);
 
 }
+
+static void intel_lt_phy_pll_verify_clock(struct intel_display *display,
+					  int precomputed_clock,
+					  const char *pll_state_name,
+					  const struct intel_lt_phy_pll_state *pll_state,
+					  bool is_precomputed_state)
+{
+	struct drm_printer p;
+	int clock;
+
+	clock = intel_lt_phy_calc_port_clock(display, pll_state);
+
+	if (intel_dpll_clock_matches(clock, precomputed_clock))
+		return;
+
+	drm_warn(display->drm,
+		 "PLL state %s (%s): clock difference too high: computed %d, pre-computed %d\n",
+		 pll_state_name,
+		 is_precomputed_state ? "precomputed" : "computed",
+		 clock, precomputed_clock);
+
+	if (!drm_debug_enabled(DRM_UT_KMS))
+		return;
+
+	p = drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
+
+	drm_printf(&p, "PLL state %s (%s):\n",
+		   pll_state_name,
+		   is_precomputed_state ? "precomputed" : "computed");
+	intel_lt_phy_dump_hw_state(display, pll_state);
+}
+
+static void intel_lt_phy_pll_verify_params(struct intel_display *display,
+					   const struct intel_lt_phy_pll_params *pll_params)
+{
+	struct intel_lt_phy_pll_state pll_state;
+
+	intel_lt_phy_pll_verify_clock(display, pll_params->clock_rate, pll_params->name, pll_params->state, true);
+
+	if (!pll_params->is_hdmi)
+		return;
+
+	if (intel_lt_phy_calculate_hdmi_state(&pll_state, pll_params->clock_rate) != 0)
+		return;
+
+	intel_lt_phy_pll_verify_clock(display, pll_params->clock_rate, pll_params->name, &pll_state, false);
+}
+
+static void intel_lt_phy_pll_verify_tables(struct intel_display *display,
+					   const struct intel_lt_phy_pll_params *tables)
+{
+	int i;
+
+	for (i = 0; tables[i].name; i++)
+		intel_lt_phy_pll_verify_params(display, &tables[i]);
+}
+
+void intel_lt_phy_verify_plls(struct intel_display *display)
+{
+	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_dp_tables);
+	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_edp_tables);
+	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_hdmi_tables);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 22b12d2d5bb1..db905668f86d 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -41,5 +41,6 @@ intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state);
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
+void intel_lt_phy_verify_plls(struct intel_display *display);
 
 #endif /* __INTEL_LT_PHY_H__ */
-- 
2.43.0

