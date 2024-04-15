Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C638A49FC
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9970A10FC22;
	Mon, 15 Apr 2024 08:14:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mkPIO7LD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACDA10E904;
 Mon, 15 Apr 2024 08:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168838; x=1744704838;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fC78lGAE3cjESggx6aACPu9G/QPlnTxk7ZKZtWJtk+w=;
 b=mkPIO7LDzgm0whN/suiHlWKUo+dIKdMnLXM/J7lyw9cEgCJ1D7vTe6jd
 wgwHREL2iDRoyrWiGvWbp9h4Dqj59krDG6DtFT4ef1fevQWiLaN4qqZXr
 NoM+yC9jma0nspmgrsTlGgHBE6A3EUmR99H7ivxgxVqi9I1+fd2jmOGMn
 4h2v9D8dT2LXdBqePqyTK4r6X425U4aIcOgG3xKi76oC1JHbjZB959fX7
 /zxb543loTafPtXcMJOhDuedZkn40UCvpFiZ+eec+Sk8TIox60y5bivf4
 XD3tt+ePBc9rVkFmQhxj+UTvShOd2cEur6j8rcxkFKxXwpnzNUPBKzaDA Q==;
X-CSE-ConnectionGUID: z0CFOnceSO++YVVO3Mg91A==
X-CSE-MsgGUID: 4sl9A17cSe2iNhKLPTsDXA==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096309"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096309"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:13:58 -0700
X-CSE-ConnectionGUID: aSOWjbL1RaC1ryx2fdBZRw==
X-CSE-MsgGUID: rDrak7RMTcmEEdn4YOsk2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400110"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:13:56 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Clint Taylor <clinton.a.taylor@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v3 01/21] drm/xe/display: Lane reversal requires writes to
 both context lanes
Date: Mon, 15 Apr 2024 13:44:03 +0530
Message-Id: <20240415081423.495834-2-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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

