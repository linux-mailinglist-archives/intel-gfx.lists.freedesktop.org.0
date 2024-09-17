Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E4097B2D1
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D543110E4B4;
	Tue, 17 Sep 2024 16:16:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XQggrUus";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CF5810E4B1;
 Tue, 17 Sep 2024 16:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589761; x=1758125761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PZ0JJrW5XplTuDg/ZHAHyhJx5qqb/K+QEX9ikAef6DQ=;
 b=XQggrUusbLHNLKAOqnXwwMJ0JrQ+olB1BaTmSpmJkpWbsdssm5m53nDz
 Pp9pTWA1MfpJBDi4COyiUQ5m08NgN/cEcFpSDtajym8rHA28vMBcD2qfL
 yZawdGMXEz7yDAh8E9CT0ArJgMLzLUrT0CPOI6zGtEZwLr7C97ifwnMBV
 Ncg6CG94tR8TiIwHlmK0QQwDxFpNCcAgYJw4vrOTuQdWBa7LgoMTt+7V6
 rKZurM+J/i6AqFGjCIvv6WpcSPZCPsL7uyHXGLwbxfMIbAb3bPHVs8/++
 ka3M5BKXlOx5gvhQjX478BPNIRJ5nzVO98XVCQG7LkRX3dDX6/gEKMdo4 Q==;
X-CSE-ConnectionGUID: ok34PO1kT4qN1gSGgOL5Bg==
X-CSE-MsgGUID: ahY5ebwrQHGc/lyA1mBfBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25343545"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25343545"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:16:00 -0700
X-CSE-ConnectionGUID: nPFnsnYnQ0Sq8oeiL5/Xzw==
X-CSE-MsgGUID: TaHTd1kjR+m77EiqfuUCVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73989303"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 18/22] drm/i915/fb: remove intel_fb_obj()
Date: Tue, 17 Sep 2024 19:13:57 +0300
Message-Id: <e1fbf33d71813f39621ba0ac7e404821a3f63588.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
References: <cover.1726589119.git.jani.nikula@intel.com>
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

Convert remaining users of the struct drm_i915_gem_object based
intel_fb_obj() to the struct drm_gem_object based intel_fb_bo(), and
remove intel_fb_obj().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_fb.c     |  5 -----
 drivers/gpu/drm/i915/display/intel_fb.h     |  2 --
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 14 +++++++++-----
 4 files changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 3a6d99044828..ce8c76e44e6a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -242,7 +242,7 @@ void intel_dpt_suspend(struct drm_i915_private *i915)
 struct i915_address_space *
 intel_dpt_create(struct intel_framebuffer *fb)
 {
-	struct drm_gem_object *obj = &intel_fb_obj(&fb->base)->base;
+	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
 	struct drm_i915_private *i915 = to_i915(obj->dev);
 	struct drm_i915_gem_object *dpt_obj;
 	struct i915_address_space *vm;
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 6ac9642a65ee..eb5ff3ba156c 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2122,11 +2122,6 @@ intel_framebuffer_create(struct drm_gem_object *obj,
 	return ERR_PTR(ret);
 }
 
-struct drm_i915_gem_object *intel_fb_obj(const struct drm_framebuffer *fb)
-{
-	return fb ? to_intel_bo(fb->obj[0]) : NULL;
-}
-
 struct drm_gem_object *intel_fb_bo(const struct drm_framebuffer *fb)
 {
 	return fb ? fb->obj[0] : NULL;
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index c11cca472747..8240febff84c 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -100,8 +100,6 @@ bool intel_fb_uses_dpt(const struct drm_framebuffer *fb);
 
 unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier);
 
-struct drm_i915_gem_object *intel_fb_obj(const struct drm_framebuffer *fb);
-
 struct drm_gem_object *intel_fb_bo(const struct drm_framebuffer *fb);
 
 #endif /* __INTEL_FB_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 575b271e012b..d3a86f9c6bc8 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -26,7 +26,8 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 {
 	struct drm_device *dev = fb->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
+	struct drm_gem_object *_obj = intel_fb_bo(fb);
+	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
 	struct i915_gem_ww_ctx ww;
 	struct i915_vma *vma;
 	int ret;
@@ -111,7 +112,8 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 {
 	struct drm_device *dev = fb->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
+	struct drm_gem_object *_obj = intel_fb_bo(fb);
+	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
 	intel_wakeref_t wakeref;
 	struct i915_gem_ww_ctx ww;
 	struct i915_vma *vma;
@@ -274,9 +276,11 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 		 * will trigger might_sleep() even if it won't actually sleep,
 		 * which is the case when the fb has already been pinned.
 		 */
-		if (intel_plane_needs_physical(plane))
-			plane_state->phys_dma_addr =
-				i915_gem_object_get_dma_address(intel_fb_obj(&fb->base), 0);
+		if (intel_plane_needs_physical(plane)) {
+			struct drm_i915_gem_object *obj = to_intel_bo(intel_fb_bo(&fb->base));
+
+			plane_state->phys_dma_addr = i915_gem_object_get_dma_address(obj, 0);
+		}
 	} else {
 		unsigned int alignment = intel_plane_fb_min_alignment(plane_state);
 
-- 
2.39.2

