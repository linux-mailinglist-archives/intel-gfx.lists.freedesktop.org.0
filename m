Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 430A74129FB
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 02:35:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D2F6E8BF;
	Tue, 21 Sep 2021 00:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D186E8BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 00:35:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="286937028"
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="286937028"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:35:42 -0700
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="473842610"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:35:42 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Mon, 20 Sep 2021 17:41:11 -0700
Message-Id: <20210921004113.261827-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915/display: Disable frontbuffer
 rendering when PSR2 selective fetch is enabled
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

By now all the userspace applications should have migrated to atomic
or at least be calling DRM_IOCTL_MODE_DIRTYFB.
But we still can't kill frontbuffer rendering support for good as
we have some performance issues to be solved in desktop environments
that do not use compositors.

But PSR2 selective fetch is not compatible with frontbuffer rendering
so here dropping frontbuffer rendering support when
enable_psr2_sel_fetch is set.
This way we leave for OEM and users the decision of enable this
feature or not.

Here converting legacy APIs into atomic commits so it can be properly
handled by driver i915.

v2:
- return earlier to not set fb_tracking.busy/flip_bits
- added a warn on to make sure we are not setting the busy/flip_bits

v3:
- only dropping frontbuffer rendering support when
enable_psr2_sel_fetch is set

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com> # v2
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_fb.c        |  8 +++++++-
 .../gpu/drm/i915/display/intel_frontbuffer.c   | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h                |  2 ++
 4 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index c7618fef01439..7686446c29c13 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -617,6 +617,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 			   u32 src_w, u32 src_h,
 			   struct drm_modeset_acquire_ctx *ctx)
 {
+	struct drm_i915_private *i915 = to_i915(_crtc->dev);
 	struct intel_plane *plane = to_intel_plane(_plane);
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
 	struct intel_plane_state *old_plane_state =
@@ -638,7 +639,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	 */
 	if (!crtc_state->hw.active || intel_crtc_needs_modeset(crtc_state) ||
 	    crtc_state->update_pipe || crtc_state->bigjoiner ||
-	    crtc_state->enable_psr2_sel_fetch)
+	    !HAS_FRONTBUFFER_RENDERING(i915))
 		goto slow;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index e4b8602ec0cd2..3eb60785c9f29 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -3,6 +3,7 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include <drm/drm_damage_helper.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_modeset_helper.h>
 
@@ -1235,10 +1236,15 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
 					unsigned int num_clips)
 {
 	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 
 	i915_gem_object_flush_if_display(obj);
-	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
 
+	if (!HAS_FRONTBUFFER_RENDERING(i915))
+		return drm_atomic_helper_dirtyfb(fb, file, flags, color, clips,
+						 num_clips);
+
+	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 0492446cd04ad..3860f87dac31c 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -112,6 +112,9 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
 				    unsigned frontbuffer_bits)
 {
+	if (!HAS_FRONTBUFFER_RENDERING(i915))
+		return;
+
 	spin_lock(&i915->fb_tracking.lock);
 	i915->fb_tracking.flip_bits |= frontbuffer_bits;
 	/* Remove stale busy bits due to the old buffer. */
@@ -132,6 +135,12 @@ void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
 void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
 				     unsigned frontbuffer_bits)
 {
+	if (!HAS_FRONTBUFFER_RENDERING(i915)) {
+		drm_WARN_ON_ONCE(&i915->drm, i915->fb_tracking.flip_bits |
+					     i915->fb_tracking.busy_bits);
+		return;
+	}
+
 	spin_lock(&i915->fb_tracking.lock);
 	/* Mask any cancelled flips. */
 	frontbuffer_bits &= i915->fb_tracking.flip_bits;
@@ -156,6 +165,9 @@ void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
 void intel_frontbuffer_flip(struct drm_i915_private *i915,
 			    unsigned frontbuffer_bits)
 {
+	if (!HAS_FRONTBUFFER_RENDERING(i915))
+		return;
+
 	spin_lock(&i915->fb_tracking.lock);
 	/* Remove stale busy bits due to the old buffer. */
 	i915->fb_tracking.busy_bits &= ~frontbuffer_bits;
@@ -170,6 +182,9 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 {
 	struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
 
+	if (!HAS_FRONTBUFFER_RENDERING(i915))
+		return;
+
 	if (origin == ORIGIN_CS) {
 		spin_lock(&i915->fb_tracking.lock);
 		i915->fb_tracking.busy_bits |= frontbuffer_bits;
@@ -191,6 +206,9 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 {
 	struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
 
+	if (!HAS_FRONTBUFFER_RENDERING(i915))
+		return;
+
 	if (origin == ORIGIN_CS) {
 		spin_lock(&i915->fb_tracking.lock);
 		/* Filter out new bits since rendering started. */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index cc355aa05dbf4..aca6e4e02e029 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1704,6 +1704,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
 
+#define HAS_FRONTBUFFER_RENDERING(i915)	(!(i915)->params.enable_psr2_sel_fetch)
+
 /* Only valid when HAS_DISPLAY() is true */
 #define INTEL_DISPLAY_ENABLED(dev_priv) \
 	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
-- 
2.33.0

