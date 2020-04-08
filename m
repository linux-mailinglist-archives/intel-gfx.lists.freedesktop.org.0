Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 217C31A1F21
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 12:48:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5F86EA1F;
	Wed,  8 Apr 2020 10:48:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C75886E0C8
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 10:48:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20837630-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2020 11:48:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 11:48:06 +0100
Message-Id: <20200408104812.22386-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200408104812.22386-1-chris@chris-wilson.co.uk>
References: <20200408104812.22386-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/9] drm/i915/gem: Apply more mb() around clflush
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
index 517898aa634c..005b42acf7c8 100644
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
