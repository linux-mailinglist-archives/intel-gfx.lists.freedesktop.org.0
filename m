Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 716CDB1A391
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 15:39:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAEA310E532;
	Mon,  4 Aug 2025 13:39:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YkbxfUNR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA32B10E534;
 Mon,  4 Aug 2025 13:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754314744; x=1785850744;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u9+GZHnFznIlITezYkrrHHSySSV1Q6djQ5jr3TFsm+M=;
 b=YkbxfUNRZ9txSYWzIrgpOQe/3fQVerhV29US+8DYjDAs1Sg7bOBZri+e
 /HqHHTxUpN70OvIyo7FW7ItR8oe5q1JDZVhJQunZoC4n1uurwmvB+vlq+
 IyWSjehOWppJoycn8NMZZZ2cJBf5mc7V/EfNFab+bwNSuQ5fdkh3F5gaR
 783s2Ftl2Yb4/go+fZgjX0ogMe3a3/w5GwYlYSS3HGS1qsdzt/ywZ52Gy
 Wz8asYaHUFpbMFB31lt6X2i5TWb4L31/X/ZFBqxEQtAPUCJ0MqGnWC2Uv
 P+O9yIFuGC9PHdiGsgqqgJQwpI6EAfC+SXsKq78ZB+qCBWv9XcDSUjVvY Q==;
X-CSE-ConnectionGUID: rIbD/JFKSymI+S0LI4xMag==
X-CSE-MsgGUID: WgFZgtCqTMC6i85BWCRflg==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56447399"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56447399"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:39:04 -0700
X-CSE-ConnectionGUID: HP5W8mBYSXauXOIkRC+UHA==
X-CSE-MsgGUID: dit7BiJwThaSY6FK7iXBDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163430694"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:39:02 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 13/15] drm/i915/vrr: Set vrr.vmin to min Vtotal
Date: Mon,  4 Aug 2025 18:54:38 +0530
Message-ID: <20250804132441.990441-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
References: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
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

Previously, when vrr.guardband was matched to vblank length, vrr.vmin was
set to crtc_vtotal for all cases to avoid having vrr.vmin changed when we
switch from fixed refresh rate timings to variable refresh rate timings.

Now that we are using an optimized vrr.guardband, we can simply set the
vrr.vmin to the lowest Vtotal (for highest refresh rate supported by the
panel) .

For non-vrr panels, the vrr.vmin stays the same i.e. crtc_vtotal.
v2: Fix vmin calculation.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 37 ++++++++++++++++--------
 1 file changed, 25 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index d3cce063a041..642a57a958ec 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -282,6 +282,9 @@ int intel_vrr_fixed_rr_vmin(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
+	if (crtc_state->vrr.in_range)
+		return crtc_state->vrr.vmin;
+
 	return intel_vrr_fixed_rr_vtotal(crtc_state) -
 		intel_vrr_flipline_offset(display);
 }
@@ -312,26 +315,37 @@ static
 void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
 {
 	/*
-	 * For fixed rr,  vmin = vmax = flipline.
-	 * vmin is already set to crtc_vtotal set vmax and flipline the same.
+	 * For fixed rr vmax = flipline.
+	 * set vmax and flipline same as vtotal.
 	 */
 	crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
 	crtc_state->vrr.flipline = crtc_state->hw.adjusted_mode.crtc_vtotal;
 }
 
 static
-int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
+int intel_vrr_compute_fixed_vmin(struct intel_crtc_state *crtc_state)
 {
 	/*
-	 * To make fixed rr and vrr work seamless the guardband/pipeline full
-	 * should be set such that it satisfies both the fixed and variable
-	 * timings.
-	 * For this set the vmin as crtc_vtotal. With this we never need to
-	 * change anything to do with the guardband.
+	 * For non VRR supporting panels/config, set the vmin to crtc_vtotal.
+	 * This will help the case where VRR TG is used even for non-vrr panels/config.
 	 */
 	return crtc_state->hw.adjusted_mode.crtc_vtotal;
 }
 
+static
+int intel_vrr_compute_vmin(struct intel_connector *connector,
+			   const struct drm_display_mode *adjusted_mode)
+{
+	const struct drm_display_info *info = &connector->base.display_info;
+	int vmin;
+
+	vmin = adjusted_mode->crtc_clock * 1000 /
+		(adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
+	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
+
+	return vmin;
+}
+
 static
 int intel_vrr_compute_vmax(struct intel_connector *connector,
 			   const struct drm_display_mode *adjusted_mode)
@@ -378,13 +392,13 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (crtc_state->joiner_pipes)
 		crtc_state->vrr.in_range = false;
 
-	vmin = intel_vrr_compute_vmin(crtc_state);
-
 	if (crtc_state->vrr.in_range) {
 		if (HAS_LRR(display))
 			crtc_state->update_lrr = true;
 		vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
+		vmin = intel_vrr_compute_vmin(connector, adjusted_mode);
 	} else {
+		vmin = intel_vrr_compute_fixed_vmin(crtc_state);
 		vmax = vmin;
 	}
 
@@ -826,8 +840,7 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->vrr.flipline &&
-	       crtc_state->vrr.flipline == crtc_state->vrr.vmax &&
-	       crtc_state->vrr.flipline == intel_vrr_vmin_flipline(crtc_state);
+	       crtc_state->vrr.flipline == crtc_state->vrr.vmax;
 }
 
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
-- 
2.45.2

