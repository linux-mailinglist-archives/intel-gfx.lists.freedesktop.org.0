Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2113197B2B5
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:14:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE9A010E4A7;
	Tue, 17 Sep 2024 16:14:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JrbaFhIA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CD7C10E4A2;
 Tue, 17 Sep 2024 16:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589669; x=1758125669;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eRdVLmG4frxkPBWaf1TVRJmTLW0QhmtukdPObjUjj/M=;
 b=JrbaFhIAGiuZaVDAzWmD64u8Eh6tSyccjrBIfpdstKhgxcUikn1F8+6a
 /qar1hnuDCH4OKhhFKmM+Sjrf1wEdrJn+KiPwiT7k/cI0F/NwD57kAWiM
 jC+Qq0fSI+2+lI0z6E5HnPNxxeUFxJ8to+8MYvBuDHR2iI1ErERbs3cnM
 3oJFTgdGfm+MEduAVVpy+Gh69evizIJseafcBFvxlzzNAFvQ+a9pJgBy6
 fxm1iuvuHpmq7DmHBWWw7ARtctI3Hy/AeWCWmMqH8bh4oNoWpmbJ9Q9XR
 KvvE8F2qk49cdQwe6vAJBclMq2fAtUt2Jv9hKe4NjUJ+SIF3ftBlSxg8f Q==;
X-CSE-ConnectionGUID: dW1i+KXKTi+3KztlUMfKMg==
X-CSE-MsgGUID: y9R4XDASRmeaSk5hA3OdPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="24990175"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="24990175"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:29 -0700
X-CSE-ConnectionGUID: CqJSBCR0SWCSo9A/6HQ3tA==
X-CSE-MsgGUID: cpFs0NyLSKel60Bz8KGMFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69348958"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 03/22] drm/i915/fb: convert parts of intel_fb.c to struct
 drm_gem_object
Date: Tue, 17 Sep 2024 19:13:42 +0300
Message-Id: <2751dd56c9b45e0ace9b57b861aa0a78d75e779c.1726589119.git.jani.nikula@intel.com>
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

Prefer the driver agnostic struct drm_gem_object over i915 specific
struct drm_i915_gem_object. Add new intel_bo_* functions as needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bo.c | 10 +++++++++
 drivers/gpu/drm/i915/display/intel_bo.h |  2 ++
 drivers/gpu/drm/i915/display/intel_fb.c | 29 +++++++++++++------------
 drivers/gpu/drm/xe/display/intel_bo.c   | 10 +++++++++
 4 files changed, 37 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
index fede0a545951..5708d9bab1ab 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -8,3 +8,13 @@ bool intel_bo_is_tiled(struct drm_gem_object *obj)
 {
 	return i915_gem_object_is_tiled(to_intel_bo(obj));
 }
+
+bool intel_bo_is_userptr(struct drm_gem_object *obj)
+{
+	return i915_gem_object_is_userptr(to_intel_bo(obj));
+}
+
+void intel_bo_flush_if_display(struct drm_gem_object *obj)
+{
+	i915_gem_object_flush_if_display(to_intel_bo(obj));
+}
diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
index f5dfcc16d33e..0fa29211a9d0 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_bo.h
@@ -9,5 +9,7 @@
 struct drm_gem_object;
 
 bool intel_bo_is_tiled(struct drm_gem_object *obj);
+bool intel_bo_is_userptr(struct drm_gem_object *obj);
+void intel_bo_flush_if_display(struct drm_gem_object *obj);
 
 #endif /* __INTEL_BO__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 834a49395638..eb8dc3dd21ee 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -13,6 +13,7 @@
 #include "gem/i915_gem_object_types.h"
 #include "i915_drv.h"
 #include "intel_atomic_plane.h"
