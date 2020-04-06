Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B4519FA4C
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 18:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5B876E433;
	Mon,  6 Apr 2020 16:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 992B96E433
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 16:39:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20818680-1500050 
 for multiple; Mon, 06 Apr 2020 17:39:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Apr 2020 17:39:31 +0100
Message-Id: <20200406163931.6979-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Apply more mb() around clflush
 relocation paths
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Having spent some time with DBG_FORCE_RELOC == FORCE_CPU_RELOC, it
appears that our memory barriers around the clflush are lackluster for
our more seldom used paths. Seldom used does not mean never, so apply
the memory barriers or else we may randomly see incorrect relocation
addresses inside batches.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: stable@vger.kernel.org
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 230ba1aee355..d9ab517bbce9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1037,6 +1037,8 @@ static void *reloc_kmap(struct drm_i915_gem_object *obj,
 	void *vaddr;
 
 	if (cache->vaddr) {
+		if (cache->vaddr & CLFLUSH_AFTER)
+			mb();
 		kunmap_atomic(unmask_page(cache->vaddr));
 	} else {
 		unsigned int flushes;
@@ -1051,14 +1053,15 @@ static void *reloc_kmap(struct drm_i915_gem_object *obj,
 
 		cache->vaddr = flushes | KMAP;
 		cache->node.mm = (void *)obj;
-		if (flushes)
-			mb();
 	}
 
 	vaddr = kmap_atomic(i915_gem_object_get_dirty_page(obj, page));
 	cache->vaddr = unmask_flags(cache->vaddr) | (unsigned long)vaddr;
 	cache->page = page;
 
+	if (cache->vaddr & CLFLUSH_BEFORE)
+		mb();
+
 	return vaddr;
 }
 
@@ -1163,8 +1166,10 @@ static void clflush_write32(u32 *addr, u32 value, unsigned int flushes)
 		 * mb barriers at the start and end of the relocation phase
 		 * to ensure ordering of clflush wrt to the system.
 		 */
-		if (flushes & CLFLUSH_AFTER)
+		if (flushes & CLFLUSH_AFTER) {
+			mb();
 			clflushopt(addr);
+		}
 	} else
 		*addr = value;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
