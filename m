Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F24CBEA4F
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:29:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 164BD10E51E;
	Mon, 15 Dec 2025 15:29:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gf0UOPbE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11E2210E5D3;
 Mon, 15 Dec 2025 15:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812543; x=1797348543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jnv0bJAqB1+Epg1AuBBU/dG3raM90kpgkE1ODZ+bhiY=;
 b=gf0UOPbEnT4pu7Ee5dC5pMZ/6n3Hfek5SaW3SVXo33LmQfGwividlSNn
 ftkLCJ/+YqozP5r/LnD+p8IJsAU6Zfj/SUBoH9DpXWd1u+ejPm7mDZJbi
 +zy9MTbFQFln5MUsDi1tYUBgFIX1hsX7hMr0DkFHb9kwlvDZAPUwoAdC7
 SifGrh1Xhjy8uB0KoYkfgX+zxrMI62St9KFsGz/IkwB4wwwFYsGIFFv26
 FCAYnzIQ9C2Z2XVcvmj1usRpbN5GBs+I7cPC8HPJIpT0fbUwTJtocM90p
 u5gk6m+OVmbk1saJjAMsJu0c3XEaKuAnNawZF6GPDgs6ah8zEvJANpHvb w==;
X-CSE-ConnectionGUID: rjEVt1G3T1axoODdFKuzKg==
X-CSE-MsgGUID: WT55nFVsRqCntZjeSLXDzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="78354377"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="78354377"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:03 -0800
X-CSE-ConnectionGUID: uwltDfEnRDq92ire3gNIUA==
X-CSE-MsgGUID: e6xAeDr5SCS2ykmUz/+gzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="201931662"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/15] drm/{i915,
 xe}: deduplicate plane_config_fini() between i915 and xe
Date: Mon, 15 Dec 2025 17:28:20 +0200
Message-ID: <14322386cdb1a0f4f6c7ff74a5a9696ea0ff84bf.1765812266.git.jani.nikula@intel.com>
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

Move the common code to display. Retain empty xe_plane_config_fini() for
now, in case it's needed in the future.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_initial_plane.c | 10 ++++++++++
 drivers/gpu/drm/i915/i915_initial_plane.c          | 10 ----------
 drivers/gpu/drm/xe/display/xe_initial_plane.c      |  9 ---------
 3 files changed, 10 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index 561a2ba2a486..62f4fb3be9f0 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -26,6 +26,16 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 static void plane_config_fini(struct intel_display *display,
 			      struct intel_initial_plane_config *plane_config)
 {
+	if (plane_config->fb) {
+		struct drm_framebuffer *fb = &plane_config->fb->base;
+
+		/* We may only have the stub and not a full framebuffer */
+		if (drm_framebuffer_read_refcount(fb))
+			drm_framebuffer_put(fb);
+		else
+			kfree(fb);
+	}
+
 	display->parent->initial_plane->config_fini(plane_config);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 68cf2499855a..d8f2a2a11dd0 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -395,16 +395,6 @@ i915_find_initial_plane_obj(struct drm_crtc *_crtc,
 
 static void i915_plane_config_fini(struct intel_initial_plane_config *plane_config)
 {
-	if (plane_config->fb) {
-		struct drm_framebuffer *fb = &plane_config->fb->base;
-
-		/* We may only have the stub and not a full framebuffer */
-		if (drm_framebuffer_read_refcount(fb))
-			drm_framebuffer_put(fb);
-		else
-			kfree(fb);
-	}
-
 	if (plane_config->vma)
 		i915_vma_put(plane_config->vma);
 }
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 0007337c60da..95000f8b0662 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -277,15 +277,6 @@ xe_find_initial_plane_obj(struct drm_crtc *_crtc,
 
 static void xe_plane_config_fini(struct intel_initial_plane_config *plane_config)
 {
-	if (plane_config->fb) {
-		struct drm_framebuffer *fb = &plane_config->fb->base;
-
-		/* We may only have the stub and not a full framebuffer */
-		if (drm_framebuffer_read_refcount(fb))
-			drm_framebuffer_put(fb);
-		else
-			kfree(fb);
-	}
 }
 
 const struct intel_display_initial_plane_interface xe_display_initial_plane_interface = {
-- 
2.47.3

