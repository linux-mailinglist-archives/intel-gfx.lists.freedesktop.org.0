Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A19C709B9
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:16:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2034910E679;
	Wed, 19 Nov 2025 18:16:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nvPH3NeR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ABCF10E679;
 Wed, 19 Nov 2025 18:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763576199; x=1795112199;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9fvAfzdnquge2YXtqd+I9H6+unvI9F8DqH0w8F0iip4=;
 b=nvPH3NeRWYwmGQaD21li249HiRtZnLvKRV+POc+c/C2rh3lHsmHeiXNI
 T4kxQgkbT9R/5xkvMrfpQLbWDyh9khR+OOwTEwtLrdT9pfJJSVIPz/c51
 5zcu3GnNnwZFhJJoZf1lklVuCh33TuSSSrcloz7gDEjR3hQj7utC5lohs
 PrbZnNYHcoYsl43q0abiH4K+j8NlI4VNiW1gerPLzvkKbIaPkF+W7aKxj
 4EkGQM0dUTcQq9AYsYtb+u90/LlQoyN7Euu5WuaPlqrQ42/jMa1F+dXkb
 QEsrdhDByIQWMCWG8W9KNVq1Llwd4yKouyDIIuLBtt9/lMlU/pxoTotaN Q==;
X-CSE-ConnectionGUID: WL+SfGvsTQOhZ8YsWwbPMw==
X-CSE-MsgGUID: dQrQXwsaRkuUcuYQIVQ1Dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="76987764"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="76987764"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:16:39 -0800
X-CSE-ConnectionGUID: 5EavzRuiTS+i3W7weNq/mA==
X-CSE-MsgGUID: c8uP2W4MQ5C9AEj7GNyWtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190916644"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.124.221.119])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:16:38 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 6/6] drm/i915/panic: Clean up the variables
Date: Wed, 19 Nov 2025 20:16:06 +0200
Message-ID: <20251119181606.17129-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251119181606.17129-1-ville.syrjala@linux.intel.com>
References: <20251119181606.17129-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Use the standard variable names for things, and get rid of any
annoying alasing variables. And sprinkle the consts in while at
it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 55 ++++++++++------------
 drivers/gpu/drm/i915/display/intel_psr.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_psr.h   |  3 +-
 3 files changed, 29 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 6a3d4ddc52a1..d1df4f1c0bc1 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1274,34 +1274,33 @@ static unsigned int intel_4tile_get_offset(unsigned int width, unsigned int x, u
 	return offset;
 }
 
