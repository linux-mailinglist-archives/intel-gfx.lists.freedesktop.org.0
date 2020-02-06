Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A02B3154D97
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 21:57:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF33E6FB53;
	Thu,  6 Feb 2020 20:57:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CCA96FB53
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 20:57:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20141869-1500050 
 for multiple; Thu, 06 Feb 2020 20:57:01 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 20:56:59 +0000
Message-Id: <20200206205700.2654161-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: drop
 igt_ppgtt_exhaust_huge
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matthew Auld <matthew.auld@intel.com>

We already have tests that exhaustively exercise the most interesting
page-size combinations, along with tests that offer randomisation, and
so we should already be testing objects(local, system) with a varying
mix of page-sizes, which leaves igt_ppgtt_exhaust_huge providing not
much in terms of extra coverage.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/selftests/huge_pages.c   | 102 ------------------
 1 file changed, 102 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 9311250d7d6f..2d0fd50c5312 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -1208,107 +1208,6 @@ static int igt_write_huge(struct i915_gem_context *ctx,
 	return err;
 }
 
-static int igt_ppgtt_exhaust_huge(void *arg)
-{
-	struct i915_gem_context *ctx = arg;
-	struct drm_i915_private *i915 = ctx->i915;
-	unsigned long supported = INTEL_INFO(i915)->page_sizes;
-	static unsigned int pages[ARRAY_SIZE(page_sizes)];
-	struct drm_i915_gem_object *obj;
-	unsigned int size_mask;
-	unsigned int page_mask;
-	int n, i;
-	int err = -ENODEV;
-
-	if (supported == I915_GTT_PAGE_SIZE_4K)
-		return 0;
-
-	/*
-	 * Sanity check creating objects with a varying mix of page sizes --
-	 * ensuring that our writes lands in the right place.
-	 */
-
-	n = 0;
-	for_each_set_bit(i, &supported, ilog2(I915_GTT_MAX_PAGE_SIZE) + 1)
-		pages[n++] = BIT(i);
-
-	for (size_mask = 2; size_mask < BIT(n); size_mask++) {
-		unsigned int size = 0;
-
-		for (i = 0; i < n; i++) {
-			if (size_mask & BIT(i))
-				size |= pages[i];
-		}
-
-		/*
-		 * For our page mask we want to enumerate all the page-size
-		 * combinations which will fit into our chosen object size.
-		 */
-		for (page_mask = 2; page_mask <= size_mask; page_mask++) {
-			unsigned int page_sizes = 0;
-
-			for (i = 0; i < n; i++) {
-				if (page_mask & BIT(i))
-					page_sizes |= pages[i];
-			}
-
-			/*
-			 * Ensure that we can actually fill the given object
-			 * with our chosen page mask.
-			 */
-			if (!IS_ALIGNED(size, BIT(__ffs(page_sizes))))
-				continue;
-
-			obj = huge_pages_object(i915, size, page_sizes);
-			if (IS_ERR(obj)) {
-				err = PTR_ERR(obj);
-				goto out_device;
-			}
-
-			err = i915_gem_object_pin_pages(obj);
-			if (err) {
-				i915_gem_object_put(obj);
-
-				if (err == -ENOMEM) {
-					pr_info("unable to get pages, size=%u, pages=%u\n",
-						size, page_sizes);
-					err = 0;
-					break;
-				}
-
-				pr_err("pin_pages failed, size=%u, pages=%u\n",
-				       size_mask, page_mask);
-
-				goto out_device;
-			}
-
-			/* Force the page-size for the gtt insertion */
-			obj->mm.page_sizes.sg = page_sizes;
-
-			err = igt_write_huge(ctx, obj);
-			if (err) {
-				pr_err("exhaust write-huge failed with size=%u\n",
-				       size);
-				goto out_unpin;
-			}
-
-			i915_gem_object_unpin_pages(obj);
-			__i915_gem_object_put_pages(obj);
-			i915_gem_object_put(obj);
-		}
-	}
-
-	goto out_device;
-
-out_unpin:
-	i915_gem_object_unpin_pages(obj);
-	i915_gem_object_put(obj);
-out_device:
-	mkwrite_device_info(i915)->page_sizes = supported;
-
-	return err;
-}
-
 typedef struct drm_i915_gem_object *
 (*igt_create_fn)(struct drm_i915_private *i915, u32 size, u32 flags);
 
@@ -1900,7 +1799,6 @@ int i915_gem_huge_page_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_shrink_thp),
 		SUBTEST(igt_ppgtt_pin_update),
 		SUBTEST(igt_tmpfs_fallback),
-		SUBTEST(igt_ppgtt_exhaust_huge),
 		SUBTEST(igt_ppgtt_smoke_huge),
 		SUBTEST(igt_ppgtt_sanity_check),
 	};
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
