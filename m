Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AC613DFC0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 17:16:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5746EDBE;
	Thu, 16 Jan 2020 16:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 999786EDBE;
 Thu, 16 Jan 2020 16:16:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 08:16:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,326,1574150400"; d="scan'208";a="257425663"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga002.fm.intel.com with ESMTP; 16 Jan 2020 08:16:08 -0800
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id DD873843B9F; Thu, 16 Jan 2020 18:16:07 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: akeem.g.abodunrin@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, omer.aran@intel.com,
 pragyansri.pathi@intel.com, d.scott.phillips@intel.com,
 david.c.stewart@intel.com, tony.luck@intel.com, jon.bloomfield@intel.com,
 sudeep.dutt@intel.com, daniel.vetter@intel.com, joonas.lahtinen@intel.com,
 jani.nikula@intel.com, chris.p.wilson@intel.com
Date: Thu, 16 Jan 2020 18:16:01 +0200
Message-Id: <20200116161601.26110-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200114174549.74643-2-akeem.g.abodunrin@intel.com>
References: <20200114174549.74643-2-akeem.g.abodunrin@intel.com>
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Add mechanism to submit a context
 WA on ring submission
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch adds framework to submit an arbitrary batchbuffer on each
context switch to clear residual state for render engine on Gen7/7.5
devices.

The idea of always emitting the context and vm setup around each request
is primary to make reset recovery easy, and not require rewriting the
ringbuffer. As each request would set up its own context, leaving it to
the HW to notice and elide no-op context switches, we could restart the
ring at any point, and reorder the requests freely.

However, to avoid emitting clear_residuals() between consecutive requests
in the ringbuffer of the same context, we do want to track the current
context in the ring. In doing so, we need to be careful to only record a
context switch when we are sure the next request will be emitted.

v2: elide optimization patch squashed, courtesy of Chris Wilson

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Cc: Kumar Valsan Prathap <prathap.kumar.valsan@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Balestrieri Francesco <francesco.balestrieri@intel.com>
Cc: Bloomfield Jon <jon.bloomfield@intel.com>
Cc: Dutt Sudeep <sudeep.dutt@intel.com>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 132 +++++++++++++++++-
 1 file changed, 129 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index bc44fe8e5ffa..58500032c993 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1384,7 +1384,9 @@ static int load_pd_dir(struct i915_request *rq,
 	return rq->engine->emit_flush(rq, EMIT_FLUSH);
 }
 
-static inline int mi_set_context(struct i915_request *rq, u32 flags)
+static inline int mi_set_context(struct i915_request *rq,
+				 struct intel_context *ce,
+				 u32 flags)
 {
 	struct drm_i915_private *i915 = rq->i915;
 	struct intel_engine_cs *engine = rq->engine;
@@ -1459,7 +1461,7 @@ static inline int mi_set_context(struct i915_request *rq, u32 flags)
 
 	*cs++ = MI_NOOP;
 	*cs++ = MI_SET_CONTEXT;
-	*cs++ = i915_ggtt_offset(rq->context->state) | flags;
+	*cs++ = i915_ggtt_offset(ce->state) | flags;
 	/*
 	 * w/a: MI_SET_CONTEXT must always be followed by MI_NOOP
 	 * WaMiSetContext_Hang:snb,ivb,vlv
@@ -1574,13 +1576,56 @@ static int switch_mm(struct i915_request *rq, struct i915_address_space *vm)
 	return rq->engine->emit_flush(rq, EMIT_INVALIDATE);
 }
 
+static int clear_residuals(struct i915_request *rq)
+{
+	struct intel_engine_cs *engine = rq->engine;
+	int ret;
+
+	GEM_BUG_ON(!engine->kernel_context->state);
+
+	ret = switch_mm(rq, vm_alias(engine->kernel_context));
+	if (ret)
+		return ret;
+
+	ret = mi_set_context(rq,
+			     engine->kernel_context,
+			     MI_MM_SPACE_GTT | MI_RESTORE_INHIBIT);
+	if (ret)
+		return ret;
+
+	ret = engine->emit_bb_start(rq,
+				    engine->wa_ctx.vma->node.start, 0,
+				    0);
+	if (ret)
+		return ret;
+
+	ret = engine->emit_flush(rq, EMIT_FLUSH);
+	if (ret)
+		return ret;
+
+	/* Always invalidate before the next switch_mm() */
+	return engine->emit_flush(rq, EMIT_INVALIDATE);
+}
+
 static int switch_context(struct i915_request *rq)
 {
+	struct intel_engine_cs *engine = rq->engine;
 	struct intel_context *ce = rq->context;
+	void **residuals = NULL;
 	int ret;
 
 	GEM_BUG_ON(HAS_EXECLISTS(rq->i915));
 
+	if (engine->wa_ctx.vma && ce != engine->kernel_context) {
+		if (engine->wa_ctx.vma->private != ce) {
+			ret = clear_residuals(rq);
+			if (ret)
+				return ret;
+
+			residuals = &engine->wa_ctx.vma->private;
+		}
+	}
+
 	ret = switch_mm(rq, vm_alias(ce));
 	if (ret)
 		return ret;
@@ -1600,7 +1645,7 @@ static int switch_context(struct i915_request *rq)
 		else
 			flags |= MI_RESTORE_INHIBIT;
 
-		ret = mi_set_context(rq, flags);
+		ret = mi_set_context(rq, ce, flags);
 		if (ret)
 			return ret;
 	}
