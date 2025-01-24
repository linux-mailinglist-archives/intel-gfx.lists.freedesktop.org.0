Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 291EBA1B885
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:11:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B88EB10E9A6;
	Fri, 24 Jan 2025 15:11:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HUVi3rZ4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DC7810E99E;
 Fri, 24 Jan 2025 15:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731513; x=1769267513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eMKiTQivylcW3/7vYVBNu3bQIO0sntxUIiLUTH4GTy4=;
 b=HUVi3rZ42nxYApzjD6CoWR83aUdU//AEb89Fmq+8z+HIMlrmIzGvcwaN
 uQn1gkchBsLu71hdb2s0FYA2TB6oze7HsSV9odaxUk42Uzj6IV/2y9TER
 XaCifyRMu+EnH7HnyINFM7O1LW+Zz05iLFAq7HKoqXIFKTLK4UePkI4jT
 j/sYYSSiAu113BL7lIxbETrGgFp9/BtUABUVYq300UVmFyy+8Fv8+H3xH
 LEn8weWL0iyc3runASiIqseko3JbbTMGbHI3SO5NCaJNOibtz5R0dn//y
 h9fkaYy+Bi12ozUD9siDwxZuUMwij97V7nI3eu2qBKUjNxLS/upGAg0Nh A==;
X-CSE-ConnectionGUID: wZ7ZhuMISKCATjWznQKgjw==
X-CSE-MsgGUID: wq9z7mORSk60j92hrgRukQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177389"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177389"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:53 -0800
X-CSE-ConnectionGUID: NWfStXQSRfqeH/n3Hv1fMg==
X-CSE-MsgGUID: OPUTNTmZQIqP4Q8FizkGsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221204"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:51 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 08/35] drm/i915:vrr: Refactor VRR timing setup into a separate
 function
Date: Fri, 24 Jan 2025 20:29:53 +0530
Message-ID: <20250124150020.2271747-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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

Move the VRR timing setup code from intel_vrr_compute_config() to a new
function intel_vrr_prepare_vrr_timings().

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 29 +++++++++++++++---------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 532abdb334b2..c6c38f089a05 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -222,6 +222,23 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 	return vtotal;
 }
 
+static
+void intel_vrr_prepare_vrr_timings(struct intel_crtc_state *crtc_state, int vmin, int vmax)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	crtc_state->vrr.vmin = vmin;
+	crtc_state->vrr.vmax = vmax;
+	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
+
+	/*
+	 * flipline determines the min vblank length the hardware will
+	 * generate, and on ICL/TGL flipline>=vmin+1, hence we reduce
+	 * vmin by one to make sure we can get the actual min vblank length.
+	 */
+	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
+}
+
 void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
@@ -264,17 +281,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (vmin >= vmax)
 		return;
 
-	crtc_state->vrr.vmin = vmin;
-	crtc_state->vrr.vmax = vmax;
-
-	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
-
-	/*
-	 * flipline determines the min vblank length the hardware will
-	 * generate, and on ICL/TGL flipline>=vmin+1, hence we reduce
-	 * vmin by one to make sure we can get the actual min vblank length.
-	 */
-	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
+	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
 
 	if (crtc_state->uapi.vrr_enabled) {
 		crtc_state->vrr.enable = true;
-- 
2.45.2

