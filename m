Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 086D1B40C84
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 19:52:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B115910E80C;
	Tue,  2 Sep 2025 17:52:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NwHV33uB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71A0A10E80C;
 Tue,  2 Sep 2025 17:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756835526; x=1788371526;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QS5w2pdX7uWzrKzeaKoBS82o+UWqaKzPVFtEzCpWkhg=;
 b=NwHV33uB1+CyJ3TqdyogFVWi9ZwktefcJjEkple+/1Pdj0wR3cg7UyEF
 bmC8E6KztlARlVFlZ/UrrMbk8m6jCB2pNLXM87Err6ad2F3lh1Gw2lE1/
 6y/zobymzeK7iRcCH7JjANYHgB5q2r+KYXSO8edaET5ypR1VuBLddmpae
 7oVRehMYQPYO67VKmBzasYSApdwgrsEXLnSEsIIOW/STIbVNL5xivRfWK
 dbvcEkr6737QqJ3Dn4EaLv4utpZlxHpGy/Ey5pjzQz6pqVZuP0aIWijxi
 pRrVW2ic1Gjmv/nTQ501GdFROHrRhxLqKQUyG8ZNF8WIVLRUQ3tuxnTM2 g==;
X-CSE-ConnectionGUID: FDn6foXhSPmA2dqyW1H1aA==
X-CSE-MsgGUID: y11BLcnSS7m9qVemiYUxbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="69734744"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="69734744"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:06 -0700
X-CSE-ConnectionGUID: JnEFey1jSsSQWkA45+R9eg==
X-CSE-MsgGUID: 9arCvQNIQBWKosS1sl4FFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="172177557"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Jocelyn Falempe <jfalempe@redhat.com>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 1/8] drm/i915/fb: add intel_framebuffer_alloc()
Date: Tue,  2 Sep 2025 20:51:47 +0300
Message-ID: <379c306c692c50f6af3b6f2488c213f12627954f.1756835342.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756835342.git.jani.nikula@intel.com>
References: <cover.1756835342.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Add intel_framebuffer_alloc() to hide intel_bo_alloc_framebuffer(), as
that doesn't feel like the correct abstraction.

Cc: Jocelyn Falempe <jfalempe@redhat.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          | 3 +--
 drivers/gpu/drm/i915/display/intel_fb.c            | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_fb.h            | 3 +++
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
 4 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 3eb96d8abba8..9a39e9efbfaf 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -15,7 +15,6 @@
 #include "i9xx_plane.h"
 #include "i9xx_plane_regs.h"
 #include "intel_atomic.h"
-#include "intel_bo.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
 #include "intel_display_regs.h"
@@ -1178,7 +1177,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 
 	drm_WARN_ON(display->drm, pipe != crtc->pipe);
 
-	intel_fb = intel_bo_alloc_framebuffer();
+	intel_fb = intel_framebuffer_alloc();
 	if (!intel_fb) {
 		drm_dbg_kms(display->drm, "failed to alloc fb\n");
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index b210c3250501..c8feb6d4492c 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2343,6 +2343,11 @@ intel_user_framebuffer_create(struct drm_device *dev,
 	return fb;
 }
 
+struct intel_framebuffer *intel_framebuffer_alloc(void)
+{
+	return intel_bo_alloc_framebuffer();
+}
+
 struct drm_framebuffer *
 intel_framebuffer_create(struct drm_gem_object *obj,
 			 const struct drm_format_info *info,
@@ -2351,7 +2356,7 @@ intel_framebuffer_create(struct drm_gem_object *obj,
 	struct intel_framebuffer *intel_fb;
 	int ret;
 
-	intel_fb = intel_bo_alloc_framebuffer();
+	intel_fb = intel_framebuffer_alloc();
 	if (!intel_fb)
 		return ERR_PTR(-ENOMEM);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 403b8b63721a..22514d5f2bb6 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -104,6 +104,9 @@ int intel_framebuffer_init(struct intel_framebuffer *ifb,
 			   struct drm_gem_object *obj,
 			   const struct drm_format_info *info,
 			   struct drm_mode_fb_cmd2 *mode_cmd);
+
+struct intel_framebuffer *intel_framebuffer_alloc(void);
+
 struct drm_framebuffer *
 intel_framebuffer_create(struct drm_gem_object *obj,
 			 const struct drm_format_info *info,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 950dc79dbdd4..59ee0830de02 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -3028,7 +3028,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		return;
 	}
 
-	intel_fb = intel_bo_alloc_framebuffer();
+	intel_fb = intel_framebuffer_alloc();
 	if (!intel_fb) {
 		drm_dbg_kms(display->drm, "failed to alloc fb\n");
 		return;
-- 
2.47.2

