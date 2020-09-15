Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6871A26A1D6
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 11:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 001696E212;
	Tue, 15 Sep 2020 09:14:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A2376E212
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 09:14:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22431498-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 10:14:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Sep 2020 10:14:15 +0100
Message-Id: <20200915091417.4086-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915/gem: Avoid implicit vmap for highmem
 on x86-32
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

On 32b, highmem using a finite set of indirect PTE (i.e. vmap) to provide
virtual mappings of the high pages.  As these are finite, map_new_virtual()
must wait for some other kmap() to finish when it runs out. If we map a
large number of objects, there is no method for it to tell us to release
the mappings, and we deadlock.

However, if we make an explicit vmap of the page, that uses a larger
vmalloc arena, and also has the ability to tell us to release unwanted
mappings. Most importantly, it will fail and propagate an error instead
of waiting forever.

Fixes: fb8621d3bee8 ("drm/i915: Avoid allocating a vmap arena for a single page") #x86-32
References: e87666b52f00 ("drm/i915/shrinker: Hook up vmap allocation failure notifier")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Cc: <stable@vger.kernel.org> # v4.7+
---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c | 26 +++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index e8a083743e09..49ce5777c511 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -255,8 +255,30 @@ static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
 		return NULL;
 
 	/* A single page can always be kmapped */
-	if (n_pte == 1 && type == I915_MAP_WB)
-		return kmap(sg_page(sgt->sgl));
+	if (n_pte == 1 && type == I915_MAP_WB) {
+		struct page *page = sg_page(sgt->sgl);
+
+		/*
+		 * On 32b, highmem using a finite set of indirect PTE (i.e.
+		 * vmap) to provide virtual mappings of the high pages.
+		 * As these are finite, map_new_virtual() must wait for some
+		 * other kmap() to finish when it runs out. If we map a large
+		 * number of objects, there is no method for it to tell us
+		 * to release the mappings, and we deadlock.
+		 *
+		 * However, if we make an explicit vmap of the page, that
+		 * uses a larger vmalloc arena, and also has the ability
+		 * to tell us to release unwanted mappings. Most importantly,
+		 * it will fail and propagate an error instead of waiting
+		 * forever.
+		 *
+		 * So if the page is beyond the 32b boundary, make an explicit
+		 * vmap. On 64b, this check will be optimised away as we can
+		 * directly kmap any page on the system.
+		 */
+		if (!PageHighMem(page))
+			return kmap(page);
+	}
 
 	mem = stack;
 	if (n_pte > ARRAY_SIZE(stack)) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
