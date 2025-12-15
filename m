Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AB7CBEA6C
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CCA810E5FB;
	Mon, 15 Dec 2025 15:29:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hYfUQ+1l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AA3710E5FB;
 Mon, 15 Dec 2025 15:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812570; x=1797348570;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=myVHMGK+cSB4ZNhQEq6WjyPVuyCRAwNAFY1K3Tcyqi4=;
 b=hYfUQ+1lluUlt+oPZj36+/pHCl0s64W6x/luLm3kMidY2x2Iz2FPoU5e
 AK8l0daCbKIZpFl1FbvR0rau/m6VyobYSogbMXKkygrMBqfFJ8EkHTUnH
 2OjyojfmlxLLD2Wm2rvLFZXmSf0RZqv84huGClUWNPJ+JpdReJzVFYhEm
 SXJ64njX1ujEgdTeoaLvDv3P4BDaT4jW4MFxmx/1jI6NZq2C8mpiSrK8/
 s7zWrxdrM/jJX5KpWm2Oz/GLuJz1Yrau8PQgj3COEuom4SQdkcdWOQafu
 DvRjcjMw4XXcDRwfcQoTz1u/w9ICo/rEebzeuYPCwiuog6i+5QPMUaf8O g==;
X-CSE-ConnectionGUID: ohKT+VTaT+O4FCEz2Pm+Pw==
X-CSE-MsgGUID: psjoKKV6RGmnk0KSv46DjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="85310399"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="85310399"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:29 -0800
X-CSE-ConnectionGUID: FMIgVCB4QxGByWhgVI0xng==
X-CSE-MsgGUID: +DDG7mSTTemqqGXGK2ts8w==
X-ExtLoop1: 1
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 12/15] drm/{i915,xe}: deduplicate initial plane setup
Date: Mon, 15 Dec 2025 17:28:26 +0200
Message-ID: <1a2abbceedb9e7d03f262c44cd54a24556ef6b61.1765812266.git.jani.nikula@intel.com>
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

Deduplicate more of the identical parts of i915 and xe initial plane
setup. This lets us reduce the core dependency on display internals.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_initial_plane.c    | 26 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_initial_plane.c     | 25 ------------------
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 25 ------------------
 3 files changed, 26 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index e45d2f4e80ad..6e7bd6c3c02d 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -6,7 +6,10 @@
 
 #include "intel_display_core.h"
 #include "intel_display_types.h"
+#include "intel_fb.h"
+#include "intel_frontbuffer.h"
 #include "intel_initial_plane.h"
+#include "intel_plane.h"
 
 void intel_initial_plane_vblank_wait(struct intel_crtc *crtc)
 {
@@ -72,6 +75,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	struct intel_display *display = to_intel_display(crtc);
 	struct intel_initial_plane_config *plane_config = &plane_configs[crtc->pipe];
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+	struct intel_plane_state *plane_state = to_intel_plane_state(plane->base.state);
 	struct drm_framebuffer *fb;
 	struct i915_vma *vma;
 	int ret;
@@ -98,10 +102,32 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 		vma = other_plane_state->ggtt_vma;
 	}
 
+	plane_state->uapi.rotation = plane_config->rotation;
+	intel_fb_fill_view(to_intel_framebuffer(fb),
+			   plane_state->uapi.rotation, &plane_state->view);
+
 	ret = display->parent->initial_plane->setup(&crtc->base, plane_config, fb, vma);
 	if (ret)
 		goto nofb;
 
+	plane_state->uapi.src_x = 0;
+	plane_state->uapi.src_y = 0;
+	plane_state->uapi.src_w = fb->width << 16;
+	plane_state->uapi.src_h = fb->height << 16;
+
+	plane_state->uapi.crtc_x = 0;
+	plane_state->uapi.crtc_y = 0;
+	plane_state->uapi.crtc_w = fb->width;
+	plane_state->uapi.crtc_h = fb->height;
+
+	plane_state->uapi.fb = fb;
+	drm_framebuffer_get(fb);
+
+	plane_state->uapi.crtc = &crtc->base;
+	intel_plane_copy_uapi_to_hw_state(plane_state, plane_state, crtc);
+
+	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
+
 	return;
 
 nofb:
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 5f7dfe7c6d42..5fe96b52d2cd 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -11,9 +11,6 @@
 #include "display/intel_display_core.h"
 #include "display/intel_display_types.h"
 #include "display/intel_fb.h"
