Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B32C1E86B4
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 20:32:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E42A6E961;
	Fri, 29 May 2020 18:32:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B27FE6E95D
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 18:32:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21338668-1500050 
 for multiple; Fri, 29 May 2020 19:32:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 May 2020 19:32:04 +0100
Message-Id: <20200529183204.16850-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529183204.16850-1-chris@chris-wilson.co.uk>
References: <20200529183204.16850-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Give each object class a
 friendly name
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
Cc: matthew.auld@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Name the object classes and their offspring for easier lockdep
debugging.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c           | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_internal.c         | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c             | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_object.c           | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h     | 2 ++
 drivers/gpu/drm/i915/gem/i915_gem_phys.c             | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c            | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c           | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c          | 1 +
 drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c | 1 +
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c      | 3 +++
 drivers/gpu/drm/i915/gvt/dmabuf.c                    | 1 +
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c        | 1 +
 drivers/gpu/drm/i915/selftests/mock_region.c         | 1 +
 14 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 7db5a793739d..2679380159fc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -217,6 +217,7 @@ static void i915_gem_object_put_pages_dmabuf(struct drm_i915_gem_object *obj,
 }
 
 static const struct drm_i915_gem_object_ops i915_gem_object_dmabuf_ops = {
+	.name = "i915_gem_object_dmabuf",
 	.get_pages = i915_gem_object_get_pages_dmabuf,
 	.put_pages = i915_gem_object_put_pages_dmabuf,
 };
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_internal.c b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
index cbbff81aa0af..ad22f42541bd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_internal.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
@@ -137,6 +137,7 @@ static void i915_gem_object_put_pages_internal(struct drm_i915_gem_object *obj,
 }
 
 static const struct drm_i915_gem_object_ops i915_gem_object_internal_ops = {
+	.name = "i915_gem_object_internal",
 	.flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE |
 		 I915_GEM_OBJECT_IS_SHRINKABLE,
 	.get_pages = i915_gem_object_get_pages_internal,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
index 70543c83df06..932ee21e6609 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
@@ -9,6 +9,7 @@
 #include "i915_drv.h"
 
 const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops = {
+	.name = "i915_gem_object_lmem",
 	.flags = I915_GEM_OBJECT_HAS_IOMEM,
 
 	.get_pages = i915_gem_object_get_pages_buddy,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 21635dd415a3..b6ec5b50d93b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -53,7 +53,7 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
 			  const struct drm_i915_gem_object_ops *ops,
 			  struct lock_class_key *key)
 {
-	__mutex_init(&obj->mm.lock, "obj->mm.lock", key);
+	__mutex_init(&obj->mm.lock, ops->name ?: "obj->mm.lock", key);
 
 	spin_lock_init(&obj->vma.lock);
 	INIT_LIST_HEAD(&obj->vma.list);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 54ee658bb168..b1f82a11aef2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -61,6 +61,8 @@ struct drm_i915_gem_object_ops {
 
 	int (*dmabuf_export)(struct drm_i915_gem_object *obj);
 	void (*release)(struct drm_i915_gem_object *obj);
+
+	const char *name; /* friendly name for debug, e.g. lockdep classes */
 };
 
 enum i915_mmap_type {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 12245a47e5fb..28147aab47b9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -140,6 +140,7 @@ static void phys_release(struct drm_i915_gem_object *obj)
 }
 
 static const struct drm_i915_gem_object_ops i915_gem_phys_ops = {
+	.name = "i915_gem_object_phys",
 	.get_pages = i915_gem_object_get_pages_phys,
 	.put_pages = i915_gem_object_put_pages_phys,
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 7cf8548ff708..38113d3c0138 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -429,6 +429,7 @@ static void shmem_release(struct drm_i915_gem_object *obj)
 }
 
 const struct drm_i915_gem_object_ops i915_gem_shmem_ops = {
+	.name = "i915_gem_object_shmem",
 	.flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE |
 		 I915_GEM_OBJECT_IS_SHRINKABLE,
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index dc250278bd2c..e0f21f12d3ce 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -566,6 +566,7 @@ i915_gem_object_release_stolen(struct drm_i915_gem_object *obj)
 }
 
 static const struct drm_i915_gem_object_ops i915_gem_object_stolen_ops = {
+	.name = "i915_gem_object_stolen",
 	.get_pages = i915_gem_object_get_pages_stolen,
 	.put_pages = i915_gem_object_put_pages_stolen,
 	.release = i915_gem_object_release_stolen,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 2226146b01c9..2adc0ea429fb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -700,6 +700,7 @@ i915_gem_userptr_dmabuf_export(struct drm_i915_gem_object *obj)
 }
 
 static const struct drm_i915_gem_object_ops i915_gem_userptr_ops = {
+	.name = "i915_gem_object_userptr",
 	.flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE |
 		 I915_GEM_OBJECT_IS_SHRINKABLE |
 		 I915_GEM_OBJECT_NO_MMAP |
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
index 2b46c6530da9..a768ec61e966 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
@@ -88,6 +88,7 @@ static void huge_put_pages(struct drm_i915_gem_object *obj,
 }
 
 static const struct drm_i915_gem_object_ops huge_ops = {
+	.name = "huge-gem",
 	.flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE,
 	.get_pages = huge_get_pages,
 	.put_pages = huge_put_pages,
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index a0ed2fab0ff3..8291ede6902c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -139,6 +139,7 @@ static void put_huge_pages(struct drm_i915_gem_object *obj,
 }
 
 static const struct drm_i915_gem_object_ops huge_page_ops = {
+	.name = "huge-gem",
 	.flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE |
 		 I915_GEM_OBJECT_IS_SHRINKABLE,
 	.get_pages = get_huge_pages,
@@ -283,12 +284,14 @@ static void fake_put_huge_pages(struct drm_i915_gem_object *obj,
 }
 
 static const struct drm_i915_gem_object_ops fake_ops = {
+	.name = "fake-gem",
 	.flags = I915_GEM_OBJECT_IS_SHRINKABLE,
 	.get_pages = fake_get_huge_pages,
 	.put_pages = fake_put_huge_pages,
 };
 
 static const struct drm_i915_gem_object_ops fake_ops_single = {
+	.name = "fake-gem",
 	.flags = I915_GEM_OBJECT_IS_SHRINKABLE,
 	.get_pages = fake_get_huge_pages_single,
 	.put_pages = fake_put_huge_pages,
diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.c b/drivers/gpu/drm/i915/gvt/dmabuf.c
index 37fc460414a8..c3eb3838fe88 100644
--- a/drivers/gpu/drm/i915/gvt/dmabuf.c
+++ b/drivers/gpu/drm/i915/gvt/dmabuf.c
@@ -198,6 +198,7 @@ static void vgpu_gem_release(struct drm_i915_gem_object *gem_obj)
 }
 
 static const struct drm_i915_gem_object_ops intel_vgpu_gem_ops = {
+	.name = "i915_gem_object_vgpu",
 	.flags = I915_GEM_OBJECT_IS_PROXY,
 	.get_pages = vgpu_gem_get_pages,
 	.put_pages = vgpu_gem_put_pages,
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 2e471500a646..0016ffc7d914 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -97,6 +97,7 @@ static void fake_put_pages(struct drm_i915_gem_object *obj,
 }
 
 static const struct drm_i915_gem_object_ops fake_ops = {
+	.name = "fake-gem",
 	.flags = I915_GEM_OBJECT_IS_SHRINKABLE,
 	.get_pages = fake_get_pages,
 	.put_pages = fake_put_pages,
diff --git a/drivers/gpu/drm/i915/selftests/mock_region.c b/drivers/gpu/drm/i915/selftests/mock_region.c
index b2ad41c27e67..09660f5a0a4c 100644
--- a/drivers/gpu/drm/i915/selftests/mock_region.c
+++ b/drivers/gpu/drm/i915/selftests/mock_region.c
@@ -9,6 +9,7 @@
 #include "mock_region.h"
 
 static const struct drm_i915_gem_object_ops mock_region_obj_ops = {
+	.name = "mock-region",
 	.get_pages = i915_gem_object_get_pages_buddy,
 	.put_pages = i915_gem_object_put_pages_buddy,
 	.release = i915_gem_object_release_memory_region,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
