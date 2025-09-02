Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C5CB40C8A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 19:52:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D00810E815;
	Tue,  2 Sep 2025 17:52:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QlNUOnBz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14BB710E80D;
 Tue,  2 Sep 2025 17:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756835559; x=1788371559;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VLT2NjSN/nVEglnjws2QzZGKsLeyaW9xc5YRY3Z7RMQ=;
 b=QlNUOnBzMrd2Sq+5+U8m+6LxuKKZu0+53dyS6OU0NzG2OjNgvDGyCMkH
 tmHXweuUc++lz6zRL7gAzww5YZakxRleT55mX+GHkf9rI/vS2eveMavvc
 mDPc9EPh4wqHQUwrz67zHTO33VFRxiVHcnnUFYZiI4aG6zkjJWa6f+SSE
 E3JSuG+hUZMM48uJJCkKoWVkwIkhTTcY64MeopxZmcUGQ7bTp5tmMTWak
 6age7o7aYXbCig7KqudiOzDsHACMfH6WocXh8dSuFk4SgWAI7G5Xm+RgL
 rbRSpjMf54KUa6AtSXHmKvI1cSBsVIs+/PNRqJ7mr9621l+Bq1eO+YBFa A==;
X-CSE-ConnectionGUID: VNHaBolrSW+DRgKradYPQw==
X-CSE-MsgGUID: Rr4GWPmkQgO7vojaYce3Gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62945102"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="62945102"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:39 -0700
X-CSE-ConnectionGUID: 5WW/FEWeSNmCuqIkKxcGmA==
X-CSE-MsgGUID: eB9iioyrRvKnse9NqUyaWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="171501400"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Jocelyn Falempe <jfalempe@redhat.com>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 7/8] drm/{i915,
 xe}/panic: convert intel_panic_finish() to struct intel_panic
Date: Tue,  2 Sep 2025 20:51:53 +0300
Message-ID: <3fdbcbe17e0e90c4a590f2a2486a9ec79a90cf62.1756835342.git.jani.nikula@intel.com>
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

The intel_panic_finish() function really needs the struct intel_panic
pointer, not struct intel_framebuffer. Make it so.

Cc: Jocelyn Falempe <jfalempe@redhat.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_panic.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_panic.h | 3 +--
 drivers/gpu/drm/i915/display/intel_plane.c | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h | 3 +--
 drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 4 +---
 drivers/gpu/drm/xe/display/xe_panic.c      | 4 +---
 6 files changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panic.c b/drivers/gpu/drm/i915/display/intel_panic.c
index 5431bd4d3a7d..c8ac8b5a39f3 100644
--- a/drivers/gpu/drm/i915/display/intel_panic.c
+++ b/drivers/gpu/drm/i915/display/intel_panic.c
@@ -14,7 +14,7 @@ int intel_panic_setup(struct drm_scanout_buffer *sb)
 	return i915_gem_object_panic_setup(sb);
 }
 
-void intel_panic_finish(struct intel_framebuffer *fb)
+void intel_panic_finish(struct intel_panic *panic)
 {
-	return i915_gem_object_panic_finish(fb);
+	return i915_gem_object_panic_finish(panic);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_panic.h b/drivers/gpu/drm/i915/display/intel_panic.h
index 45ce6104e6fb..cec193e725a4 100644
--- a/drivers/gpu/drm/i915/display/intel_panic.h
+++ b/drivers/gpu/drm/i915/display/intel_panic.h
@@ -5,11 +5,10 @@
 #define __INTEL_PANIC_H__
 
 struct drm_scanout_buffer;
-struct intel_framebuffer;
 struct intel_panic;
 
 struct intel_panic *intel_panic_alloc(void);
 int intel_panic_setup(struct drm_scanout_buffer *sb);
-void intel_panic_finish(struct intel_framebuffer *fb);
+void intel_panic_finish(struct intel_panic *panic);
 
 #endif /* __INTEL_PANIC_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 890d897bda10..6a3f4a7b6dfd 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1326,7 +1326,7 @@ static void intel_panic_flush(struct drm_plane *plane)
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
 
-	intel_panic_finish(intel_fb);
+	intel_panic_finish(intel_fb->panic);
 
 	if (crtc_state->enable_psr2_sel_fetch) {
 		/* Force a full update for psr2 */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 9b3f25cb48db..08da7ec670fe 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -18,7 +18,6 @@
 
 enum intel_region_id;
 struct drm_scanout_buffer;
-struct intel_framebuffer;
 struct intel_panic;
 
 #define obj_to_i915(obj__) to_i915((obj__)->base.dev)
@@ -696,7 +695,7 @@ int i915_gem_object_truncate(struct drm_i915_gem_object *obj);
 
 struct intel_panic *i915_gem_object_alloc_panic(void);
 int i915_gem_object_panic_setup(struct drm_scanout_buffer *sb);
-void i915_gem_object_panic_finish(struct intel_framebuffer *fb);
+void i915_gem_object_panic_finish(struct intel_panic *panic);
 
 /**
  * i915_gem_object_pin_map - return a contiguous mapping of the entire object
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index b219474aecc7..3505b1842c40 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -475,10 +475,8 @@ int i915_gem_object_panic_setup(struct drm_scanout_buffer *sb)
 	return -EOPNOTSUPP;
 }
 
-void i915_gem_object_panic_finish(struct intel_framebuffer *fb)
+void i915_gem_object_panic_finish(struct intel_panic *panic)
 {
-	struct intel_panic *panic = fb->panic;
-
 	i915_panic_kunmap(panic);
 	panic->page = -1;
 	kfree(panic->pages);
diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/xe/display/xe_panic.c
index b5a7615708a1..ea9583473ea3 100644
--- a/drivers/gpu/drm/xe/display/xe_panic.c
+++ b/drivers/gpu/drm/xe/display/xe_panic.c
@@ -76,10 +76,8 @@ int intel_panic_setup(struct drm_scanout_buffer *sb)
 	return 0;
 }
 
-void intel_panic_finish(struct intel_framebuffer *fb)
+void intel_panic_finish(struct intel_panic *panic)
 {
-	struct intel_panic *panic = fb->panic;
-
 	xe_panic_kunmap(panic);
 	panic->page = -1;
 }
-- 
2.47.2

