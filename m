Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E43A5CBEA63
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:29:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78FC510E5F7;
	Mon, 15 Dec 2025 15:29:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FRc8ZU0I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63A3710E5F9;
 Mon, 15 Dec 2025 15:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812560; x=1797348560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+HKWSrABMHYzDcXCWkNaaIlXTfFZ3q69CQ1Ot/Ki0es=;
 b=FRc8ZU0IpuCgBtAYFrbyUahrBdCM5FOc/TmMSZdyLs4EEgB0I6UPvruw
 3ipInlDF66LH6OOBisL4fZprfl5ti/rjHuDehzz/ajO0iSxI4ghpMzzP3
 0UeqK9wHuTptfLZGI6/h5LQcaBVwT/WIzbxXklSlUnLjzgavrJvOdPQkz
 VSAuX/0K398Rx7yE5gXmEYhI4cZZq8UqROP/ZpolELeSVY1P4uUg1qXz1
 o0xQo1NMxxl7vu2CrZzu4gzFFq/tbzWK+Nx1h+/GefcFJ3g/ITfD+OSRw
 2bawxnJa3mJT5+lB73FcyIIPP9D3YuUHF+5UpPYpLcWrSUKYmoNFQ7UIH w==;
X-CSE-ConnectionGUID: l0gaHAc3Qka+upodhz8nHA==
X-CSE-MsgGUID: 8pb4ZjN6RCmHKBlqvfTk5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="85310390"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="85310390"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:20 -0800
X-CSE-ConnectionGUID: 1Wg/k25dSbSj5xt7t2iL3Q==
X-CSE-MsgGUID: t0fugcMrRdykHulk1AgikQ==
X-ExtLoop1: 1
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/15] drm/i915: further deduplicate
 intel_find_initial_plane_obj()
Date: Mon, 15 Dec 2025 17:28:24 +0200
Message-ID: <c71011dbb11afaa5c4da30aa2627833374300d63.1765812266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765812266.git.jani.nikula@intel.com>
References: <cover.1765812266.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Move intel_reuse_initial_plane_obj() into common display code, and split
the ->find_obj hook into ->alloc_obj and ->setup hooks.

Return the struct drm_gem_object from ->alloc_obj in preparation for
moving more things to display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_initial_plane.c    | 55 ++++++++++++++-
 drivers/gpu/drm/i915/i915_initial_plane.c     | 70 ++++---------------
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 67 ++++--------------
 include/drm/intel/display_parent_interface.h  |  7 +-
 4 files changed, 88 insertions(+), 111 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index 9e67da94ac02..cbfcc52f180f 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -14,6 +14,43 @@ void intel_initial_plane_vblank_wait(struct intel_crtc *crtc)
 	display->parent->initial_plane->vblank_wait(&crtc->base);
 }
 
+static const struct intel_plane_state *
+intel_reuse_initial_plane_obj(struct intel_crtc *this,
+			      const struct intel_initial_plane_config plane_configs[])
+{
+	struct intel_display *display = to_intel_display(this);
+	struct intel_crtc *crtc;
+
+	for_each_intel_crtc(display->drm, crtc) {
+		struct intel_plane *plane =
+			to_intel_plane(crtc->base.primary);
+		const struct intel_plane_state *plane_state =
+			to_intel_plane_state(plane->base.state);
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+
+		if (!crtc_state->hw.active)
+			continue;
+
+		if (!plane_state->ggtt_vma)
+			continue;
+
+		if (plane_configs[this->pipe].base == plane_configs[crtc->pipe].base)
+			return plane_state;
+	}
+
+	return NULL;
+}
+
+static struct drm_gem_object *
+intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
+			      struct intel_initial_plane_config *plane_config)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	return display->parent->initial_plane->alloc_obj(&crtc->base, plane_config);
+}
+
 static void
 intel_find_initial_plane_obj(struct intel_crtc *crtc,
 			     struct intel_initial_plane_config plane_configs[])
