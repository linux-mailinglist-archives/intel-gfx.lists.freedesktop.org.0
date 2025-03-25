Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18ADFA6F43C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 12:35:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B037210E567;
	Tue, 25 Mar 2025 11:35:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OS7mj+TM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B5F510E55C;
 Tue, 25 Mar 2025 11:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742902501; x=1774438501;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tZHQxC8ZaHKB46FaN4CY31F4VpeLO667r3/RMy7ARSc=;
 b=OS7mj+TMPOVFY6rshPN2KPnWgr42BZC//sOFdOmp279NuCxrxqI3IO1q
 5bwg3/3RzvCw1MIYcYdTJRpua4Z8PFvGUqfDDtNFCONW8z68vypDTJNBw
 cMeJ6Z+/zlh/YIC8NihANxBuH+FQREb3Ns87NfiP3PtG40TZlgXg5OCi5
 AsgCps2LNPeb1+5L2kCXeCsVQQVcRLdL1FtkCkeVCnIwowXa9GWO80XXn
 JM8Gzpjo3ku6aQ2QNPqWXuwnOHWT3nEjsO72OTSh+WKVOXrwEN6Kj0lLS
 NdY9TGGKea0/LfSqPchX4IgJ69AB1pke91WLUrjiuBfaOY0HeaKahrm9X A==;
X-CSE-ConnectionGUID: MkfHUT5TTxKOhaksK8S2KA==
X-CSE-MsgGUID: 8k1slUTeSoe5ZgEcqJffYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44266934"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="44266934"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:35:01 -0700
X-CSE-ConnectionGUID: /agMTQBdRYqHMelDnz6ffQ==
X-CSE-MsgGUID: nk00pwUzRN+wDxr/9Mq7LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="124070621"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:34:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 12/16] drm/i915/vrr: Allow fixed_rr with pipe joiner
Date: Tue, 25 Mar 2025 16:52:45 +0530
Message-ID: <20250325112249.228444-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
References: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
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

