Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C186E6B89
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:56:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68A8510E837;
	Tue, 18 Apr 2023 17:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F393610E820
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681840559; x=1713376559;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=E4htE3knE475ULPM/OKOsy4llYhMhc2a5kFpEbRpwPY=;
 b=LGsHqDEvbsDJeB82yNZ6CI4GIJztRG1Usk8Qa8M2kC7aVCtzOrTTzmc6
 3pvJdzVJJAicMR6xCrJen3qcE625EO910IFsYE9a9ryzAVblD108iWNQ6
 QsRTj44RLRkL/jMN5/b+DoZ++/FMVUaW6ADAqjKyXX38JYsGirAtjQ+q1
 SFCbkZZElSfvxZvasV4SSasF5XdHVOmGdw1fA2KSv/T48lUrspHVKxxe0
 gU1tW3GyYMxiWNOu+IbFdvhJc+Lc6lu0Lrrz9E4uiNE0I/XoYcewFMZyj
 XrTfOe9cf1Mdbte1wwFGdbJkpOCyxV2xff/vLRgpixNRQUSQ4xLRXBc7A A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334052770"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334052770"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:55:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="641451665"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="641451665"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 18 Apr 2023 10:55:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 20:55:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 20:55:16 +0300
Message-Id: <20230418175528.13117-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/15] drm/i915: Relocate
 intel_atomic_setup_scalers()
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

Move intel_atomic_setup_scalers() next to the other scaler
code in skl_scaler.c.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c | 256 -------------------
 drivers/gpu/drm/i915/display/intel_atomic.h |   4 -
 drivers/gpu/drm/i915/display/skl_scaler.c   | 257 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h   |  10 +-
 4 files changed, 265 insertions(+), 262 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 61011641f6ab..7cf51dd8c056 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -310,262 +310,6 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
 	kfree(crtc_state);
 }
 
