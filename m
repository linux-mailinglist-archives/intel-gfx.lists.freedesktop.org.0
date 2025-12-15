Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0003CBEA72
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:29:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3965310E5FE;
	Mon, 15 Dec 2025 15:29:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HoS48CKw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B8B10E5FE;
 Mon, 15 Dec 2025 15:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812579; x=1797348579;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hJUbmy+yHzvCtP4yl0+FCZPUPI+9YNKzvJuUn7VGsiY=;
 b=HoS48CKwlMZ1yqVEqcoDTJpnEPQS4GlwsxKOch4TM4sHN64sWeOSnPAr
 gDMDYr3D6gmAtz+o4G3jyR5UnaLoBPVMo7K40jcz+wIwkg3OujoBmaUsT
 bSG4q+hV1jUBKbwCfhjzB+xT05CcMe01QgpB78Wh9Ep3G7kFSzIK1vTsG
 UnXSXLWb4FtHP/Jsj8LxBaB0xpdeRzScUUKuBI1HgvZVDbarrPFFnqOpg
 md4X9t3rCFChzDwYHMhSL5at/fzIeHCNwjOZfnErmNdZL7/oBmrbX0Os0
 4WAQpw+T4AnnEsivdC4ehJphynMMJ/vQV8UtRUQBSL7WJ69Y+6sbu4hFg Q==;
X-CSE-ConnectionGUID: 7TPZ2o1vQSC4FJC3pdJXhQ==
X-CSE-MsgGUID: 6I80+inWQpG/ooaZnVyauw==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="78026591"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="78026591"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:38 -0800
X-CSE-ConnectionGUID: USoyPHPyR76RJFxET45SOw==
X-CSE-MsgGUID: V5nmR78TQGiMXGJ5zv9IfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="198252611"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 14/15] drm/{i915,
 xe}: pass struct drm_device instead of drm_device to ->alloc_obj
Date: Mon, 15 Dec 2025 17:28:28 +0200
Message-ID: <7a40381be6d98dc0916a5447be5dd6cba86cfd0a.1765812266.git.jani.nikula@intel.com>
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

The initial plane parent interface ->alloc_obj hook no longer needs the
crtc for anything. Pass struct drm_device instead.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_initial_plane.c | 7 +++----
 drivers/gpu/drm/i915/i915_initial_plane.c          | 5 ++---
 drivers/gpu/drm/xe/display/xe_initial_plane.c      | 7 ++-----
 include/drm/intel/display_parent_interface.h       | 2 +-
 4 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index e4d6aa438e66..ee545c033da6 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -47,10 +47,9 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
 }
 
 static struct drm_gem_object *
-intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
+intel_alloc_initial_plane_obj(struct intel_display *display,
 			      struct intel_initial_plane_config *plane_config)
 {
-	struct intel_display *display = to_intel_display(crtc);
 	struct intel_framebuffer *fb = plane_config->fb;
 
 	switch (fb->base.modifier) {
@@ -65,7 +64,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 		return NULL;
 	}
 
-	return display->parent->initial_plane->alloc_obj(&crtc->base, plane_config);
+	return display->parent->initial_plane->alloc_obj(display->drm, plane_config);
 }
 
 static void
@@ -88,7 +87,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	if (!plane_config->fb)
 		return;
 
-	if (intel_alloc_initial_plane_obj(crtc, plane_config)) {
+	if (intel_alloc_initial_plane_obj(display, plane_config)) {
 		fb = &plane_config->fb->base;
 		vma = plane_config->vma;
 	} else {
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 40d4f990f23c..de90ca69e0bb 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -228,11 +228,10 @@ initial_plane_vma(struct intel_display *display,
 }
 
 static struct drm_gem_object *
-i915_alloc_initial_plane_obj(struct drm_crtc *_crtc,
+i915_alloc_initial_plane_obj(struct drm_device *drm,
 			     struct intel_initial_plane_config *plane_config)
 {
-	struct intel_crtc *crtc = to_intel_crtc(_crtc);
-	struct intel_display *display = to_intel_display(crtc);
+	struct intel_display *display = to_intel_display(drm);
 	struct drm_mode_fb_cmd2 mode_cmd = {};
 	struct drm_framebuffer *fb = &plane_config->fb->base;
 	struct i915_vma *vma;
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 9999bc07743b..4cfeafcc158d 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -14,8 +14,6 @@
 
 #include "i915_vma.h"
 #include "intel_crtc.h"
-#include "intel_display.h"
-#include "intel_display_core.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
@@ -122,11 +120,10 @@ initial_plane_bo(struct xe_device *xe,
 }
 
 static struct drm_gem_object *
-xe_alloc_initial_plane_obj(struct drm_crtc *_crtc,
+xe_alloc_initial_plane_obj(struct drm_device *drm,
 			   struct intel_initial_plane_config *plane_config)
 {
-	struct intel_crtc *crtc = to_intel_crtc(_crtc);
-	struct xe_device *xe = to_xe_device(crtc->base.dev);
+	struct xe_device *xe = to_xe_device(drm);
 	struct drm_mode_fb_cmd2 mode_cmd = { 0 };
 	struct drm_framebuffer *fb = &plane_config->fb->base;
 	struct xe_bo *bo;
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 040a014b49ce..b3acb6e49ed8 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -33,7 +33,7 @@ struct intel_display_hdcp_interface {
 
 struct intel_display_initial_plane_interface {
 	void (*vblank_wait)(struct drm_crtc *crtc);
-	struct drm_gem_object *(*alloc_obj)(struct drm_crtc *crtc, struct intel_initial_plane_config *plane_config);
+	struct drm_gem_object *(*alloc_obj)(struct drm_device *drm, struct intel_initial_plane_config *plane_config);
 	int (*setup)(struct drm_plane_state *plane_state, struct intel_initial_plane_config *plane_config,
 		     struct drm_framebuffer *fb, struct i915_vma *vma);
 	void (*config_fini)(struct intel_initial_plane_config *plane_configs);
-- 
2.47.3

