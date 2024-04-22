Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A969D8AC452
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 08:40:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E84A51127EC;
	Mon, 22 Apr 2024 06:40:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UYaLBi10";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9769B1127EB;
 Mon, 22 Apr 2024 06:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713768004; x=1745304004;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=65FGspNxscSyIsIbkPSQrIuaS1PPCHvGU6sI21wH+ZA=;
 b=UYaLBi10Hxoet6JOvZ5sdEcc1EZsy0seRUgW6k8hBO4yyqn6Dnixy7Uh
 mjcVZSNM+hGli1u2qtcCntRVF+TIwoSpJKhN4eiaTHVf5BWZtCxEPxG0T
 4otg0PJ8Q13X0NyvYVJpUmZiCjcYA9p0y0j7ed27vC+MxItqt7ZpIdQeg
 ses29kKg+6fzlSUDmsE2BSRrbA6e2PJ1qa9BgDF6t6nMic8ydCK+odECZ
 5qUxnTnyS6OD5/EZPx1OiqpvLqhBoPJxgIlhEHWhZ+YBOQZAmkxyN2628
 tBfm+WB4A5uW9sD7vwgAWrEnDCcI0pmwKpQ212GwxTJmWLa3540qyOodk g==;
X-CSE-ConnectionGUID: FqJHpV1MSKi+lDRrvE84/g==
X-CSE-MsgGUID: dtSfhWukTMy+yuUm0Gj6Bw==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9208490"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9208490"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:04 -0700
X-CSE-ConnectionGUID: /8EgRnQRTD22nyDGrzzfmg==
X-CSE-MsgGUID: 8UMXjNzEQp+PwIjhLgQkKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23896311"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:02 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Clint Taylor <clinton.a.taylor@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v4 01/19] drm/xe/display: Lane reversal requires writes to
 both context lanes
Date: Mon, 22 Apr 2024 12:10:20 +0530
Message-Id: <20240422064038.1451579-2-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
References: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
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

From: Clint Taylor <clinton.a.taylor@intel.com>

Write both CX0 Lanes for Context Toggle for all except TC pin assignment D.

Bspec: 64539
CC: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a2c4bf33155f..5cf5d9b59708 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2337,7 +2337,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 {
 	const struct intel_c20pll_state *pll_state = &crtc_state->cx0pll_state.c20;
 	bool dp = false;
-	int lane = crtc_state->lane_count > 2 ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
+	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
 	u32 clock = crtc_state->port_clock;
 	bool cntx;
 	int i;
@@ -2402,19 +2402,19 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	}
 
 	/* 4. Program custom width to match the link protocol */
-	intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_WIDTH,
+	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_WIDTH,
 		      PHY_C20_CUSTOM_WIDTH_MASK,
 		      PHY_C20_CUSTOM_WIDTH(intel_get_c20_custom_width(clock, dp)),
 		      MB_WRITE_COMMITTED);
 
 	/* 5. For DP or 6. For HDMI */
 	if (dp) {
-		intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
 			      BIT(6) | PHY_C20_CUSTOM_SERDES_MASK,
 			      BIT(6) | PHY_C20_CUSTOM_SERDES(intel_c20_get_dp_rate(clock)),
 			      MB_WRITE_COMMITTED);
 	} else {
-		intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
 			      BIT(7) | PHY_C20_CUSTOM_SERDES_MASK,
 			      is_hdmi_frl(clock) ? BIT(7) : 0,
 			      MB_WRITE_COMMITTED);
@@ -2428,7 +2428,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	 * 7. Write Vendor specific registers to toggle context setting to load
 	 * the updated programming toggle context bit
 	 */
-	intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
 		      BIT(0), cntx ? 0 : 1, MB_WRITE_COMMITTED);
 }
 
-- 
2.25.1

