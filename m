Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD95C7EB1A3
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 15:10:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330BD10E0BE;
	Tue, 14 Nov 2023 14:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 911F210E0BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 14:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699971015; x=1731507015;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YN8k1oy9Iiaclyh/5UGC1YVjPE+qdSQwPHLVE7h9z3E=;
 b=I8N1SaI9W9RMKpcNtisucqO1y5eKNUnJvmZAsYow/TDPjNPvBJCrZD9m
 WPjxjoYIjAcDgW55i7Ti5CJnKxU2FAFB968dqJrt3dUJyY/dzgzowsZow
 XSXgPAXYRryBkmvOVNZx5ONdU2WTzBSPMIACmUR4cMCenJpUkEKZrPwMY
 LGwdccdoZMuFpPKkawmFesLJyqfrstjiCTnxlOFzkxa1t+aW7DpiZ7Pvu
 Xz4JQjBoIZMW+NP4Ed0JFE5MMTjAivZGwEeShpXcxf3/NvE200hyR5DOp
 gdjLfuPBBpi3AFwnaax+0Ml9Bjjab8oAX0lQB5GM8P/rwboz/dHGv1o+5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="3766047"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; 
   d="scan'208";a="3766047"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 06:10:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="714580749"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="714580749"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 06:10:12 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Nov 2023 16:10:12 +0200
Message-Id: <20231114141012.603960-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix fractional bpp handling in
 intel_link_bw_reduce_bpp()
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
Cc: Sui Jingfeng <suijingfeng@loongson.cn>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert crtc_state->pipe_bpp to U6.4 format as expected by the rest of
the function.

Fixes: 59a266f068b4 ("drm/i915/display: Store compressed bpp in U6.4 format")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Sui Jingfeng <suijingfeng@loongson.cn>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_link_bw.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index 02a0af2aa5bae..9c6d35a405a18 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -55,11 +55,11 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	enum pipe max_bpp_pipe = INVALID_PIPE;
 	struct intel_crtc *crtc;
-	int max_bpp = 0;
+	int max_bpp_x16 = 0;
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
 		struct intel_crtc_state *crtc_state;
-		int link_bpp;
+		int link_bpp_x16;
 
 		if (limits->bpp_limit_reached_pipes & BIT(crtc->pipe))
 			continue;
@@ -70,7 +70,7 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
 			return PTR_ERR(crtc_state);
 
 		if (crtc_state->dsc.compression_enable)
-			link_bpp = crtc_state->dsc.compressed_bpp_x16;
+			link_bpp_x16 = crtc_state->dsc.compressed_bpp_x16;
 		else
 			/*
 			 * TODO: for YUV420 the actual link bpp is only half
@@ -78,10 +78,10 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
 			 * is based on the pipe bpp value, set the actual link bpp
 			 * limit here once the MST BW allocation is fixed.
 			 */
-			link_bpp = crtc_state->pipe_bpp;
+			link_bpp_x16 = to_bpp_x16(crtc_state->pipe_bpp);
 
-		if (link_bpp > max_bpp) {
-			max_bpp = link_bpp;
+		if (link_bpp_x16 > max_bpp_x16) {
+			max_bpp_x16 = link_bpp_x16;
 			max_bpp_pipe = crtc->pipe;
 		}
 	}
@@ -89,7 +89,7 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
 	if (max_bpp_pipe == INVALID_PIPE)
 		return -ENOSPC;
 
-	limits->max_bpp_x16[max_bpp_pipe] = to_bpp_x16(max_bpp) - 1;
+	limits->max_bpp_x16[max_bpp_pipe] = max_bpp_x16 - 1;
 
 	return intel_modeset_pipes_in_mask_early(state, reason,
 						 BIT(max_bpp_pipe));
-- 
2.39.2

