Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 024583DC1CC
	for <lists+intel-gfx@lfdr.de>; Sat, 31 Jul 2021 02:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A3AA6E4E8;
	Sat, 31 Jul 2021 00:05:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2CBA6E34B
 for <intel-gfx@lists.freedesktop.org>; Sat, 31 Jul 2021 00:05:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="200358987"
X-IronPort-AV: E=Sophos;i="5.84,283,1620716400"; d="scan'208";a="200358987"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 17:05:50 -0700
X-IronPort-AV: E=Sophos;i="5.84,283,1620716400"; d="scan'208";a="477224110"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 17:05:49 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Fri, 30 Jul 2021 17:10:16 -0700
Message-Id: <20210731001019.150373-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/display/tgl+: Dispatch atomic
 commits instead of front buffer modifications
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

PSR2 selective fetch requires plane and transcoder registers to
be programed during the vblank to properly update the display and
there is no way around it.

We could disable PSR2 at every notification of dirty front buffer from
user space but that would hurt the power savings and it would still
cause some race conditions between PSR2 exit sequence and atomic
commits that causes underruns and glitches.

So from display 12 and newer we will start to do atomic commits
every time user space notify that front buffer is dirty and ignore
all frontbuffer flushes and invalidates on the PSR side.

Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c  | 3 ++-
 drivers/gpu/drm/i915/display/intel_display.c | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_psr.c     | 6 ++++++
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index c7618fef01439..d44022cb46a65 100644
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
+	    DISPLAY_VER(i915) >= 12)
 		goto slow;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5ff0a011b28eb..4a936e1e7fa82 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11720,10 +11720,15 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
 					unsigned num_clips)
 {
 	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 
 	i915_gem_object_flush_if_display(obj);
-	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
 
+	if (DISPLAY_VER(i915) >= 12)
+		return drm_atomic_helper_dirtyfb(fb, file, flags, color, clips,
+						 num_clips);
+
+	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1b0daf649e823..caf92f414a6e7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2039,6 +2039,9 @@ void intel_psr_invalidate(struct drm_i915_private *dev_priv,
 {
 	struct intel_encoder *encoder;
 
+	if (DISPLAY_VER(dev_priv) >= 12)
+		return;
+
 	if (origin == ORIGIN_FLIP)
 		return;
 
@@ -2123,6 +2126,9 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
 			continue;
 		}
 
+		if (DISPLAY_VER(dev_priv) >= 12)
+			continue;
+
 		mutex_lock(&intel_dp->psr.lock);
 		if (!intel_dp->psr.enabled) {
 			mutex_unlock(&intel_dp->psr.lock);
-- 
2.32.0

