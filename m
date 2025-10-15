Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BDDBDDDF2
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 11:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17F9810E767;
	Wed, 15 Oct 2025 09:51:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ea2rV5rY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 706EB10E767;
 Wed, 15 Oct 2025 09:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760521902; x=1792057902;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VPtKZoooZ/9bv7bf3a2f6R3SpYvb0RoN5uz2wEF8UuE=;
 b=Ea2rV5rYev3x11honwd4hgG19SVU4hWXftr3h09pXy4ABFz6gPyu0lHw
 rTXsjOxyS1CopEwDkTD++ddegCF7jZEq2uxo5iIB/hjrs8QPi7biaG+zv
 IOiNI1hgJORpawPqLV3ShOAF5SOR5miYMekaWMt0cf+zSNpd2qFVkoSTJ
 SA2A2IZupbTSmPgBZ/5Vyow2sk/gmuCKOX2rxxyeGmrbFLSEjJXUp5H+3
 JfWrJbvtUnOhAozYfleI0yxEkyf3VpG0cTXb1ApUszJe/6nkKOqdOpwpi
 m+/hV8B5Ra4yYdeFXDTIFBk9YPIiGJApYjAHNsMiL+sGjkutKe8vc+yuA g==;
X-CSE-ConnectionGUID: p4fBNnZdSGiESGXO/vZ33w==
X-CSE-MsgGUID: JZCvkFwPR3K7Ctrw6TF4Sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62620942"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62620942"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 02:51:42 -0700
X-CSE-ConnectionGUID: 9ex5NHAiQrG0T97EuzTW3Q==
X-CSE-MsgGUID: kjqikoJGR/eI9YGPp81YFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="181258823"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.100])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 02:51:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Jocelyn Falempe <jfalempe@redhat.com>,
 Maarten Lankhorst <dev@lankhorst.se>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2] drm/i915/panic: fix panic structure allocation memory leak
Date: Wed, 15 Oct 2025 12:51:35 +0300
Message-ID: <20251015095135.2183415-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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

Separating the panic allocation from framebuffer allocation in commit
729c5f7ffa83 ("drm/{i915,xe}/panic: move framebuffer allocation where it
belongs") failed to deallocate the panic structure anywhere.

The fix is two-fold. First, free the panic structure in
intel_user_framebuffer_destroy() in the general case. Second, move the
panic allocation later to intel_framebuffer_init() to not leak the panic
structure in error paths (if any, now or later) between
intel_framebuffer_alloc() and intel_framebuffer_init().

v2: Rebase

Fixes: 729c5f7ffa83 ("drm/{i915,xe}/panic: move framebuffer allocation where it belongs")
Cc: Jocelyn Falempe <jfalempe@redhat.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>
Reported-by: Michał Grzelak <michal.grzelak@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Tested-by: Michał Grzelak <michal.grzelak@intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 9c256a2805e4..3958628c73e9 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2114,6 +2114,7 @@ static void intel_user_framebuffer_destroy(struct drm_framebuffer *fb)
 
 	intel_frontbuffer_put(intel_fb->frontbuffer);
 
+	kfree(intel_fb->panic);
 	kfree(intel_fb);
 }
 
@@ -2212,16 +2213,22 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	struct intel_display *display = to_intel_display(obj->dev);
 	struct drm_framebuffer *fb = &intel_fb->base;
 	u32 max_stride;
-	int ret = -EINVAL;
+	int ret;
 	int i;
 
+	intel_fb->panic = intel_panic_alloc();
+	if (!intel_fb->panic)
+		return -ENOMEM;
+
 	/*
 	 * intel_frontbuffer_get() must be done before
 	 * intel_fb_bo_framebuffer_init() to avoid set_tiling vs. addfb race.
 	 */
 	intel_fb->frontbuffer = intel_frontbuffer_get(obj);
-	if (!intel_fb->frontbuffer)
-		return -ENOMEM;
+	if (!intel_fb->frontbuffer) {
+		ret = -ENOMEM;
+		goto err_free_panic;
+	}
 
 	ret = intel_fb_bo_framebuffer_init(obj, mode_cmd);
 	if (ret)
@@ -2320,6 +2327,9 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	intel_fb_bo_framebuffer_fini(obj);
 err_frontbuffer_put:
 	intel_frontbuffer_put(intel_fb->frontbuffer);
+err_free_panic:
+	kfree(intel_fb->panic);
+
 	return ret;
 }
 
@@ -2346,20 +2356,11 @@ intel_user_framebuffer_create(struct drm_device *dev,
 struct intel_framebuffer *intel_framebuffer_alloc(void)
 {
 	struct intel_framebuffer *intel_fb;
-	struct intel_panic *panic;
 
 	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
 	if (!intel_fb)
 		return NULL;
 
-	panic = intel_panic_alloc();
-	if (!panic) {
-		kfree(intel_fb);
-		return NULL;
-	}
-
-	intel_fb->panic = panic;
-
 	return intel_fb;
 }
 
-- 
2.47.3

