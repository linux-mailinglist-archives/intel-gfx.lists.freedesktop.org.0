Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B34BAFAB1
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CF6D10E6A8;
	Wed,  1 Oct 2025 08:38:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ewwCPdqo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F2A310E6A7;
 Wed,  1 Oct 2025 08:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307919; x=1790843919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SsdKbW2dKDgp9pPKewpTI2P45uFpbnpYRLpDyhDyYE8=;
 b=ewwCPdqoolWMt2VetoQc+u5GUe7mpQ/dH7EVtdSPZae+hUHT8ynY56aK
 yByAKXdIJiEPc453KauLy+U4bDqToei1R9EaKXZuupFFiDzRhAG6xuAtT
 1QKe1pNtvuJaYgU060eZASvZ3+jIU8oRxkn3RolAK+shMDDqIHKRg3x8v
 xMZ942ksTR/TFLjuKgc97rBoYmm8SUtPvGXvIzQG75JFCG/z0Sy3vk1lL
 YAxqJjUNgPDHgq3+ar7vSCyAQONYErua8l5nkRaGaojfg81TP1U7PNSlG
 msgV2K+Vx1j58pDEfyBAJOELVwsT3oYZAxjbl2H4QrutgR8kkBHlUMQ4E w==;
X-CSE-ConnectionGUID: UhzsZFFgRKyMgfqIjVMD5g==
X-CSE-MsgGUID: GFQX7b/mT/mHaxp9MIRgVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742681"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742681"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:38:39 -0700
X-CSE-ConnectionGUID: 97i+8ZXCQ9mKzrKtgxrTNw==
X-CSE-MsgGUID: gJnEcYCGRouPzvLvJJ4bDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142493"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:37 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 02/39] drm/i915/display: Sanitize
 PHY_C20_VDR_CUSTOM_SERDES_RATE/IS_DP flag macro
Date: Wed,  1 Oct 2025 11:28:02 +0300
Message-Id: <20251001082839.2585559-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
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

From: Imre Deak <imre.deak@intel.com>

Define PHY_C20_IS_DP, so it can be used instead of the plain bit number.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 0d83145eff41..9492661f1645 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2700,8 +2700,8 @@ static void intel_c20_pll_program(struct intel_display *display,
 	/* 5. For DP or 6. For HDMI */
 	if (is_dp) {
 		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
-			      BIT(6) | PHY_C20_DP_RATE_MASK,
-			      BIT(6) | PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock)),
+			      PHY_C20_IS_DP | PHY_C20_DP_RATE_MASK,
+			      PHY_C20_IS_DP | PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock)),
 			      MB_WRITE_COMMITTED);
 	} else {
 		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 25ab8808e548..ad2f7fb3beae 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -298,6 +298,7 @@
 #define PHY_C20_RD_DATA_L		0xC08
 #define PHY_C20_RD_DATA_H		0xC09
 #define PHY_C20_VDR_CUSTOM_SERDES_RATE	0xD00
+#define   PHY_C20_IS_DP			REG_BIT8(6)
 #define   PHY_C20_DP_RATE_MASK		REG_GENMASK8(4, 1)
 #define   PHY_C20_DP_RATE(val)		REG_FIELD_PREP8(PHY_C20_DP_RATE_MASK, val)
 #define PHY_C20_VDR_HDMI_RATE		0xD01
-- 
2.34.1

