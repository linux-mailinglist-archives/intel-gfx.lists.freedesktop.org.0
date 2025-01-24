Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5A4A1BA5E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 17:30:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2AEF10E9E2;
	Fri, 24 Jan 2025 16:30:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fFQuNWLj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0287810E9E7;
 Fri, 24 Jan 2025 16:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737736250; x=1769272250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jhroJaAbsL7GrlOZ0GtX3RuKsEOP+7VnDWkyIK/iwVQ=;
 b=fFQuNWLjm8dRHddvQswS6vsssrfCrqgJh1IjbDcqHlkXbdLvoVVffQnT
 kT7ZRVCXS6lNB0JaXoZttCRLRrYlEZ5DQbSxwef+2eH0y9RswnUUU2Dsc
 I+EF0nZ3BX9lIERC3583IamzovDVVB/6jMk7xA8gQiwbsAUl581FiSJ2l
 zaTeoOEVigsjqyEZ1q0MYnA/6q7BVU8ITPVS4+5TG5XJBmtQcFwMn4hyi
 lga6+j7HxG6LLnwjubAMO8Mzsq6pDVTrq6CVOYULIJBKDKseK+mQ+vSDU
 DBSsZSivSDhC20MsoFviQ0DHWg5CW8DBaLeQGiQDGZPbI3TN+TIIjqsR+ A==;
X-CSE-ConnectionGUID: xnKHDpLGScG312JBMO8rzA==
X-CSE-MsgGUID: 1g+yjDihQqmQtzlaI6+baQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="42200433"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="42200433"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 08:30:50 -0800
X-CSE-ConnectionGUID: rQff1+mUSBeb6Wc4gwrKpw==
X-CSE-MsgGUID: 7hfhOU8rS0SLuvQmHmWxfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107925909"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 08:30:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 18:30:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/11] drm/i915: Decouple intel_fb_bo.h interfaces from driver
 specific types
Date: Fri, 24 Jan 2025 18:30:31 +0200
Message-ID: <20250124163040.8886-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
References: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Make the intel_fb_bo.h interfaces operated purely in base
drm_ types so that each driver (i915 and xe) doesn't have to
know about each other, or the display stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c    | 5 ++---
 drivers/gpu/drm/i915/display/intel_fb_bo.c | 5 +++--
 drivers/gpu/drm/i915/display/intel_fb_bo.h | 8 ++++----
 drivers/gpu/drm/xe/display/intel_fb_bo.c   | 7 ++++---
 4 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 3121371635bb..f8944eaa9995 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2078,7 +2078,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	int ret = -EINVAL;
 	int i;
 
-	ret = intel_fb_bo_framebuffer_init(intel_fb, obj, mode_cmd);
+	ret = intel_fb_bo_framebuffer_init(fb, obj, mode_cmd);
 	if (ret)
 		return ret;
 
@@ -2194,9 +2194,8 @@ intel_user_framebuffer_create(struct drm_device *dev,
 	struct drm_framebuffer *fb;
 	struct drm_gem_object *obj;
 	struct drm_mode_fb_cmd2 mode_cmd = *user_mode_cmd;
-	struct drm_i915_private *i915 = to_i915(dev);
 
-	obj = intel_fb_bo_lookup_valid_bo(i915, filp, &mode_cmd);
+	obj = intel_fb_bo_lookup_valid_bo(dev, filp, &mode_cmd);
 	if (IS_ERR(obj))
 		return ERR_CAST(obj);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display/intel_fb_bo.c
index 810ca6ff8640..56f029962261 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
@@ -16,7 +16,7 @@ void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj)
 	/* Nothing to do for i915 */
 }
 
-int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
+int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
 				 struct drm_gem_object *_obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd)
 {
@@ -76,10 +76,11 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
 }
 
 struct drm_gem_object *
-intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
+intel_fb_bo_lookup_valid_bo(struct drm_device *dev,
 			    struct drm_file *filp,
 			    const struct drm_mode_fb_cmd2 *mode_cmd)
 {
+	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_object *obj;
 
 	obj = i915_gem_object_lookup(filp, mode_cmd->handles[0]);
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.h b/drivers/gpu/drm/i915/display/intel_fb_bo.h
index e71acd1bcb24..1357ecad5a0a 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.h
@@ -6,20 +6,20 @@
 #ifndef __INTEL_FB_BO_H__
 #define __INTEL_FB_BO_H__
 
+struct drm_device;
 struct drm_file;
+struct drm_framebuffer;
 struct drm_gem_object;
-struct drm_i915_private;
 struct drm_mode_fb_cmd2;
-struct intel_framebuffer;
 
 void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj);
 
-int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
+int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
 				 struct drm_gem_object *obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd);
 
 struct drm_gem_object *
-intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
+intel_fb_bo_lookup_valid_bo(struct drm_device *dev,
 			    struct drm_file *filp,
 			    const struct drm_mode_fb_cmd2 *user_mode_cmd);
 
diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
index 4d209ebc26c2..c97f61569b89 100644
--- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
@@ -24,7 +24,7 @@ void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj)
 	xe_bo_put(bo);
 }
 
-int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
+int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
 				 struct drm_gem_object *obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd)
 {
@@ -68,10 +68,11 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
 	return ret;
 }
 
-struct drm_gem_object *intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
+struct drm_gem_object *intel_fb_bo_lookup_valid_bo(struct drm_device *dev,
 						   struct drm_file *filp,
 						   const struct drm_mode_fb_cmd2 *mode_cmd)
 {
+	struct xe_device *xe = to_xe_device(dev);
 	struct xe_bo *bo;
 	struct drm_gem_object *gem = drm_gem_object_lookup(filp, mode_cmd->handles[0]);
 
@@ -80,7 +81,7 @@ struct drm_gem_object *intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915
 
 	bo = gem_to_xe_bo(gem);
 	/* Require vram placement or dma-buf import */
-	if (IS_DGFX(i915) &&
+	if (IS_DGFX(xe) &&
 	    !xe_bo_can_migrate(bo, XE_PL_VRAM0) &&
 	    bo->ttm.type != ttm_bo_type_sg) {
 		drm_gem_object_put(gem);
-- 
2.45.3

