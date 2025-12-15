Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36383CBEA57
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:29:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C823B10E5EC;
	Mon, 15 Dec 2025 15:29:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dZq5pkij";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3E5910E5E0;
 Mon, 15 Dec 2025 15:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812548; x=1797348548;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZnH7qot5mVJGTRicMXq1gpogPsb/n/3o1wu0P1Z6M/E=;
 b=dZq5pkijF9EuGdTJdcEyzvt3fXugv5jPguo7W64GD9Rz6gHRsNOruzyd
 fAtZS8RcV8SvgBWVVwznIf24yydh2hWdKKrLwTp2UBpn0nAMHDM1OpSQc
 xn2aVr6+KdiEE/RJ8xI5pASCZiy3j2Rb2hhWismoGCL2MrEUE4KFwuqkH
 SLJLValLNXBXfQnN3j4ykKUwf5kho5x/uvDRrNQ4I6LofGDq6c28QptL7
 /glcamI9QgW9t1yCiqe133+PGM+U0TvS4bm4TWQq3NO+c8zI9srpbyVuU
 BpqKvIw5x6lSjk5ULPalA6c92EvLJDKWv4mddqkRcJs+w2qBhAWNkVz9+ A==;
X-CSE-ConnectionGUID: 64SfeiaHRiu9gyGfn841AQ==
X-CSE-MsgGUID: fTrSbFRtQry1PpVaAgKmvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="85310352"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="85310352"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:07 -0800
X-CSE-ConnectionGUID: NUDEWCUDQcCXuc9CA95hLw==
X-CSE-MsgGUID: 2PKaR2crR6GybEMrBjJk0A==
X-ExtLoop1: 1
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/15] drm/{i915,
 xe}: start deduplicating intel_find_initial_plane_obj() between i915
 and xe
Date: Mon, 15 Dec 2025 17:28:21 +0200
Message-ID: <950d308172443d5bae975aa1ab72111720134219.1765812266.git.jani.nikula@intel.com>
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

Move some easy common parts to display. Initially, the
intel_find_initial_plane_obj() error path seems silly, but it'll be more
helpful this way for later changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_initial_plane.c    | 29 ++++++++++++++--
 drivers/gpu/drm/i915/i915_initial_plane.c     | 34 +++----------------
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 27 +++------------
 include/drm/intel/display_parent_interface.h  |  2 +-
 4 files changed, 38 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index 62f4fb3be9f0..9e67da94ac02 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -19,8 +19,33 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 			     struct intel_initial_plane_config plane_configs[])
 {
 	struct intel_display *display = to_intel_display(crtc);
-
-	display->parent->initial_plane->find_obj(&crtc->base, plane_configs);
+	struct intel_initial_plane_config *plane_config = &plane_configs[crtc->pipe];
+	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+	int ret;
+
+	/*
+	 * TODO:
+	 *   Disable planes if get_initial_plane_config() failed.
+	 *   Make sure things work if the surface base is not page aligned.
+	 */
+	if (!plane_config->fb)
+		return;
+
+	ret = display->parent->initial_plane->find_obj(&crtc->base, plane_configs);
+	if (ret)
+		goto nofb;
+
+	return;
+
+nofb:
+	/*
+	 * We've failed to reconstruct the BIOS FB.  Current display state
+	 * indicates that the primary plane is visible, but has a NULL FB,
+	 * which will lead to problems later if we don't fix it up.  The
+	 * simplest solution is to just disable the primary plane now and
+	 * pretend the BIOS never had it enabled.
+	 */
+	intel_plane_disable_noatomic(crtc, plane);
 }
 
 static void plane_config_fini(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index d8f2a2a11dd0..57afe6e29ce3 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -311,7 +311,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 	return false;
 }
 
