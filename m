Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1059F4E1C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 15:43:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C215210E9A8;
	Tue, 17 Dec 2024 14:43:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dn8oUNdu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2C2F10E9AA;
 Tue, 17 Dec 2024 14:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734446613; x=1765982613;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PHL9f6XKI69YmcA8WWplhMI5EA/HgOYZ+UG88Z8oTf4=;
 b=dn8oUNduWo+NYDEw3aA1h20KiwfEoZKqUgKLO5r2fgR/I0RZhZptQgPF
 paUWAkxzh6Y2/f2Zhr762s1i/NNvVooG7ij8RSpA+uiz5PaALpfTofP6q
 dcNXPp/LXqfxRJjbGlyWWpPiPEqBvXCRfAQL4zkrhUPvEYyUYbFkmz4ZU
 fWnAcrCzWes/XfuneW7AeUWKb+fFYVU1ggF8wPIJIIHOMJ8yxAri1Ud17
 e+l1EcaTx2RvkmWcPdKF7CUY80IIeuwhCGAbfQCp2LpMHRWtW85FgetOV
 A7Tva0PAgMGLcE4P5mXNISFq97UhfANlEwB6iveTr8qF31PfVHSkBQmMW g==;
X-CSE-ConnectionGUID: d1VH2diHQZuqVahbcjLxZA==
X-CSE-MsgGUID: znE+aJueQBGEzaPHxBGvGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34767900"
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="34767900"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 06:43:32 -0800
X-CSE-ConnectionGUID: X49y0t3oQPmngxEYYUSdkg==
X-CSE-MsgGUID: 5Pc/HvzoQKmgU/B02qpgUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102535562"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orviesa005.jf.intel.com with ESMTP; 17 Dec 2024 06:43:30 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2] drm/i915/display: UHBR rates for Thunderbolt
Date: Tue, 17 Dec 2024 16:34:40 +0200
Message-ID: <20241217143440.572308-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
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

tbt-alt mode is missing uhbr rates 10G and 20G. This requires
requires pll clock rates 312.5 MHz and 625 MHz to be added,
respectively. The uhbr rates are supported only form PTL+
platforms.

v2: Add drm_WARN_ON() to check if port clock is not supported by
    the platform (Imre)
    Combine forward ungate with mask parameter (Imre)
    Rename XE3LPDP_* to XE3D_* (Imre)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 39 +++++++++++++++++--
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  4 ++
 2 files changed, 39 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index cc734079c3b8..a8e0450c0378 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3070,7 +3070,10 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
 
 	val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port));
 
-	clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
+	if (DISPLAY_VER(display) >= 30)
+		clock = REG_FIELD_GET(XE3D_DDI_CLOCK_SELECT_MASK, val);
+	else
+		clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
 
 	drm_WARN_ON(display->drm, !(val & XELPDP_FORWARD_CLOCK_UNGATE));
 	drm_WARN_ON(display->drm, !(val & XELPDP_TBT_CLOCK_REQUEST));
@@ -3085,13 +3088,18 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
 		return 540000;
 	case XELPDP_DDI_CLOCK_SELECT_TBT_810:
 		return 810000;
+	case XELPDP_DDI_CLOCK_SELECT_TBT_312_5:
+		return 1000000;
+	case XELPDP_DDI_CLOCK_SELECT_TBT_625:
+		return 2000000;
 	default:
 		MISSING_CASE(clock);
 		return 162000;
 	}
 }
 
-static int intel_mtl_tbt_clock_select(int clock)
+static int intel_mtl_tbt_clock_select(struct intel_display *display,
+				      int clock)
 {
 	switch (clock) {
 	case 162000:
@@ -3102,6 +3110,18 @@ static int intel_mtl_tbt_clock_select(int clock)
 		return XELPDP_DDI_CLOCK_SELECT_TBT_540;
 	case 810000:
 		return XELPDP_DDI_CLOCK_SELECT_TBT_810;
+	case 1000000:
+		if (DISPLAY_VER(display) < 30) {
+			drm_WARN_ON(display->drm, "UHBR10 not supported for the platform\n");
+			return XELPDP_DDI_CLOCK_SELECT_TBT_162;
+		}
+		return XELPDP_DDI_CLOCK_SELECT_TBT_312_5;
+	case 2000000:
+		if (DISPLAY_VER(display) < 30) {
+			drm_WARN_ON(display->drm, "UHBR20 not supported for the platform\n");
+			return XELPDP_DDI_CLOCK_SELECT_TBT_162;
+		}
+		return XELPDP_DDI_CLOCK_SELECT_TBT_625;
 	default:
 		MISSING_CASE(clock);
 		return XELPDP_DDI_CLOCK_SELECT_TBT_162;
@@ -3114,15 +3134,26 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	u32 val = 0;
+	u32 mask;
 
 	/*
 	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
 	 * clock muxes, gating and SSC
 	 */
-	val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(crtc_state->port_clock));
+
+	if (DISPLAY_VER(display) >= 30) {
+		mask = XE3D_DDI_CLOCK_SELECT_MASK;
+		val |= XE3D_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(display, crtc_state->port_clock));
+	} else {
+		mask = XELPDP_DDI_CLOCK_SELECT_MASK;
+		val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(display, crtc_state->port_clock));
+	}
+
+	mask |= XELPDP_FORWARD_CLOCK_UNGATE;
 	val |= XELPDP_FORWARD_CLOCK_UNGATE;
+
 	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
-		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_FORWARD_CLOCK_UNGATE, val);
+		     mask, val);
 
 	/* 2. Read back PORT_CLOCK_CTL REGISTER */
 	val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port));
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index c685479c9756..bf95ac234b2b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -187,7 +187,9 @@
 #define   XELPDP_TBT_CLOCK_REQUEST			REG_BIT(19)
 #define   XELPDP_TBT_CLOCK_ACK				REG_BIT(18)
 #define   XELPDP_DDI_CLOCK_SELECT_MASK			REG_GENMASK(15, 12)
+#define   XE3D_DDI_CLOCK_SELECT_MASK			REG_GENMASK(16, 12)
 #define   XELPDP_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)
+#define   XE3D_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XE3D_DDI_CLOCK_SELECT_MASK, val)
 #define   XELPDP_DDI_CLOCK_SELECT_NONE			0x0
 #define   XELPDP_DDI_CLOCK_SELECT_MAXPCLK		0x8
 #define   XELPDP_DDI_CLOCK_SELECT_DIV18CLK		0x9
@@ -195,6 +197,8 @@
 #define   XELPDP_DDI_CLOCK_SELECT_TBT_270		0xd
 #define   XELPDP_DDI_CLOCK_SELECT_TBT_540		0xe
 #define   XELPDP_DDI_CLOCK_SELECT_TBT_810		0xf
+#define   XELPDP_DDI_CLOCK_SELECT_TBT_312_5		0x18
+#define   XELPDP_DDI_CLOCK_SELECT_TBT_625		0x19
 #define   XELPDP_FORWARD_CLOCK_UNGATE			REG_BIT(10)
 #define   XELPDP_LANE1_PHY_CLOCK_SELECT			REG_BIT(8)
 #define   XELPDP_SSC_ENABLE_PLLA			REG_BIT(1)
-- 
2.43.0

