Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA0FB40C89
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 19:52:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 365B610E811;
	Tue,  2 Sep 2025 17:52:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z8B+Vzku";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70B1210E815;
 Tue,  2 Sep 2025 17:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756835554; x=1788371554;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FedffyfexSSo3FZhzvjzZOmJznI5t6ZLKXd5scEMOM0=;
 b=Z8B+VzkuEo8hlL6YpOLol78ydgwGzD2vcvQ2UTIsBfENO8l8o6FEiDRq
 Oy+y2AHhkYdZsteG4aMVICRiKSfuKbkOxVHwmIl1GkX/+RFPa0xrv0hZS
 me92E90W5Anr9cOVYJTDcrgtgmgRswOmH2Ye55YpeJ7+wLnogj2tms+my
 FcqsOY3Z8gRxfg/e14YCAv5QdY9OGg1KJZr6byOqvo0sLGGxNPaLVCjUt
 xTyfAElRD8BayImhh9O3PcrzwE8IR7vyG9jL4FsOA9UmKv7a+1zbll1E9
 fmEun8PoE70jXHr+IdPghKlTQHzG+CCzimeJF7CWNgBCiO50gSWB9cpiL g==;
X-CSE-ConnectionGUID: ghQ6nfUdReOz21UH93XuQA==
X-CSE-MsgGUID: gw7/EmUQSpiP4l7G59dJ4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62945084"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="62945084"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:34 -0700
X-CSE-ConnectionGUID: Av/cFkMfQgurNKhHb5ikAQ==
X-CSE-MsgGUID: b0MlbLRTRL2xew4nm19t+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="171501390"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Jocelyn Falempe <jfalempe@redhat.com>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 6/8] drm/{i915,
 xe}/panic: move framebuffer allocation where it belongs
Date: Tue,  2 Sep 2025 20:51:52 +0300
Message-ID: <d29f63e0118d002fc8edd368caea7e8185418e17.1756835342.git.jani.nikula@intel.com>
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

The struct intel_framebuffer allocation naturally belongs in intel_fb.c,
not hidden inside panic implementation. Separate the panic
allocation. Drop the unnecessary struct i915_framebuffer and struct
xe_framebuffer types.

Cc: Jocelyn Falempe <jfalempe@redhat.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c    | 17 ++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_panic.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_panic.h |  3 ++-
 drivers/gpu/drm/i915/gem/i915_gem_object.h |  5 +++--
 drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 17 ++++-------------
 drivers/gpu/drm/xe/display/xe_panic.c      | 17 ++++-------------
 6 files changed, 31 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 2a2ed0f0461f..22a4a1575d22 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2346,7 +2346,22 @@ intel_user_framebuffer_create(struct drm_device *dev,
 
 struct intel_framebuffer *intel_framebuffer_alloc(void)
 {
-	return intel_bo_alloc_framebuffer();
+	struct intel_framebuffer *intel_fb;
+	struct intel_panic *panic;
+
+	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
+	if (!intel_fb)
+		return NULL;
+
+	panic = intel_panic_alloc();
+	if (!panic) {
+		kfree(intel_fb);
+		return NULL;
+	}
+
+	intel_fb->panic = panic;
+
+	return intel_fb;
 }
 
 struct drm_framebuffer *
diff --git a/drivers/gpu/drm/i915/display/intel_panic.c b/drivers/gpu/drm/i915/display/intel_panic.c
index 20eecb0f168f..5431bd4d3a7d 100644
--- a/drivers/gpu/drm/i915/display/intel_panic.c
+++ b/drivers/gpu/drm/i915/display/intel_panic.c
@@ -4,9 +4,9 @@
 #include "gem/i915_gem_object.h"
 #include "intel_panic.h"
 
-struct intel_framebuffer *intel_bo_alloc_framebuffer(void)
+struct intel_panic *intel_panic_alloc(void)
 {
-	return i915_gem_object_alloc_framebuffer();
+	return i915_gem_object_alloc_panic();
 }
 
 int intel_panic_setup(struct drm_scanout_buffer *sb)
diff --git a/drivers/gpu/drm/i915/display/intel_panic.h b/drivers/gpu/drm/i915/display/intel_panic.h
index 67ce253fcdf5..45ce6104e6fb 100644
--- a/drivers/gpu/drm/i915/display/intel_panic.h
+++ b/drivers/gpu/drm/i915/display/intel_panic.h
@@ -6,8 +6,9 @@
 
 struct drm_scanout_buffer;
 struct intel_framebuffer;
+struct intel_panic;
 
-struct intel_framebuffer *intel_bo_alloc_framebuffer(void);
+struct intel_panic *intel_panic_alloc(void);
 int intel_panic_setup(struct drm_scanout_buffer *sb);
 void intel_panic_finish(struct intel_framebuffer *fb);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 565f8fa330db..9b3f25cb48db 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -16,9 +16,10 @@
 #include "i915_gem_ww.h"
 #include "i915_vma_types.h"
 
-struct drm_scanout_buffer;
 enum intel_region_id;
+struct drm_scanout_buffer;
 struct intel_framebuffer;
+struct intel_panic;
 
 #define obj_to_i915(obj__) to_i915((obj__)->base.dev)
 
@@ -693,7 +694,7 @@ i915_gem_object_unpin_pages(struct drm_i915_gem_object *obj)
 int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj);
 int i915_gem_object_truncate(struct drm_i915_gem_object *obj);
 
