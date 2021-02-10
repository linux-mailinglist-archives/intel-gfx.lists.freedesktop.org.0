Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F2C317334
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 23:20:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F12826ED0E;
	Wed, 10 Feb 2021 22:20:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FC5A6ED0D
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 22:20:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23839047-1500050 
 for multiple; Wed, 10 Feb 2021 22:19:53 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Feb 2021 22:19:53 +0000
Message-Id: <20210210221955.10025-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210210221955.10025-1-chris@chris-wilson.co.uk>
References: <20210210221955.10025-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/selftests: Restrict partial-tiling
 to write into the object
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

Check that the address we are about to write into maps into the object
to avoid stray writes into the scratch page.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 39293d98f34d..df558ce95a94 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -104,9 +104,12 @@ static int check_partial_mapping(struct drm_i915_gem_object *obj,
 	GEM_BUG_ON(i915_gem_object_get_tiling(obj) != tile->tiling);
 	GEM_BUG_ON(i915_gem_object_get_stride(obj) != tile->stride);
 
-	page = i915_prandom_u32_max_state(npages, prng);
-	view = compute_partial_view(obj, page, MIN_CHUNK_PAGES);
+	do {
+		page = i915_prandom_u32_max_state(npages, prng);
+		offset = tiled_offset(tile, page << PAGE_SHIFT);
+	} while (offset >= obj->base.size);
 
+	view = compute_partial_view(obj, page, MIN_CHUNK_PAGES);
 	vma = i915_gem_object_ggtt_pin(obj, &view, 0, 0, PIN_MAPPABLE);
 	if (IS_ERR(vma)) {
 		pr_err("Failed to pin partial view: offset=%lu; err=%d\n",
@@ -129,10 +132,6 @@ static int check_partial_mapping(struct drm_i915_gem_object *obj,
 	iowrite32(page, io + n * PAGE_SIZE / sizeof(*io));
 	i915_vma_unpin_iomap(vma);
 
-	offset = tiled_offset(tile, page << PAGE_SHIFT);
-	if (offset >= obj->base.size)
-		goto out;
-
 	intel_gt_flush_ggtt_writes(&to_i915(obj->base.dev)->gt);
 
 	p = i915_gem_object_get_page(obj, offset >> PAGE_SHIFT);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