@@ -21,6 +58,8 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	struct intel_display *display = to_intel_display(crtc);
 	struct intel_initial_plane_config *plane_config = &plane_configs[crtc->pipe];
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+	struct drm_framebuffer *fb;
+	struct i915_vma *vma;
 	int ret;
 
 	/*
@@ -31,7 +70,21 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	if (!plane_config->fb)
 		return;
 
-	ret = display->parent->initial_plane->find_obj(&crtc->base, plane_configs);
+	if (intel_alloc_initial_plane_obj(crtc, plane_config)) {
+		fb = &plane_config->fb->base;
+		vma = plane_config->vma;
+	} else {
+		const struct intel_plane_state *other_plane_state;
+
+		other_plane_state = intel_reuse_initial_plane_obj(crtc, plane_configs);
+		if (!other_plane_state)
+			goto nofb;
+
+		fb = other_plane_state->hw.fb;
+		vma = other_plane_state->ggtt_vma;
+	}
+
+	ret = display->parent->initial_plane->setup(&crtc->base, plane_config, fb, vma);
 	if (ret)
 		goto nofb;
 
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 40b9f981c9ac..0117f9e115d1 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -25,34 +25,6 @@ static void i915_initial_plane_vblank_wait(struct drm_crtc *crtc)
 	intel_crtc_wait_for_next_vblank(to_intel_crtc(crtc));
 }
 
-static const struct intel_plane_state *
-intel_reuse_initial_plane_obj(struct intel_crtc *this,
-			      const struct intel_initial_plane_config plane_configs[])
-{
-	struct intel_display *display = to_intel_display(this);
-	struct intel_crtc *crtc;
-
-	for_each_intel_crtc(display->drm, crtc) {
-		struct intel_plane *plane =
-			to_intel_plane(crtc->base.primary);
-		const struct intel_plane_state *plane_state =
-			to_intel_plane_state(plane->base.state);
-		const struct intel_crtc_state *crtc_state =
-			to_intel_crtc_state(crtc->base.state);
-
-		if (!crtc_state->hw.active)
-			continue;
-
-		if (!plane_state->ggtt_vma)
-			continue;
-
-		if (plane_configs[this->pipe].base == plane_configs[crtc->pipe].base)
-			return plane_state;
-	}
-
-	return NULL;
-}
-
 static enum intel_memory_type
 initial_plane_memory_type(struct intel_display *display)
 {
@@ -258,10 +230,11 @@ initial_plane_vma(struct intel_display *display,
 	return NULL;
 }
 
-static bool
-intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
-			      struct intel_initial_plane_config *plane_config)
+static struct drm_gem_object *
+i915_alloc_initial_plane_obj(struct drm_crtc *_crtc,
+			     struct intel_initial_plane_config *plane_config)
 {
+	struct intel_crtc *crtc = to_intel_crtc(_crtc);
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_mode_fb_cmd2 mode_cmd = {};
 	struct drm_framebuffer *fb = &plane_config->fb->base;
@@ -277,12 +250,12 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 		drm_dbg(display->drm,
 			"Unsupported modifier for initial FB: 0x%llx\n",
 			fb->modifier);
-		return false;
+		return NULL;
 	}
 
 	vma = initial_plane_vma(display, plane_config);
 	if (!vma)
-		return false;
+		return NULL;
 
 	mode_cmd.pixel_format = fb->format->format;
 	mode_cmd.width = fb->width;
@@ -299,41 +272,25 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 	}
 
 	plane_config->vma = vma;
-	return true;
+	return intel_bo_to_drm_bo(vma->obj);
 
 err_vma:
 	i915_vma_put(vma);
-	return false;
+	return NULL;
 }
 
 static int
-i915_find_initial_plane_obj(struct drm_crtc *_crtc,
-			    struct intel_initial_plane_config plane_configs[])
+i915_initial_plane_setup(struct drm_crtc *_crtc,
+			 struct intel_initial_plane_config *plane_config,
+			 struct drm_framebuffer *fb,
+			 struct i915_vma *vma)
 {
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_initial_plane_config *plane_config =
-		&plane_configs[crtc->pipe];
 	struct intel_plane *plane =
 		to_intel_plane(crtc->base.primary);
 	struct intel_plane_state *plane_state =
 		to_intel_plane_state(plane->base.state);
-	struct drm_framebuffer *fb;
-	struct i915_vma *vma;
-
-	if (intel_alloc_initial_plane_obj(crtc, plane_config)) {
-		fb = &plane_config->fb->base;
-		vma = plane_config->vma;
-	} else {
-		const struct intel_plane_state *other_plane_state;
-
-		other_plane_state = intel_reuse_initial_plane_obj(crtc, plane_configs);
-		if (!other_plane_state)
-			return -EINVAL;
-
-		fb = other_plane_state->hw.fb;
-		vma = other_plane_state->ggtt_vma;
-	}
 
 	plane_state->uapi.rotation = plane_config->rotation;
 	intel_fb_fill_view(to_intel_framebuffer(fb),
@@ -379,6 +336,7 @@ static void i915_plane_config_fini(struct intel_initial_plane_config *plane_conf
 
 const struct intel_display_initial_plane_interface i915_display_initial_plane_interface = {
 	.vblank_wait = i915_initial_plane_vblank_wait,
-	.find_obj = i915_find_initial_plane_obj,
+	.alloc_obj = i915_alloc_initial_plane_obj,
+	.setup = i915_initial_plane_setup,
 	.config_fini = i915_plane_config_fini,
 };
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 42d2c2f8138e..2ce0f78cd7b1 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -45,34 +45,6 @@ static void xe_initial_plane_vblank_wait(struct drm_crtc *_crtc)
 		drm_warn(&xe->drm, "waiting for early vblank failed with %i\n", ret);
 }
 
-static const struct intel_plane_state *
-intel_reuse_initial_plane_obj(struct intel_crtc *this,
-			      const struct intel_initial_plane_config plane_configs[])
-{
-	struct xe_device *xe = to_xe_device(this->base.dev);
-	struct intel_crtc *crtc;
-
-	for_each_intel_crtc(&xe->drm, crtc) {
-		struct intel_plane *plane =
-			to_intel_plane(crtc->base.primary);
-		const struct intel_plane_state *plane_state =
-			to_intel_plane_state(plane->base.state);
-		const struct intel_crtc_state *crtc_state =
-			to_intel_crtc_state(crtc->base.state);
-
-		if (!crtc_state->hw.active)
-			continue;
-
-		if (!plane_state->ggtt_vma)
-			continue;
-
-		if (plane_configs[this->pipe].base == plane_configs[crtc->pipe].base)
-			return plane_state;
-	}
-
-	return NULL;
-}
-
 static struct xe_bo *
 initial_plane_bo(struct xe_device *xe,
 		 struct intel_initial_plane_config *plane_config)
@@ -152,10 +124,11 @@ initial_plane_bo(struct xe_device *xe,
 	return bo;
 }
 
-static bool
-intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
-			      struct intel_initial_plane_config *plane_config)
+static struct drm_gem_object *
+xe_alloc_initial_plane_obj(struct drm_crtc *_crtc,
+			   struct intel_initial_plane_config *plane_config)
 {
+	struct intel_crtc *crtc = to_intel_crtc(_crtc);
 	struct xe_device *xe = to_xe_device(crtc->base.dev);
 	struct drm_mode_fb_cmd2 mode_cmd = { 0 };
 	struct drm_framebuffer *fb = &plane_config->fb->base;
@@ -171,7 +144,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 		drm_dbg_kms(&xe->drm,
 			    "Unsupported modifier for initial FB: 0x%llx\n",
 			    fb->modifier);
-		return false;
+		return NULL;
 	}
 
 	mode_cmd.pixel_format = fb->format->format;
@@ -183,7 +156,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 
 	bo = initial_plane_bo(xe, plane_config);
 	if (!bo)
-		return false;
+		return NULL;
 
 	if (intel_framebuffer_init(to_intel_framebuffer(fb),
 				   &bo->ttm.base, fb->format, &mode_cmd)) {
@@ -193,39 +166,26 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 	/* Reference handed over to fb */
 	xe_bo_put(bo);
 
