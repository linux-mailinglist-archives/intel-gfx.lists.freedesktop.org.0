Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5948FD3A334
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 10:38:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1B610E3E0;
	Mon, 19 Jan 2026 09:38:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uc+AhctS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66B3910E3A0;
 Mon, 19 Jan 2026 09:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768815495; x=1800351495;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qbiE7+WkXZvUBThg3rWxi1X9bhceIbtpewLYt0Fj2E4=;
 b=Uc+AhctS4YlDv/2u66/OJk4LUy5wnv1BSRlgRs9Alc0ntbaG9gGoQIef
 GB3cnq9IzvKH45N4GYQaDKCnwTf+IstjDqPsn3FmAob65/neq4S2YzL7g
 wJt38Pupoh66XGpIrPIeo+3Qm5kChSHTX84ZPUw2pUdlCsqhU+H9U+x/7
 lOOCgh77uvygGFwKdNJaamEtMy8adqz7DKzFH6sx3f7Q54Fc9+LBvahmb
 txJCurcfCCAPlFY3ez4uKHVl5iC8Z9dohys/9cLigxg5rHHtJOUX9TQFE
 np5K6QNP/5IA5sXGfRvu6MOg+vN10r1QX2kSItByWpbfcak2lh37yY0mQ Q==;
X-CSE-ConnectionGUID: BYvRLpLpTfKdCS7qVGjMIg==
X-CSE-MsgGUID: gxxBz3OzSdOulpL7HKPkew==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="87602182"
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="87602182"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 01:38:15 -0800
X-CSE-ConnectionGUID: e7af2wExTTifjsdeJ3sGcw==
X-CSE-MsgGUID: FlgwIzYBQk6HucD4lj58cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="210838442"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa005.jf.intel.com with ESMTP; 19 Jan 2026 01:38:14 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI 10/15] drm/i915/cx0: Add a fuzzy check for DP/HDMI clock rates
 during programming
Date: Mon, 19 Jan 2026 09:37:51 +0000
Message-ID: <20260119093757.2850233-11-mika.kahola@intel.com>
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

Since the clock rate is derived from the PLL divider values it can have
a +-1kHz difference wrt. the reference rates in the comparison

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  8 +++++++-
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 19 +++++++++----------
 2 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index eda0e176b8be..3b56d25c8db8 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3012,6 +3012,12 @@ static void intel_c20_pll_program(struct intel_display *display,
 		      MB_WRITE_COMMITTED);
 }
 
+static bool is_mplla_clock_rate(int clock)
+{
+	return intel_dpll_clock_matches(clock, 1000000) ||
+	       intel_dpll_clock_matches(clock, 2000000);
+}
+
 static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 					 const struct intel_cx0pll_state *pll_state,
 					 int port_clock,
@@ -3037,7 +3043,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 
 	/* TODO: HDMI FRL */
 	/* DP2.0 10G and 20G rates enable MPLLA*/
-	if (port_clock == 1000000 || port_clock == 2000000)
+	if (is_mplla_clock_rate(port_clock))
 		val |= pll_state->ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
 	else
 		val |= pll_state->ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 055e68810d0d..05e898d10a2b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -56,6 +56,7 @@
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
 #include "intel_dp.h"
+#include "intel_dpll.h"
 #include "intel_gmbus.h"
 #include "intel_hdcp.h"
 #include "intel_hdcp_regs.h"
@@ -70,16 +71,14 @@
 
 bool intel_hdmi_is_frl(u32 clock)
 {
-	switch (clock) {
-	case 300000: /* 3 Gbps */
-	case 600000: /* 6 Gbps */
-	case 800000: /* 8 Gbps */
-	case 1000000: /* 10 Gbps */
-	case 1200000: /* 12 Gbps */
-		return true;
-	default:
-		return false;
-	}
+	u32 rates[] = { 300000, 600000, 800000, 1000000, 1200000 };
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(rates); i++)
+		if (intel_dpll_clock_matches(clock, rates[i]))
+			return true;
+
+	return false;
 }
 
 static void
-- 
2.43.0

