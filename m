Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B33DC49CA6A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 14:09:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A838010E405;
	Wed, 26 Jan 2022 13:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3201310E405
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 13:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643202594; x=1674738594;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uabEbDq9wLebpbB6IKgr2P0L4RwDSbHazR+vlF3xAg4=;
 b=N2UNhTGB4m7BO2r0CDM+40ckZmBOJG0mWXEZ+MYpclZpvS2+9ymO0NRy
 KW95kurAzOhN6mBAugmGsG2S5qX2mbleDDPgrKJWBfW/U4pMsKL+/p2NT
 6Moz6OZNJdIA5Xq6hQBWoK8NTEDKMUpSJCuXDrbQ+Ul0Nxtftvpj75wFl
 nlCMevLde+coWY0wL/T5v2/Yt7myGpPybFYNHAITX9JIuAzVaaaGOXyaP
 89+5xyCwdLkte64yoDlAH3lqhyIHLghAeZaKIiviJT+g7ruhEFnWQCZjJ
 m4VonpXdHlKzNoNxR4nJ7lqL6cGx5oeDAuTnli6RR3zjoSr7CS2+jWzh8 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="246489805"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="246489805"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 05:09:53 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="535172301"
Received: from nhanraha-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.lan)
 ([10.251.221.149])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 05:09:52 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 15:09:31 +0200
Message-Id: <20220126130931.21882-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH] drm/i915: Remove all frontbuffer tracking
 calls from the gem code
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

We should now rely on userspace doing dirtyfb. There is no
need to have separate frontbuffer tracking hooks in gem code.

This patch is removing all frontbuffer tracking calls from the gem
code.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c |  2 --
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c  |  2 --
 drivers/gpu/drm/i915/gem/i915_gem_domain.c   |  5 ----
 drivers/gpu/drm/i915/gem/i915_gem_object.c   | 24 --------------------
 drivers/gpu/drm/i915/gem/i915_gem_object.h   | 16 -------------
 drivers/gpu/drm/i915/gem/i915_gem_phys.c     |  7 ------
 drivers/gpu/drm/i915/i915_gem.c              |  5 ----
 7 files changed, 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 5358f03b52db..fc2691dac278 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -809,8 +809,6 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 		goto out_pin_section;
 	}
 
-	i915_gem_object_flush_frontbuffer(new_bo, ORIGIN_DIRTYFB);
-
 	if (!overlay->active) {
 		const struct intel_crtc_state *crtc_state =
 			overlay->crtc->config;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
index 8a248003dfae..115e6d877e38 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
@@ -20,8 +20,6 @@ static void __do_clflush(struct drm_i915_gem_object *obj)
 {
 	GEM_BUG_ON(!i915_gem_object_has_pages(obj));
 	drm_clflush_sg(obj->mm.pages);
-
-	i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
 }
 
 static void clflush_work(struct dma_fence_work *base)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 26532c07d467..ab1fc2d930e1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -63,7 +63,6 @@ flush_write_domain(struct drm_i915_gem_object *obj, unsigned int flush_domains)
 		}
 		spin_unlock(&obj->vma.lock);
 
-		i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
 		break;
 
 	case I915_GEM_DOMAIN_WC:
@@ -615,9 +614,6 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 out_unlock:
 	i915_gem_object_unlock(obj);
 
-	if (!err && write_domain)
-		i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
-
 out:
 	i915_gem_object_put(obj);
 	return err;
@@ -728,7 +724,6 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 	}
 
 out:
-	i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
 	obj->mm.dirty = true;
 	/* return with the pages pinned */
 	return 0;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 1a9e1f940a7d..f7ba66deb923 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -394,30 +394,6 @@ static void i915_gem_free_object(struct drm_gem_object *gem_obj)
 		queue_delayed_work(i915->wq, &i915->mm.free_work, 0);
 }
 
-void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
-					 enum fb_op_origin origin)
-{
-	struct intel_frontbuffer *front;
-
-	front = __intel_frontbuffer_get(obj);
-	if (front) {
-		intel_frontbuffer_flush(front, origin);
-		intel_frontbuffer_put(front);
-	}
-}
-
-void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
-					      enum fb_op_origin origin)
-{
-	struct intel_frontbuffer *front;
-
-	front = __intel_frontbuffer_get(obj);
-	if (front) {
-		intel_frontbuffer_invalidate(front, origin);
-		intel_frontbuffer_put(front);
-	}
-}
-
 static void
 i915_gem_object_read_from_page_kmap(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)
 {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 02c37fe4a535..d7a08172b239 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -578,22 +578,6 @@ void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
 void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
 					      enum fb_op_origin origin);
 
-static inline void
-i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
-				  enum fb_op_origin origin)
-{
-	if (unlikely(rcu_access_pointer(obj->frontbuffer)))
-		__i915_gem_object_flush_frontbuffer(obj, origin);
-}
-
-static inline void
-i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
-				       enum fb_op_origin origin)
-{
-	if (unlikely(rcu_access_pointer(obj->frontbuffer)))
-		__i915_gem_object_invalidate_frontbuffer(obj, origin);
-}
-
 int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size);
 
 bool i915_gem_object_is_shmem(const struct drm_i915_gem_object *obj);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index ca6faffcc496..e98a9884cf5a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -151,19 +151,12 @@ int i915_gem_object_pwrite_phys(struct drm_i915_gem_object *obj,
 	if (err)
 		return err;
 
-	/*
-	 * We manually control the domain here and pretend that it
-	 * remains coherent i.e. in the GTT domain, like shmem_pwrite.
-	 */
-	i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
-
 	if (copy_from_user(vaddr, user_data, args->size))
 		return -EFAULT;
 
 	drm_clflush_virt_range(vaddr, args->size);
 	intel_gt_chipset_flush(to_gt(i915));
 
-	i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index e3a2c2a0e156..60838209f9cd 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -563,8 +563,6 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
 		goto out_rpm;
 	}
 
-	i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
-
 	user_data = u64_to_user_ptr(args->data_ptr);
 	offset = args->offset;
 	remain = args->size;
@@ -607,7 +605,6 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
 	}
 
 	intel_gt_flush_ggtt_writes(ggtt->vm.gt);
-	i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
 
 	i915_gem_gtt_cleanup(obj, &node, vma);
 out_rpm:
@@ -694,8 +691,6 @@ i915_gem_shmem_pwrite(struct drm_i915_gem_object *obj,
 		offset = 0;
 	}
 
-	i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
-
 	i915_gem_object_unpin_pages(obj);
 	return ret;
 
-- 
2.25.1