-static void
+static int
 i915_find_initial_plane_obj(struct drm_crtc *_crtc,
 			    struct intel_initial_plane_config plane_configs[])
 {
@@ -326,39 +326,13 @@ i915_find_initial_plane_obj(struct drm_crtc *_crtc,
 	struct drm_framebuffer *fb;
 	struct i915_vma *vma;
 
-	/*
-	 * TODO:
-	 *   Disable planes if get_initial_plane_config() failed.
-	 *   Make sure things work if the surface base is not page aligned.
-	 */
-	if (!plane_config->fb)
-		return;
-
 	if (intel_alloc_initial_plane_obj(crtc, plane_config)) {
 		fb = &plane_config->fb->base;
 		vma = plane_config->vma;
-		goto valid_fb;
+	} else if (!intel_reuse_initial_plane_obj(crtc, plane_configs, &fb, &vma)) {
+		return -EINVAL;
 	}
 
-	/*
-	 * Failed to alloc the obj, check to see if we should share
-	 * an fb with another CRTC instead
-	 */
-	if (intel_reuse_initial_plane_obj(crtc, plane_configs, &fb, &vma))
-		goto valid_fb;
-
-	/*
-	 * We've failed to reconstruct the BIOS FB.  Current display state
-	 * indicates that the primary plane is visible, but has a NULL FB,
-	 * which will lead to problems later if we don't fix it up.  The
-	 * simplest solution is to just disable the primary plane now and
-	 * pretend the BIOS never had it enabled.
-	 */
-	intel_plane_disable_noatomic(crtc, plane);
-
-	return;
-
-valid_fb:
 	plane_state->uapi.rotation = plane_config->rotation;
 	intel_fb_fill_view(to_intel_framebuffer(fb),
 			   plane_state->uapi.rotation, &plane_state->view);
@@ -391,6 +365,8 @@ i915_find_initial_plane_obj(struct drm_crtc *_crtc,
 	intel_plane_copy_uapi_to_hw_state(plane_state, plane_state, crtc);
 
 	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
+
+	return 0;
 }
 
 static void i915_plane_config_fini(struct intel_initial_plane_config *plane_config)
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 95000f8b0662..ddf22631240e 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -203,7 +203,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 	return false;
 }
 
-static void
+static int
 xe_find_initial_plane_obj(struct drm_crtc *_crtc,
 			  struct intel_initial_plane_config plane_configs[])
 {
@@ -217,18 +217,10 @@ xe_find_initial_plane_obj(struct drm_crtc *_crtc,
 	struct drm_framebuffer *fb;
 	struct i915_vma *vma;
 
-	/*
-	 * TODO:
-	 *   Disable planes if get_initial_plane_config() failed.
-	 *   Make sure things work if the surface base is not page aligned.
-	 */
-	if (!plane_config->fb)
-		return;
-
 	if (intel_alloc_initial_plane_obj(crtc, plane_config))
 		fb = &plane_config->fb->base;
 	else if (!intel_reuse_initial_plane_obj(crtc, plane_configs, &fb))
-		goto nofb;
+		return -EINVAL;
 
 	plane_state->uapi.rotation = plane_config->rotation;
 	intel_fb_fill_view(to_intel_framebuffer(fb),
@@ -237,7 +229,7 @@ xe_find_initial_plane_obj(struct drm_crtc *_crtc,
 	vma = intel_fb_pin_to_ggtt(fb, &plane_state->view.gtt,
 				   0, 0, 0, false, &plane_state->flags);
 	if (IS_ERR(vma))
-		goto nofb;
+		return PTR_ERR(vma);
 
 	plane_state->ggtt_vma = vma;
 
@@ -262,17 +254,8 @@ xe_find_initial_plane_obj(struct drm_crtc *_crtc,
 	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
 
 	plane_config->vma = vma;
-	return;
-
-nofb:
-	/*
-	 * We've failed to reconstruct the BIOS FB.  Current display state
-	 * indicates that the primary plane is visible, but has a NULL FB,
-	 * which will lead to problems later if we don't fix it up.  The
-	 * simplest solution is to just disable the primary plane now and
-	 * pretend the BIOS never had it enabled.
-	 */
-	intel_plane_disable_noatomic(crtc, plane);
+
+	return 0;
 }
 
 static void xe_plane_config_fini(struct intel_initial_plane_config *plane_config)
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index b6559fe22d1c..1be6320a5fc4 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -29,7 +29,7 @@ struct intel_display_hdcp_interface {
 
 struct intel_display_initial_plane_interface {
 	void (*vblank_wait)(struct drm_crtc *crtc);
-	void (*find_obj)(struct drm_crtc *crtc, struct intel_initial_plane_config *plane_configs);
+	int (*find_obj)(struct drm_crtc *crtc, struct intel_initial_plane_config *plane_configs);
 	void (*config_fini)(struct intel_initial_plane_config *plane_configs);
 };
 
-- 
2.47.3

