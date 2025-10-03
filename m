Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7487BB7419
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Oct 2025 16:57:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F11610E945;
	Fri,  3 Oct 2025 14:57:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MEOs8/Yp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F2110E941;
 Fri,  3 Oct 2025 14:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759503475; x=1791039475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=03hQZndfYU1c56K6KVSj02HqyB1D/j7sgOHlnAPbnAQ=;
 b=MEOs8/YpqCqJaIYEXrzuAHAHolE2kn9dbpLA5+0DEUJGGgWH8mG0DuL5
 omF31spEPPb9SlbQmkI7t9MpKppJpFX4483jR0i+Bi52lRkRpxPxWk2oa
 7eK5SCYY6cLk5oj1scBHlbYZFmEzVfOFgVa/eSEicQZGUeOre7g9fz3qr
 wmQwYiQpYHt7+kB2bk5MO3DP9+w4dsXBeOUIR1Vb9cM6gk5J4BOGebZF8
 SlUeyythrwK/uHW0v76eWBTdjOALSjvoLt5L5asjm6aeFZib3yAtgcxC+
 Qu0sfrrXUXa7YI5EC8ZaCJCIMDv8jeY0Qhvg/uOY8sBk3uBqGLwIGl1KX A==;
X-CSE-ConnectionGUID: nvk0vWexTbmmgYH2gkqEAA==
X-CSE-MsgGUID: d3hT2YsUQhmCKN52gBIanA==
X-IronPort-AV: E=McAfee;i="6800,10657,11571"; a="73138768"
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="73138768"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 07:57:55 -0700
X-CSE-ConnectionGUID: MY9AZ0X9QxyP7Yn6LHMesg==
X-CSE-MsgGUID: G1Ln4Qy6TzK9H9xQdkojqA==
X-ExtLoop1: 1
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.127])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 07:57:53 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 4/5] drm/i915/fb: Drop the 'fb' argument from
 intel_fb_bo_framebuffer_init()
Date: Fri,  3 Oct 2025 17:57:33 +0300
Message-ID: <20251003145734.7634-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251003145734.7634-1-ville.syrjala@linux.intel.com>
References: <20251003145734.7634-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_fb_bo_framebuffer_init() doesn't do anything with the passed
framebuffer. Don't pass it therefore.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_fb_bo.c | 3 +--
 drivers/gpu/drm/i915/display/intel_fb_bo.h | 3 +--
 drivers/gpu/drm/xe/display/intel_fb_bo.c   | 3 +--
 4 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 4dfb3e5fd31e..99823ef42ef1 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2226,7 +2226,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	if (!intel_fb->frontbuffer)
 		return -ENOMEM;
 
-	ret = intel_fb_bo_framebuffer_init(fb, obj, mode_cmd);
+	ret = intel_fb_bo_framebuffer_init(obj, mode_cmd);
 	if (ret)
 		goto err_frontbuffer_put;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display/intel_fb_bo.c
index b0e8b89f7ce8..7336d7294a7b 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
@@ -18,8 +18,7 @@ void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj)
 	/* Nothing to do for i915 */
 }
 
-int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
-				 struct drm_gem_object *_obj,
+int intel_fb_bo_framebuffer_init(struct drm_gem_object *_obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd)
 {
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.h b/drivers/gpu/drm/i915/display/intel_fb_bo.h
index eefcb05a99f0..d775773c6c03 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.h
@@ -14,8 +14,7 @@ struct drm_mode_fb_cmd2;
 
 void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj);
 
-int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
-				 struct drm_gem_object *obj,
+int intel_fb_bo_framebuffer_init(struct drm_gem_object *obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd);
 
 struct drm_gem_object *
diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
index ebdb22c9499d..db8b1a27b4de 100644
--- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
@@ -24,8 +24,7 @@ void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj)
 	xe_bo_put(bo);
 }
 
-int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
-				 struct drm_gem_object *obj,
+int intel_fb_bo_framebuffer_init(struct drm_gem_object *obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd)
 {
 	struct xe_bo *bo = gem_to_xe_bo(obj);
-- 
2.49.1