-struct intel_framebuffer *i915_gem_object_alloc_framebuffer(void);
+struct intel_panic *i915_gem_object_alloc_panic(void);
 int i915_gem_object_panic_setup(struct drm_scanout_buffer *sb);
 void i915_gem_object_panic_finish(struct intel_framebuffer *fb);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index e36d60b785b1..b219474aecc7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -363,11 +363,6 @@ struct intel_panic {
 	void *vaddr;
 };
 
-struct i915_framebuffer {
-	struct intel_framebuffer base;
-	struct intel_panic panic;
-};
-
 static void i915_panic_kunmap(struct intel_panic *panic)
 {
 	if (panic->vaddr) {
@@ -436,17 +431,13 @@ static void i915_gem_object_panic_page_set_pixel(struct drm_scanout_buffer *sb,
 	}
 }
 
-struct intel_framebuffer *i915_gem_object_alloc_framebuffer(void)
+struct intel_panic *i915_gem_object_alloc_panic(void)
 {
-	struct i915_framebuffer *i915_fb;
-
-	i915_fb = kzalloc(sizeof(*i915_fb), GFP_KERNEL);
-	if (!i915_fb)
-		return NULL;
+	struct intel_panic *panic;
 
-	i915_fb->base.panic = &i915_fb->panic;
+	panic = kzalloc(sizeof(*panic), GFP_KERNEL);
 
-	return &i915_fb->base;
+	return panic;
 }
 
 /*
diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/xe/display/xe_panic.c
index 3ef23a6795b3..b5a7615708a1 100644
--- a/drivers/gpu/drm/xe/display/xe_panic.c
+++ b/drivers/gpu/drm/xe/display/xe_panic.c
@@ -15,11 +15,6 @@ struct intel_panic {
 	void *vaddr;
 };
 
-struct xe_framebuffer {
-	struct intel_framebuffer base;
-	struct intel_panic panic;
-};
-
 static void xe_panic_kunmap(struct intel_panic *panic)
 {
 	if (panic->vaddr) {
@@ -62,17 +57,13 @@ static void xe_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int
 	}
 }
 
-struct intel_framebuffer *intel_bo_alloc_framebuffer(void)
+struct intel_panic *intel_panic_alloc(void)
 {
-	struct xe_framebuffer *xe_fb;
-
-	xe_fb = kzalloc(sizeof(*xe_fb), GFP_KERNEL);
-	if (!xe_fb)
-		return NULL;
+	struct intel_panic *panic;
 
-	xe_fb->base.panic = &xe_fb->panic;
+	panic = kzalloc(sizeof(*panic), GFP_KERNEL);
 
-	return &xe_fb->base;
+	return panic;
 }
 
 int intel_panic_setup(struct drm_scanout_buffer *sb)
-- 
2.47.2

