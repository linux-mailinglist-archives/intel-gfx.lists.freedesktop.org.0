Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2D09C3A74
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:09:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E38210E449;
	Mon, 11 Nov 2024 09:09:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ftj1GzhG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DEBD10E443;
 Mon, 11 Nov 2024 09:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316195; x=1762852195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RkUAfGh95Qf59oNuXCZbP+YYWn+WxFUoCefFLASsl2k=;
 b=ftj1GzhG1SESFqTd5GCljTtGpWbxycQXhcI2fQhyB0WO4hbWIbXU8nBM
 uYXwSLOK0bsCjS38zhB4HGYVKqS+mbxsLg0bqZ22vyFaUyiHvJV5ciiPU
 VGeIMgGEBtQRXvbx4Sq4VS8QrE8wxtJwBZact4jLvC9c0wl58L0UymMA1
 iIvGSEqtaX9Hnydi6hu/a2e0QMuwt55NYek/4a8Gpqrl7Qgga1ojAvizM
 KN45aOI0uDxV5aDs+1TvUDCdmgNVoJiqCHYWaZ9U3tikqFh2jKaov6Y0i
 IQRxwfiu8wx+b0b7Rk4NbxMO6tik6HuACxA8G/mhMZiYlY2fs0RhlmZlp Q==;
X-CSE-ConnectionGUID: JKrzuQqKQZODkoaDyyChPw==
X-CSE-MsgGUID: QYn5IT3DQJmfE/dMqGhMoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052303"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052303"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:09:55 -0800
X-CSE-ConnectionGUID: frknHWkYQ/KUIg2XgqqOoA==
X-CSE-MsgGUID: 85BZBcrhSlK09K+V7xa6yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762533"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:09:52 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 01/23] drm/i915/vrr: Refactor VRR Timing Computation
Date: Mon, 11 Nov 2024 14:41:59 +0530
Message-ID: <20241111091221.2992818-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
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

Introduce helper functions to compute timins gfor different mode of
operation of VRR timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 115 +++++++++++++++--------
 1 file changed, 75 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 19a5d0076bb8..defe346b0261 100644
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

