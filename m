Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 855079177C4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 07:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0FB810E774;
	Wed, 26 Jun 2024 05:00:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fwq/mwGl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39A4210E775;
 Wed, 26 Jun 2024 05:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719378019; x=1750914019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5LJN2p/SBsSg/T6imc2BOUhHvyJa+UbcTXfdacmceuA=;
 b=fwq/mwGlS/sWqEbwgoUtEkn8JY4rhezUHyOlbq3x40O7fFk9a4ooruAI
 QSLLYlOgLDHdJ06P1VWgx5x3DXZg5NuQET4mfeKTmKHWukBQn5IZgbaB4
 Xx/wHSAxH98h48PPcKTdhAKCmfpsMGBjWG/aWNuFw7B8qUOULE6ZNsnBD
 O40hYGzvp8VmQbIMx2d9BMw9TEu/3m2LvF0e2ymLQXJwHTBULYe8CJaLp
 2VOp2olOyjD3yOUAuFrCLcfV/B7JuLFOffxSpaElvgV+SUAgm25O7UVo7
 7P8vduiLllqQgkx/6QcFr760s0np3yz2jTwGpJxmf47gRjKcMXdL7o3rW w==;
X-CSE-ConnectionGUID: voqhD0YXQ5KvtVpjM36iEA==
X-CSE-MsgGUID: KPIQfLeeTsSlsb1ErKvjCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="33962365"
X-IronPort-AV: E=Sophos;i="6.08,265,1712646000"; d="scan'208";a="33962365"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 22:00:19 -0700
X-CSE-ConnectionGUID: imMG9Z8bQuiV5SmoKQgTgQ==
X-CSE-MsgGUID: tMRd0PTlTqC2iuBtAuwBew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,265,1712646000"; d="scan'208";a="44588235"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 22:00:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mika.kahola@intel.com, matthew.d.roper@intel.com
Subject: [PATCH 2/5] drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
Date: Wed, 26 Jun 2024 10:30:53 +0530
Message-Id: <20240626050056.3996349-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
References: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
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

Try SNPS_PHY HDMI tables computed using the algorithm, before using
consolidated tables.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 20 ++++++++-----------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index e6df1f92def5..10fe28af0d11 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -12,6 +12,7 @@
 #include "intel_display_types.h"
 #include "intel_snps_phy.h"
 #include "intel_snps_phy_regs.h"
+#include "intel_pll_algorithm.h"
 
 /**
  * DOC: Synopsis PHY support
@@ -1787,22 +1788,14 @@ intel_mpllb_tables_get(struct intel_crtc_state *crtc_state,
 int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
 			   struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_mpllb_state * const *tables;
 	int i;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
-		if (intel_snps_phy_check_hdmi_link_rate(crtc_state->port_clock)
-		    != MODE_OK) {
-			/*
-			 * FIXME: Can only support fixed HDMI frequencies
-			 * until we have a proper algorithm under a valid
-			 * license.
-			 */
-			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d\n",
-				    crtc_state->port_clock);
-			return -EINVAL;
-		}
+		/* try computed SNPS_PHY HDMI tables before using consolidated tables */
+		if (intel_snps_phy_compute_hdmi_tmds_pll(crtc_state->port_clock,
+							 &crtc_state->dpll_hw_state.mpllb) == 0)
+			return 0;
 	}
 
 	tables = intel_mpllb_tables_get(crtc_state, encoder);
@@ -1991,6 +1984,9 @@ int intel_snps_phy_check_hdmi_link_rate(int clock)
 			return MODE_OK;
 	}
 
+	if (clock >= 25175 && clock <= 594000)
+		return MODE_OK;
+
 	return MODE_CLOCK_RANGE;
 }
 
-- 
2.40.1

