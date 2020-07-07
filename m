Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9C9217894
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 22:08:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DB0B6E11C;
	Tue,  7 Jul 2020 20:07:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B70C6E11C
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 20:07:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21745670-1500050 
 for multiple; Tue, 07 Jul 2020 21:07:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jul 2020 21:07:42 +0100
Message-Id: <20200707200743.11182-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200707200743.11182-1-chris@chris-wilson.co.uk>
References: <20200707200743.11182-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Release shortlived maps of
 longlived objects
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

Some objects we map once during their construction, and then never
access their mappings again, even if they are kept around for the
duration of the driver. Keeping those pages mapped, often vmapped, is
therefore wasteful and we should release the maps as soon as we no
longer need them.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 20 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/gen7_renderclear.c    |  1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  1 +
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  1 +
 drivers/gpu/drm/i915/i915_perf.c              |  2 ++
 6 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 2faa481cc18f..f9f91ec09a2f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -393,6 +393,7 @@ static inline void i915_gem_object_unpin_map(struct drm_i915_gem_object *obj)
 {
 	i915_gem_object_unpin_pages(obj);
 }
+int i915_gem_object_release_map(struct drm_i915_gem_object *obj);
 
 void
 i915_gem_object_flush_write_domain(struct drm_i915_gem_object *obj,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index af9e48ee4a33..114256014a97 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -408,6 +408,26 @@ void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
 	}
 }
 
+int i915_gem_object_release_map(struct drm_i915_gem_object *obj)
+{
+	int err;
+
+	err = mutex_lock_interruptible(&obj->mm.lock);
+	if (err)
+		return err;
+
+	if (atomic_read(&obj->mm.pages_pin_count)) {
+		err = -EBUSY;
+	} else if (obj->mm.mapping) {
+		unmap_object(obj, page_mask_bits(obj->mm.mapping));
+		obj->mm.mapping = NULL;
+	}
+
+	mutex_unlock(&obj->mm.lock);
+
+	return err;
+}
+
 struct scatterlist *
 i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 		       unsigned int n,
diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index de595b66a746..d2a94002ae6e 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -397,6 +397,7 @@ int gen7_setup_clear_gpr_bb(struct intel_engine_cs * const engine,
 
 	i915_gem_object_flush_map(vma->obj);
 	i915_gem_object_unpin_map(vma->obj);
+	i915_gem_object_release_map(vma->obj);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 02a38810bcd3..476dfc6be15e 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3938,6 +3938,7 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
 
 	__i915_gem_object_flush_map(wa_ctx->vma->obj, 0, batch_ptr - batch);
 	i915_gem_object_unpin_map(wa_ctx->vma->obj);
+	i915_gem_object_release_map(wa_ctx->vma->obj);
 	if (ret)
 		lrc_destroy_wa_ctx(engine);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 68a08486fc87..a1e1d24da2fb 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -544,6 +544,7 @@ alloc_context_vma(struct intel_engine_cs *engine)
 
 		i915_gem_object_flush_map(obj);
 		i915_gem_object_unpin_map(obj);
+		i915_gem_object_release_map(obj);
 	}
 
 	vma = i915_vma_instance(obj, &engine->gt->ggtt->vm, NULL);
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 25329b7600c9..34f82e0e912a 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1773,6 +1773,7 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 
 	i915_gem_object_flush_map(bo);
 	i915_gem_object_unpin_map(bo);
+	i915_gem_object_release_map(bo);
 
 	stream->noa_wait = vma;
 	return 0;
@@ -1868,6 +1869,7 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
 
 	i915_gem_object_flush_map(obj);
 	i915_gem_object_unpin_map(obj);
+	i915_gem_object_release_map(obj);
 
 	oa_bo->vma = i915_vma_instance(obj,
 				       &stream->engine->gt->ggtt->vm,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
