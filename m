Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A39E88185E
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 21:11:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28DAE10F00C;
	Wed, 20 Mar 2024 20:11:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MPjJAbNK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C45C410E649
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 20:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710965490; x=1742501490;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2deTvRS8k5Y+ckfEBWxBmPOfGIA3Fp+tQ10vNu8vM4Y=;
 b=MPjJAbNKzIeO2xi8RcBqkq6/iNrp1b/FYlpYk5zVz08XoPleKTV8g1qG
 MGiDYdAT8b78UDdHXA/vPSTGPETweBof7vIX/wsgThjkg3e1j+gqf/TpB
 OL4/tzCSIAqZxL9lkcHi7Q/AyyCJolenuhehZN0hlmoSVR8kr9d54A+91
 EMXwLDz99nykf4QrzLdZFo7rvUp3g5hkdHMzHkmx46xBCuAg9Py6hNc56
 JimpAOMVHE2Optbqj3Wi2xN4Pr9scIurieWzc2PuIrEKLcgInzTsECvHL
 /Xt3G46DmEEPjDKn1iMvp9JyLSYimNNE3h7XMlad3ETBF699N63epHafW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="31352337"
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="31352337"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 13:11:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="14246509"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 13:11:29 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/11] drm/i915/dp_mst: Sanitize calculating the DSC DPT bpp
 limit
Date: Wed, 20 Mar 2024 22:11:46 +0200
Message-ID: <20240320201152.3487892-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240320201152.3487892-1-imre.deak@intel.com>
References: <20240320201152.3487892-1-imre.deak@intel.com>
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

Instead of checking each compressed bpp value against the maximum
DSC/DPT bpp, simplify things by calculating the maximum bpp upfront and
limiting the range of bpps looped over using this maximum.

While at it add a comment about the origin of the DSC/DPT bpp limit.

Bspec: 49259, 68912

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 45 +++++++++++----------
 1 file changed, 23 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 40660dc5edb45..516b00f791420 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -51,27 +51,24 @@
 #include "intel_vdsc.h"
 #include "skl_scaler.h"
 
-static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
-					  const struct drm_display_mode *adjusted_mode,
-					  struct intel_crtc_state *crtc_state,
-					  bool dsc)
+static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crtc_state,
+				    bool dsc)
 {
-	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 20 && dsc) {
-		int output_bpp = bpp;
-		int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
-		int available_bw = mul_u32_u32(symbol_clock * 72,
-					       drm_dp_bw_channel_coding_efficiency(true)) /
-				   1000000;
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
 
-		if (output_bpp * adjusted_mode->crtc_clock >
-		    available_bw) {
-			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
-				    output_bpp * adjusted_mode->crtc_clock, available_bw);
-			return -EINVAL;
-		}
-	}
+	if (!intel_dp_is_uhbr(crtc_state) || DISPLAY_VER(i915) >= 20 || !dsc)
+		return INT_MAX;
 
-	return 0;
+	/*
+	 * DSC->DPT interface width:
+	 *   ICL-MTL: 72 bits (each branch has 72 bits, only left branch is used)
+	 *   LNL+:    144 bits (not a bottleneck in any config)
+	 */
+	return div64_u64(mul_u32_u32(intel_dp_link_symbol_clock(crtc_state->port_clock) * 72,
+				     drm_dp_bw_channel_coding_efficiency(true)),
+			 mul_u32_u32(adjusted_mode->crtc_clock, 1000000));
 }
 
 static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
@@ -160,6 +157,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	int bpp, slots = -EINVAL;
+	int max_dpt_bpp;
 	int ret = 0;
 
 	mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
@@ -180,6 +178,13 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 						      crtc_state->port_clock,
 						      crtc_state->lane_count);
 
+	max_dpt_bpp = intel_dp_mst_max_dpt_bpp(crtc_state, dsc);
+	if (max_bpp > max_dpt_bpp) {
+		drm_dbg_kms(&i915->drm, "Limiting bpp to max DPT bpp (%d -> %d)\n",
+			    max_bpp, max_dpt_bpp);
+		max_bpp = max_dpt_bpp;
+	}
+
 	drm_dbg_kms(&i915->drm, "Looking for slots in range min bpp %d max bpp %d\n",
 		    min_bpp, max_bpp);
 
@@ -191,10 +196,6 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 
 		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
 
-		ret = intel_dp_mst_check_constraints(i915, bpp, adjusted_mode, crtc_state, dsc);
-		if (ret)
-			continue;
-
 		link_bpp_x16 = to_bpp_x16(dsc ? bpp :
 					  intel_dp_output_bpp(crtc_state->output_format, bpp));
 
-- 
2.43.3

