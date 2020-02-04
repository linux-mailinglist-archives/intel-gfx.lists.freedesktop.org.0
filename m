Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A57151E3B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 17:23:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 605CD6F3E8;
	Tue,  4 Feb 2020 16:23:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38B106F3E2
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 16:23:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20115101-1500050 
 for multiple; Tue, 04 Feb 2020 16:23:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 16:23:02 +0000
Message-Id: <20200204162302.1299516-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915: Never allow userptr into the new
 mapping types
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Commit 4f2a572eda67 ("drm/i915/userptr: Never allow userptr into the
mappable GGTT") made I915_GEM_MMAP_GTT IOCTLs to fail when attempted
on a userptr object in order to protect from a lockdep splat.  Later
on, new mapping types were introduced by commit cc662126b413
("drm/i915: Introduce DRM_I915_GEM_MMAP_OFFSET").  Those new mapping
types suffer from the same lockdep splat issue but they now succeed
when tried on top of a userptr object.  Fix it.

v2: Don't play with the -ENODEV driver response (Chris)

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c         | 3 +--
 drivers/gpu/drm/i915/gem/i915_gem_object.h       | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c      | 2 +-
 drivers/gpu/drm/i915/i915_gem.c                  | 3 ---
 5 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 0b6a442108de..e8cccc131c40 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -613,8 +613,7 @@ __assign_mmap_offset(struct drm_file *file,
 	if (!obj)
 		return -ENOENT;
 
-	if (mmap_type == I915_MMAP_TYPE_GTT &&
-	    i915_gem_object_never_bind_ggtt(obj)) {
+	if (i915_gem_object_never_mmap(obj)) {
 		err = -ENODEV;
 		goto out;
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 9c86f2dea947..e44a2f40b520 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -194,9 +194,9 @@ i915_gem_object_is_proxy(const struct drm_i915_gem_object *obj)
 }
 
 static inline bool
-i915_gem_object_never_bind_ggtt(const struct drm_i915_gem_object *obj)
+i915_gem_object_never_mmap(const struct drm_i915_gem_object *obj)
 {
-	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_NO_GGTT);
+	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_NO_MMAP);
 }
 
 static inline bool
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index c2174da35bb0..a0b10bcd8d8a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -34,7 +34,7 @@ struct drm_i915_gem_object_ops {
 #define I915_GEM_OBJECT_HAS_IOMEM	BIT(1)
 #define I915_GEM_OBJECT_IS_SHRINKABLE	BIT(2)
 #define I915_GEM_OBJECT_IS_PROXY	BIT(3)
-#define I915_GEM_OBJECT_NO_GGTT		BIT(4)
+#define I915_GEM_OBJECT_NO_MMAP		BIT(4)
 #define I915_GEM_OBJECT_ASYNC_CANCEL	BIT(5)
 
 	/* Interface between the GEM object and its backing storage.
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index a74d4ac6a39f..63ead7a2b64a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -704,7 +704,7 @@ i915_gem_userptr_dmabuf_export(struct drm_i915_gem_object *obj)
 static const struct drm_i915_gem_object_ops i915_gem_userptr_ops = {
 	.flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE |
 		 I915_GEM_OBJECT_IS_SHRINKABLE |
-		 I915_GEM_OBJECT_NO_GGTT |
+		 I915_GEM_OBJECT_NO_MMAP |
 		 I915_GEM_OBJECT_ASYNC_CANCEL,
 	.get_pages = i915_gem_userptr_get_pages,
 	.put_pages = i915_gem_userptr_put_pages,
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 56b9c1e0223f..10d128baf67a 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -941,9 +941,6 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
 	struct i915_vma *vma;
 	int ret;
 
-	if (i915_gem_object_never_bind_ggtt(obj))
-		return ERR_PTR(-ENODEV);
-
 	if (flags & PIN_MAPPABLE &&
 	    (!view || view->type == I915_GGTT_VIEW_NORMAL)) {
 		/*
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
