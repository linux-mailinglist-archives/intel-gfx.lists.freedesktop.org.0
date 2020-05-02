Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B09921C2803
	for <lists+intel-gfx@lfdr.de>; Sat,  2 May 2020 21:28:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A944C6E03A;
	Sat,  2 May 2020 19:28:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B06556E03A
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 May 2020 19:28:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21093493-1500050 
 for multiple; Sat, 02 May 2020 20:28:22 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  2 May 2020 20:28:23 +0100
Message-Id: <20200502192823.17553-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Implement legacy MI_STORE_DATA_IMM
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

The older arches did not convert MI_STORE_DATA_IMM to using the GTT, but
left them writing to a physical address. The notes suggest that the
primary reason would be so that the writes were cache coherent, as the
CPU cache uses physical tagging. As such we did not implement the
legacy variant of MI_STORE_DATA_IMM and so left all the relocations
synchronous -- but with a small function to convert from the vma address
into the physical address, we can implement asynchronous relocs on these
older arches, fixing up a few tests that require them.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/757
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 35 +++++++++++++++++--
 1 file changed, 32 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index cce7df231cb9..8ffdab80d882 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1376,6 +1376,11 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	return err;
 }
 
+static bool can_store_dword(const struct intel_engine_cs *engine)
+{
+	return engine->class != VIDEO_DECODE_CLASS || !IS_GEN(engine->i915, 6);
+}
+
 static u32 *reloc_gpu(struct i915_execbuffer *eb,
 		      struct i915_vma *vma,
 		      unsigned int len)
@@ -1387,9 +1392,9 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 	if (unlikely(!cache->rq)) {
 		struct intel_engine_cs *engine = eb->engine;
 
-		if (!intel_engine_can_store_dword(engine)) {
+		if (!can_store_dword(engine)) {
 			engine = engine->gt->engine_class[COPY_ENGINE_CLASS][0];
-			if (!engine || !intel_engine_can_store_dword(engine))
+			if (!engine)
 				return ERR_PTR(-ENODEV);
 		}
 
@@ -1435,6 +1440,20 @@ static inline bool use_reloc_gpu(struct i915_vma *vma)
 	return !dma_resv_test_signaled_rcu(vma->resv, true);
 }
 
+static unsigned long vma_phys_addr(struct i915_vma *vma, u32 offset)
+{
+	struct page *page;
+	unsigned long addr;
+
+	GEM_BUG_ON(vma->pages != vma->obj->mm.pages);
+
+	page = i915_gem_object_get_page(vma->obj, offset >> PAGE_SHIFT);
+	addr = PFN_PHYS(page_to_pfn(page));
+	GEM_BUG_ON(overflows_type(addr, u32)); /* expected dma32 */
+
+	return addr + offset_in_page(offset);
+}
+
 static u64
 relocate_entry(struct i915_vma *vma,
 	       const struct drm_i915_gem_relocation_entry *reloc,
@@ -1489,15 +1508,25 @@ relocate_entry(struct i915_vma *vma,
 			*batch++ = 0;
 			*batch++ = addr;
 			*batch++ = target_offset;
+		} else if (IS_I965G(eb->i915)) {
+			*batch++ = MI_STORE_DWORD_IMM_GEN4;
+			*batch++ = 0;
+			*batch++ = vma_phys_addr(vma, offset);
+			*batch++ = target_offset;
 		} else if (gen >= 4) {
 			*batch++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 			*batch++ = 0;
 			*batch++ = addr;
 			*batch++ = target_offset;
-		} else {
+		} else if (gen >= 3 &&
+			   !(IS_I915G(eb->i915) || IS_I915GM(eb->i915))) {
 			*batch++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
 			*batch++ = addr;
 			*batch++ = target_offset;
+		} else {
+			*batch++ = MI_STORE_DWORD_IMM;
+			*batch++ = vma_phys_addr(vma, offset);
+			*batch++ = target_offset;
 		}
 
 		goto out;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
