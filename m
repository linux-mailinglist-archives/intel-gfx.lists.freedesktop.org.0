Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7807BDEA30
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 15:05:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E4510E7E1;
	Wed, 15 Oct 2025 13:05:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CkGnrz2W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 599E510E7DC;
 Wed, 15 Oct 2025 13:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760533544; x=1792069544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cTzWBS8nTs74kWg3BWGiryqQkC+wMScI91mFyi3ovT4=;
 b=CkGnrz2WTjZ5cOIM50roOeOTIPgsUK3PHB8kIG6Iwke4fqB7r06bEXjf
 LemjxfLqX+q/n1JM1WAQ21ho0rcTb+axWRM7gToStG7wXPyYsV2RlOebm
 +S78TaMsmx+ZXBKGFJ4OT9cexjs72EHPklIvZJJqiRuNPKYFw1EzXRBag
 MajPBn88w8f7FMmpfrkfD0ekyaOHdEiQQtP2ulsUQyose9QhcTR7Xe+7S
 2m6LpOiSpgmf1JVRazLtw5Qf4FihcXAJJttf5YiwRdQsgbHwHOU1GCAAG
 Yw0y3uFVRnRJXarslg7f3Zw4TcLjJ00mo12wRj8nwh2jp9otUoqPoC9xt w==;
X-CSE-ConnectionGUID: rs77DLI2ROmYaJU8IZQbaA==
X-CSE-MsgGUID: mHYjTuhXTua2JraMiKX0xA==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="80341329"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="80341329"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 06:05:44 -0700
X-CSE-ConnectionGUID: eiGkCCxDTYiBAztQUuhwRQ==
X-CSE-MsgGUID: EofU+FIFT/iR3p+y5FC7gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="186586993"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa005.fm.intel.com with ESMTP; 15 Oct 2025 06:05:43 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [CI 5/7] drm/i915/display: Fix PHY_C20_VDR_CUSTOM_SERDES_RATE
 programming
Date: Wed, 15 Oct 2025 15:54:44 +0300
Message-Id: <20251015125446.3931198-6-mika.kahola@intel.com>
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

Make sure all the DP/HDMI/HDMI-FRL flags are programmed in all the modes
the PLL is configured.

Atm the DP mode flag is not programmed in case the PLL is configured for
HDMI mode for instance. This is incorrect after HW reset, since the DP
mode flag is asserted after reset, hence would need to be cleared for
HDMI, but also incorrect because of the same reason after configuring
the PLL to HDMI mode after it was used in DP mode (for instance on a
DP++ connector).

There is a similar issue with the HDMI-FRL flag, potentially remaining
set when configuring the PLL in DP mode.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 25 +++++++++++---------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 9be7e155a584..6e49659d2f17 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2624,6 +2624,7 @@ static void intel_c20_pll_program(struct intel_display *display,
 				  bool is_dp, int port_clock)
 {
 	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
+	u8 serdes;
 	bool cntx;
 	int i;
 
@@ -2699,21 +2700,23 @@ static void intel_c20_pll_program(struct intel_display *display,
 		      MB_WRITE_COMMITTED);
 
 	/* 5. For DP or 6. For HDMI */
-	if (is_dp) {
-		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
-			      PHY_C20_IS_DP | PHY_C20_DP_RATE_MASK,
-			      PHY_C20_IS_DP | PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock)),
-			      MB_WRITE_COMMITTED);
-	} else {
-		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
-			      PHY_C20_IS_HDMI_FRL | PHY_C20_DP_RATE_MASK,
-			      is_hdmi_frl(port_clock) ? PHY_C20_IS_HDMI_FRL : 0,
-			      MB_WRITE_COMMITTED);
+	serdes = 0;
+
+	if (is_dp)
+		serdes = PHY_C20_IS_DP |
+			 PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock));
+	else if (is_hdmi_frl(port_clock))
+		serdes = PHY_C20_IS_HDMI_FRL;
 
+	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+		      PHY_C20_IS_DP | PHY_C20_DP_RATE_MASK | PHY_C20_IS_HDMI_FRL,
+		      serdes,
+		      MB_WRITE_COMMITTED);
+
+	if (!is_dp)
 		intel_cx0_write(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
 				intel_c20_get_hdmi_rate(port_clock),
 				MB_WRITE_COMMITTED);
-	}
 
 	/*
 	 * 7. Write Vendor specific registers to toggle context setting to load
-- 
2.34.1

