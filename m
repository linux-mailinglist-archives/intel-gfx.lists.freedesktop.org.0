Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 389D9D22F1B
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 08:51:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B84A710E6E6;
	Thu, 15 Jan 2026 07:51:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TT7oQDyZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17A8E10E6D6;
 Thu, 15 Jan 2026 07:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768463484; x=1799999484;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h3JfUYghbZ+9x7ny+z5oa8lUe47TzCOCW9h2Vs+h5jU=;
 b=TT7oQDyZcRJOVg4fK9w7f+FaWRl1jwryYv0e3ZEavE6zkZccYJV+0scA
 b5U1R7DrfsIZk2YMRPnpBui9MbQOAPNKD+dA93hJ6ay+m70slD8YNiqgZ
 /rxsAIeMivHtmKF7x5xnYFxyzMRvZJLFrMxnoWha4UOJHjsNE0cAhuAOe
 yHubPQwf1M/TUXGiNJmaYmrmHzx+q6oYKAyllM22JfVxNLcpUh2RgGm5C
 ftQMH/kF04bJZG6u71tSt6PYpdJ6kD0SakQU3Sp3bzQA3UsfffU3hWAFU
 EVHXD/Q7vvo1xT1rIznbBXjEBCdXGSY/1WxR49V3oDRQ3LjWcPam9taQ0 A==;
X-CSE-ConnectionGUID: rge8yJsiQTeCTAx4nr7CwQ==
X-CSE-MsgGUID: 6ojN6RQIRMqUq+R5oWcsDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="92436228"
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="92436228"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 23:51:24 -0800
X-CSE-ConnectionGUID: 3QMIMVl8R4iRDWt5scnzhQ==
X-CSE-MsgGUID: xUjhRExASBmicvWe4eLypg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="204101779"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa010.jf.intel.com with ESMTP; 14 Jan 2026 23:51:22 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 12/15] drm/i915/lt_phy: Add verification for lt phy pll
 dividers
Date: Thu, 15 Jan 2026 07:50:58 +0000
Message-ID: <20260115075101.2214842-13-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260115075101.2214842-1-mika.kahola@intel.com>
References: <20260115075101.2214842-1-mika.kahola@intel.com>
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

