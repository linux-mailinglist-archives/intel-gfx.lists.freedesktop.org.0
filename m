Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5EA47C7F8
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Dec 2021 21:01:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B41B11227A;
	Tue, 21 Dec 2021 20:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 874E8112146;
 Tue, 21 Dec 2021 20:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640116875; x=1671652875;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NFcXM/ELeEJuNTgN+KKE62gM2vIjow9iw7ode9EcCWU=;
 b=FgsysVsJMo3FPeNpJFR/EbP+pTW4aPv0cEOh9+uUGDK4bHl2Ryu2Jw7b
 5fNU018Z3uqAJCXqyhZq1UUCsZWpFJEur5tMBrLBUpCdeDUydeMpOErgQ
 TRqBVh27hntCH+nMjvaPRdsEmI4Zk5KrBlXA+FrXw6AWvtn0nQQJU3qPG
 8bEWqLk7qmwrg884uGz9TMVJ6svBbgnuw2XnSB8nVsSK5a9MEK1Bnnzbe
 vv4frRvQgIxBV76tS8WPYJGDbhaxrdeBkJPQTy2xy23baYgU1vi0yAVGL
 U+fI32ccuOn3bnPn7UMz0/NZkeLossJ6JbEZhZnFTI51vcLYM9dDi0dmc g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="221157968"
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="221157968"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 12:01:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="616887473"
Received: from arajji-mobl.ger.corp.intel.com (HELO thellstr-mobl1.intel.com)
 ([10.249.254.222])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 12:01:13 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 21 Dec 2021 21:00:50 +0100
Message-Id: <20211221200050.436316-5-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211221200050.436316-1-thomas.hellstrom@linux.intel.com>
References: <20211221200050.436316-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 4/4] drm/i915: Require the vm mutex for
 i915_vma_bind()
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Protect updates of struct i915_vma flags and async binding / unbinding
with the vm::mutex. This means that i915_vma_bind() needs to assert
vm::mutex held. In order to make that possible drop the caching of
kmap_atomic() maps around i915_vma_bind().

An alternative would be to use kmap_local() but since we block cpu
unplugging during sleeps inside kmap_local() sections this may have
unwanted side-effects. Particularly since we might wait for gpu while
holding the vm mutex.

This change may theoretically increase execbuf cpu-usage on snb, but
at least on non-highmem systems that increase should be very small.

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 50 ++++++++++++++++++-
 drivers/gpu/drm/i915/i915_vma.c               |  1 +
 2 files changed, 50 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index ec7c4a29a720..b8330f0bf652 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1109,6 +1109,47 @@ static inline struct i915_ggtt *cache_to_ggtt(struct reloc_cache *cache)
 	return &i915->ggtt;
 }
 
+static void reloc_cache_unmap(struct reloc_cache *cache)
+{
+	void *vaddr;
+
+	if (!cache->vaddr)
+		return;
+
+	vaddr = unmask_page(cache->vaddr);
+	if (cache->vaddr & KMAP)
+		kunmap_atomic(vaddr);
+	else
+		io_mapping_unmap_atomic((void __iomem *)vaddr);
+}
+
+static void reloc_cache_remap(struct reloc_cache *cache,
+			      struct drm_i915_gem_object *obj)
+{
+	void *vaddr;
+
+	if (!cache->vaddr)
+		return;
+
+	if (cache->vaddr & KMAP) {
+		struct page *page = i915_gem_object_get_page(obj, cache->page);
+
+		vaddr = kmap_atomic(page);
+		cache->vaddr = unmask_flags(cache->vaddr) |
+			(unsigned long)vaddr;
+	} else {
+		struct i915_ggtt *ggtt = cache_to_ggtt(cache);
+		unsigned long offset;
+
+		offset = cache->node.start;
+		if (!drm_mm_node_allocated(&cache->node))
+			offset += cache->page << PAGE_SHIFT;
+
+		cache->vaddr = (unsigned long)
+			io_mapping_map_atomic_wc(&ggtt->iomap, offset);
+	}
+}
+
 static void reloc_cache_reset(struct reloc_cache *cache, struct i915_execbuffer *eb)
 {
 	void *vaddr;
@@ -1373,10 +1414,17 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 		 * batchbuffers.
 		 */
 		if (reloc->write_domain == I915_GEM_DOMAIN_INSTRUCTION &&
-		    GRAPHICS_VER(eb->i915) == 6) {
+		    GRAPHICS_VER(eb->i915) == 6 &&
+		    !i915_vma_is_bound(target->vma, I915_VMA_GLOBAL_BIND)) {
+			struct i915_vma *vma = target->vma;
+
+			reloc_cache_unmap(&eb->reloc_cache);
+			mutex_lock(&vma->vm->mutex);
 			err = i915_vma_bind(target->vma,
 					    target->vma->obj->cache_level,
 					    PIN_GLOBAL, NULL);
+			mutex_unlock(&vma->vm->mutex);
+			reloc_cache_remap(&eb->reloc_cache, ev->vma->obj);
 			if (err)
 				return err;
 		}
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index de24e4b3b19b..be208a8f1ed0 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -393,6 +393,7 @@ int i915_vma_bind(struct i915_vma *vma,
 	u32 bind_flags;
 	u32 vma_flags;
 
+	lockdep_assert_held(&vma->vm->mutex);
 	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
 	GEM_BUG_ON(vma->size > vma->node.size);
 
-- 
2.31.1

