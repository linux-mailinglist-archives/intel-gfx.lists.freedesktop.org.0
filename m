Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD0F3F6CCF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 02:54:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 247BC6E0F1;
	Wed, 25 Aug 2021 00:53:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58F6389718
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 00:53:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="204623096"
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; d="scan'208";a="204623096"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 17:53:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; d="scan'208";a="507826423"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 17:53:42 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 24 Aug 2021 17:58:39 -0700
Message-Id: <20210825005840.170796-8-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210825005840.170796-1-jose.souza@intel.com>
References: <20210825005840.170796-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/8] drm/i915/display/skl+: Drop frontbuffer
 rendering support
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

With that we can kill frontbuffer rendering support in i915 for
modern platforms.

So here converting legacy APIs into atomic commits so it can be
properly handled by driver i915.

Several IGT tests will fail with this changes, because some tests
were stressing those frontbuffer rendering scenarios that no userspace
should be using by now, fixes to IGT should be sent soon.

v2:
- return earlier to not set fb_tracking.busy/flip_bits
- added a warn on to make sure we are not setting the busy/flip_bits

Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c    |  6 ++----
 drivers/gpu/drm/i915/display/intel_fb.c        |  8 +++++++-
 .../gpu/drm/i915/display/intel_frontbuffer.c   | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h                |  2 ++
 4 files changed, 29 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index c7618fef01439..5aa996c3b7980 100644
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
@@ -633,12 +634,9 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	 * PSR2 selective fetch also requires the slow path as
 	 * PSR2 plane and transcoder registers can only be updated during
 	 * vblank.
-	 *
-	 * FIXME bigjoiner fastpath would be good
 	 */
 	if (!crtc_state->hw.active || intel_crtc_needs_modeset(crtc_state) ||
-	    crtc_state->update_pipe || crtc_state->bigjoiner ||
-	    crtc_state->enable_psr2_sel_fetch)
+	    crtc_state->update_pipe || !HAS_FRONTBUFFER_RENDERING(i915))
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
index 91453f7dbd656..20c135a2bba33 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1721,6 +1721,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
 
+#define HAS_FRONTBUFFER_RENDERING(i915)	(DISPLAY_VER(i915) < 9)
+
 /* Only valid when HAS_DISPLAY() is true */
 #define INTEL_DISPLAY_ENABLED(dev_priv) \
 	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
-- 
2.33.0

