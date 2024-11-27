Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5830A9DA2CE
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 08:08:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD8DF10E9ED;
	Wed, 27 Nov 2024 07:08:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UZT04MJe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 661F910E9E6;
 Wed, 27 Nov 2024 07:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732691336; x=1764227336;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eEl1pIDeSZzZt7sVGQHBbyONUFFWBx6HKKUv9gSIBBk=;
 b=UZT04MJez6UCEZTosTfusfJPUHc/OdPDieDJ8v7k9hjOQuLRpxcFSuvS
 ymv2O5vfjNHtyq862ym/vKpLNFAuxNLepZGNKdBDcQUcdXwdgTaNpeXsM
 4d2+1lVN91Xk812qLN5pk0fdjJTPz4yG39Y3Wbv29hMJdk3Ta2WfDMcjz
 NOC8zeHuE+MnFqTvJvaVz4cD2EZ+YS3vYdeNY6MzMZ7hUEiaJBWtVK5A1
 N08NdmJWefan7hzauf3GXRSg65badvLJebfT18p+xkhY3OKYaYleAH/lQ
 HGIRsP0YowKQpb4fUUTv1KpWjathsYHV7S84YMMIPyRNxrIOXEF+0kXOx Q==;
X-CSE-ConnectionGUID: yTdGaalFTk6/flw/5ywGSA==
X-CSE-MsgGUID: eCJ6N73bRV+alLeAj9HawQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="36667882"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="36667882"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:08:56 -0800
X-CSE-ConnectionGUID: TFiCuJE9Q8adzGPRaiWk5Q==
X-CSE-MsgGUID: ufiohISJQMSQz0iVSWE2WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="96270364"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:08:54 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 1/7] drm/i915/vrr: Refactor VRR Timing Computation
Date: Wed, 27 Nov 2024 12:41:30 +0530
Message-ID: <20241127071136.1017190-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127071136.1017190-1-ankit.k.nautiyal@intel.com>
References: <20241127071136.1017190-1-ankit.k.nautiyal@intel.com>
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

Introduce helper functions to compute timings for different mode of
operation of VRR timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 115 +++++++++++++++--------
 1 file changed, 75 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b386e62d1664..b7e3bb75c7a7 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -161,6 +161,73 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
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
+int intel_vrr_compute_vmin(struct intel_connector *connector,
+			   struct drm_display_mode *adjusted_mode)
+{
+	int vmin;
+	const struct drm_display_info *info = &connector->base.display_info;
+
+	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
+			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
+	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
+
+	return vmin;
+}
+
+static
+int intel_vrr_compute_vmax(struct intel_connector *connector,
+			   struct drm_display_mode *adjusted_mode)
+{
+	int vmax;
+	const struct drm_display_info *info = &connector->base.display_info;
+
+	vmax = adjusted_mode->crtc_clock * 1000 /
+		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
+
+	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
+
+	return vmax;
+}
+
+static
+void intel_vrr_prepare_vrr_timings(struct intel_crtc_state *crtc_state, int vmin, int vmax)
+{
+	/*
+	 * flipline determines the min vblank length the hardware will
+	 * generate, and flipline>=vmin+1, hence we reduce vmin by one
+	 * to make sure we can get the actual min vblank length.
+	 */
+	crtc_state->vrr.vmin = vmin - 1;
+	crtc_state->vrr.vmax = vmax;
+	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
+}
+
+static
+void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state, int vmin, int vmax)
+{
+	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
+	crtc_state->vrr.enable = true;
+	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+}
+
 void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
@@ -171,7 +238,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	bool is_edp = intel_dp_is_edp(intel_dp);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	const struct drm_display_info *info = &connector->base.display_info;
 	int vmin, vmax;
 
 	/*
@@ -192,49 +258,18 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (HAS_LRR(display))
 		crtc_state->update_lrr = true;
 
-	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
-			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
-	vmax = adjusted_mode->crtc_clock * 1000 /
-		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
-
-	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
-	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
+	vmin = intel_vrr_compute_vmin(connector, adjusted_mode);
+	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
 
 	if (vmin >= vmax)
 		return;
 
-	/*
-	 * flipline determines the min vblank length the hardware will
-	 * generate, and flipline>=vmin+1, hence we reduce vmin by one
-	 * to make sure we can get the actual min vblank length.
-	 */
-	crtc_state->vrr.vmin = vmin - 1;
-	crtc_state->vrr.vmax = vmax;
-
-	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
-
-	/*
-	 * When panel is VRR capable and userspace has
-	 * not enabled adaptive sync mode then Fixed Average
-	 * Vtotal mode should be enabled.
-	 */
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
+		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
+	else if (is_cmrr_frac_required(crtc_state) && is_edp)
+		intel_vrr_compute_cmrr_timings(crtc_state);
+	else
+		intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
 
 	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
 		crtc_state->vrr.vsync_start =
-- 
2.45.2

