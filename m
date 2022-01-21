Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FE2495B8C
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 09:06:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BD8210E957;
	Fri, 21 Jan 2022 08:06:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 915FC10E8F7
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 08:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642752371; x=1674288371;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9Pe8L6fNzdKDOv0PL4VrrrbAHjjlsvZ8Fmvh6dEpvB8=;
 b=d+oUgXPNSnZRTBrjzdS/4MlGWaoB+6l61KM0D5Ek16unpWRhu2LihoUJ
 nbNm8NPHags6uHOvDik/CgnIckqAIeKQRNn6pD+wWXnKRiyvva8MF2jwa
 CoUOGI1XpB/0Hzbg28mKuANlb/AMmwQWoVLYC0cH6OwbYjgNQWUAww+OB
 GXhtF4VjqtooskdeBCO5cAtDPGzZ9PlCKrCkMtJsRqy2cfGlL5Lc/aEHr
 2g+eTiu6Dm17Npp9Yh+oyrczySXbahkRSrVHnq77aQ2j1BboCU3khZOqP
 zbKDoT4UvBE6vDb0FpmI095EkivJpQd/g3/1pMsxbyGKS1yQu3V253Q8M w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="270015045"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="270015045"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 00:06:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="561783862"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga001.jf.intel.com with ESMTP; 21 Jan 2022 00:06:09 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 10:06:12 +0200
Message-Id: <20220121080615.9936-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220121080615.9936-1-stanislav.lisovskiy@intel.com>
References: <20220121080615.9936-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Pass plane to watermark
 calculation functions
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

Sometimes we might need to change the way we calculate
watermarks, based on which particular plane it is calculated
for. Thus it would be convenient to pass plane struct to those
functions.

v2: Pass plane instead of plane_id
v3: Do not pass plane to skl_cursor_allocation(Ville Syrjälä)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
 .../gpu/drm/i915/display/intel_atomic_plane.h |  3 +++
 drivers/gpu/drm/i915/intel_pm.c               | 20 +++++++++++++------
 3 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index c2c512cd8ec0..d1344e9c06de 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -373,7 +373,7 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 					       old_plane_state, new_plane_state);
 }
 
-static struct intel_plane *
+struct intel_plane *
 intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 7907f601598e..c1499bb7370e 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -16,10 +16,13 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_plane;
 struct intel_plane_state;
+enum plane_id;
 
 unsigned int intel_adjusted_rate(const struct drm_rect *src,
 				 const struct drm_rect *dst,
 				 unsigned int rate);
+struct intel_plane *intel_crtc_get_plane(struct intel_crtc *crtc,
+					 enum plane_id plane_id);
 unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
 				    const struct intel_plane_state *plane_state);
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 3981aa856cc2..35d0bd8c6e57 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4252,7 +4252,9 @@ static int skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 				 u64 modifier, unsigned int rotation,
 				 u32 plane_pixel_rate, struct skl_wm_params *wp,
 				 int color_plane);
+
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
+				 const struct intel_plane *plane,
 				 int level,
 				 unsigned int latency,
 				 const struct skl_wm_params *wp,
@@ -4268,6 +4270,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 	struct skl_wm_level wm = {};
 	int ret, min_ddb_alloc = 0;
 	struct skl_wm_params wp;
+	const struct intel_plane *cursor_plane = to_intel_plane(crtc_state->uapi.crtc->cursor);
 
 	ret = skl_compute_wm_params(crtc_state, 256,
 				    drm_format_info(DRM_FORMAT_ARGB8888),
@@ -4279,7 +4282,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 	for (level = 0; level <= max_level; level++) {
 		unsigned int latency = dev_priv->wm.skl_latency[level];
 
-		skl_compute_plane_wm(crtc_state, level, latency, &wp, &wm, &wm);
+		skl_compute_plane_wm(crtc_state, cursor_plane, level, latency, &wp, &wm, &wm);
 		if (wm.min_ddb_alloc == U16_MAX)
 			break;
 
@@ -5508,6 +5511,7 @@ static int skl_wm_max_lines(struct drm_i915_private *dev_priv)
 }
 
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
+				 const struct intel_plane *plane,
 				 int level,
 				 unsigned int latency,
 				 const struct skl_wm_params *wp,
@@ -5635,6 +5639,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 
 static void
 skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
+		      const struct intel_plane *plane,
 		      const struct skl_wm_params *wm_params,
 		      struct skl_wm_level *levels)
 {
@@ -5646,7 +5651,7 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 		struct skl_wm_level *result = &levels[level];
 		unsigned int latency = dev_priv->wm.skl_latency[level];
 
-		skl_compute_plane_wm(crtc_state, level, latency,
+		skl_compute_plane_wm(crtc_state, plane, level, latency,
 				     wm_params, result_prev, result);
 
 		result_prev = result;
@@ -5654,6 +5659,7 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 }
 
 static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
+				const struct intel_plane *plane,
 				const struct skl_wm_params *wm_params,
 				struct skl_plane_wm *plane_wm)
 {
@@ -5662,7 +5668,7 @@ static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
 	struct skl_wm_level *levels = plane_wm->wm;
 	unsigned int latency = dev_priv->wm.skl_latency[0] + dev_priv->sagv_block_time_us;
 
-	skl_compute_plane_wm(crtc_state, 0, latency,
+	skl_compute_plane_wm(crtc_state, plane, 0, latency,
 			     wm_params, &levels[0],
 			     sagv_wm);
 }
@@ -5737,6 +5743,7 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct skl_plane_wm *wm = &crtc_state->wm.skl.raw.planes[plane_id];
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct skl_wm_params wm_params;
 	int ret;
 
@@ -5745,13 +5752,13 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
+	skl_compute_wm_levels(crtc_state, plane, &wm_params, wm->wm);
 
 	skl_compute_transition_wm(dev_priv, &wm->trans_wm,
 				  &wm->wm[0], &wm_params);
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		tgl_compute_sagv_wm(crtc_state, &wm_params, wm);
+		tgl_compute_sagv_wm(crtc_state, plane, &wm_params, wm);
 
 		skl_compute_transition_wm(dev_priv, &wm->sagv.trans_wm,
 					  &wm->sagv.wm0, &wm_params);
@@ -5765,6 +5772,7 @@ static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
 				 enum plane_id plane_id)
 {
 	struct skl_plane_wm *wm = &crtc_state->wm.skl.raw.planes[plane_id];
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct skl_wm_params wm_params;
 	int ret;
 
@@ -5776,7 +5784,7 @@ static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	skl_compute_wm_levels(crtc_state, &wm_params, wm->uv_wm);
+	skl_compute_wm_levels(crtc_state, plane, &wm_params, wm->uv_wm);
 
 	return 0;
 }
-- 
2.24.1.485.gad05a3d8e5