-	return true;
+	return &bo->ttm.base;
 
 err_bo:
 	xe_bo_unpin_map_no_vm(bo);
-	return false;
+	return NULL;
 }
 
 static int
-xe_find_initial_plane_obj(struct drm_crtc *_crtc,
-			  struct intel_initial_plane_config plane_configs[])
+xe_initial_plane_setup(struct drm_crtc *_crtc,
+		       struct intel_initial_plane_config *plane_config,
+		       struct drm_framebuffer *fb,
+		       struct i915_vma *_unused)
 {
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
-	struct intel_initial_plane_config *plane_config =
-		&plane_configs[crtc->pipe];
 	struct intel_plane *plane =
 		to_intel_plane(crtc->base.primary);
 	struct intel_plane_state *plane_state =
 		to_intel_plane_state(plane->base.state);
-	struct drm_framebuffer *fb;
 	struct i915_vma *vma;
 
-	if (intel_alloc_initial_plane_obj(crtc, plane_config)) {
-		fb = &plane_config->fb->base;
-	} else {
-		const struct intel_plane_state *other_plane_state;
-
-		other_plane_state = intel_reuse_initial_plane_obj(crtc, plane_configs);
-		if (!other_plane_state)
-			return -EINVAL;
-
-		fb = other_plane_state->hw.fb;
-	}
-
 	plane_state->uapi.rotation = plane_config->rotation;
 	intel_fb_fill_view(to_intel_framebuffer(fb),
 			   plane_state->uapi.rotation, &plane_state->view);
@@ -268,6 +228,7 @@ static void xe_plane_config_fini(struct intel_initial_plane_config *plane_config
 
 const struct intel_display_initial_plane_interface xe_display_initial_plane_interface = {
 	.vblank_wait = xe_initial_plane_vblank_wait,
-	.find_obj = xe_find_initial_plane_obj,
+	.alloc_obj = xe_alloc_initial_plane_obj,
+	.setup = xe_initial_plane_setup,
 	.config_fini = xe_plane_config_fini,
 };
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 1be6320a5fc4..164f3d473e3a 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -9,7 +9,10 @@
 struct dma_fence;
 struct drm_crtc;
 struct drm_device;
+struct drm_framebuffer;
+struct drm_gem_object;
 struct drm_scanout_buffer;
+struct i915_vma;
 struct intel_hdcp_gsc_context;
 struct intel_initial_plane_config;
 struct intel_panic;
@@ -29,7 +32,9 @@ struct intel_display_hdcp_interface {
 
 struct intel_display_initial_plane_interface {
 	void (*vblank_wait)(struct drm_crtc *crtc);
-	int (*find_obj)(struct drm_crtc *crtc, struct intel_initial_plane_config *plane_configs);
+	struct drm_gem_object *(*alloc_obj)(struct drm_crtc *crtc, struct intel_initial_plane_config *plane_config);
+	int (*setup)(struct drm_crtc *crtc, struct intel_initial_plane_config *plane_config,
+		     struct drm_framebuffer *fb, struct i915_vma *vma);
 	void (*config_fini)(struct intel_initial_plane_config *plane_configs);
 };
 
-- 
2.47.3

