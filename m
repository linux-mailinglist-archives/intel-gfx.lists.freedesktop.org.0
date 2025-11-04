Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A6BC30480
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 10:34:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 211A310E58A;
	Tue,  4 Nov 2025 09:34:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dh+zTFxG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A565A10E58A;
 Tue,  4 Nov 2025 09:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762248876; x=1793784876;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e6qpbLR/gPpLDN5MPmtpxU979y+z6hyCjrotr0oyOmI=;
 b=Dh+zTFxGI27911aPnvTvYFEykHeCyqj/I5g6Rq0US730dpYzmuMQuJx5
 dVEUAWSgW/jEJBUq+RogTKOF6CeS4kE1yAvuKHKimVATCsw8avAjIJQJS
 uyrhxit5p0rlow4aTfZeWM6sGT4ogZrFfKO1ng1HLOo/gvg4K8iARZ4LX
 YNBjDoIvv9YXTnFf1sV37ElckWvW5wNsSVEGyrqXnN1k4h94ivUeX2sRp
 /G8X5FjG5ITGQhS2Bh1bdiJNyDQj4k3ddCBm5ZWetX6q/qFLC7PWYhmSP
 TPpmcFDBgMQds2HSp2cWtZOZyziXoDODqyzqNn6zqTFjEPKXAWRx2mdip A==;
X-CSE-ConnectionGUID: KH920C7XTrm++fVssRU9SQ==
X-CSE-MsgGUID: cfBofvsySRKTvPCyk521gQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="75788331"
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="75788331"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 01:34:36 -0800
X-CSE-ConnectionGUID: qIZrpCQsS3WzSQO7rKbQgg==
X-CSE-MsgGUID: sXdUTQZ9RpCsUOCXSLLaWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="187558491"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa009.fm.intel.com with ESMTP; 04 Nov 2025 01:34:34 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/ltphy: Return lowest portclock for HDMI from
 reverse algorithm
Date: Tue,  4 Nov 2025 15:04:25 +0530
Message-Id: <20251104093425.154941-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251104093425.154941-1-suraj.kandpal@intel.com>
References: <20251104093425.154941-1-suraj.kandpal@intel.com>
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

Return the lowest port clock for HDMI when the reverse algorithm
calculates it to be 0 to avoid errors later but throw a warn.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index c1177b294013..e6b15bf6445b 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1675,7 +1675,7 @@ intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
 }
 
 static int
-intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
+intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_state)
 {
 #define REF_CLK_KHZ 38400
 #define REGVAL(i) (				\
@@ -1685,6 +1685,9 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
 	(lt_state->data[i][0] << 24)		\
 )
 
+	const struct intel_lt_phy_pll_state *lt_state =
+		&crtc_state->dpll_hw_state.ltpll;
+	struct intel_display *display = to_intel_display(crtc_state);
 	int clk = 0;
 	u32 d8, pll_reg_5, pll_reg_3, pll_reg_57, m2div_frac, m2div_int;
 	u64 temp0, temp1;
@@ -1727,11 +1730,14 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
 	 * frequency = (m2div * refclk_khz / (d8 * 10))
 	 */
 	d8 = (pll_reg_57 & REG_GENMASK(14, 7)) >> 7;
+	if (d8 == 0) {
+		drm_WARN_ON(display->drm,
+			    "Invalid port clock using lowest HDMI portclock\n");
+		return 270000;
+	}
 	m2div_int = (pll_reg_3  & REG_GENMASK(14, 5)) >> 5;
 	temp0 = ((u64)m2div_frac * REF_CLK_KHZ) >> 32;
 	temp1 = (u64)m2div_int * REF_CLK_KHZ;
-	if (d8 == 0)
-		return 0;
 
 	clk = div_u64((temp1 + temp0), d8 * 10);
 
@@ -1760,7 +1766,7 @@ intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
 				      lt_state->config[0]);
 		clk = intel_lt_phy_get_dp_clock(rate);
 	} else {
-		clk = intel_lt_phy_calc_hdmi_port_clock(lt_state);
+		clk = intel_lt_phy_calc_hdmi_port_clock(crtc_state);
 	}
 
 	return clk;
-- 
2.34.1

