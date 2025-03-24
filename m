Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AEDA6DBEB
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 14:45:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36A2510E44E;
	Mon, 24 Mar 2025 13:45:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LME5zA02";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85D8710E442;
 Mon, 24 Mar 2025 13:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742823901; x=1774359901;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tZHQxC8ZaHKB46FaN4CY31F4VpeLO667r3/RMy7ARSc=;
 b=LME5zA02QijkcGh28+EpazMso/d08a5I2Dfk5CS8CFO03WpbX1JlHQEq
 Bu8QUTYSUx0r4tY4FXriPtWR8QACpC0QAnHrNEmv3S0K8OLOpvYjmGZdi
 NJcFEAPWiwqh/L8zaPBSV1Tvh0uV8Dy1T0lv+CN6dIjgYq35/8yzDEvzB
 gp6TWSPVi7p4cpe379VsESp2VxGq22fs2Z5oIS9lHeArqEHYFLmg6frq6
 JgfSf8IGfZHLJ4+lSzfjVuTVYc7fPtWGGF6zf4NQTiBbizHEpTx/h7X88
 3K44uEvroi0sKyP7rA8h79astGLPVqdP8YTehS1P7Ox3Ck6NF++nxVH6u A==;
X-CSE-ConnectionGUID: YKsD+CdlQhqBlTunS1NsoQ==
X-CSE-MsgGUID: ZpPrHmayS9SB+S4Mrtp9qg==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="43955736"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="43955736"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:45:01 -0700
X-CSE-ConnectionGUID: drToeZDySRSavqC1akmGDQ==
X-CSE-MsgGUID: 1BYDkkBpTX+F8iL18dSrRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124040711"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:44:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 12/16] drm/i915/vrr: Allow fixed_rr with pipe joiner
Date: Mon, 24 Mar 2025 19:02:44 +0530
Message-ID: <20250324133248.4071909-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
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
index c57e0319d83c..dda42522f461 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -355,19 +355,23 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
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

