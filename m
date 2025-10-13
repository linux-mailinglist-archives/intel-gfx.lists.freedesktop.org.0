Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E59BD26CE
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 12:02:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03E2D10E42A;
	Mon, 13 Oct 2025 10:02:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nL7HDstF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 196A610E41D;
 Mon, 13 Oct 2025 10:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760349693; x=1791885693;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sL18GegkcnMtmkd/L0rE72K4REOwacqv7oANbxDf1eo=;
 b=nL7HDstFMrqiuJLLGgwj93tGz/AzxCObanjUaEMZa5KJ57EEWS08BC3w
 jLIEbkw/63WYX2AqxFShL0VSh+8LKOxIGFr7nqXA+yKjZtzdkQ/cwLxZv
 BpqMLJUoQdG1gwNpucC490XnLGIYSUTV77hjUrW7jHRDIZOMk7k8zrtpg
 BIebjtKzoiqrZz5cScVYCCI6lxWuoJ6VFuxIYktvEAbNUSWK9+J6bXgw6
 4Ir2iRUwljyMwngtj7Nca/WmEdeyU4AX+DzgsO3NBp0awYpniK0XzHPcf
 6q59lrBRmGy2LT2mFghO5Ri/8oD8lU3NdaeCxBBJN6rBTDOUt4OHTzTCc A==;
X-CSE-ConnectionGUID: 4WR3Tq9oQ4yJgxhmT8q/Xw==
X-CSE-MsgGUID: EpB/S1ArT6eqzCnTsb30hA==
X-IronPort-AV: E=McAfee;i="6800,10657,11580"; a="80126172"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="80126172"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 03:01:33 -0700
X-CSE-ConnectionGUID: ZXbIqWwQRrKVmEwkNvZVsA==
X-CSE-MsgGUID: q+fNAM/kQimNiourQGNsjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="212186999"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa002.jf.intel.com with ESMTP; 13 Oct 2025 03:01:31 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 3/7] drm/i915/display: Sanitize
 PHY_C20_VDR_CUSTOM_SERDES_RATE/CONTEXT_TOGGLE flag macro
Date: Mon, 13 Oct 2025 12:50:41 +0300
Message-Id: <20251013095045.3658871-4-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251013095045.3658871-1-mika.kahola@intel.com>
References: <20251013095045.3658871-1-mika.kahola@intel.com>
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