+#include "intel_bo.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
@@ -1225,7 +1226,7 @@ static bool intel_plane_needs_remap(const struct intel_plane_state *plane_state)
 static int convert_plane_offset_to_xy(const struct intel_framebuffer *fb, int color_plane,
 				      int plane_width, int *x, int *y)
 {
-	struct drm_i915_gem_object *obj = intel_fb_obj(&fb->base);
+	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
 	int ret;
 
 	ret = intel_fb_offset_to_xy(x, y, &fb->base, color_plane);
@@ -1249,7 +1250,7 @@ static int convert_plane_offset_to_xy(const struct intel_framebuffer *fb, int co
 	 * fb layout agrees with the fence layout. We already check that the
 	 * fb stride matches the fence stride elsewhere.
 	 */
-	if (color_plane == 0 && i915_gem_object_is_tiled(obj) &&
+	if (color_plane == 0 && intel_bo_is_tiled(obj) &&
 	    (*x + plane_width) * fb->base.format->cpp[color_plane] > fb->base.pitches[color_plane]) {
 		drm_dbg_kms(fb->base.dev,
 			    "bad fb plane %d offset: 0x%x\n",
@@ -1569,7 +1570,7 @@ static unsigned int intel_fb_min_alignment(const struct drm_framebuffer *fb)
 
 int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *fb)
 {
-	struct drm_i915_gem_object *obj = intel_fb_obj(&fb->base);
+	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
 	u32 gtt_offset_rotated = 0;
 	u32 gtt_offset_remapped = 0;
 	unsigned int max_size = 0;
@@ -1642,10 +1643,10 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 		max_size = max(max_size, offset + size);
 	}
 
-	if (mul_u32_u32(max_size, tile_size) > intel_bo_to_drm_bo(obj)->size) {
+	if (mul_u32_u32(max_size, tile_size) > obj->size) {
 		drm_dbg_kms(&i915->drm,
 			    "fb too big for bo (need %llu bytes, have %zu bytes)\n",
-			    mul_u32_u32(max_size, tile_size), intel_bo_to_drm_bo(obj)->size);
+			    mul_u32_u32(max_size, tile_size), obj->size);
 		return -EINVAL;
 	}
 
@@ -1878,16 +1879,16 @@ static int intel_user_framebuffer_create_handle(struct drm_framebuffer *fb,
 						struct drm_file *file,
 						unsigned int *handle)
 {
-	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
-	struct drm_i915_private *i915 = to_i915(intel_bo_to_drm_bo(obj)->dev);
+	struct drm_gem_object *obj = intel_fb_bo(fb);
+	struct intel_display *display = to_intel_display(obj->dev);
 
-	if (i915_gem_object_is_userptr(obj)) {
-		drm_dbg(&i915->drm,
+	if (intel_bo_is_userptr(obj)) {
+		drm_dbg(display->drm,
 			"attempting to use a userptr for a framebuffer, denied\n");
 		return -EINVAL;
 	}
 
-	return drm_gem_handle_create(file, intel_bo_to_drm_bo(obj), handle);
+	return drm_gem_handle_create(file, obj, handle);
 }
 
 struct frontbuffer_fence_cb {
@@ -1911,7 +1912,7 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
 					struct drm_clip_rect *clips,
 					unsigned int num_clips)
 {
-	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
+	struct drm_gem_object *obj = intel_fb_bo(fb);
 	struct intel_frontbuffer *front = to_intel_frontbuffer(fb);
 	struct dma_fence *fence;
 	struct frontbuffer_fence_cb *cb;
@@ -1920,10 +1921,10 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
 	if (!atomic_read(&front->bits))
 		return 0;
 
-	if (dma_resv_test_signaled(intel_bo_to_drm_bo(obj)->resv, dma_resv_usage_rw(false)))
+	if (dma_resv_test_signaled(obj->resv, dma_resv_usage_rw(false)))
 		goto flush;
 
-	ret = dma_resv_get_singleton(intel_bo_to_drm_bo(obj)->resv, dma_resv_usage_rw(false),
+	ret = dma_resv_get_singleton(obj->resv, dma_resv_usage_rw(false),
 				     &fence);
 	if (ret || !fence)
 		goto flush;
@@ -1950,7 +1951,7 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
 	return ret;
 
 flush:
-	i915_gem_object_flush_if_display(obj);
+	intel_bo_flush_if_display(obj);
 	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
 	return ret;
 }
diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/intel_bo.c
index d564fb7d85e5..f57b684050da 100644
--- a/drivers/gpu/drm/xe/display/intel_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_bo.c
@@ -10,3 +10,13 @@ bool intel_bo_is_tiled(struct drm_gem_object *obj)
 	/* legacy tiling is unused */
 	return false;
 }
+
+bool intel_bo_is_userptr(struct drm_gem_object *obj)
+{
+	/* legacy tiling is unused */
+	return false;
+}
+
+void intel_bo_flush_if_display(struct drm_gem_object *obj)
+{
+}
-- 
2.39.2

