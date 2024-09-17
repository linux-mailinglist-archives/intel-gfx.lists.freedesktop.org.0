Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE07B97B2BE
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:15:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 540FB10E4C4;
	Tue, 17 Sep 2024 16:15:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h/JVlgFh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6C7810E4B3;
 Tue, 17 Sep 2024 16:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589707; x=1758125707;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hRroR0iQgFappDWr64M8aBfoQzybn5DcG4iAv8a+2r0=;
 b=h/JVlgFhtikR9u7sKz2s7K0Qi3gvVv3k9pqLzFgGrzpRxv3LUgPoNE+y
 lxF3zel8jaqqyItwS3TY3GW87Gr8Ds1owrPTCxQTUh3HMjToII5ZVtftD
 WwsylWaVZEG/I1fLhoTygod14h9FGYn0BiMAwDL5f8XcmtilGUj8juysb
 EUjY+/QZq9oRc5sVlodXVQaIkamGohB+9FXioyvmqOnWp57TQJp1FmziG
 ZPbjYYPpiKZ3t0/3+xkcj9e3tn+RIt+qs1xtIq+VWWnAaneI9NM9lkv+d
 C6Jl/RAcJ+h8Vt6B1uMDa7Gprzzz2/66VHc0Gq5UtG/lqQ9/mXJ88prtN Q==;
X-CSE-ConnectionGUID: APX9ETlrQCq4i+fAxp+0dg==
X-CSE-MsgGUID: 5Kz8egpJQhexDavYWbjaQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="42934007"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="42934007"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:07 -0700
X-CSE-ConnectionGUID: lYsqg4u6TYG4OZp90VM0eg==
X-CSE-MsgGUID: 6i9TzDOFTfWW99CD1oAwow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69718017"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 09/22] drm/i915/fb: convert intel_fb_bo_framebuffer_fini() to
 struct drm_i915_gem_object
Date: Tue, 17 Sep 2024 19:13:48 +0300
Message-Id: <0efbc9ae2dbe157f92fa71d423ed37fd17346da5.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
References: <cover.1726589119.git.jani.nikula@intel.com>
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

Prefer the driver agnostic struct drm_gem_object over i915 specific
struct drm_i915_gem_object.

The xe specific intel_fb_bo.h becomes redundant. Remove it, and rely on
the common header in i915 display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c    |  4 ++--
 drivers/gpu/drm/i915/display/intel_fb_bo.c |  2 +-
 drivers/gpu/drm/i915/display/intel_fb_bo.h |  3 +--
 drivers/gpu/drm/xe/display/intel_fb_bo.c   |  4 +++-
 drivers/gpu/drm/xe/display/intel_fb_bo.h   | 25 ----------------------
 5 files changed, 7 insertions(+), 31 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/display/intel_fb_bo.h

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 107ee5d3665f..7bd4a519cd10 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1870,7 +1870,7 @@ static void intel_user_framebuffer_destroy(struct drm_framebuffer *fb)
 
 	intel_frontbuffer_put(intel_fb->frontbuffer);
 
-	intel_fb_bo_framebuffer_fini(intel_fb_obj(fb));
+	intel_fb_bo_framebuffer_fini(intel_fb_bo(fb));
 
 	kfree(intel_fb);
 }
@@ -2076,7 +2076,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 err_frontbuffer_put:
 	intel_frontbuffer_put(intel_fb->frontbuffer);
 err:
-	intel_fb_bo_framebuffer_fini(to_intel_bo(obj));
+	intel_fb_bo_framebuffer_fini(obj);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display/intel_fb_bo.c
index 0932bd9f0100..810ca6ff8640 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
@@ -11,7 +11,7 @@
 #include "intel_fb.h"
 #include "intel_fb_bo.h"
 
-void intel_fb_bo_framebuffer_fini(struct drm_i915_gem_object *obj)
+void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj)
 {
 	/* Nothing to do for i915 */
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.h b/drivers/gpu/drm/i915/display/intel_fb_bo.h
index 6030029042e7..e71acd1bcb24 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.h
@@ -8,12 +8,11 @@
 
 struct drm_file;
 struct drm_gem_object;
-struct drm_i915_gem_object;
 struct drm_i915_private;
 struct drm_mode_fb_cmd2;
 struct intel_framebuffer;
 
-void intel_fb_bo_framebuffer_fini(struct drm_i915_gem_object *obj);
+void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj);
 
 int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
 				 struct drm_gem_object *obj,
diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
index a3ec82d5ac8a..4d209ebc26c2 100644
--- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
@@ -11,8 +11,10 @@
 #include "intel_fb_bo.h"
 #include "xe_bo.h"
 
-void intel_fb_bo_framebuffer_fini(struct xe_bo *bo)
+void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj)
 {
+	struct xe_bo *bo = gem_to_xe_bo(obj);
+
 	if (bo->flags & XE_BO_FLAG_PINNED) {
 		/* Unpin our kernel fb first */
 		xe_bo_lock(bo, false);
diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.h b/drivers/gpu/drm/xe/display/intel_fb_bo.h
deleted file mode 100644
index ad835bc050e8..000000000000
--- a/drivers/gpu/drm/xe/display/intel_fb_bo.h
+++ /dev/null
@@ -1,25 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2021 Intel Corporation
- */
-
-#ifndef __INTEL_FB_BO_H__
-#define __INTEL_FB_BO_H__
-
-struct drm_file;
-struct drm_gem_object;
-struct drm_i915_private;
-struct drm_mode_fb_cmd2;
-struct intel_framebuffer;
-struct xe_bo;
-
-void intel_fb_bo_framebuffer_fini(struct xe_bo *bo);
-int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
-				 struct drm_gem_object *obj,
-				 struct drm_mode_fb_cmd2 *mode_cmd);
-
-struct drm_gem_object *intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
-						   struct drm_file *filp,
-						   const struct drm_mode_fb_cmd2 *mode_cmd);
-
-#endif
-- 
2.39.2

