Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D81128B9B8F
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 15:24:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 540AE10F787;
	Thu,  2 May 2024 13:24:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HUXpxrWK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C4DA10F787
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 13:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714656261; x=1746192261;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SNESvatvshVj+rElmuki7xnmVgqn2k9F97K+I/Y7K18=;
 b=HUXpxrWKuHLxOL54CDl9nThXKFCdMQa19+pGHXuMd23g4QFj7slkEteI
 xIAfpYRXNWX8T8niEypp/hq3WOca9KgT0STFdK+UeBTNXEk2qkKdDqnHY
 QqF7IoHQB7zpvn8E3kzZvSElPjNTOIhderkKB2/XTCHVAoKLRneiJ3Eje
 PHimno97K+IWlASAKBT0exWwNJUf0sJJoQR2wrKzkcIvck5Xq+/cQXcFY
 4Yow/1BBPrTGsfBpUyZABRbbjKkitLJ8X4BSFoVG3nrRV4aujACU/egns
 +9pAp7nApe5OWCNJ5DdYow5wVWLkhv2UxD5q9hhFZgL3ryxEYJfuzWQoL w==;
X-CSE-ConnectionGUID: JAEDGsdTTRWl7qZubzXSyg==
X-CSE-MsgGUID: y70Q9v0wTmS0RgBPZIJ4Ig==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="10641022"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="10641022"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 06:24:19 -0700
X-CSE-ConnectionGUID: Ma6pJvh8Sd61UTy6WHBRRg==
X-CSE-MsgGUID: DBPi5uk2SraAekMlu8IjJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="31927489"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orviesa005.jf.intel.com with ESMTP; 02 May 2024 06:24:18 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH] drm/i915/display: Calculate crtc clock rate based on PLL
 parameters
Date: Thu,  2 May 2024 16:17:16 +0300
Message-Id: <20240502131716.504616-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
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

With HDMI monitors we bumped up a case where the crtc clock rate
caused a mismatch on state verification. This was due to
assumption that the SW clock rate from PLL structure would match
the calculated counterpart from HW. This is not necessarily always
the case and therefore we would actually need to recalculate the
clock rate from SW PLL parameters. Then these SW and HW crtc clock
rates can be compared with each other.

The patch recalculates the crtc clock rate for SW state based on
SW PLL parameters and compares the crtc clock rate calculated
from the parameters found from the HW.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 8e3b13884bb8..89a195917179 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3078,9 +3078,10 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
 	const struct intel_c20pll_state *mpll_sw_state = &state->dpll_hw_state.cx0pll.c20;
 	bool sw_use_mpllb = intel_c20phy_use_mpllb(mpll_sw_state);
 	bool hw_use_mpllb = intel_c20phy_use_mpllb(mpll_hw_state);
+	int clock = intel_c20pll_calc_port_clock(encoder, mpll_sw_state);
 	int i;
 
-	I915_STATE_WARN(i915, mpll_hw_state->clock != mpll_sw_state->clock,
+	I915_STATE_WARN(i915, mpll_hw_state->clock != clock,
 			"[CRTC:%d:%s] mismatch in C20: Register CLOCK (expected %d, found %d)",
 			crtc->base.base.id, crtc->base.name,
 			mpll_sw_state->clock, mpll_hw_state->clock);
-- 
2.34.1

