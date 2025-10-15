Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E0DBDEA2D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 15:05:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF62110E7DA;
	Wed, 15 Oct 2025 13:05:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IOeYgHoM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0BD810E7DA;
 Wed, 15 Oct 2025 13:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760533546; x=1792069546;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0ltXJVCIYM6FB9khtvGsntlxP1l2xCaktuz4TsHLWSk=;
 b=IOeYgHoMgdSkv3IlEK/QA6bEKjX7Dj+nbXFtIM0SkBdIabI3K80/ZZyT
 sRPZBNCqzuTPJHGHP+HbYuopkEdR7yiDuvGSRDoeVaZRAURSu4h/EzRWN
 ouy9kvMcksbTCPBe+VqtYaCYxQOn5XCQRLJ2YxWWWVYiMPcVcZg8XaOIk
 Co13FFHnW2JoOewiWdBNzbsVIS41KXPu1FOYafLoBechEZSGc92op5HwL
 e2zNsLT1Enwig8QtlhSOnL8r20Q71Dpz7J97Cbuw6BdyFpfCcW5Ry2kXT
 qlKV/RIOViU/CVnRP15uMXD0LeTVRrBcdwbpgi/NuXEHeo1rxJoNhg0Mn A==;
X-CSE-ConnectionGUID: yOxA/FhBToCYzXEPUv2JKw==
X-CSE-MsgGUID: D+JKDlK6STW+sPwafCPhSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="80341330"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="80341330"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 06:05:45 -0700
X-CSE-ConnectionGUID: KEzerePzTVao9D4U/p+GxQ==
X-CSE-MsgGUID: 6ttg0N+nQ9a1uhsQVU33iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="186586998"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa005.fm.intel.com with ESMTP; 15 Oct 2025 06:05:44 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [CI 6/7] drm/i915/display: Fix PHY_C20_VDR_HDMI_RATE programming
Date: Wed, 15 Oct 2025 15:54:45 +0300
Message-Id: <20251015125446.3931198-7-mika.kahola@intel.com>
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

The PHY_C20_VDR_HDMI_RATE registers 7:2 bits are reserved and they are
not specified as a must-be-zero field. Accordingly this reserved field
shouldn't be zeroed; to ensure that use an RMW to update the
PHY_C20_HDMI_RATE field (which is bits 1:0 of the register).

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 7 ++++---
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 2 ++
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 6e49659d2f17..f8c1338f9053 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2714,9 +2714,10 @@ static void intel_c20_pll_program(struct intel_display *display,
 		      MB_WRITE_COMMITTED);
 
 	if (!is_dp)
-		intel_cx0_write(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
-				intel_c20_get_hdmi_rate(port_clock),
-				MB_WRITE_COMMITTED);
+		intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
+			      PHY_C20_HDMI_RATE_MASK,
+			      intel_c20_get_hdmi_rate(port_clock),
+			      MB_WRITE_COMMITTED);
 
 	/*
 	 * 7. Write Vendor specific registers to toggle context setting to load
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 0743a3e2d15f..86e2e1c7babf 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -304,6 +304,8 @@
 #define   PHY_C20_DP_RATE(val)		REG_FIELD_PREP8(PHY_C20_DP_RATE_MASK, val)
 #define   PHY_C20_CONTEXT_TOGGLE	REG_BIT8(0)
 #define PHY_C20_VDR_HDMI_RATE		0xD01
+#define   PHY_C20_HDMI_RATE_MASK	REG_GENMASK8(1, 0)
+#define   PHY_C20_HDMI_RATE(val)	REG_FIELD_PREP8(PHY_C20_HDMI_RATE_MASK, val)
 #define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
 #define   PHY_C20_CUSTOM_WIDTH_MASK	REG_GENMASK(1, 0)
 #define   PHY_C20_CUSTOM_WIDTH(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_WIDTH_MASK, val)
-- 
2.34.1