-static void intel_panic_flush(struct drm_plane *plane)
+static void intel_panic_flush(struct drm_plane *_plane)
 {
-	struct intel_plane_state *plane_state = to_intel_plane_state(plane->state);
+	struct intel_plane *plane = to_intel_plane(_plane);
+	struct intel_display *display = to_intel_display(plane);
+	const struct intel_plane_state *plane_state = to_intel_plane_state(plane->base.state);
 	struct intel_crtc *crtc = to_intel_crtc(plane_state->hw.crtc);
-	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
-	struct intel_plane *iplane = to_intel_plane(plane);
-	struct intel_display *display = to_intel_display(iplane);
-	struct drm_framebuffer *fb = plane_state->hw.fb;
-	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
+	const struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
+	const struct intel_framebuffer *fb = to_intel_framebuffer(plane_state->hw.fb);
 
-	intel_panic_finish(intel_fb->panic);
+	intel_panic_finish(fb->panic);
 
 	if (crtc_state->enable_psr2_sel_fetch) {
 		/* Force a full update for psr2 */
-		intel_psr2_panic_force_full_update(display, crtc_state);
+		intel_psr2_panic_force_full_update(crtc_state);
 	}
 
 	/* Flush the cache and don't disable tiling if it's the fbdev framebuffer.*/
-	if (intel_fb == intel_fbdev_framebuffer(display->fbdev.fbdev)) {
+	if (fb == intel_fbdev_framebuffer(display->fbdev.fbdev)) {
 		struct iosys_map map;
 
 		intel_fbdev_get_map(display->fbdev.fbdev, &map);
-		drm_clflush_virt_range(map.vaddr, fb->pitches[0] * fb->height);
+		drm_clflush_virt_range(map.vaddr, fb->base.pitches[0] * fb->base.height);
 		return;
 	}
 
-	if (fb->modifier && iplane->disable_tiling)
-		iplane->disable_tiling(iplane);
+	if (fb->base.modifier != DRM_FORMAT_MOD_LINEAR && plane->disable_tiling)
+		plane->disable_tiling(plane);
 }
 
 static unsigned int (*intel_get_tiling_func(u64 fb_modifier))(unsigned int width,
@@ -1339,45 +1338,43 @@ static int intel_get_scanout_buffer(struct drm_plane *plane,
 {
 	struct intel_plane_state *plane_state;
 	struct drm_gem_object *obj;
-	struct drm_framebuffer *fb;
-	struct intel_framebuffer *intel_fb;
+	struct intel_framebuffer *fb;
 	struct intel_display *display = to_intel_display(plane->dev);
 
 	if (!plane->state || !plane->state->fb || !plane->state->visible)
 		return -ENODEV;
 
 	plane_state = to_intel_plane_state(plane->state);
-	fb = plane_state->hw.fb;
-	intel_fb = to_intel_framebuffer(fb);
+	fb = to_intel_framebuffer(plane_state->hw.fb);
 
-	obj = intel_fb_bo(fb);
+	obj = intel_fb_bo(&fb->base);
 	if (!obj)
 		return -ENODEV;
 
-	if (intel_fb == intel_fbdev_framebuffer(display->fbdev.fbdev)) {
+	if (fb == intel_fbdev_framebuffer(display->fbdev.fbdev)) {
 		intel_fbdev_get_map(display->fbdev.fbdev, &sb->map[0]);
 	} else {
 		int ret;
 		/* Can't disable tiling if DPT is in use */
-		if (intel_fb_uses_dpt(fb)) {
-			if (fb->format->cpp[0] != 4)
+		if (intel_fb_uses_dpt(&fb->base)) {
+			if (fb->base.format->cpp[0] != 4)
 				return -EOPNOTSUPP;
-			intel_fb->panic_tiling = intel_get_tiling_func(fb->modifier);
-			if (!intel_fb->panic_tiling)
+			fb->panic_tiling = intel_get_tiling_func(fb->base.modifier);
+			if (!fb->panic_tiling)
 				return -EOPNOTSUPP;
 		}
-		sb->private = intel_fb;
-		ret = intel_panic_setup(intel_fb->panic, sb);
+		sb->private = fb;
+		ret = intel_panic_setup(fb->panic, sb);
 		if (ret)
 			return ret;
 	}
-	sb->width = fb->width;
-	sb->height = fb->height;
+	sb->width = fb->base.width;
+	sb->height = fb->base.height;
 	/* Use the generic linear format, because tiling, RC, CCS, CC
 	 * will be disabled in disable_tiling()
 	 */
-	sb->format = drm_format_info(fb->format->format);
-	sb->pitch[0] = fb->pitches[0];
+	sb->format = drm_format_info(fb->base.format->format);
+	sb->pitch[0] = fb->base.pitches[0];
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 65d58d485ed3..61ce23b50bce 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2998,9 +2998,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	return 0;
 }
 
-void intel_psr2_panic_force_full_update(struct intel_display *display,
-					struct intel_crtc_state *crtc_state)
+void intel_psr2_panic_force_full_update(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 val = man_trk_ctl_enable_bit_get(display);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 620b35928832..024ee4c30985 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -59,8 +59,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
 void intel_psr2_program_trans_man_trk_ctl(struct intel_dsb *dsb,
 					  const struct intel_crtc_state *crtc_state);
-void intel_psr2_panic_force_full_update(struct intel_display *display,
-					struct intel_crtc_state *crtc_state);
+void intel_psr2_panic_force_full_update(const struct intel_crtc_state *crtc_state);
 void intel_psr_pause(struct intel_dp *intel_dp);
 void intel_psr_resume(struct intel_dp *intel_dp);
 bool intel_psr_needs_vblank_notification(const struct intel_crtc_state *crtc_state);
-- 
2.49.1

