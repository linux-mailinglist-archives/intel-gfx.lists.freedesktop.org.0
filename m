Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEFACBEA6F
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:29:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631BD10E600;
	Mon, 15 Dec 2025 15:29:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JNpdsW9b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D5910E5FF;
 Mon, 15 Dec 2025 15:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812574; x=1797348574;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3DXo7OMFf5GQxZEBSX5ze5wybA688FsCoTogy5/Wzvg=;
 b=JNpdsW9b9dle+wRgPm3sB+55KYvGUBowrnvlNAEkV1+IXdYmCh5SNPlX
 d+7c8QK9sqyG25DXcWGyJ0ChCKgFD06q51+A5C/a3rfrS7uD6rL7t2Jy0
 UiOqsReckXqLFu2MdFh0qb7Pl+RurzVPilHdT8Q1+t2oosbXskk30NOHS
 YavtOzeHNLXaRNLRJpG78m3/FOnN+gGvVIjV3BlJ0jMj0knrBdQ3lZ/xZ
 Ktz03odXwSOeUsG0XR7RiUfg38zvm+BvdMReTLJTJKc1XCEeyau4d2pdM
 vcTV587C1+KmVwtSk7yM1eTU4MsVjI1rfOSG8un7FrSx3Qv2u/kaxhmFX Q==;
X-CSE-ConnectionGUID: g1blf+E7TaGbYTI0r2Nxfg==
X-CSE-MsgGUID: ktS8+wyuR5a9umeMITfPHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="85310401"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="85310401"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:33 -0800
X-CSE-ConnectionGUID: tGFZG96jSkeAmyxtR04ojg==
X-CSE-MsgGUID: eEezriKuQP6Hd3ucl2jCKA==
X-ExtLoop1: 1
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 13/15] drm/{i915,
 xe}: pass struct drm_plane_state instead of struct drm_crtc to ->setup
Date: Mon, 15 Dec 2025 17:28:27 +0200
Message-ID: <c3db101ef5fd13c56cb3a9329adecf521a807abc.1765812266.git.jani.nikula@intel.com>
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

The initial plane parent interface ->setup hook no longer needs the crtc
for anything. Pass the struct drm_plane_state instead.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_initial_plane.c |  2 +-
 drivers/gpu/drm/i915/i915_initial_plane.c          | 10 +++-------
 drivers/gpu/drm/xe/display/xe_initial_plane.c      |  8 ++------
 include/drm/intel/display_parent_interface.h       |  3 ++-
 4 files changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index 6e7bd6c3c02d..e4d6aa438e66 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -106,7 +106,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	intel_fb_fill_view(to_intel_framebuffer(fb),
 			   plane_state->uapi.rotation, &plane_state->view);
 
-	ret = display->parent->initial_plane->setup(&crtc->base, plane_config, fb, vma);
+	ret = display->parent->initial_plane->setup(plane->base.state, plane_config, fb, vma);
 	if (ret)
 		goto nofb;
 
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 5fe96b52d2cd..40d4f990f23c 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -264,17 +264,13 @@ i915_alloc_initial_plane_obj(struct drm_crtc *_crtc,
 }
 
 static int
-i915_initial_plane_setup(struct drm_crtc *_crtc,
+i915_initial_plane_setup(struct drm_plane_state *_plane_state,
 			 struct intel_initial_plane_config *plane_config,
 			 struct drm_framebuffer *fb,
 			 struct i915_vma *vma)
 {
-	struct intel_crtc *crtc = to_intel_crtc(_crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_plane *plane =
-		to_intel_plane(crtc->base.primary);
-	struct intel_plane_state *plane_state =
-		to_intel_plane_state(plane->base.state);
+	struct intel_plane_state *plane_state = to_intel_plane_state(_plane_state);
+	struct drm_i915_private *dev_priv = to_i915(_plane_state->plane->dev);
 
 	__i915_vma_pin(vma);
 	plane_state->ggtt_vma = i915_vma_get(vma);
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 45513fd79766..9999bc07743b 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -158,16 +158,12 @@ xe_alloc_initial_plane_obj(struct drm_crtc *_crtc,
 }
 
 static int
-xe_initial_plane_setup(struct drm_crtc *_crtc,
+xe_initial_plane_setup(struct drm_plane_state *_plane_state,
 		       struct intel_initial_plane_config *plane_config,
 		       struct drm_framebuffer *fb,
 		       struct i915_vma *_unused)
 {
-	struct intel_crtc *crtc = to_intel_crtc(_crtc);
-	struct intel_plane *plane =
-		to_intel_plane(crtc->base.primary);
-	struct intel_plane_state *plane_state =
-		to_intel_plane_state(plane->base.state);
+	struct intel_plane_state *plane_state = to_intel_plane_state(_plane_state);
 	struct i915_vma *vma;
 
 	vma = intel_fb_pin_to_ggtt(fb, &plane_state->view.gtt,
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 164f3d473e3a..040a014b49ce 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -11,6 +11,7 @@ struct drm_crtc;
 struct drm_device;
 struct drm_framebuffer;
 struct drm_gem_object;
+struct drm_plane_state;
 struct drm_scanout_buffer;
 struct i915_vma;
 struct intel_hdcp_gsc_context;
@@ -33,7 +34,7 @@ struct intel_display_hdcp_interface {
 struct intel_display_initial_plane_interface {
 	void (*vblank_wait)(struct drm_crtc *crtc);
 	struct drm_gem_object *(*alloc_obj)(struct drm_crtc *crtc, struct intel_initial_plane_config *plane_config);
-	int (*setup)(struct drm_crtc *crtc, struct intel_initial_plane_config *plane_config,
+	int (*setup)(struct drm_plane_state *plane_state, struct intel_initial_plane_config *plane_config,
 		     struct drm_framebuffer *fb, struct i915_vma *vma);
 	void (*config_fini)(struct intel_initial_plane_config *plane_configs);
 };
-- 
2.47.3

