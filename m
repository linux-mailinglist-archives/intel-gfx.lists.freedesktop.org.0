Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E6E28BB2F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:47:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 434E46E4AF;
	Mon, 12 Oct 2020 14:47:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 046786E4B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:47:18 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 16:47:02 +0200
Message-Id: <20201012144706.555345-58-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
References: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 57/61] drm/i915/selftests: Prepare memory
 region tests for obj->mm.lock removal
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

Use the unlocked variants for pin_map and pin_pages, and add lock
around unpinning/putting pages.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../drm/i915/selftests/intel_memory_region.c   | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 334b0648e253..ccd4b65a272f 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -31,10 +31,12 @@ static void close_objects(struct intel_memory_region *mem,
 	struct drm_i915_gem_object *obj, *on;
 
 	list_for_each_entry_safe(obj, on, objects, st_link) {
+		i915_gem_object_lock(obj, NULL);
 		if (i915_gem_object_has_pinned_pages(obj))
 			i915_gem_object_unpin_pages(obj);
 		/* No polluting the memory region between tests */
 		__i915_gem_object_put_pages(obj);
+		i915_gem_object_unlock(obj);
 		list_del(&obj->st_link);
 		i915_gem_object_put(obj);
 	}
@@ -69,7 +71,7 @@ static int igt_mock_fill(void *arg)
 			break;
 		}
 
-		err = i915_gem_object_pin_pages(obj);
+		err = i915_gem_object_pin_pages_unlocked(obj);
 		if (err) {
 			i915_gem_object_put(obj);
 			break;
@@ -109,7 +111,7 @@ igt_object_create(struct intel_memory_region *mem,
 	if (IS_ERR(obj))
 		return obj;
 
-	err = i915_gem_object_pin_pages(obj);
+	err = i915_gem_object_pin_pages_unlocked(obj);
 	if (err)
 		goto put;
 
@@ -123,8 +125,10 @@ igt_object_create(struct intel_memory_region *mem,
 
 static void igt_object_release(struct drm_i915_gem_object *obj)
 {
+	i915_gem_object_lock(obj, NULL);
 	i915_gem_object_unpin_pages(obj);
 	__i915_gem_object_put_pages(obj);
+	i915_gem_object_unlock(obj);
 	list_del(&obj->st_link);
 	i915_gem_object_put(obj);
 }
@@ -280,7 +284,7 @@ static int igt_cpu_check(struct drm_i915_gem_object *obj, u32 dword, u32 val)
 	if (err)
 		return err;
 
-	ptr = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	ptr = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
 	if (IS_ERR(ptr))
 		return PTR_ERR(ptr);
 
@@ -385,7 +389,7 @@ static int igt_lmem_create(void *arg)
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
-	err = i915_gem_object_pin_pages(obj);
+	err = i915_gem_object_pin_pages_unlocked(obj);
 	if (err)
 		goto out_put;
 
@@ -424,7 +428,7 @@ static int igt_lmem_write_gpu(void *arg)
 		goto out_file;
 	}
 
-	err = i915_gem_object_pin_pages(obj);
+	err = i915_gem_object_pin_pages_unlocked(obj);
 	if (err)
 		goto out_put;
 
@@ -496,7 +500,7 @@ static int igt_lmem_write_cpu(void *arg)
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
-	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	vaddr = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
 	if (IS_ERR(vaddr)) {
 		err = PTR_ERR(vaddr);
 		goto out_put;
@@ -600,7 +604,7 @@ create_region_for_mapping(struct intel_memory_region *mr, u64 size, u32 type,
 		return obj;
 	}
 
-	addr = i915_gem_object_pin_map(obj, type);
+	addr = i915_gem_object_pin_map_unlocked(obj, type);
 	if (IS_ERR(addr)) {
 		i915_gem_object_put(obj);
 		if (PTR_ERR(addr) == -ENXIO)
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
