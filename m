Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74020467621
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 12:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F25873ACF;
	Fri,  3 Dec 2021 11:20:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AD6273C36
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 11:20:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="297753470"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="297753470"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 03:20:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="513670638"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 03 Dec 2021 03:20:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Dec 2021 13:20:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Dec 2021 13:20:27 +0200
Message-Id: <20211203112029.1057-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Nuke {pipe,
 plane}_to_crtc_mapping[]
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

These plane/pipe->crtc mapping arrays are rather pointless.
Get rid of them and just iterate the lists instead.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 44 ++++++++++-------------
 drivers/gpu/drm/i915/display/intel_crtc.h |  1 -
 drivers/gpu/drm/i915/display/intel_vdsc.c | 13 ++-----
 drivers/gpu/drm/i915/i915_drv.h           |  3 --
 4 files changed, 20 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 43554b591904..96554f5652f1 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -36,14 +36,6 @@ static void assert_vblank_disabled(struct drm_crtc *crtc)
 		drm_crtc_vblank_put(crtc);
 }
 
-bool intel_pipe_valid(struct drm_i915_private *i915, enum pipe pipe)
-{
-	return (pipe >= 0 &&
-		pipe < ARRAY_SIZE(i915->pipe_to_crtc_mapping) &&
-		INTEL_INFO(i915)->pipe_mask & BIT(pipe) &&
-		i915->pipe_to_crtc_mapping[pipe]);
-}
-
 struct intel_crtc *intel_get_first_crtc(struct drm_i915_private *i915)
 {
 	return to_intel_crtc(drm_crtc_from_index(&i915->drm, 0));
@@ -52,16 +44,28 @@ struct intel_crtc *intel_get_first_crtc(struct drm_i915_private *i915)
 struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
 				       enum pipe pipe)
 {
-	/* pipe_to_crtc_mapping may have hole on any of 3 display pipe system */
-	drm_WARN_ON(&i915->drm,
-		    !(INTEL_INFO(i915)->pipe_mask & BIT(pipe)));
-	return i915->pipe_to_crtc_mapping[pipe];
+	struct intel_crtc *crtc;
+
+	for_each_intel_crtc(&i915->drm, crtc) {
+		if (crtc->pipe == pipe)
+			return crtc;
+	}
+
+	return NULL;
 }
 
 struct intel_crtc *intel_crtc_for_plane(struct drm_i915_private *i915,
-					enum i9xx_plane_id plane)
+					enum i9xx_plane_id i9xx_plane)
 {
-	return i915->plane_to_crtc_mapping[plane];
+	struct intel_plane *plane;
+
+	for_each_intel_plane(&i915->drm, plane) {
+		if (plane->id == PLANE_PRIMARY &&
+		    plane->i9xx_plane == i9xx_plane)
+			return intel_crtc_for_pipe(i915, plane->pipe);
+	}
+
+	return NULL;
 }
 
 void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc)
@@ -369,18 +373,6 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 	if (ret)
 		goto fail;
 
-	BUG_ON(pipe >= ARRAY_SIZE(dev_priv->pipe_to_crtc_mapping) ||
-	       dev_priv->pipe_to_crtc_mapping[pipe] != NULL);
-	dev_priv->pipe_to_crtc_mapping[pipe] = crtc;
-
-	if (DISPLAY_VER(dev_priv) < 9) {
-		enum i9xx_plane_id i9xx_plane = primary->i9xx_plane;
-
-		BUG_ON(i9xx_plane >= ARRAY_SIZE(dev_priv->plane_to_crtc_mapping) ||
-		       dev_priv->plane_to_crtc_mapping[i9xx_plane] != NULL);
-		dev_priv->plane_to_crtc_mapping[i9xx_plane] = crtc;
-	}
-
 	if (DISPLAY_VER(dev_priv) >= 11)
 		drm_crtc_create_scaling_filter_property(&crtc->base,
 						BIT(DRM_SCALING_FILTER_DEFAULT) |
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index 23110e91ecd6..4654f0eb65a2 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -29,7 +29,6 @@ void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
 void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state);
 void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state);
 void intel_wait_for_vblank_workers(struct intel_atomic_state *state);
-bool intel_pipe_valid(struct drm_i915_private *i915, enum pipe pipe);
 struct intel_crtc *intel_get_first_crtc(struct drm_i915_private *i915);
 struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
 				       enum pipe pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index c6851b0e0bed..7fe5d328c721 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1110,25 +1110,16 @@ static i915_reg_t dss_ctl2_reg(struct intel_crtc *crtc, enum transcoder cpu_tran
 		ICL_PIPE_DSS_CTL2(crtc->pipe) : DSS_CTL2;
 }
 
-static struct intel_crtc *
-_get_crtc_for_pipe(struct drm_i915_private *i915, enum pipe pipe)
-{
-	if (!intel_pipe_valid(i915, pipe))
-		return NULL;
-
-	return intel_crtc_for_pipe(i915, pipe);
-}
-
 struct intel_crtc *
 intel_dsc_get_bigjoiner_secondary(const struct intel_crtc *primary_crtc)
 {
-	return _get_crtc_for_pipe(to_i915(primary_crtc->base.dev), primary_crtc->pipe + 1);
+	return intel_crtc_for_pipe(to_i915(primary_crtc->base.dev), primary_crtc->pipe + 1);
 }
 
 static struct intel_crtc *
 intel_dsc_get_bigjoiner_primary(const struct intel_crtc *secondary_crtc)
 {
-	return _get_crtc_for_pipe(to_i915(secondary_crtc->base.dev), secondary_crtc->pipe - 1);
+	return intel_crtc_for_pipe(to_i915(secondary_crtc->base.dev), secondary_crtc->pipe - 1);
 }
 
 void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 262783d5db2b..60f11b114031 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -943,9 +943,6 @@ struct drm_i915_private {
 
 	/* Kernel Modesetting */
 
-	struct intel_crtc *plane_to_crtc_mapping[I915_MAX_PIPES];
-	struct intel_crtc *pipe_to_crtc_mapping[I915_MAX_PIPES];
-
 	/**
 	 * dpll and cdclk state is protected by connection_mutex
 	 * dpll.lock serializes intel_{prepare,enable,disable}_shared_dpll.
-- 
2.32.0