-static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
-				     int num_scalers_need, struct intel_crtc *intel_crtc,
-				     const char *name, int idx,
-				     struct intel_plane_state *plane_state,
-				     int *scaler_id)
-{
-	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
-	int j;
-	u32 mode;
-
-	if (*scaler_id < 0) {
-		/* find a free scaler */
-		for (j = 0; j < intel_crtc->num_scalers; j++) {
-			if (scaler_state->scalers[j].in_use)
-				continue;
-
-			*scaler_id = j;
-			scaler_state->scalers[*scaler_id].in_use = 1;
-			break;
-		}
-	}
-
-	if (drm_WARN(&dev_priv->drm, *scaler_id < 0,
-		     "Cannot find scaler for %s:%d\n", name, idx))
-		return -EINVAL;
-
-	/* set scaler mode */
-	if (plane_state && plane_state->hw.fb &&
-	    plane_state->hw.fb->format->is_yuv &&
-	    plane_state->hw.fb->format->num_planes > 1) {
-		struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-		if (DISPLAY_VER(dev_priv) == 9) {
-			mode = SKL_PS_SCALER_MODE_NV12;
-		} else if (icl_is_hdr_plane(dev_priv, plane->id)) {
-			/*
-			 * On gen11+'s HDR planes we only use the scaler for
-			 * scaling. They have a dedicated chroma upsampler, so
-			 * we don't need the scaler to upsample the UV plane.
-			 */
-			mode = PS_SCALER_MODE_NORMAL;
-		} else {
-			struct intel_plane *linked =
-				plane_state->planar_linked_plane;
-
-			mode = PS_SCALER_MODE_PLANAR;
-
-			if (linked)
-				mode |= PS_PLANE_Y_SEL(linked->id);
-		}
-	} else if (DISPLAY_VER(dev_priv) >= 10) {
-		mode = PS_SCALER_MODE_NORMAL;
-	} else if (num_scalers_need == 1 && intel_crtc->num_scalers > 1) {
-		/*
-		 * when only 1 scaler is in use on a pipe with 2 scalers
-		 * scaler 0 operates in high quality (HQ) mode.
-		 * In this case use scaler 0 to take advantage of HQ mode
-		 */
-		scaler_state->scalers[*scaler_id].in_use = 0;
-		*scaler_id = 0;
-		scaler_state->scalers[0].in_use = 1;
-		mode = SKL_PS_SCALER_MODE_HQ;
-	} else {
-		mode = SKL_PS_SCALER_MODE_DYN;
-	}
-
-	/*
-	 * FIXME: we should also check the scaler factors for pfit, so
-	 * this shouldn't be tied directly to planes.
-	 */
-	if (plane_state && plane_state->hw.fb) {
-		const struct drm_framebuffer *fb = plane_state->hw.fb;
-		const struct drm_rect *src = &plane_state->uapi.src;
-		const struct drm_rect *dst = &plane_state->uapi.dst;
-		int hscale, vscale, max_vscale, max_hscale;
-
-		/*
-		 * FIXME: When two scalers are needed, but only one of
-		 * them needs to downscale, we should make sure that
-		 * the one that needs downscaling support is assigned
-		 * as the first scaler, so we don't reject downscaling
-		 * unnecessarily.
-		 */
-
-		if (DISPLAY_VER(dev_priv) >= 14) {
-			/*
-			 * On versions 14 and up, only the first
-			 * scaler supports a vertical scaling factor
-			 * of more than 1.0, while a horizontal
-			 * scaling factor of 3.0 is supported.
-			 */
-			max_hscale = 0x30000 - 1;
-			if (*scaler_id == 0)
-				max_vscale = 0x30000 - 1;
-			else
-				max_vscale = 0x10000;
-
-		} else if (DISPLAY_VER(dev_priv) >= 10 ||
-			   !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
-			max_hscale = 0x30000 - 1;
-			max_vscale = 0x30000 - 1;
-		} else {
-			max_hscale = 0x20000 - 1;
-			max_vscale = 0x20000 - 1;
-		}
-
-		/*
-		 * FIXME: We should change the if-else block above to
-		 * support HQ vs dynamic scaler properly.
-		 */
-
-		/* Check if required scaling is within limits */
-		hscale = drm_rect_calc_hscale(src, dst, 1, max_hscale);
-		vscale = drm_rect_calc_vscale(src, dst, 1, max_vscale);
-
-		if (hscale < 0 || vscale < 0) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "Scaler %d doesn't support required plane scaling\n",
-				    *scaler_id);
-			drm_rect_debug_print("src: ", src, true);
-			drm_rect_debug_print("dst: ", dst, false);
-
-			return -EINVAL;
-		}
-	}
-
-	drm_dbg_kms(&dev_priv->drm, "Attached scaler id %u.%u to %s:%d\n",
-		    intel_crtc->pipe, *scaler_id, name, idx);
-	scaler_state->scalers[*scaler_id].mode = mode;
-
-	return 0;
-}
-
-/**
- * intel_atomic_setup_scalers() - setup scalers for crtc per staged requests
- * @dev_priv: i915 device
- * @intel_crtc: intel crtc
- * @crtc_state: incoming crtc_state to validate and setup scalers
- *
- * This function sets up scalers based on staged scaling requests for
- * a @crtc and its planes. It is called from crtc level check path. If request
- * is a supportable request, it attaches scalers to requested planes and crtc.
- *
- * This function takes into account the current scaler(s) in use by any planes
- * not being part of this atomic state
- *
- *  Returns:
- *         0 - scalers were setup succesfully
- *         error code - otherwise
- */
-int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
-			       struct intel_crtc *intel_crtc,
-			       struct intel_crtc_state *crtc_state)
-{
-	struct drm_plane *plane = NULL;
-	struct intel_plane *intel_plane;
-	struct intel_plane_state *plane_state = NULL;
-	struct intel_crtc_scaler_state *scaler_state =
-		&crtc_state->scaler_state;
-	struct drm_atomic_state *drm_state = crtc_state->uapi.state;
-	struct intel_atomic_state *intel_state = to_intel_atomic_state(drm_state);
-	int num_scalers_need;
-	int i;
-
-	num_scalers_need = hweight32(scaler_state->scaler_users);
-
-	/*
-	 * High level flow:
-	 * - staged scaler requests are already in scaler_state->scaler_users
-	 * - check whether staged scaling requests can be supported
-	 * - add planes using scalers that aren't in current transaction
-	 * - assign scalers to requested users
-	 * - as part of plane commit, scalers will be committed
-	 *   (i.e., either attached or detached) to respective planes in hw
-	 * - as part of crtc_commit, scaler will be either attached or detached
-	 *   to crtc in hw
-	 */
-
-	/* fail if required scalers > available scalers */
-	if (num_scalers_need > intel_crtc->num_scalers){
-		drm_dbg_kms(&dev_priv->drm,
-			    "Too many scaling requests %d > %d\n",
-			    num_scalers_need, intel_crtc->num_scalers);
-		return -EINVAL;
-	}
-
-	/* walkthrough scaler_users bits and start assigning scalers */
-	for (i = 0; i < sizeof(scaler_state->scaler_users) * 8; i++) {
-		int *scaler_id;
-		const char *name;
-		int idx, ret;
-
-		/* skip if scaler not required */
-		if (!(scaler_state->scaler_users & (1 << i)))
-			continue;
-
-		if (i == SKL_CRTC_INDEX) {
-			name = "CRTC";
-			idx = intel_crtc->base.base.id;
-
-			/* panel fitter case: assign as a crtc scaler */
-			scaler_id = &scaler_state->scaler_id;
-		} else {
-			name = "PLANE";
-
-			/* plane scaler case: assign as a plane scaler */
-			/* find the plane that set the bit as scaler_user */
-			plane = drm_state->planes[i].ptr;
-
-			/*
-			 * to enable/disable hq mode, add planes that are using scaler
-			 * into this transaction
-			 */
-			if (!plane) {
-				struct drm_plane_state *state;
-
-				/*
-				 * GLK+ scalers don't have a HQ mode so it
-				 * isn't necessary to change between HQ and dyn mode
-				 * on those platforms.
-				 */
-				if (DISPLAY_VER(dev_priv) >= 10)
-					continue;
-
-				plane = drm_plane_from_index(&dev_priv->drm, i);
-				state = drm_atomic_get_plane_state(drm_state, plane);
-				if (IS_ERR(state)) {
-					drm_dbg_kms(&dev_priv->drm,
-						    "Failed to add [PLANE:%d] to drm_state\n",
-						    plane->base.id);
-					return PTR_ERR(state);
-				}
-			}
-
-			intel_plane = to_intel_plane(plane);
-			idx = plane->base.id;
-
-			/* plane on different crtc cannot be a scaler user of this crtc */
-			if (drm_WARN_ON(&dev_priv->drm,
-					intel_plane->pipe != intel_crtc->pipe))
-				continue;
-
-			plane_state = intel_atomic_get_new_plane_state(intel_state,
-								       intel_plane);
-			scaler_id = &plane_state->scaler_id;
-		}
-
-		ret = intel_atomic_setup_scaler(scaler_state, num_scalers_need,
-						intel_crtc, name, idx,
-						plane_state, scaler_id);
-		if (ret < 0)
-			return ret;
-	}
-
-	return 0;
-}
-
 struct drm_atomic_state *
 intel_atomic_state_alloc(struct drm_device *dev)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/drm/i915/display/intel_atomic.h
