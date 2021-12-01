Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED1A464F45
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 14:57:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63D6A72D90;
	Wed,  1 Dec 2021 13:57:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64D9472D90
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 13:57:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="260436354"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="260436354"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 05:57:41 -0800
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="500260879"
Received: from pwedlarx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.43])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 05:57:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 15:57:07 +0200
Message-Id: <c0be2adc4a7f7e72a47e12a57f742aaa42b813e6.1638366969.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1638366969.git.jani.nikula@intel.com>
References: <cover.1638366969.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/10] drm/i915/crtc: un-inline some crtc
 functions and move to intel_crtc.[ch]
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move a number of crtc/pipe related functions to intel_crtc.[ch], and
un-inline to avoid looking into struct drm_i915_private guts in header
files.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     | 42 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_crtc.h     | 10 +++++
 .../drm/i915/display/intel_display_types.h    | 44 -------------------
 3 files changed, 52 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 243d5cc29734..43554b591904 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -36,6 +36,48 @@ static void assert_vblank_disabled(struct drm_crtc *crtc)
 		drm_crtc_vblank_put(crtc);
 }
 
+bool intel_pipe_valid(struct drm_i915_private *i915, enum pipe pipe)
+{
+	return (pipe >= 0 &&
+		pipe < ARRAY_SIZE(i915->pipe_to_crtc_mapping) &&
+		INTEL_INFO(i915)->pipe_mask & BIT(pipe) &&
+		i915->pipe_to_crtc_mapping[pipe]);
+}
+
+struct intel_crtc *intel_get_first_crtc(struct drm_i915_private *i915)
+{
+	return to_intel_crtc(drm_crtc_from_index(&i915->drm, 0));
+}
+
+struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
+				       enum pipe pipe)
+{
+	/* pipe_to_crtc_mapping may have hole on any of 3 display pipe system */
+	drm_WARN_ON(&i915->drm,
+		    !(INTEL_INFO(i915)->pipe_mask & BIT(pipe)));
+	return i915->pipe_to_crtc_mapping[pipe];
+}
+
+struct intel_crtc *intel_crtc_for_plane(struct drm_i915_private *i915,
+					enum i9xx_plane_id plane)
+{
+	return i915->plane_to_crtc_mapping[plane];
+}
+
+void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc)
+{
+	drm_crtc_wait_one_vblank(&crtc->base);
+}
+
+void intel_wait_for_vblank_if_active(struct drm_i915_private *i915,
+				     enum pipe pipe)
+{
+	struct intel_crtc *crtc = intel_crtc_for_pipe(i915, pipe);
+
+	if (crtc->active)
+		intel_crtc_wait_for_next_vblank(crtc);
+}
+
 u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
 {
 	struct drm_device *dev = crtc->base.dev;
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index a0039fdb1eb0..23110e91ecd6 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+enum i9xx_plane_id;
 enum pipe;
 struct drm_display_mode;
 struct drm_i915_private;
@@ -28,5 +29,14 @@ void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
 void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state);
 void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state);
 void intel_wait_for_vblank_workers(struct intel_atomic_state *state);
+bool intel_pipe_valid(struct drm_i915_private *i915, enum pipe pipe);
+struct intel_crtc *intel_get_first_crtc(struct drm_i915_private *i915);
+struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
+				       enum pipe pipe);
+struct intel_crtc *intel_crtc_for_plane(struct drm_i915_private *i915,
+					enum i9xx_plane_id plane);
+void intel_wait_for_vblank_if_active(struct drm_i915_private *i915,
+				     enum pipe pipe);
+void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a48dfd1474dd..eeaaa101a7b6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1773,35 +1773,6 @@ vlv_pipe_to_channel(enum pipe pipe)
 	}
 }
 
-static inline bool intel_pipe_valid(struct drm_i915_private *i915, enum pipe pipe)
-{
-	return (pipe >= 0 &&
-		pipe < ARRAY_SIZE(i915->pipe_to_crtc_mapping) &&
-		INTEL_INFO(i915)->pipe_mask & BIT(pipe) &&
-		i915->pipe_to_crtc_mapping[pipe]);
-}
-
-static inline struct intel_crtc *
-intel_get_first_crtc(struct drm_i915_private *dev_priv)
-{
-	return to_intel_crtc(drm_crtc_from_index(&dev_priv->drm, 0));
-}
-
-static inline struct intel_crtc *
-intel_crtc_for_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
-{
-	/* pipe_to_crtc_mapping may have hole on any of 3 display pipe system */
-	drm_WARN_ON(&dev_priv->drm,
-		    !(INTEL_INFO(dev_priv)->pipe_mask & BIT(pipe)));
-	return dev_priv->pipe_to_crtc_mapping[pipe];
-}
-
-static inline struct intel_crtc *
-intel_crtc_for_plane(struct drm_i915_private *dev_priv, enum i9xx_plane_id plane)
-{
-	return dev_priv->plane_to_crtc_mapping[plane];
-}
-
 struct intel_load_detect_pipe {
 	struct drm_atomic_state *restore_state;
 };
@@ -2019,21 +1990,6 @@ intel_crtc_needs_modeset(const struct intel_crtc_state *crtc_state)
 	return drm_atomic_crtc_needs_modeset(&crtc_state->uapi);
 }
 
-static inline void
-intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc)
-{
-	drm_crtc_wait_one_vblank(&crtc->base);
-}
-
-static inline void
-intel_wait_for_vblank_if_active(struct drm_i915_private *dev_priv, enum pipe pipe)
-{
-	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
-
-	if (crtc->active)
-		intel_crtc_wait_for_next_vblank(crtc);
-}
-
 static inline bool intel_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier)
 {
 	return DISPLAY_VER(i915) >= 13 && modifier != DRM_FORMAT_MOD_LINEAR;
-- 
2.30.2

