Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4012912058D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 13:27:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F9F6E506;
	Mon, 16 Dec 2019 12:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36B796E506
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 12:26:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19594731-1500050 
 for multiple; Mon, 16 Dec 2019 12:26:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 12:26:03 +0000
Message-Id: <20191216122603.2598155-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Apply lmem size restriction to
 get_pages
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

When creating a handle, it is just that, an abstract handle. The fact
that we cannot currently support a handle larger than the size of the
backing storage is an artifact of our whole-object-at-a-time handling in
get_pages() and being an implementation limitation is best handled at
that point -- similar to shmem, where we only barf when asked to
populate the whole object if larger than RAM. (Pinning the whole object
at a time is major hindrance that we are likely to have to overcome in
the near future.) In the case of the buddy allocator, the late check is
preferable as the request size may often be smaller than the required
size.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c   | 3 ---
 drivers/gpu/drm/i915/intel_memory_region.c | 3 +++
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
index 0e2bf6b7e143..520cc9cac471 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
@@ -79,9 +79,6 @@ __i915_gem_lmem_object_create(struct intel_memory_region *mem,
 	struct drm_i915_private *i915 = mem->i915;
 	struct drm_i915_gem_object *obj;
 
-	if (size > BIT(mem->mm.max_order) * mem->mm.chunk_size)
-		return ERR_PTR(-E2BIG);
-
 	obj = i915_gem_object_alloc();
 	if (!obj)
 		return ERR_PTR(-ENOMEM);
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index baaeaecc64af..e24c280e5930 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -73,6 +73,9 @@ __intel_memory_region_get_pages_buddy(struct intel_memory_region *mem,
 		min_order = ilog2(size) - ilog2(mem->mm.chunk_size);
 	}
 
+	if (size > BIT(mem->mm.max_order) * mem->mm.chunk_size)
+		return -E2BIG;
+
 	n_pages = size >> ilog2(mem->mm.chunk_size);
 
 	mutex_lock(&mem->mm_lock);
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