index 1dc439983dd9..e506f6a87344 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic.h
@@ -52,8 +52,4 @@ struct intel_crtc_state *
 intel_atomic_get_crtc_state(struct drm_atomic_state *state,
 			    struct intel_crtc *crtc);
 
-int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
-			       struct intel_crtc *intel_crtc,
-			       struct intel_crtc_state *crtc_state);
-
 #endif /* __INTEL_ATOMIC_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 0e7e014fcc71..62443834f64e 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -348,6 +348,263 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
+				     int num_scalers_need, struct intel_crtc *intel_crtc,
+				     const char *name, int idx,
+				     struct intel_plane_state *plane_state,
+				     int *scaler_id)
+{
+	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
+	int j;
+	u32 mode;
+
+	if (*scaler_id < 0) {
+		/* find a free scaler */
+		for (j = 0; j < intel_crtc->num_scalers; j++) {
+			if (scaler_state->scalers[j].in_use)
+				continue;
+
+			*scaler_id = j;
+			scaler_state->scalers[*scaler_id].in_use = 1;
+			break;
+		}
+	}
+
+	if (drm_WARN(&dev_priv->drm, *scaler_id < 0,
+		     "Cannot find scaler for %s:%d\n", name, idx))
+		return -EINVAL;
+
+	/* set scaler mode */
+	if (plane_state && plane_state->hw.fb &&
+	    plane_state->hw.fb->format->is_yuv &&
+	    plane_state->hw.fb->format->num_planes > 1) {
+		struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+
+		if (DISPLAY_VER(dev_priv) == 9) {
+			mode = SKL_PS_SCALER_MODE_NV12;
+		} else if (icl_is_hdr_plane(dev_priv, plane->id)) {
+			/*
+			 * On gen11+'s HDR planes we only use the scaler for
+			 * scaling. They have a dedicated chroma upsampler, so
+			 * we don't need the scaler to upsample the UV plane.
+			 */
+			mode = PS_SCALER_MODE_NORMAL;
+		} else {
+			struct intel_plane *linked =
+				plane_state->planar_linked_plane;
+
+			mode = PS_SCALER_MODE_PLANAR;
+
+			if (linked)
+				mode |= PS_PLANE_Y_SEL(linked->id);
+		}
+	} else if (DISPLAY_VER(dev_priv) >= 10) {
+		mode = PS_SCALER_MODE_NORMAL;
+	} else if (num_scalers_need == 1 && intel_crtc->num_scalers > 1) {
+		/*
+		 * when only 1 scaler is in use on a pipe with 2 scalers
+		 * scaler 0 operates in high quality (HQ) mode.
+		 * In this case use scaler 0 to take advantage of HQ mode
+		 */
+		scaler_state->scalers[*scaler_id].in_use = 0;
+		*scaler_id = 0;
+		scaler_state->scalers[0].in_use = 1;
+		mode = SKL_PS_SCALER_MODE_HQ;
+	} else {
+		mode = SKL_PS_SCALER_MODE_DYN;
+	}
+
+	/*
+	 * FIXME: we should also check the scaler factors for pfit, so
+	 * this shouldn't be tied directly to planes.
+	 */
+	if (plane_state && plane_state->hw.fb) {
+		const struct drm_framebuffer *fb = plane_state->hw.fb;
+		const struct drm_rect *src = &plane_state->uapi.src;
+		const struct drm_rect *dst = &plane_state->uapi.dst;
+		int hscale, vscale, max_vscale, max_hscale;
+
+		/*
+		 * FIXME: When two scalers are needed, but only one of
+		 * them needs to downscale, we should make sure that
+		 * the one that needs downscaling support is assigned
+		 * as the first scaler, so we don't reject downscaling
+		 * unnecessarily.
+		 */
+
+		if (DISPLAY_VER(dev_priv) >= 14) {
+			/*
+			 * On versions 14 and up, only the first
+			 * scaler supports a vertical scaling factor
+			 * of more than 1.0, while a horizontal
+			 * scaling factor of 3.0 is supported.
+			 */
+			max_hscale = 0x30000 - 1;
+			if (*scaler_id == 0)
+				max_vscale = 0x30000 - 1;
+			else
+				max_vscale = 0x10000;
+
+		} else if (DISPLAY_VER(dev_priv) >= 10 ||
+			   !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
+			max_hscale = 0x30000 - 1;
+			max_vscale = 0x30000 - 1;
+		} else {
+			max_hscale = 0x20000 - 1;
+			max_vscale = 0x20000 - 1;
+		}
+
+		/*
+		 * FIXME: We should change the if-else block above to
+		 * support HQ vs dynamic scaler properly.
+		 */
+
+		/* Check if required scaling is within limits */
+		hscale = drm_rect_calc_hscale(src, dst, 1, max_hscale);
+		vscale = drm_rect_calc_vscale(src, dst, 1, max_vscale);
+
+		if (hscale < 0 || vscale < 0) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "Scaler %d doesn't support required plane scaling\n",
+				    *scaler_id);
+			drm_rect_debug_print("src: ", src, true);
+			drm_rect_debug_print("dst: ", dst, false);
+
+			return -EINVAL;
+		}
+	}
+
+	drm_dbg_kms(&dev_priv->drm, "Attached scaler id %u.%u to %s:%d\n",
+		    intel_crtc->pipe, *scaler_id, name, idx);
+	scaler_state->scalers[*scaler_id].mode = mode;
+
+	return 0;
+}
+
+/**
+ * intel_atomic_setup_scalers() - setup scalers for crtc per staged requests
+ * @dev_priv: i915 device
+ * @intel_crtc: intel crtc
+ * @crtc_state: incoming crtc_state to validate and setup scalers
+ *
+ * This function sets up scalers based on staged scaling requests for
+ * a @crtc and its planes. It is called from crtc level check path. If request
+ * is a supportable request, it attaches scalers to requested planes and crtc.
+ *
+ * This function takes into account the current scaler(s) in use by any planes
+ * not being part of this atomic state
+ *
+ *  Returns:
+ *         0 - scalers were setup successfully
+ *         error code - otherwise
+ */
+int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
+			       struct intel_crtc *intel_crtc,
+			       struct intel_crtc_state *crtc_state)
+{
+	struct drm_plane *plane = NULL;
+	struct intel_plane *intel_plane;
+	struct intel_plane_state *plane_state = NULL;
+	struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	struct drm_atomic_state *drm_state = crtc_state->uapi.state;
+	struct intel_atomic_state *intel_state = to_intel_atomic_state(drm_state);
+	int num_scalers_need;
+	int i;
+
+	num_scalers_need = hweight32(scaler_state->scaler_users);
+
+	/*
+	 * High level flow:
+	 * - staged scaler requests are already in scaler_state->scaler_users
+	 * - check whether staged scaling requests can be supported
+	 * - add planes using scalers that aren't in current transaction
+	 * - assign scalers to requested users
+	 * - as part of plane commit, scalers will be committed
+	 *   (i.e., either attached or detached) to respective planes in hw
+	 * - as part of crtc_commit, scaler will be either attached or detached
+	 *   to crtc in hw
+	 */
+
+	/* fail if required scalers > available scalers */
+	if (num_scalers_need > intel_crtc->num_scalers) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Too many scaling requests %d > %d\n",
+			    num_scalers_need, intel_crtc->num_scalers);
+		return -EINVAL;
+	}
+
+	/* walkthrough scaler_users bits and start assigning scalers */
+	for (i = 0; i < sizeof(scaler_state->scaler_users) * 8; i++) {
+		int *scaler_id;
+		const char *name;
+		int idx, ret;
+
+		/* skip if scaler not required */
+		if (!(scaler_state->scaler_users & (1 << i)))
+			continue;
+
+		if (i == SKL_CRTC_INDEX) {
+			name = "CRTC";
+			idx = intel_crtc->base.base.id;
+
+			/* panel fitter case: assign as a crtc scaler */
+			scaler_id = &scaler_state->scaler_id;
+		} else {
+			name = "PLANE";
+
+			/* plane scaler case: assign as a plane scaler */
+			/* find the plane that set the bit as scaler_user */
+			plane = drm_state->planes[i].ptr;
+
+			/*
+			 * to enable/disable hq mode, add planes that are using scaler
+			 * into this transaction
+			 */
+			if (!plane) {
+				struct drm_plane_state *state;
+
+				/*
+				 * GLK+ scalers don't have a HQ mode so it
+				 * isn't necessary to change between HQ and dyn mode
+				 * on those platforms.
+				 */
+				if (DISPLAY_VER(dev_priv) >= 10)
+					continue;
+
+				plane = drm_plane_from_index(&dev_priv->drm, i);
+				state = drm_atomic_get_plane_state(drm_state, plane);
+				if (IS_ERR(state)) {
+					drm_dbg_kms(&dev_priv->drm,
+						    "Failed to add [PLANE:%d] to drm_state\n",
+						    plane->base.id);
+					return PTR_ERR(state);
+				}
+			}
+
+			intel_plane = to_intel_plane(plane);
+			idx = plane->base.id;
+
+			/* plane on different crtc cannot be a scaler user of this crtc */
+			if (drm_WARN_ON(&dev_priv->drm,
+					intel_plane->pipe != intel_crtc->pipe))
+				continue;
+
+			plane_state = intel_atomic_get_new_plane_state(intel_state,
+								       intel_plane);
+			scaler_id = &plane_state->scaler_id;
+		}
+
+		ret = intel_atomic_setup_scaler(scaler_state, num_scalers_need,
+						intel_crtc, name, idx,
+						plane_state, scaler_id);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
 static int glk_coef_tap(int i)
 {
 	return i % 7;
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 0097d5d08e10..f040f6ac061f 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -8,17 +8,22 @@
 #include <linux/types.h>
 
 enum drm_scaling_filter;
+enum pipe;
 struct drm_i915_private;
+struct intel_crtc;
 struct intel_crtc_state;
-struct intel_plane_state;
 struct intel_plane;
-enum pipe;
+struct intel_plane_state;
 
 int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state);
 
 int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 			    struct intel_plane_state *plane_state);
 
+int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
+			       struct intel_crtc *intel_crtc,
+			       struct intel_crtc_state *crtc_state);
+
 void skl_pfit_enable(const struct intel_crtc_state *crtc_state);
 
 void skl_program_plane_scaler(struct intel_plane *plane,
@@ -26,4 +31,5 @@ void skl_program_plane_scaler(struct intel_plane *plane,
 			      const struct intel_plane_state *plane_state);
 void skl_detach_scalers(const struct intel_crtc_state *crtc_state);
 void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
+
 #endif
-- 
2.39.2