@@ -1609,6 +1654,20 @@ static int switch_context(struct i915_request *rq)
 	if (ret)
 		return ret;
 
+	/*
+	 * Now past the point of no return, this request _will_ be emitted.
+	 *
+	 * Or at least this preamble will be emitted, the request may be
+	 * interrupted prior to submitting the user payload. If so, we
+	 * still submit the "empty" request in order to preserve global
+	 * state tracking such as this, our tracking of the current
+	 * dirty context.
+	 */
+	if (residuals) {
+		intel_context_put(*residuals);
+		*residuals = intel_context_get(ce);
+	}
+
 	return 0;
 }
 
@@ -1792,6 +1851,11 @@ static void ring_release(struct intel_engine_cs *engine)
 
 	intel_engine_cleanup_common(engine);
 
+	if (engine->wa_ctx.vma) {
+		intel_context_put(engine->wa_ctx.vma->private);
+		i915_vma_unpin_and_release(&engine->wa_ctx.vma, 0);
+	}
+
 	intel_ring_unpin(engine->legacy.ring);
 	intel_ring_put(engine->legacy.ring);
 
@@ -1939,6 +2003,60 @@ static void setup_vecs(struct intel_engine_cs *engine)
 	engine->emit_fini_breadcrumb = gen7_xcs_emit_breadcrumb;
 }
 
+static int gen7_ctx_switch_bb_setup(struct intel_engine_cs * const engine,
+				    struct i915_vma * const vma)
+{
+	return 0;
+}
+
+static int gen7_ctx_switch_bb_init(struct intel_engine_cs *engine)
+{
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	int size;
+	int err;
+
+	size = gen7_ctx_switch_bb_setup(engine, NULL /* probe size */);
+	if (size <= 0)
+		return size;
+
+	size = ALIGN(size, PAGE_SIZE);
+	obj = i915_gem_object_create_internal(engine->i915, size);
+	if (IS_ERR(obj))
+		return PTR_ERR(obj);
+
+	vma = i915_vma_instance(obj, engine->gt->vm, NULL);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto err_obj;
+	}
+
+	vma->private = intel_context_create(engine); /* dummy residuals */
+	if (IS_ERR(vma->private)) {
+		err = PTR_ERR(vma->private);
+		goto err_obj;
+	}
+
+	err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_HIGH);
+	if (err)
+		goto err_private;
+
+	err = gen7_ctx_switch_bb_setup(engine, vma);
+	if (err)
+		goto err_unpin;
+
+	engine->wa_ctx.vma = vma;
+	return 0;
+
+err_unpin:
+	i915_vma_unpin(vma);
+err_private:
+	intel_context_put(vma->private);
+err_obj:
+	i915_gem_object_put(obj);
+	return err;
+}
+
 int intel_ring_submission_setup(struct intel_engine_cs *engine)
 {
 	struct intel_timeline *timeline;
@@ -1992,11 +2110,19 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine)
 
 	GEM_BUG_ON(timeline->hwsp_ggtt != engine->status_page.vma);
 
+	if (IS_GEN(engine->i915, 7) && engine->class == RENDER_CLASS) {
+		err = gen7_ctx_switch_bb_init(engine);
+		if (err)
+			goto err_ring_unpin;
+	}
+
 	/* Finally, take ownership and responsibility for cleanup! */
 	engine->release = ring_release;
 
 	return 0;
 
+err_ring_unpin:
+	intel_ring_unpin(ring);
 err_ring:
 	intel_ring_put(ring);
 err_timeline_unpin:
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
