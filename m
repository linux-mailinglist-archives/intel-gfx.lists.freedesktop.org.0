Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B4FBDEA25
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 15:05:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FBF610E7DB;
	Wed, 15 Oct 2025 13:05:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GTzaPvNy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AE8610E7D6;
 Wed, 15 Oct 2025 13:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760533541; x=1792069541;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wfjAIUjmB5pca0aRJwXlvDLOZnrVfdn23cfZCTMrrW4=;
 b=GTzaPvNyxHIrC8kkQMpQAWLSSgFunBYszKqCmPuWF1X/S/LqfEFg8q2R
 18c6/V9In7Fie/6HbUINqpfva2p8kKmAbiqJnyfPZnpzuSDc0J9nveBOS
 bPDtEJnwrOOEZEVmN/6l9eo2PlXm6HYwg73iuaM6DmcH0tj5SllMnEH3e
 //Kq1/dQzFLTZy5pcFg1eqGtYYb1t8DbIdKiEHeSWrjpTCiDPRYs9A7ii
 L8a7aQ7kn2nmAC8vaOkDtqH/r1jJMnU4OHwW2TbK/Hkrv3Z9SX2gUOT8S
 ay1C1jJoPlN3M0b0RRLlev+r7j2Bkua9ROerW1hNg+d8X1Ha6dFWdjppO Q==;
X-CSE-ConnectionGUID: XuWqNLVMSaKWgsAvd/ZBSw==
X-CSE-MsgGUID: yzv1ThafRYKRxA1HJrQRIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="80341304"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="80341304"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 06:05:41 -0700
X-CSE-ConnectionGUID: 3awnpD3ZR52q68T06dIu4w==
X-CSE-MsgGUID: s+4Yta4TS8+rF0Soo7CIbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="186586981"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa005.fm.intel.com with ESMTP; 15 Oct 2025 06:05:39 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>, Mika Kahola <mika.kahola@intel.com>
Subject: [CI 3/7] drm/i915/display: Sanitize
 PHY_C20_VDR_CUSTOM_SERDES_RATE/CONTEXT_TOGGLE flag macro
Date: Wed, 15 Oct 2025 15:54:42 +0300
Message-Id: <20251015125446.3931198-4-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015125446.3931198-1-mika.kahola@intel.com>
References: <20251015125446.3931198-1-mika.kahola@intel.com>
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

Move the PHY_C20_CONTEXT_TOGGLE flag's definition under the register containing
the flag and refer to the flag always by its name instead of a plain bit number.

v2: Amend commit log to match what the patch does. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 6 ++++--
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 9492661f1645..a7aee098e7b9 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2628,7 +2628,8 @@ static void intel_c20_pll_program(struct intel_display *display,
 	int i;
 
 	/* 1. Read current context selection */
-	cntx = intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & BIT(0);
+	cntx = intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) &
+		PHY_C20_CONTEXT_TOGGLE;
 
 	/*
 	 * 2. If there is a protocol switch from HDMI to DP or vice versa, clear
@@ -2719,7 +2720,8 @@ static void intel_c20_pll_program(struct intel_display *display,
 	 * the updated programming toggle context bit
 	 */
 	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
-		      BIT(0), cntx ? 0 : 1, MB_WRITE_COMMITTED);
+		      PHY_C20_CONTEXT_TOGGLE, cntx ? 0 : PHY_C20_CONTEXT_TOGGLE,
+		      MB_WRITE_COMMITTED);
 }
 
 static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index ad2f7fb3beae..5bd1e02b5313 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -301,8 +301,8 @@
 #define   PHY_C20_IS_DP			REG_BIT8(6)
 #define   PHY_C20_DP_RATE_MASK		REG_GENMASK8(4, 1)
 #define   PHY_C20_DP_RATE(val)		REG_FIELD_PREP8(PHY_C20_DP_RATE_MASK, val)
-#define PHY_C20_VDR_HDMI_RATE		0xD01
 #define   PHY_C20_CONTEXT_TOGGLE	REG_BIT8(0)
+#define PHY_C20_VDR_HDMI_RATE		0xD01
 #define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
 #define   PHY_C20_CUSTOM_WIDTH_MASK	REG_GENMASK(1, 0)
 #define   PHY_C20_CUSTOM_WIDTH(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_WIDTH_MASK, val)
-- 
2.34.1

