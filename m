Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF20B9B54B5
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:10:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D1CB10E3B4;
	Tue, 29 Oct 2024 21:10:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YK3hxrGb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E586910E3B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730236236; x=1761772236;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=w9ESnLvK21Y6rdxLjwnJ0VGOp9CNpmcycS6gqHOEPFM=;
 b=YK3hxrGbvS1+HJpaFRn3cgGTJHlfiOwjJfatf7gFk3P7Brx32P3OtAV/
 6SNTHCtJo8of+1yslLw5tw2Kki3dtGuJbHwKGufZgTdEqV/CjMTUSRI0c
 00tV/9z4pa6vkM5ulGpN+0QUHiVr/oWSJeFnY/SppT0PwwMvGQEjzI6Wh
 6Rm2GPmohhXZkimTAKT3pazV4yCKZSnIX2GG93+SKlhgx9PglRoTVKzqT
 sa6gO93bGD4RU/t8MX0zWJg83UZ+/vJIKKNbnAvXqiGmWY2meUVU8w+0e
 Q7foCY2pH6iSWohB+yAwwBWDnaDu+22QacFSy8km4WrhsNQUx2xol49mm Q==;
X-CSE-ConnectionGUID: rygTT9JmRkKKmCBzSkK+tQ==
X-CSE-MsgGUID: mMEtnjMbRK2M2RyWEyq6gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="30019409"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="30019409"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:10:36 -0700
X-CSE-ConnectionGUID: LTyVjFb2SLmdqaltkzk3fQ==
X-CSE-MsgGUID: c4IvIgtuTN6OTTRB0kIwDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82191593"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:10:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:10:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/9] drm/i915/scaler: s/intel_crtc/crtc/ etc.
Date: Tue, 29 Oct 2024 23:10:22 +0200
Message-ID: <20241029211030.13255-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
References: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Rename some variables from the intel_foo to just foo, to match
the more modern style used throughout the driver.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 33 +++++++++++------------
 drivers/gpu/drm/i915/display/skl_scaler.h |  2 +-
 2 files changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 7dbc99b02eaa..b6a4effee5de 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -268,20 +268,19 @@ int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
 int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 			    struct intel_plane_state *plane_state)
 {
-	struct intel_plane *intel_plane =
-		to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(intel_plane->base.dev);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 	bool force_detach = !fb || !plane_state->uapi.visible;
 	bool need_scaler = false;
 
 	/* Pre-gen11 and SDR planes always need a scaler for planar formats. */
-	if (!icl_is_hdr_plane(dev_priv, intel_plane->id) &&
+	if (!icl_is_hdr_plane(dev_priv, plane->id) &&
 	    fb && intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
 		need_scaler = true;
 
 	return skl_update_scaler(crtc_state, force_detach,
-				 drm_plane_index(&intel_plane->base),
+				 drm_plane_index(&plane->base),
 				 &plane_state->scaler_id,
 				 drm_rect_width(&plane_state->uapi.src) >> 16,
 				 drm_rect_height(&plane_state->uapi.src) >> 16,
@@ -293,18 +292,18 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 }
 
 static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
-				     int num_scalers_need, struct intel_crtc *intel_crtc,
+				     int num_scalers_need, struct intel_crtc *crtc,
 				     const char *name, int idx,
 				     struct intel_plane_state *plane_state,
 				     int *scaler_id)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	int j;
 	u32 mode;
 
 	if (*scaler_id < 0) {
 		/* find a free scaler */
-		for (j = 0; j < intel_crtc->num_scalers; j++) {
+		for (j = 0; j < crtc->num_scalers; j++) {
 			if (scaler_state->scalers[j].in_use)
 				continue;
 
@@ -344,7 +343,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 		}
 	} else if (DISPLAY_VER(dev_priv) >= 10) {
 		mode = PS_SCALER_MODE_NORMAL;
-	} else if (num_scalers_need == 1 && intel_crtc->num_scalers > 1) {
+	} else if (num_scalers_need == 1 && crtc->num_scalers > 1) {
 		/*
 		 * when only 1 scaler is in use on a pipe with 2 scalers
 		 * scaler 0 operates in high quality (HQ) mode.
@@ -419,7 +418,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 	}
 
 	drm_dbg_kms(&dev_priv->drm, "Attached scaler id %u.%u to %s:%d\n",
-		    intel_crtc->pipe, *scaler_id, name, idx);
+		    crtc->pipe, *scaler_id, name, idx);
 	scaler_state->scalers[*scaler_id].mode = mode;
 
 	return 0;
@@ -428,7 +427,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 /**
  * intel_atomic_setup_scalers() - setup scalers for crtc per staged requests
  * @dev_priv: i915 device
- * @intel_crtc: intel crtc
+ * @crtc: intel crtc
  * @crtc_state: incoming crtc_state to validate and setup scalers
  *
  * This function sets up scalers based on staged scaling requests for
@@ -443,7 +442,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
  *         error code - otherwise
  */
 int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
-			       struct intel_crtc *intel_crtc,
+			       struct intel_crtc *crtc,
 			       struct intel_crtc_state *crtc_state)
 {
 	struct drm_plane *plane = NULL;
@@ -470,10 +469,10 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 	 */
 
 	/* fail if required scalers > available scalers */
-	if (num_scalers_need > intel_crtc->num_scalers) {
+	if (num_scalers_need > crtc->num_scalers) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Too many scaling requests %d > %d\n",
-			    num_scalers_need, intel_crtc->num_scalers);
+			    num_scalers_need, crtc->num_scalers);
 		return -EINVAL;
 	}
 
@@ -490,7 +489,7 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 
 		if (i == SKL_CRTC_INDEX) {
 			name = "CRTC";
-			idx = intel_crtc->base.base.id;
+			idx = crtc->base.base.id;
 
 			/* panel fitter case: assign as a crtc scaler */
 			scaler_id = &scaler_state->scaler_id;
@@ -531,7 +530,7 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 
 			/* plane on different crtc cannot be a scaler user of this crtc */
 			if (drm_WARN_ON(&dev_priv->drm,
-					intel_plane->pipe != intel_crtc->pipe))
+					intel_plane->pipe != crtc->pipe))
 				continue;
 
 			plane_state = intel_atomic_get_new_plane_state(intel_state,
@@ -540,7 +539,7 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 		}
 
 		ret = intel_atomic_setup_scaler(scaler_state, num_scalers_need,
-						intel_crtc, name, idx,
+						crtc, name, idx,
 						plane_state, scaler_id);
 		if (ret < 0)
 			return ret;
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 63f93ca03c89..7a9ccdfd1cbb 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -21,7 +21,7 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 			    struct intel_plane_state *plane_state);
 
 int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
-			       struct intel_crtc *intel_crtc,
+			       struct intel_crtc *crtc,
 			       struct intel_crtc_state *crtc_state);
 
 void skl_pfit_enable(const struct intel_crtc_state *crtc_state);
-- 
2.45.2

