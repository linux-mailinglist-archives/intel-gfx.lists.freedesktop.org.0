Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A37A1B40C8B
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 19:52:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0C8E10E816;
	Tue,  2 Sep 2025 17:52:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JaCIC1gb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA47610E812;
 Tue,  2 Sep 2025 17:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756835564; x=1788371564;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BpwtCATlSZysU7WqgwPz6uw95HP3hLzTePpt7qTAt7Q=;
 b=JaCIC1gbtviXfx6pHeR90F6rGWytrozu0cbUvWWH5n89qRtp3JY5KVj/
 Bb8Tm0MHzMUdJKgXibNP4X1podSwhUfI8RdOu5S0p67v4ykgKzVfE1kCn
 1ARt2TTbhxUPoqtxBOgPOtfyvoDGQv5d1EhcLeOYDaE1PwVip450ltr7M
 qrmS6hbEPhmrQQnlOZSwSojCNIbGZqP2TxNRuWTo6QKbL7xs2Q69/E07A
 AOyDnxFxt1O9d1vCtS2XEifGx6dDxCsl0dRwDKRask2+WXJCEy4YckL+4
 THA/RNN2kGJWJqzEHyBJXsMj7w/Ai48rFfrO+DbLvpip5wGCwPDekuCtJ A==;
X-CSE-ConnectionGUID: rDWJ7wNBS2uLtmaTf5f05w==
X-CSE-MsgGUID: sdVaC1eVTNeK9WUcc0A8QA==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62945117"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="62945117"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:44 -0700
X-CSE-ConnectionGUID: ozYntaDhT5iTJiocdF9cZg==
X-CSE-MsgGUID: 6drQskCNRLWGQXb5ZOFm/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="171501434"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Jocelyn Falempe <jfalempe@redhat.com>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 8/8] drm/{i915,
 xe}/panic: pass struct intel_panic to intel_panic_setup()
Date: Tue,  2 Sep 2025 20:51:54 +0300
Message-ID: <2a016167b1f6f0b432aed0a630f9dbcd07fadb7b.1756835342.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756835342.git.jani.nikula@intel.com>
References: <cover.1756835342.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

Reduce the struct intel_framebuffer usage within the panic
implementation.

Cc: Jocelyn Falempe <jfalempe@redhat.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_panic.c | 11 +++++++++--
 drivers/gpu/drm/i915/display/intel_panic.h |  2 +-
 drivers/gpu/drm/i915/display/intel_plane.c |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h |  3 ++-
 drivers/gpu/drm/i915/gem/i915_gem_pages.c  |  9 ++++-----
 drivers/gpu/drm/xe/display/xe_panic.c      |  5 +----
 6 files changed, 18 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panic.c b/drivers/gpu/drm/i915/display/intel_panic.c
index c8ac8b5a39f3..7311ce4e8b6c 100644
--- a/drivers/gpu/drm/i915/display/intel_panic.c
+++ b/drivers/gpu/drm/i915/display/intel_panic.c
@@ -1,7 +1,11 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2025 Intel Corporation */
 
+#include <drm/drm_panic.h>
+
 #include "gem/i915_gem_object.h"
+#include "intel_display_types.h"
+#include "intel_fb.h"
 #include "intel_panic.h"
 
 struct intel_panic *intel_panic_alloc(void)
@@ -9,9 +13,12 @@ struct intel_panic *intel_panic_alloc(void)
 	return i915_gem_object_alloc_panic();
 }
 
-int intel_panic_setup(struct drm_scanout_buffer *sb)
+int intel_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
 {
-	return i915_gem_object_panic_setup(sb);
+	struct intel_framebuffer *fb = sb->private;
+	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
+
+	return i915_gem_object_panic_setup(panic, sb, obj, fb->panic_tiling);
 }
 
 void intel_panic_finish(struct intel_panic *panic)
diff --git a/drivers/gpu/drm/i915/display/intel_panic.h b/drivers/gpu/drm/i915/display/intel_panic.h
index cec193e725a4..afb472e924aa 100644
--- a/drivers/gpu/drm/i915/display/intel_panic.h
+++ b/drivers/gpu/drm/i915/display/intel_panic.h
@@ -8,7 +8,7 @@ struct drm_scanout_buffer;
 struct intel_panic;
 
 struct intel_panic *intel_panic_alloc(void);
-int intel_panic_setup(struct drm_scanout_buffer *sb);
+int intel_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb);
 void intel_panic_finish(struct intel_panic *panic);
 
 #endif /* __INTEL_PANIC_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 6a3f4a7b6dfd..2329f09d413d 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1409,7 +1409,7 @@ static int intel_get_scanout_buffer(struct drm_plane *plane,
 				return -EOPNOTSUPP;
 		}
 		sb->private = intel_fb;
-		ret = intel_panic_setup(sb);
+		ret = intel_panic_setup(intel_fb->panic, sb);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 08da7ec670fe..148034ef504d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -694,7 +694,8 @@ int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj);
 int i915_gem_object_truncate(struct drm_i915_gem_object *obj);
 
 struct intel_panic *i915_gem_object_alloc_panic(void);
-int i915_gem_object_panic_setup(struct drm_scanout_buffer *sb);
+int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
+				struct drm_gem_object *_obj, bool panic_tiling);
 void i915_gem_object_panic_finish(struct intel_panic *panic);
 
 /**
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 3505b1842c40..76d2178572b6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -445,12 +445,11 @@ struct intel_panic *i915_gem_object_alloc_panic(void)
  * Use current vaddr if it exists, or setup a list of pages.
  * pfn is not supported yet.
  */
-int i915_gem_object_panic_setup(struct drm_scanout_buffer *sb)
+int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
+				struct drm_gem_object *_obj, bool panic_tiling)
 {
 	enum i915_map_type has_type;
-	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct intel_panic *panic = fb->panic;
-	struct drm_i915_gem_object *obj = to_intel_bo(intel_fb_bo(&fb->base));
+	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
 	void *ptr;
 
 	ptr = page_unpack_bits(obj->mm.mapping, &has_type);
@@ -460,7 +459,7 @@ int i915_gem_object_panic_setup(struct drm_scanout_buffer *sb)
 		else
 			iosys_map_set_vaddr(&sb->map[0], ptr);
 
-		if (fb->panic_tiling)
+		if (panic_tiling)
 			sb->set_pixel = i915_gem_object_panic_map_set_pixel;
 		return 0;
 	}
diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/xe/display/xe_panic.c
index ea9583473ea3..f32b23338331 100644
--- a/drivers/gpu/drm/xe/display/xe_panic.c
+++ b/drivers/gpu/drm/xe/display/xe_panic.c
@@ -66,11 +66,8 @@ struct intel_panic *intel_panic_alloc(void)
 	return panic;
 }
 
-int intel_panic_setup(struct drm_scanout_buffer *sb)
+int intel_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
 {
-	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct intel_panic *panic = fb->panic;
-
 	panic->page = -1;
 	sb->set_pixel = xe_panic_page_set_pixel;
 	return 0;
-- 
2.47.2

