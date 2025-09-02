Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 894E9B40C88
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 19:52:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E822110E80F;
	Tue,  2 Sep 2025 17:52:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mvqRL72+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5EF10E816;
 Tue,  2 Sep 2025 17:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756835548; x=1788371548;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LwPR1Uq4upPuof+KJoAZE52k4MVixe6QZ75+7xGYDqs=;
 b=mvqRL72+QQEpYUO6GOKt+ev0Dcto+n+xHI8+NsGdj36dSPvhYnasBQ4h
 3E+QxfRdj9fwfqMdVzYh1uqSDjG1/psjDpi7l8bPgvYJ2AimOUNSuuVjU
 qVR/4ZduGELXa9FE6Q7PNE7yNyABdT5m3rdSegqPqI/dEOhyXnZc8hw9I
 NmoqX17yW/vGh3zx45vF4r3jQj9J09DsZAKQzwO93zGFh8vsNzfdtx4j/
 ASt9tmVmDc0hjjPeNsXBGEjeO/G7k/hDfgSO0NiphcVgJ66NPDnhWuXVe
 uF0u+SlmuONUZi2DCtzAX3Tl8avyybOoJ6/03kenmfyehKPS6hptmGYJ4 w==;
X-CSE-ConnectionGUID: 2sEdxn3SQhmTMxyRd1sgVQ==
X-CSE-MsgGUID: bHBwz9/hQ+2LNfgUtjSRpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="58338380"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="58338380"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:28 -0700
X-CSE-ConnectionGUID: e/vXvbaKS9eDNmWcZ77lSw==
X-CSE-MsgGUID: Vjk8nt0RTGWWzSBXelf6OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="172177624"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Jocelyn Falempe <jfalempe@redhat.com>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 5/8] drm/{i915, xe}/panic: rename struct {i915,
 xe}_panic_data to struct intel_panic
Date: Tue,  2 Sep 2025 20:51:51 +0300
Message-ID: <884ffc80c8b5fef1b92956e644a4e559560cc2ba.1756835342.git.jani.nikula@intel.com>
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

Prepare for better shared interfaces between panic implementations. The
struct intel_panic remains an opaque data type, with unique
implementations in i915 and xe.

This allows us to change the panic data pointer from void * to struct
intel_panic *, helping type safety.

Cc: Jocelyn Falempe <jfalempe@redhat.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  3 ++-
 drivers/gpu/drm/i915/gem/i915_gem_pages.c          | 12 ++++++------
 drivers/gpu/drm/xe/display/xe_panic.c              | 12 ++++++------
 3 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 608fd69af657..358ab922d7a7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -60,6 +60,7 @@ struct intel_ddi_buf_trans;
 struct intel_fbc;
 struct intel_global_objs_state;
 struct intel_hdcp_shim;
+struct intel_panic;
 struct intel_tc_port;
 
 /*
@@ -149,7 +150,7 @@ struct intel_framebuffer {
 	unsigned int vtd_guard;
 
 	unsigned int (*panic_tiling)(unsigned int x, unsigned int y, unsigned int width);
-	void *panic;
+	struct intel_panic *panic;
 };
 
 enum intel_hotplug_state {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index c54ed1b33e60..e36d60b785b1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -357,7 +357,7 @@ static void *i915_gem_object_map_pfn(struct drm_i915_gem_object *obj,
 	return vaddr ?: ERR_PTR(-ENOMEM);
 }
 
-struct i915_panic_data {
+struct intel_panic {
 	struct page **pages;
 	int page;
 	void *vaddr;
@@ -365,10 +365,10 @@ struct i915_panic_data {
 
 struct i915_framebuffer {
 	struct intel_framebuffer base;
-	struct i915_panic_data panic;
+	struct intel_panic panic;
 };
 
-static void i915_panic_kunmap(struct i915_panic_data *panic)
+static void i915_panic_kunmap(struct intel_panic *panic)
 {
 	if (panic->vaddr) {
 		drm_clflush_virt_range(panic->vaddr, PAGE_SIZE);
@@ -415,7 +415,7 @@ static void i915_gem_object_panic_page_set_pixel(struct drm_scanout_buffer *sb,
 	unsigned int new_page;
 	unsigned int offset;
 	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct i915_panic_data *panic = fb->panic;
+	struct intel_panic *panic = fb->panic;
 
 	if (fb->panic_tiling)
 		offset = fb->panic_tiling(sb->width, x, y);
@@ -458,7 +458,7 @@ int i915_gem_object_panic_setup(struct drm_scanout_buffer *sb)
 {
 	enum i915_map_type has_type;
 	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct i915_panic_data *panic = fb->panic;
+	struct intel_panic *panic = fb->panic;
 	struct drm_i915_gem_object *obj = to_intel_bo(intel_fb_bo(&fb->base));
 	void *ptr;
 
@@ -486,7 +486,7 @@ int i915_gem_object_panic_setup(struct drm_scanout_buffer *sb)
 
 void i915_gem_object_panic_finish(struct intel_framebuffer *fb)
 {
-	struct i915_panic_data *panic = fb->panic;
+	struct intel_panic *panic = fb->panic;
 
 	i915_panic_kunmap(panic);
 	panic->page = -1;
diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/xe/display/xe_panic.c
index fc1804d330e4..3ef23a6795b3 100644
--- a/drivers/gpu/drm/xe/display/xe_panic.c
+++ b/drivers/gpu/drm/xe/display/xe_panic.c
@@ -9,7 +9,7 @@
 #include "intel_panic.h"
 #include "xe_bo.h"
 
-struct xe_panic_data {
+struct intel_panic {
 	struct page **pages;
 	int page;
 	void *vaddr;
@@ -17,10 +17,10 @@ struct xe_panic_data {
 
 struct xe_framebuffer {
 	struct intel_framebuffer base;
-	struct xe_panic_data panic;
+	struct intel_panic panic;
 };
 
-static void xe_panic_kunmap(struct xe_panic_data *panic)
+static void xe_panic_kunmap(struct intel_panic *panic)
 {
 	if (panic->vaddr) {
 		drm_clflush_virt_range(panic->vaddr, PAGE_SIZE);
@@ -38,7 +38,7 @@ static void xe_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int
 				    unsigned int y, u32 color)
 {
 	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct xe_panic_data *panic = fb->panic;
+	struct intel_panic *panic = fb->panic;
 	struct xe_bo *bo = gem_to_xe_bo(intel_fb_bo(&fb->base));
 	unsigned int new_page;
 	unsigned int offset;
@@ -78,7 +78,7 @@ struct intel_framebuffer *intel_bo_alloc_framebuffer(void)
 int intel_panic_setup(struct drm_scanout_buffer *sb)
 {
 	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct xe_panic_data *panic = fb->panic;
+	struct intel_panic *panic = fb->panic;
 
 	panic->page = -1;
 	sb->set_pixel = xe_panic_page_set_pixel;
@@ -87,7 +87,7 @@ int intel_panic_setup(struct drm_scanout_buffer *sb)
 
 void intel_panic_finish(struct intel_framebuffer *fb)
 {
-	struct xe_panic_data *panic = fb->panic;
+	struct intel_panic *panic = fb->panic;
 
 	xe_panic_kunmap(panic);
 	panic->page = -1;
-- 
2.47.2

