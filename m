Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 106E7A66C80
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 08:48:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 201C910E442;
	Tue, 18 Mar 2025 07:48:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GP2WPd90";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39B8410E1EC;
 Tue, 18 Mar 2025 07:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742284083; x=1773820083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d3ZVSrzWmvVXHEH+hejNGt6C2et2Siu1juqwtvKNJRc=;
 b=GP2WPd90tjrlCnqPunStyVqx+jrJIckW/9BtO+k97YKoPFJ7RoE00P1I
 Z1saEX/bbsSoC+ZVgSsGPqkZ1pNxjSCxEdNykaTbKSn3pn1PvTOes1X6e
 4HjgEj0cVTlH5fPsfnArzvZ3WISfY5i3JzPX6Mcdmb6cgk2QbCBka6X63
 FPIc1GwNbdJ4xPsSw/Y4sy60Kubko9bcri+99q/6qhmMCWmetcgiPSNiv
 diM3xNb45o+HKeVgdIaVQ36eBFQ0burlWUFSO0+lulNHmeAYTW7h9v2Nk
 ind/YjvHa8495UFkwiXfDuc0LgqmnYuMBGNPsSfu5LSON6+yj+NdgGrn6 w==;
X-CSE-ConnectionGUID: Ei4TAb2lRw6q22MarJIj8w==
X-CSE-MsgGUID: SeW7YMr7TA2gR31LIpshrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="46173838"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="46173838"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:48:03 -0700
X-CSE-ConnectionGUID: WO2sx9GkRCSzypz2g6/Ttg==
X-CSE-MsgGUID: 3VQ3yynhRPydtPx2x2+Vcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="122681734"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:48:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 14/16] drm/i915/vrr: Allow fixed_rr with pipe joiner
Date: Tue, 18 Mar 2025 13:05:38 +0530
Message-ID: <20250318073540.2773890-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

VRR with joiner is currently disabled as it still needs some work to
correctly sequence the primary and secondary transcoders. However, we can
still use VRR Timing generator in fixed refresh rate for joiner and since
it just need to program vrr timings once and does not involve changing
timings on the fly. We still need to skip the VRR and LRR for joiner.

To achieve this set vrr.in_range to 0 for joiner case, so that we do not
try VRR and LRR for the joiner case.

v2: Avoid checks for secondary pipes, where not required. (Ville)
v3: Remove a redundant check and reset vrr.in_range to false. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 3fb977a4f095..c1cdd1918c19 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -353,19 +353,23 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (!HAS_VRR(display))
 		return;
 
-	/*
-	 * FIXME all joined pipes share the same transcoder.
-	 * Need to account for that during VRR toggle/push/etc.
-	 */
-	if (crtc_state->joiner_pipes)
-		return;
-
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return;
 
 	crtc_state->vrr.in_range =
 		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
 
+	/*
+	 * Allow fixed refresh rate with VRR Timing Generator.
+	 * For now set the vrr.in_range to 0, to allow fixed_rr but skip actual
+	 * VRR and LRR.
+	 * #TODO For actual VRR with joiner, we need to figure out how to
+	 * correctly sequence transcoder level stuff vs. pipe level stuff
+	 * in the commit.
+	 */
+	if (crtc_state->joiner_pipes)
+		crtc_state->vrr.in_range = false;
+
 	vmin = intel_vrr_compute_vmin(crtc_state);
 
 	if (crtc_state->vrr.in_range) {
-- 
2.45.2

