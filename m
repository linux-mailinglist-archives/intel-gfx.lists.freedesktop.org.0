Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B69896D40
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 800511129C6;
	Wed,  3 Apr 2024 10:52:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m2GVx6XN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78C121129CF;
 Wed,  3 Apr 2024 10:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141534; x=1743677534;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pxE8liYJG+J5mArgQujDXsDDoZ4dIiDF9zL6jv08cCM=;
 b=m2GVx6XNsh49lIsNxoJAc0rFkl78eP/HTEG2JkYUuibcYSjEOO6NXR19
 Mbu9t4VnVB/yVySJepcG0Qk0uscppGaP7/pe/pY2JItAK2GxbUz7x3TJ2
 7XrIR8nag+W+nYUyFEd3MzpOXDxPqadbGhHfO6VaVqBb6qB44f0hfG44y
 f0NA9fwLGdSb2NH/lOBxvadGtHhXqx6PzPU0mWQqL+3nW4wUOWtHQI2e1
 LhDHU9xqbNsPy05M+dH0woBmSJ2bKGn06fMjmj6zETcqEIIX45udHMz4X
 9RvNj3GrzJtJoqCxXAK7WHzD5zvrvamPvMNt/u8YOd8uicML8Ufl+Qb30 A==;
X-CSE-ConnectionGUID: efmPJ6rCRxy5qVlytqnwJg==
X-CSE-MsgGUID: 3kcYrEQRTmqZqx4vyWNn1Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212191"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212191"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:45 -0700
X-CSE-ConnectionGUID: 1u+q5sHNSFeasvv2++n44A==
X-CSE-MsgGUID: fQSrcmCdTkSg94pdKJXtBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493394"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:42 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Clint Taylor <clinton.a.taylor@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 15/25] drm/xe/display: Lane reversal requires writes to both
 context lanes
Date: Wed,  3 Apr 2024 16:21:13 +0530
Message-Id: <20240403105123.1327669-16-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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

BSPEC: 64539
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 20035be015c3..cbcb6651dfed 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2558,7 +2558,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 {
 	const struct intel_c20pll_state *pll_state = &crtc_state->cx0pll_state.c20;
 	bool dp = false;
-	int lane = crtc_state->lane_count > 2 ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
+	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
 	u32 clock = crtc_state->port_clock;
 	bool cntx;
 	int i;
@@ -2634,19 +2634,19 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
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
@@ -2660,7 +2660,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	 * 7. Write Vendor specific registers to toggle context setting to load
 	 * the updated programming toggle context bit
 	 */
-	intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
 		      BIT(0), cntx ? 0 : 1, MB_WRITE_COMMITTED);
 }
 
-- 
2.25.1

