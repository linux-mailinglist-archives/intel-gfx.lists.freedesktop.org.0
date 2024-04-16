Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 110FD8A777C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 00:09:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FBE8112EAC;
	Tue, 16 Apr 2024 22:09:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XQ/iUDYF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 081C8112EB5
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 22:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713305385; x=1744841385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aBwVfX1mckjY59oRtOdVb7Hfh5NAVXnUyM1dO5/zLB0=;
 b=XQ/iUDYFKMNoN6xCUvupodihz+B/zxmJv2N+mC+iQnhj2Qqap652dvoa
 WFdFvyqa4XLf68d7DEHC6VahRU1TO0HxFh7Pd0MXDuGAs5dPIxETUrkVv
 Qovl9YLUxbiBxOTgNP/cLxE/K6JwAVvvgBbdM8wzOKQR8jF0+aNpan1WG
 1Tqm0K5IHqtylsLcfpNAvrKT6Zd32aVZnnU3TsqNqhQxpaDet6VgFVX/B
 2HqIfcTpxAfLH+YpX5BG09J1xH5ZPdv2T2jSVhDBRXu3Ytd4ufS0eXAVd
 CG+E5Pqp+A0EWjU/yFqWia5eXl9M4wJj7S/OsYljjGbC6cv15GV4SUYj7 g==;
X-CSE-ConnectionGUID: 2D//sUHUSgaplqelh1TJpg==
X-CSE-MsgGUID: zWOj9jqYTvik7vP54LBYfQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="20165162"
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="20165162"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 15:09:45 -0700
X-CSE-ConnectionGUID: EQgKtswWS/ysT+b4DuTdBA==
X-CSE-MsgGUID: Ggt7/d2HR6yYy+ihikDodQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="26965491"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 15:09:44 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 06/11] drm/i915/dp_mst: Sanitize calculating the DSC DPT
 bpp limit
Date: Wed, 17 Apr 2024 01:10:05 +0300
Message-ID: <20240416221010.376865-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240416221010.376865-1-imre.deak@intel.com>
References: <20240416221010.376865-1-imre.deak@intel.com>
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

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 76 ++++++++++-----------
 1 file changed, 38 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 847e264e5bb8b..89ee80a357140 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -51,43 +51,39 @@
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
-		/*
-		 * Bspec/49259 suggests that the FEC overhead needs to be
-		 * applied here, though HW people claim that neither this FEC
-		 * or any other overhead is applicable here (that is the actual
-		 * available_bw is just symbol_clock * 72). However based on
-		 * testing on MTL-P the
-		 * - DELL U3224KBA display
-		 * - Unigraf UCD-500 CTS test sink
-		 * devices the
-		 * - 5120x2880/995.59Mhz
-		 * - 6016x3384/1357.23Mhz
-		 * - 6144x3456/1413.39Mhz
-		 * modes (all which had a DPT limit on the above devices),
-		 * both the channel coding efficiency and an additional 3%
-		 * overhead needs to be accounted for.
-		 */
-		int available_bw = mul_u32_u32(symbol_clock * 72,
-					       drm_dp_bw_channel_coding_efficiency(true)) /
-				   1030000;
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
+	 *
+	 * Bspec/49259 suggests that the FEC overhead needs to be
+	 * applied here, though HW people claim that neither this FEC
+	 * or any other overhead is applicable here (that is the actual
+	 * available_bw is just symbol_clock * 72). However based on
+	 * testing on MTL-P the
+	 * - DELL U3224KBA display
+	 * - Unigraf UCD-500 CTS test sink
+	 * devices the
+	 * - 5120x2880/995.59Mhz
+	 * - 6016x3384/1357.23Mhz
+	 * - 6144x3456/1413.39Mhz
+	 * modes (all which had a DPT limit on the above devices),
+	 * both the channel coding efficiency and an additional 3%
+	 * overhead needs to be accounted for.
+	 */
+	return div64_u64(mul_u32_u32(intel_dp_link_symbol_clock(crtc_state->port_clock) * 72,
+				     drm_dp_bw_channel_coding_efficiency(true)),
+			 mul_u32_u32(adjusted_mode->crtc_clock, 1030000));
 }
 
 static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
@@ -175,6 +171,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	int bpp, slots = -EINVAL;
+	int max_dpt_bpp;
 	int ret = 0;
 
 	mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
@@ -195,6 +192,13 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
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
 
@@ -206,10 +210,6 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 
 		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
 
-		ret = intel_dp_mst_check_constraints(i915, bpp, adjusted_mode, crtc_state, dsc);
-		if (ret)
-			continue;
-
 		link_bpp_x16 = to_bpp_x16(dsc ? bpp :
 					  intel_dp_output_bpp(crtc_state->output_format, bpp));
 
-- 
2.43.3

