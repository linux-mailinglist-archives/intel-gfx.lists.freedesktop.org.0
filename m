Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56141218E67
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 19:37:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B2706E902;
	Wed,  8 Jul 2020 17:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7088C6E8FF
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 17:37:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21756438-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 18:37:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jul 2020 18:37:47 +0100
Message-Id: <20200708173748.32734-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200708173748.32734-1-chris@chris-wilson.co.uk>
References: <20200708173748.32734-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/4] drm/i915: Release shortlived maps of longlived
 objects
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

Some objects we map once during their construction, and then never
access their mappings again, even if they are kept around for the
duration of the driver. Keeping those pages mapped, often vmapped, is
therefore wasteful and we should release the maps as soon as we no
longer need them.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h      |  2 ++
 drivers/gpu/drm/i915/gem/i915_gem_pages.c       | 15 +++++++++++++++
 drivers/gpu/drm/i915/gt/gen7_renderclear.c      |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c             |  2 +-
 drivers/gpu/drm/i915/gt/intel_renderstate.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_ring_submission.c |  2 +-
 drivers/gpu/drm/i915/i915_perf.c                |  4 ++--
 7 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 2faa481cc18f..9cf4ad78ece6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -394,6 +394,8 @@ static inline void i915_gem_object_unpin_map(struct drm_i915_gem_object *obj)
 	i915_gem_object_unpin_pages(obj);
 }
 
+void __i915_gem_object_release_map(struct drm_i915_gem_object *obj);
+
 void
 i915_gem_object_flush_write_domain(struct drm_i915_gem_object *obj,
 				   unsigned int flush_domains);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index af9e48ee4a33..7e54657cf67b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -408,6 +408,21 @@ void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
 	}
 }
 
+void __i915_gem_object_release_map(struct drm_i915_gem_object *obj)
+{
+	GEM_BUG_ON(!obj->mm.mapping);
+
+	/*
+	 * We allow removing the mapping from underneath pinned pages!
+	 *
+	 * Furthermore, since this is an unsafe operation reserved only
+	 * for construction time manipulation, we ignore locking prudence.
+	 */
+	unmap_object(obj, page_mask_bits(fetch_and_zero(&obj->mm.mapping)));
+
+	i915_gem_object_unpin_map(obj);
+}
+
 struct scatterlist *
 i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 		       unsigned int n,
diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index de595b66a746..d93d85cd3027 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -396,7 +396,7 @@ int gen7_setup_clear_gpr_bb(struct intel_engine_cs * const engine,
 	emit_batch(vma, memset(batch, 0, bv.max_size), &bv);
 
 	i915_gem_object_flush_map(vma->obj);
-	i915_gem_object_unpin_map(vma->obj);
+	__i915_gem_object_release_map(vma->obj);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 02a38810bcd3..0a19d551e02c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3937,7 +3937,7 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
 	GEM_BUG_ON(batch_ptr - batch > CTX_WA_BB_OBJ_SIZE);
 
 	__i915_gem_object_flush_map(wa_ctx->vma->obj, 0, batch_ptr - batch);
-	i915_gem_object_unpin_map(wa_ctx->vma->obj);
+	__i915_gem_object_release_map(wa_ctx->vma->obj);
 	if (ret)
 		lrc_destroy_wa_ctx(engine);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index 6db23389e427..1bfad589c63b 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -150,7 +150,7 @@ static int render_state_setup(struct intel_renderstate *so,
 	ret = 0;
 out:
 	__i915_gem_object_flush_map(so->vma->obj, 0, i * sizeof(u32));
-	i915_gem_object_unpin_map(so->vma->obj);
+	__i915_gem_object_release_map(so->vma->obj);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 68a08486fc87..a6c9ab852d17 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -543,7 +543,7 @@ alloc_context_vma(struct intel_engine_cs *engine)
 			   vaddr, engine->context_size);
 
 		i915_gem_object_flush_map(obj);
-		i915_gem_object_unpin_map(obj);
+		__i915_gem_object_release_map(obj);
 	}
 
 	vma = i915_vma_instance(obj, &engine->gt->ggtt->vm, NULL);
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 25329b7600c9..05dc36d3f81c 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1772,7 +1772,7 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	GEM_BUG_ON(cs - batch > PAGE_SIZE / sizeof(*batch));
 
 	i915_gem_object_flush_map(bo);
-	i915_gem_object_unpin_map(bo);
+	__i915_gem_object_release_map(bo);
 
 	stream->noa_wait = vma;
 	return 0;
@@ -1867,7 +1867,7 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
 	*cs++ = 0;
 
 	i915_gem_object_flush_map(obj);
-	i915_gem_object_unpin_map(obj);
+	__i915_gem_object_release_map(obj);
 
 	oa_bo->vma = i915_vma_instance(obj,
 				       &stream->engine->gt->ggtt->vm,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
