Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F71ABD26CB
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 12:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0849410E422;
	Mon, 13 Oct 2025 10:02:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U9CKhbia";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0FAB10E41F;
 Mon, 13 Oct 2025 10:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760349694; x=1791885694;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AgSw72bWn5e8B1KbwJX/3PEWOuIatGXy2vZbuxbvDxc=;
 b=U9CKhbiamelKBBrbUrf7qCBVk139IWwoCr8yZx8cR2gkVHt6d98KzV7t
 dHdQBzMpaM6a9P19AvQburBc6yRruwFBbW+h4RBxXkMI0ve8SDTjrpAZs
 eLQCUQPRAE9gAu4Cknr1zd+d+fJV4tUb2j12HfsxEkMiaTNzUlyrnRfJ8
 fTB0zhuu1vVvQNp0feVQ9IrpaT1uky1g+Mu+OjWMRyGrRz9N/MxR60Zpc
 slov4jEm5FpnXyau6m8AK3XsFb5tYrigD4lw4H4QPwS/FiJKdpMVZHqs6
 50umHO2vKb495JnzLZsgUltdSkf80JfD5H909PxZ0DW9+TURUSI9oy69I g==;
X-CSE-ConnectionGUID: alqoiclbSv2XeZdde4QrJg==
X-CSE-MsgGUID: P40zIx5pQ3ekP11zqBbvlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11580"; a="80126175"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="80126175"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 03:01:34 -0700
X-CSE-ConnectionGUID: OhZIz1z8Sdu6LRDNmRxo9Q==
X-CSE-MsgGUID: kGmRMaY/RYyC0BTFtDwNjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="212187003"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa002.jf.intel.com with ESMTP; 13 Oct 2025 03:01:33 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 4/7] drm/i915/display: Sanitize
 PHY_C20_VDR_CUSTOM_SERDES_RATE/IS_HDMI_FRL flag macro
Date: Mon, 13 Oct 2025 12:50:42 +0300
Message-Id: <20251013095045.3658871-5-mika.kahola@intel.com>
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

Define PHY_C20_IS_HDMI_FRL, so it can be used instead of the plain bit number.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a7aee098e7b9..9be7e155a584 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2706,8 +2706,8 @@ static void intel_c20_pll_program(struct intel_display *display,
 			      MB_WRITE_COMMITTED);
 	} else {
 		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
-			      BIT(7) | PHY_C20_DP_RATE_MASK,
-			      is_hdmi_frl(port_clock) ? BIT(7) : 0,
+			      PHY_C20_IS_HDMI_FRL | PHY_C20_DP_RATE_MASK,
+			      is_hdmi_frl(port_clock) ? PHY_C20_IS_HDMI_FRL : 0,
 			      MB_WRITE_COMMITTED);
 
 		intel_cx0_write(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 5bd1e02b5313..0743a3e2d15f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -298,6 +298,7 @@
 #define PHY_C20_RD_DATA_L		0xC08
 #define PHY_C20_RD_DATA_H		0xC09
 #define PHY_C20_VDR_CUSTOM_SERDES_RATE	0xD00
+#define   PHY_C20_IS_HDMI_FRL		REG_BIT8(7)
 #define   PHY_C20_IS_DP			REG_BIT8(6)
 #define   PHY_C20_DP_RATE_MASK		REG_GENMASK8(4, 1)
 #define   PHY_C20_DP_RATE(val)		REG_FIELD_PREP8(PHY_C20_DP_RATE_MASK, val)
-- 
2.34.1

