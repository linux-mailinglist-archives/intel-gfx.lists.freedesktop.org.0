Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 297E528136B
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 15:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98BAF6E95F;
	Fri,  2 Oct 2020 12:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F1BD6E978
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 12:59:50 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 14:59:18 +0200
Message-Id: <20201002125939.50817-41-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
References: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 40/61] drm/i915/selftests: Prepare huge_pages
 testcases for obj->mm.lock removal.
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

Straightforward conversion, just convert a bunch of calls to
unlocked versions.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/selftests/huge_pages.c   | 28 ++++++++++++++-----
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index a7d5f7785f32..34f248c205ca 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -568,7 +568,7 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 			goto out_put;
 		}
 
-		err = i915_gem_object_pin_pages(obj);
+		err = i915_gem_object_pin_pages_unlocked(obj);
 		if (err)
 			goto out_put;
 
@@ -632,15 +632,19 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 				break;
 		}
 
+		i915_gem_object_lock(obj, NULL);
 		i915_gem_object_unpin_pages(obj);
 		__i915_gem_object_put_pages(obj);
+		i915_gem_object_unlock(obj);
 		i915_gem_object_put(obj);
 	}
 
 	return 0;
 
 out_unpin:
+	i915_gem_object_lock(obj, NULL);
 	i915_gem_object_unpin_pages(obj);
+	i915_gem_object_unlock(obj);
 out_put:
 	i915_gem_object_put(obj);
 
@@ -654,8 +658,10 @@ static void close_object_list(struct list_head *objects,
 
 	list_for_each_entry_safe(obj, on, objects, st_link) {
 		list_del(&obj->st_link);
+		i915_gem_object_lock(obj, NULL);
 		i915_gem_object_unpin_pages(obj);
 		__i915_gem_object_put_pages(obj);
+		i915_gem_object_unlock(obj);
 		i915_gem_object_put(obj);
 	}
 }
@@ -692,7 +698,7 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
 			break;
 		}
 
-		err = i915_gem_object_pin_pages(obj);
+		err = i915_gem_object_pin_pages_unlocked(obj);
 		if (err) {
 			i915_gem_object_put(obj);
 			break;
@@ -868,7 +874,7 @@ static int igt_mock_ppgtt_64K(void *arg)
 			if (IS_ERR(obj))
 				return PTR_ERR(obj);
 
-			err = i915_gem_object_pin_pages(obj);
+			err = i915_gem_object_pin_pages_unlocked(obj);
 			if (err)
 				goto out_object_put;
 
@@ -922,8 +928,10 @@ static int igt_mock_ppgtt_64K(void *arg)
 			}
 
 			i915_vma_unpin(vma);
+			i915_gem_object_lock(obj, NULL);
 			i915_gem_object_unpin_pages(obj);
 			__i915_gem_object_put_pages(obj);
+			i915_gem_object_unlock(obj);
 			i915_gem_object_put(obj);
 		}
 	}
@@ -933,7 +941,9 @@ static int igt_mock_ppgtt_64K(void *arg)
 out_vma_unpin:
 	i915_vma_unpin(vma);
 out_object_unpin:
+	i915_gem_object_lock(obj, NULL);
 	i915_gem_object_unpin_pages(obj);
+	i915_gem_object_unlock(obj);
 out_object_put:
 	i915_gem_object_put(obj);
 
@@ -1003,7 +1013,7 @@ static int __cpu_check_vmap(struct drm_i915_gem_object *obj, u32 dword, u32 val)
 	if (err)
 		return err;
 
-	ptr = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	ptr = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
 	if (IS_ERR(ptr))
 		return PTR_ERR(ptr);
 
@@ -1283,7 +1293,7 @@ static int igt_ppgtt_smoke_huge(void *arg)
 			return err;
 		}
 
-		err = i915_gem_object_pin_pages(obj);
+		err = i915_gem_object_pin_pages_unlocked(obj);
 		if (err) {
 			if (err == -ENXIO || err == -E2BIG) {
 				i915_gem_object_put(obj);
@@ -1306,8 +1316,10 @@ static int igt_ppgtt_smoke_huge(void *arg)
 			       __func__, size, i);
 		}
 out_unpin:
+		i915_gem_object_lock(obj, NULL);
 		i915_gem_object_unpin_pages(obj);
 		__i915_gem_object_put_pages(obj);
+		i915_gem_object_unlock(obj);
 out_put:
 		i915_gem_object_put(obj);
 
@@ -1380,7 +1392,7 @@ static int igt_ppgtt_sanity_check(void *arg)
 				return err;
 			}
 
-			err = i915_gem_object_pin_pages(obj);
+			err = i915_gem_object_pin_pages_unlocked(obj);
 			if (err) {
 				i915_gem_object_put(obj);
 				goto out;
@@ -1394,8 +1406,10 @@ static int igt_ppgtt_sanity_check(void *arg)
 
 			err = igt_write_huge(ctx, obj);
 
+			i915_gem_object_lock(obj, NULL);
 			i915_gem_object_unpin_pages(obj);
 			__i915_gem_object_put_pages(obj);
+			i915_gem_object_unlock(obj);
 			i915_gem_object_put(obj);
 
 			if (err) {
@@ -1440,7 +1454,7 @@ static int igt_tmpfs_fallback(void *arg)
 		goto out_restore;
 	}
 
-	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	vaddr = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
 	if (IS_ERR(vaddr)) {
 		err = PTR_ERR(vaddr);
 		goto out_put;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
