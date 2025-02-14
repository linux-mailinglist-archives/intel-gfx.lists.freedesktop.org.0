Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A422FA36021
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 15:19:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E56610ECB3;
	Fri, 14 Feb 2025 14:19:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZVBE5WGU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F327210ECAA;
 Fri, 14 Feb 2025 14:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739542747; x=1771078747;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=imQR34fiGDTOkcgHMJG9BwFmIqw4EBsIZwKYYT6z6rE=;
 b=ZVBE5WGUzFrL1HaAjQegkh3dkbdsCn1py3EGYIA6EZiwZIeY/pnFCUMC
 +bjGjF5/Q/4mqpZnvaugJ47WFXIUKiRItQfS0nm+DHfvUe3/235cZ6Ufx
 6rCu/A36SQ+gVhKGl+mqI/mVpuyEmp/+j6jL/cLzvkmwXyKK71LYWhfeH
 FRX6nol7aMB0R0jeHnBwK0wPxslImUFAICUEPf4jBd0rh/AdwlxCEbMXY
 FWgkHlv/3NvlS58k9Mp293684jULB8d3yUNr8eezYaYhc5HVW7jbPLS7e
 7BU2grMJAlQuOE/Nq1RkizlmNsdTLMF46a0mSUY9fJ0Q6JYktwNO5R2Bg Q==;
X-CSE-ConnectionGUID: BeCwnJ7gQYGDAdEEEflcOA==
X-CSE-MsgGUID: /rqD0doAQfq1b362aHAlCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="27892498"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="27892498"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:07 -0800
X-CSE-ConnectionGUID: MhjEodZOSeKN+Gin1mpXFg==
X-CSE-MsgGUID: ca8cE2X5RAKzvFIhvexdVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136694248"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:05 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 03/11] drm/i915/ddi: Make all the PORT_WIDTH macros work
 the same way
Date: Fri, 14 Feb 2025 16:19:53 +0200
Message-ID: <20250214142001.552916-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250214142001.552916-1-imre.deak@intel.com>
References: <20250214142001.552916-1-imre.deak@intel.com>
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

Make the PORT_WIDTH macro of the XELPDP_PORT_CTL1 register work the same
way as those used for the DDI_BUF_CTL and the TRANS_DDI_FUNC_CTL
registers: accept a width parameter and convert it to the given
register's encoding.

v2: Robustify macro calls with parens. (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  3 ++-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 22 ++-----------------
 2 files changed, 4 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 4a3cf08007e31..960f7f778fb81 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -110,7 +110,8 @@
 #define   XELPDP_TCSS_POWER_REQUEST			REG_BIT(5)
 #define   XELPDP_TCSS_POWER_STATE			REG_BIT(4)
 #define   XELPDP_PORT_WIDTH_MASK			REG_GENMASK(3, 1)
-#define   XELPDP_PORT_WIDTH(val)			REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
+#define   XELPDP_PORT_WIDTH(width)			REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, \
+								       ((width) == 3 ? 4 : (width) - 1))
 
 #define _XELPDP_PORT_BUF_CTL2(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5ef7857a893f8..a09363e5dc148 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2525,23 +2525,6 @@ static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_state)
 		     OVERLAP_PIXELS_MASK, dss1);
 }
 
-static u8 mtl_get_port_width(u8 lane_count)
-{
-	switch (lane_count) {
-	case 1:
-		return 0;
-	case 2:
-		return 1;
-	case 3:
-		return 4;
-	case 4:
-		return 3;
-	default:
-		MISSING_CASE(lane_count);
-		return 4;
-	}
-}
-
 static void
 mtl_ddi_enable_d2d(struct intel_encoder *encoder)
 {
@@ -2575,7 +2558,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
 	enum port port = encoder->port;
 	u32 val = 0;
 
-	val |= XELPDP_PORT_WIDTH(mtl_get_port_width(crtc_state->lane_count));
+	val |= XELPDP_PORT_WIDTH(crtc_state->lane_count);
 
 	if (intel_dp_is_uhbr(crtc_state))
 		val |= XELPDP_PORT_BUF_PORT_DATA_40BIT;
@@ -3500,10 +3483,9 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 		buf_ctl |= DDI_A_4_LANES;
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
-		u8  lane_count = mtl_get_port_width(crtc_state->lane_count);
 		u32 port_buf = 0;
 
-		port_buf |= XELPDP_PORT_WIDTH(lane_count);
+		port_buf |= XELPDP_PORT_WIDTH(crtc_state->lane_count);
 
 		if (dig_port->lane_reversal)
 			port_buf |= XELPDP_PORT_REVERSAL;
-- 
2.44.2

