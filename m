Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2AF2A259D3
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:49:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F2BC10E4A5;
	Mon,  3 Feb 2025 12:49:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VlSXDx44";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 450A210E4A5;
 Mon,  3 Feb 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738586993; x=1770122993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TTNFUI+fTAXZV9uQgdjRPLJSoEDL9EFp8qyz0W0Yi/4=;
 b=VlSXDx44VYsSv//qyPBlvLCcKQGbNZpsS99FKPFZP16n8Vm3QfiBBENN
 7C1ZyAlbwOjrNpcDPhIXXKdJwL4aIVu0m6JSG8RVJtiF6Kstjf6YWcLB0
 1BDOX0SiuUNo6lK515WbXKBdv27fPUThWIN0IqQ4iyLvqLfJaitk0iMO3
 P1qF8EPOFYH8SDDoa9ahr66XpP7itnHP3JmrVQh3ZAVT8ko81R3RbfddD
 mDhRKBhCKqgb6IhMlnnSswSoAWpjE1RNIqsHXtC+7x+SfGeFDlgA8PIML
 5nKiVlePHs0d1dz0aippJaoIy1ltPsApEQuDjepIwgzrgExKWcwooV+5a Q==;
X-CSE-ConnectionGUID: fs0ZOEEERrOpn/zgs7cUow==
X-CSE-MsgGUID: jZFe5vNpSIi0++lWkLwgNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548016"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548016"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:49:53 -0800
X-CSE-ConnectionGUID: Rx5pOOLvSd23HE8KEJGJpQ==
X-CSE-MsgGUID: 4O/LgDIbR5OiXVGX9sabxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133528824"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:49:51 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 03/28] drm/i915/vrr: Make helpers for cmrr and vrr timings
Date: Mon,  3 Feb 2025 18:08:15 +0530
Message-ID: <20250203123840.3855874-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

Separate out functions for computing cmrr and vrr timings.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 45 +++++++++++++++---------
 1 file changed, 28 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e1bac7d24e18..f8ae3dc6a304 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -222,6 +222,30 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 	return vtotal;
 }
 
+static
+void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->vrr.enable = true;
+	crtc_state->cmrr.enable = true;
+	/*
+	 * TODO: Compute precise target refresh rate to determine
+	 * if video_mode_required should be true. Currently set to
+	 * false due to uncertainty about the precise target
+	 * refresh Rate.
+	 */
+	crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
+	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
+	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
+	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+}
+
+static
+void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->vrr.enable = true;
+	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+}
+
 static
 int intel_vrr_compute_vmin(struct intel_connector *connector,
 			   struct drm_display_mode *adjusted_mode)
@@ -299,23 +323,10 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	 */
 	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
 
-	if (crtc_state->uapi.vrr_enabled) {
-		crtc_state->vrr.enable = true;
-		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
-	} else if (is_cmrr_frac_required(crtc_state) && is_edp) {
-		crtc_state->vrr.enable = true;
-		crtc_state->cmrr.enable = true;
-		/*
-		 * TODO: Compute precise target refresh rate to determine
-		 * if video_mode_required should be true. Currently set to
-		 * false due to uncertainty about the precise target
-		 * refresh Rate.
-		 */
-		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
-		crtc_state->vrr.vmin = crtc_state->vrr.vmax;
-		crtc_state->vrr.flipline = crtc_state->vrr.vmin;
-		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
-	}
+	if (crtc_state->uapi.vrr_enabled)
+		intel_vrr_compute_vrr_timings(crtc_state);
+	else if (is_cmrr_frac_required(crtc_state) && is_edp)
+		intel_vrr_compute_cmrr_timings(crtc_state);
 
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
-- 
2.45.2

