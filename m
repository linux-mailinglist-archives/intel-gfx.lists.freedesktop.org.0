Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F68CBAFABD
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:38:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A1CA10E6B2;
	Wed,  1 Oct 2025 08:38:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LtYVcXJz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A4C910E6A8;
 Wed,  1 Oct 2025 08:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307920; x=1790843920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jolK/CWu9SA2VFbabYaIAlazoZ4E6MV5j/49Ag4f0go=;
 b=LtYVcXJzqCvCUH0QhEq5NdkVcgPFqDQrDy4Tr/4eJ3U9rgxkk8ZDeWqE
 7QvLxvd1btyYFdqX6uRx2pOSeJzUZYmDVj/WU4en4aFLtaCvpYAXCHIrm
 kcdzqRCkz7Vp8rYvZP/DuTwyt58AlAqTZSL1yEWVPtA6+b1SitZv3Y4Q6
 6xrPWUItXHEzKO6PvQ8G1RKOqeAq5nVvQR1ELDXSlI+mAU3NvOhdi8nof
 lQZPJ7OW06gMDPQCUQX5NKhgfpbIaVaj34RoXmkszoFxzYpNsyX8dS0Sc
 TLIbD9KDa4Iq7Hcg++99cgbGihksh4VkKX3FtNyhudP9rEwYHJLf80n08 Q==;
X-CSE-ConnectionGUID: /HP/057WRaKmHsGL1RcYfg==
X-CSE-MsgGUID: SaUll+ZrTXm7UbKQlZJLgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742684"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742684"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:38:40 -0700
X-CSE-ConnectionGUID: DYnQPykTR5ibMf1/YzyGvw==
X-CSE-MsgGUID: SrQl7kVVS/Cm3GWVARlQzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142500"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:38 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 03/39] drm/i915/display: Sanitize
 PHY_C20_VDR_CUSTOM_SERDES_RATE/CONTEXT_TOGGLE flag macro
Date: Wed,  1 Oct 2025 11:28:03 +0300
Message-Id: <20251001082839.2585559-4-mika.kahola@intel.com>
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

Define PHY_C20_CONTEXT_TOGGLE, so it can be used instead of the plain
bit number.

Signed-off-by: Imre Deak <imre.deak@intel.com>
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