-#include "display/intel_frontbuffer.h"
-#include "display/intel_initial_plane.h"
-#include "display/intel_plane.h"
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 
@@ -279,10 +276,6 @@ i915_initial_plane_setup(struct drm_crtc *_crtc,
 	struct intel_plane_state *plane_state =
 		to_intel_plane_state(plane->base.state);
 
-	plane_state->uapi.rotation = plane_config->rotation;
-	intel_fb_fill_view(to_intel_framebuffer(fb),
-			   plane_state->uapi.rotation, &plane_state->view);
-
 	__i915_vma_pin(vma);
 	plane_state->ggtt_vma = i915_vma_get(vma);
 	if (intel_plane_uses_fence(plane_state) &&
@@ -291,27 +284,9 @@ i915_initial_plane_setup(struct drm_crtc *_crtc,
 
 	plane_state->surf = i915_ggtt_offset(plane_state->ggtt_vma);
 
-	plane_state->uapi.src_x = 0;
-	plane_state->uapi.src_y = 0;
-	plane_state->uapi.src_w = fb->width << 16;
-	plane_state->uapi.src_h = fb->height << 16;
-
-	plane_state->uapi.crtc_x = 0;
-	plane_state->uapi.crtc_y = 0;
-	plane_state->uapi.crtc_w = fb->width;
-	plane_state->uapi.crtc_h = fb->height;
-
 	if (fb->modifier != DRM_FORMAT_MOD_LINEAR)
 		dev_priv->preserve_bios_swizzle = true;
 
-	plane_state->uapi.fb = fb;
-	drm_framebuffer_get(fb);
-
-	plane_state->uapi.crtc = &crtc->base;
-	intel_plane_copy_uapi_to_hw_state(plane_state, plane_state, crtc);
-
-	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
-
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index e819175d5946..45513fd79766 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -20,9 +20,6 @@
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
-#include "intel_frontbuffer.h"
-#include "intel_initial_plane.h"
-#include "intel_plane.h"
 #include "xe_bo.h"
 #include "xe_vram_types.h"
 #include "xe_wa.h"
@@ -173,10 +170,6 @@ xe_initial_plane_setup(struct drm_crtc *_crtc,
 		to_intel_plane_state(plane->base.state);
 	struct i915_vma *vma;
 
-	plane_state->uapi.rotation = plane_config->rotation;
-	intel_fb_fill_view(to_intel_framebuffer(fb),
-			   plane_state->uapi.rotation, &plane_state->view);
-
 	vma = intel_fb_pin_to_ggtt(fb, &plane_state->view.gtt,
 				   0, 0, 0, false, &plane_state->flags);
 	if (IS_ERR(vma))
@@ -186,24 +179,6 @@ xe_initial_plane_setup(struct drm_crtc *_crtc,
 
 	plane_state->surf = i915_ggtt_offset(plane_state->ggtt_vma);
 
-	plane_state->uapi.src_x = 0;
-	plane_state->uapi.src_y = 0;
-	plane_state->uapi.src_w = fb->width << 16;
-	plane_state->uapi.src_h = fb->height << 16;
-
-	plane_state->uapi.crtc_x = 0;
-	plane_state->uapi.crtc_y = 0;
-	plane_state->uapi.crtc_w = fb->width;
-	plane_state->uapi.crtc_h = fb->height;
-
-	plane_state->uapi.fb = fb;
-	drm_framebuffer_get(fb);
-
-	plane_state->uapi.crtc = &crtc->base;
-	intel_plane_copy_uapi_to_hw_state(plane_state, plane_state, crtc);
-
-	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
-
 	plane_config->vma = vma;
 
 	return 0;
-- 
2.47.3

