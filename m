Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F360B40C85
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 19:52:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A4B910E813;
	Tue,  2 Sep 2025 17:52:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KPJD36f6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54FC410E813;
 Tue,  2 Sep 2025 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756835544; x=1788371544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mQTz8irCMjPyzWKiaDYQUGUAPff5sd6eS0yyI54NxkQ=;
 b=KPJD36f6dZ1LcOGgiqSNImAEiVSBHRZhBW92/aFSaA/9WyFeKTQjuxSZ
 a/4fUDS73Xj3jnW9mfpUyS+z/9v/Ee0AA2MiSQ5xx2AEUcf30CWwxqnY7
 34+n8r1rGtqo0QT4b/ShoocBsLZmErOredA3SDmhS/dZAa2VDy6qngwwW
 CiLDxP3nHLAu3jxgmSyAG5dUqpHgmyVEaIlNheDvOUP09QnzuWH1EVE09
 hBtkeRXPdi15bZHIK7LVzFLkAs0qvNBCPU3YlmNXXSlgbBlw5zkC9Igf6
 4v3mRXh9NUoNBNJJzgozIra2tyuUFZkI2KdTR0TEp+6XSqNm8Yftx8M1C Q==;
X-CSE-ConnectionGUID: ZmVIrjy2R8+AGll/9lieAQ==
X-CSE-MsgGUID: uju/tu6HR7KFHePqs04CEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="58338365"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="58338365"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:22 -0700
X-CSE-ConnectionGUID: 5NVmsL1WR7iznHnziFXk2g==
X-CSE-MsgGUID: L3zyXx0HQaagROpHi3eGyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="172177602"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Jocelyn Falempe <jfalempe@redhat.com>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 4/8] drm/{i915,
 xe}/fb: add panic pointer member to struct intel_framebuffer
Date: Tue,  2 Sep 2025 20:51:50 +0300
Message-ID: <41f42e1de8545409274d54854aa12e0fb390e394.1756835342.git.jani.nikula@intel.com>
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

Add a panic data pointer member in struct intel_framebuffer in
preparation for breaking the artificial subclassing between
intel_framebuffer and panic structures.

Cc: Jocelyn Falempe <jfalempe@redhat.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 20 +++++++++----------
 drivers/gpu/drm/xe/display/xe_panic.c         | 20 +++++++++----------
 3 files changed, 19 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index fd9d2527889b..608fd69af657 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -149,6 +149,7 @@ struct intel_framebuffer {
 	unsigned int vtd_guard;
 
 	unsigned int (*panic_tiling)(unsigned int x, unsigned int y, unsigned int width);
+	void *panic;
 };
 
 enum intel_hotplug_state {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index c16a57160b26..c54ed1b33e60 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -368,11 +368,6 @@ struct i915_framebuffer {
 	struct i915_panic_data panic;
 };
 
-static inline struct i915_panic_data *to_i915_panic_data(struct intel_framebuffer *fb)
-{
-	return &container_of_const(fb, struct i915_framebuffer, base)->panic;
-}
-
 static void i915_panic_kunmap(struct i915_panic_data *panic)
 {
 	if (panic->vaddr) {
@@ -420,7 +415,7 @@ static void i915_gem_object_panic_page_set_pixel(struct drm_scanout_buffer *sb,
 	unsigned int new_page;
 	unsigned int offset;
 	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct i915_panic_data *panic = to_i915_panic_data(fb);
+	struct i915_panic_data *panic = fb->panic;
 
 	if (fb->panic_tiling)
 		offset = fb->panic_tiling(sb->width, x, y);
@@ -446,9 +441,12 @@ struct intel_framebuffer *i915_gem_object_alloc_framebuffer(void)
 	struct i915_framebuffer *i915_fb;
 
 	i915_fb = kzalloc(sizeof(*i915_fb), GFP_KERNEL);
-	if (i915_fb)
-		return &i915_fb->base;
-	return NULL;
+	if (!i915_fb)
+		return NULL;
+
+	i915_fb->base.panic = &i915_fb->panic;
+
+	return &i915_fb->base;
 }
 
 /*
@@ -460,7 +458,7 @@ int i915_gem_object_panic_setup(struct drm_scanout_buffer *sb)
 {
 	enum i915_map_type has_type;
 	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct i915_panic_data *panic = to_i915_panic_data(fb);
+	struct i915_panic_data *panic = fb->panic;
 	struct drm_i915_gem_object *obj = to_intel_bo(intel_fb_bo(&fb->base));
 	void *ptr;
 
@@ -488,7 +486,7 @@ int i915_gem_object_panic_setup(struct drm_scanout_buffer *sb)
 
 void i915_gem_object_panic_finish(struct intel_framebuffer *fb)
 {
-	struct i915_panic_data *panic = to_i915_panic_data(fb);
+	struct i915_panic_data *panic = fb->panic;
 
 	i915_panic_kunmap(panic);
 	panic->page = -1;
diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/xe/display/xe_panic.c
index 18b27a06b260..fc1804d330e4 100644
--- a/drivers/gpu/drm/xe/display/xe_panic.c
+++ b/drivers/gpu/drm/xe/display/xe_panic.c
@@ -20,11 +20,6 @@ struct xe_framebuffer {
 	struct xe_panic_data panic;
 };
 
-static inline struct xe_panic_data *to_xe_panic_data(struct intel_framebuffer *fb)
-{
-	return &container_of_const(fb, struct xe_framebuffer, base)->panic;
-}
-
 static void xe_panic_kunmap(struct xe_panic_data *panic)
 {
 	if (panic->vaddr) {
@@ -43,7 +38,7 @@ static void xe_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int
 				    unsigned int y, u32 color)
 {
 	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct xe_panic_data *panic = to_xe_panic_data(fb);
+	struct xe_panic_data *panic = fb->panic;
 	struct xe_bo *bo = gem_to_xe_bo(intel_fb_bo(&fb->base));
 	unsigned int new_page;
 	unsigned int offset;
@@ -72,15 +67,18 @@ struct intel_framebuffer *intel_bo_alloc_framebuffer(void)
 	struct xe_framebuffer *xe_fb;
 
 	xe_fb = kzalloc(sizeof(*xe_fb), GFP_KERNEL);
-	if (xe_fb)
-		return &xe_fb->base;
-	return NULL;
+	if (!xe_fb)
+		return NULL;
+
+	xe_fb->base.panic = &xe_fb->panic;
+
+	return &xe_fb->base;
 }
 
 int intel_panic_setup(struct drm_scanout_buffer *sb)
 {
 	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct xe_panic_data *panic = to_xe_panic_data(fb);
+	struct xe_panic_data *panic = fb->panic;
 
 	panic->page = -1;
 	sb->set_pixel = xe_panic_page_set_pixel;
@@ -89,7 +87,7 @@ int intel_panic_setup(struct drm_scanout_buffer *sb)
 
 void intel_panic_finish(struct intel_framebuffer *fb)
 {
-	struct xe_panic_data *panic = to_xe_panic_data(fb);
+	struct xe_panic_data *panic = fb->panic;
 
 	xe_panic_kunmap(panic);
 	panic->page = -1;
-- 
2.47.2

