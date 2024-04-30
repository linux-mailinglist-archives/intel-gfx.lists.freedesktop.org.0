Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C108B7E7C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:30:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A50E3112D79;
	Tue, 30 Apr 2024 17:30:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SAcNFm8s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D34C8112D76;
 Tue, 30 Apr 2024 17:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498219; x=1746034219;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5HzJm4GT4INborqvKvQvE+N+FeItI1VA49CQYkUMHck=;
 b=SAcNFm8s8nxuFOKy5JK4YmU/gwVya23SuEs+jMt+GQ0kaeGITcx1H+OG
 fX91fwyFgqb0aOiZrsuTNdP+Mv1J9K7OKycVMianQDiw3P5d5+7gcQ2vu
 tZzQWgnwtVSESk9TLfj3dJtH8Eu6Nn0XuM01HHpKc+njuBU+0NDSLqmmD
 U3DmQgOA6VaqyB1f818UN6NEEyHkJYoeO+KGvrs6ePOry/Y5MEDSWU9Hf
 VYJab+nfGPDI9Z1MTv3GiFpL9a5spMv6SrEtI/G+E+xtJhOCOwXAAh1U0
 iBC/kCQzwzC7FPekOL41uLuu0e64pcAYz4V1mdqo5xgkmFdGqeewYHTGg A==;
X-CSE-ConnectionGUID: S5oeyzj1Q7Oje9KPf/eDmw==
X-CSE-MsgGUID: zcZTfWNeRfqUIRXN5duasw==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27741983"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27741983"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:18 -0700
X-CSE-ConnectionGUID: pOdfV7DvR/KTfqrQL8Q5aw==
X-CSE-MsgGUID: oFYb2qbqR067lkSmhRq6+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617813"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:19 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Clint Taylor <clinton.a.taylor@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 01/19] drm/i915/bmg: Lane reversal requires writes to both
 context lanes
Date: Tue, 30 Apr 2024 10:28:32 -0700
Message-Id: <20240430172850.1881525-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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

v2: Update title(RK)
Bspec: 64539
CC: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 8e3b13884bb8..9930fa7313e4 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2337,7 +2337,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 {
 	const struct intel_c20pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll.c20;
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
2.34.1

