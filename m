Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2672FB9C1
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 15:49:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506366E402;
	Tue, 19 Jan 2021 14:49:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F359D6E3F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 14:49:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23640083-1500050 
 for multiple; Tue, 19 Jan 2021 14:49:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 14:49:11 +0000
Message-Id: <20210119144912.12653-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210119144912.12653-1-chris@chris-wilson.co.uk>
References: <20210119144912.12653-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/gem: Make
 i915_gem_object_flush_write_domain() static
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

flush_write_domain() is only used within the GEM domain managament code,
so move it to i915_gem_domain.c and drop the export.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c | 58 +++++++++++++++++++---
 drivers/gpu/drm/i915/gem/i915_gem_object.c | 47 ------------------
 drivers/gpu/drm/i915/gem/i915_gem_object.h |  4 --
 3 files changed, 52 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index fcce6909f201..f0379b550dfc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -5,6 +5,7 @@
  */
 
 #include "display/intel_frontbuffer.h"
+#include "gt/intel_gt.h"
 
 #include "i915_drv.h"
 #include "i915_gem_clflush.h"
@@ -15,13 +16,58 @@
 #include "i915_gem_lmem.h"
 #include "i915_gem_mman.h"
 
+static bool gpu_write_needs_clflush(struct drm_i915_gem_object *obj)
+{
+	return !(obj->cache_level == I915_CACHE_NONE ||
+		 obj->cache_level == I915_CACHE_WT);
+}
+
+static void
+flush_write_domain(struct drm_i915_gem_object *obj, unsigned int flush_domains)
+{
+	struct i915_vma *vma;
+
+	assert_object_held(obj);
+
+	if (!(obj->write_domain & flush_domains))
+		return;
+
+	switch (obj->write_domain) {
+	case I915_GEM_DOMAIN_GTT:
+		spin_lock(&obj->vma.lock);
+		for_each_ggtt_vma(vma, obj) {
+			if (i915_vma_unset_ggtt_write(vma))
+				intel_gt_flush_ggtt_writes(vma->vm->gt);
+		}
+		spin_unlock(&obj->vma.lock);
+
+		i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
+		break;
+
+	case I915_GEM_DOMAIN_WC:
+		wmb();
+		break;
+
+	case I915_GEM_DOMAIN_CPU:
+		i915_gem_clflush_object(obj, I915_CLFLUSH_SYNC);
+		break;
+
+	case I915_GEM_DOMAIN_RENDER:
+		if (gpu_write_needs_clflush(obj))
+			obj->cache_dirty = true;
+		break;
+	}
+
+	obj->write_domain = 0;
+}
+
 static void __i915_gem_object_flush_for_display(struct drm_i915_gem_object *obj)
 {
 	/*
 	 * We manually flush the CPU domain so that we can override and
 	 * force the flush for the display, and perform it asyncrhonously.
 	 */
-	i915_gem_object_flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
+	flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
 	if (obj->cache_dirty)
 		i915_gem_clflush_object(obj, I915_CLFLUSH_FORCE);
 	obj->write_domain = 0;
@@ -80,7 +126,7 @@ i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write)
 	if (ret)
 		return ret;
 
-	i915_gem_object_flush_write_domain(obj, ~I915_GEM_DOMAIN_WC);
+	flush_write_domain(obj, ~I915_GEM_DOMAIN_WC);
 
 	/* Serialise direct access to this object with the barriers for
 	 * coherent writes from the GPU, by effectively invalidating the
@@ -141,7 +187,7 @@ i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj, bool write)
 	if (ret)
 		return ret;
 
-	i915_gem_object_flush_write_domain(obj, ~I915_GEM_DOMAIN_GTT);
+	flush_write_domain(obj, ~I915_GEM_DOMAIN_GTT);
 
 	/* Serialise direct access to this object with the barriers for
 	 * coherent writes from the GPU, by effectively invalidating the
@@ -451,7 +497,7 @@ i915_gem_object_set_to_cpu_domain(struct drm_i915_gem_object *obj, bool write)
 	if (ret)
 		return ret;
 
-	i915_gem_object_flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
+	flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
 
 	/* Flush the CPU cache if it's still invalid. */
 	if ((obj->read_domains & I915_GEM_DOMAIN_CPU) == 0) {
@@ -619,7 +665,7 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 			goto out;
 	}
 
-	i915_gem_object_flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
+	flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
 
 	/* If we're not in the cpu read domain, set ourself into the gtt
 	 * read domain and manually flush cachelines (if required). This
@@ -670,7 +716,7 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 			goto out;
 	}
 
-	i915_gem_object_flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
+	flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
 
 	/* If we're not in the cpu write domain, set ourself into the
 	 * gtt write domain and manually flush cachelines (as required).
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 00d24000b5e8..83c6ee6a509a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -25,7 +25,6 @@
 #include <linux/sched/mm.h>
 
 #include "display/intel_frontbuffer.h"
-#include "gt/intel_gt.h"
 #include "i915_drv.h"
 #include "i915_gem_clflush.h"
 #include "i915_gem_context.h"
@@ -313,52 +312,6 @@ static void i915_gem_free_object(struct drm_gem_object *gem_obj)
 		queue_work(i915->wq, &i915->mm.free_work);
 }
 
-static bool gpu_write_needs_clflush(struct drm_i915_gem_object *obj)
-{
-	return !(obj->cache_level == I915_CACHE_NONE ||
-		 obj->cache_level == I915_CACHE_WT);
-}
-
-void
-i915_gem_object_flush_write_domain(struct drm_i915_gem_object *obj,
-				   unsigned int flush_domains)
-{
-	struct i915_vma *vma;
-
-	assert_object_held(obj);
-
-	if (!(obj->write_domain & flush_domains))
-		return;
-
-	switch (obj->write_domain) {
-	case I915_GEM_DOMAIN_GTT:
-		spin_lock(&obj->vma.lock);
-		for_each_ggtt_vma(vma, obj) {
-			if (i915_vma_unset_ggtt_write(vma))
-				intel_gt_flush_ggtt_writes(vma->vm->gt);
-		}
-		spin_unlock(&obj->vma.lock);
-
-		i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
-		break;
-
-	case I915_GEM_DOMAIN_WC:
-		wmb();
-		break;
-
-	case I915_GEM_DOMAIN_CPU:
-		i915_gem_clflush_object(obj, I915_CLFLUSH_SYNC);
-		break;
-
-	case I915_GEM_DOMAIN_RENDER:
-		if (gpu_write_needs_clflush(obj))
-			obj->cache_dirty = true;
-		break;
-	}
-
-	obj->write_domain = 0;
-}
-
 void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
 					 enum fb_op_origin origin)
 {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 6e28159a883d..72c699088be0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -453,10 +453,6 @@ static inline void i915_gem_object_unpin_map(struct drm_i915_gem_object *obj)
 
 void __i915_gem_object_release_map(struct drm_i915_gem_object *obj);
 
-void
-i915_gem_object_flush_write_domain(struct drm_i915_gem_object *obj,
-				   unsigned int flush_domains);
-
 int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 				 unsigned int *needs_clflush);
 int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
