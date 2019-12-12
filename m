Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7C311CF4A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 15:06:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7C236ED88;
	Thu, 12 Dec 2019 14:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECA326ED90
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 14:05:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19555632-1500050 
 for multiple; Thu, 12 Dec 2019 14:04:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:04:31 +0000
Message-Id: <20191212140459.1307617-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
References: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/33] drm/i915/gem: Prepare gen7 cmdparser for
 async execution
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

The gen7 cmdparser is primarily a promotion-based system to allow access
to additional registers beyond the HW validation, and allows fallback to
normal execution of the user batch buffer if valid and requires
chaining. In the next patch, we will do the cmdparser validation in the
pipeline asynchronously and so at the point of request construction we
will not know if we want to execute the privileged and validated batch,
or the original user batch. The solution employed here is to execute
both batches, one with raised privileges and one as normal. This is
because the gen7 MI_BATCH_BUFFER_START command cannot change privilege
level within a batch and must strictly use the current privilege level
(or undefined behaviour kills the GPU). So in order to execute the
original batch, we need a second non-priviledged batch buffer chain from
the ring, i.e. we need to emit two batches for each user batch. Inside
the two batches we determine which one should actually execute, we
provide a conditional trampoline to call the original batch.

Implementation-wise, we create a single buffer and write the shadow and
the trampoline inside it at different offsets; and bind the buffer into
both the kernel GGTT for the privileged execution of the shadow and into
the user ppGTT for the non-privileged execution of the trampoline and
original batch. One buffer, two batches and two vma.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 117 ++++++++++--------
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   8 ++
 drivers/gpu/drm/i915/i915_cmd_parser.c        |  57 +++++++--
 drivers/gpu/drm/i915/i915_drv.h               |   4 +-
 4 files changed, 127 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 13f88fc536c7..4e546b6fff8e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -228,6 +228,7 @@ struct i915_execbuffer {
 
 	struct i915_request *request; /** our request to build */
 	struct i915_vma *batch; /** identity of the batch obj/vma */
+	struct i915_vma *trampoline; /** trampoline used for chaining */
 
 	/** actual size of execobj[] as we may extend it for the cmdparser */
 	unsigned int buffer_count;
@@ -1946,31 +1947,13 @@ static int i915_reset_gen7_sol_offsets(struct i915_request *rq)
 }
 
 static struct i915_vma *
-shadow_batch_pin(struct i915_execbuffer *eb, struct drm_i915_gem_object *obj)
+shadow_batch_pin(struct drm_i915_gem_object *obj,
+		 struct i915_address_space *vm,
+		 unsigned int flags)
 {
-	struct i915_address_space *vm;
 	struct i915_vma *vma;
-	u64 flags;
 	int err;
 
-	/*
-	 * PPGTT backed shadow buffers must be mapped RO, to prevent
-	 * post-scan tampering
-	 */
-	if (CMDPARSER_USES_GGTT(eb->i915)) {
-		vm = &eb->engine->gt->ggtt->vm;
-		flags = PIN_GLOBAL;
-	} else {
-		vm = eb->context->vm;
-		if (!vm->has_read_only) {
-			DRM_DEBUG("Cannot prevent post-scan tampering without RO capable vm\n");
-			return ERR_PTR(-EINVAL);
-		}
-
-		i915_gem_object_set_readonly(obj);
-		flags = PIN_USER;
-	}
-
 	vma = i915_vma_instance(obj, vm, NULL);
 	if (IS_ERR(vma))
 		return vma;
@@ -1985,59 +1968,80 @@ shadow_batch_pin(struct i915_execbuffer *eb, struct drm_i915_gem_object *obj)
 static int eb_parse(struct i915_execbuffer *eb)
 {
 	struct intel_engine_pool_node *pool;
-	struct i915_vma *vma;
+	struct i915_vma *shadow, *trampoline;
+	unsigned int len;
 	int err;
 
 	if (!eb_use_cmdparser(eb))
 		return 0;
 
-	pool = intel_engine_get_pool(eb->engine, eb->batch_len);
+	len = eb->batch_len;
+	if (!CMDPARSER_USES_GGTT(eb->i915)) {
+		/*
+		 * ppGTT backed shadow buffers must be mapped RO, to prevent
+		 * post-scan tampering
+		 */
+		if (!eb->context->vm->has_read_only) {
+			DRM_DEBUG("Cannot prevent post-scan tampering without RO capable vm\n");
+			return -EINVAL;
+		}
+	} else {
+		len += I915_CMD_PARSER_TRAMPOLINE_SIZE;
+	}
+
+	pool = intel_engine_get_pool(eb->engine, len);
 	if (IS_ERR(pool))
 		return PTR_ERR(pool);
 
-	vma = shadow_batch_pin(eb, pool->obj);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
+	shadow = shadow_batch_pin(pool->obj, eb->context->vm, PIN_USER);
+	if (IS_ERR(shadow)) {
+		err = PTR_ERR(shadow);
 		goto err;
 	}
+	i915_gem_object_set_readonly(shadow->obj);
+
+	trampoline = NULL;
+	if (CMDPARSER_USES_GGTT(eb->i915)) {
+		trampoline = shadow;
+
+		shadow = shadow_batch_pin(pool->obj,
+					  &eb->engine->gt->ggtt->vm,
+					  PIN_GLOBAL);
+		if (IS_ERR(shadow)) {
+			err = PTR_ERR(shadow);
+			shadow = trampoline;
+			goto err_shadow;
+		}
+
+		eb->batch_flags |= I915_DISPATCH_SECURE;
+	}
 
 	err = intel_engine_cmd_parser(eb->engine,
 				      eb->batch,
 				      eb->batch_start_offset,
 				      eb->batch_len,
-				      vma);
-	if (err) {
-		/*
-		 * Unsafe GGTT-backed buffers can still be submitted safely
-		 * as non-secure.
-		 * For PPGTT backing however, we have no choice but to forcibly
-		 * reject unsafe buffers
-		 */
-		if (i915_vma_is_ggtt(vma) && err == -EACCES)
-			err = 0;
-
-		goto err_unpin;
-	}
+				      shadow, trampoline);
+	if (err)
+		goto err_trampoline;
 
-	eb->vma[eb->buffer_count] = i915_vma_get(vma);
+	eb->vma[eb->buffer_count] = i915_vma_get(shadow);
 	eb->flags[eb->buffer_count] =
 		__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_REF;
-	vma->exec_flags = &eb->flags[eb->buffer_count];
+	shadow->exec_flags = &eb->flags[eb->buffer_count];
 	eb->buffer_count++;
 
+	eb->trampoline = trampoline;
 	eb->batch_start_offset = 0;
-	eb->batch = vma;
-
-	if (i915_vma_is_ggtt(vma))
-		eb->batch_flags |= I915_DISPATCH_SECURE;
-
-	/* eb->batch_len unchanged */
+	eb->batch = shadow;
 
-	vma->private = pool;
+	shadow->private = pool;
 	return 0;
 
-err_unpin:
-	i915_vma_unpin(vma);
+err_trampoline:
+	if (trampoline)
+		i915_vma_unpin(trampoline);
+err_shadow:
+	i915_vma_unpin(shadow);
 err:
 	intel_engine_pool_put(pool);
 	return err;
@@ -2089,6 +2093,16 @@ static int eb_submit(struct i915_execbuffer *eb)
 	if (err)
 		return err;
 
+	if (eb->trampoline) {
+		GEM_BUG_ON(eb->batch_start_offset);
+		err = eb->engine->emit_bb_start(eb->request,
+						eb->trampoline->node.start +
+						eb->batch_len,
+						0, 0);
+		if (err)
+			return err;
+	}
+
 	if (i915_gem_context_nopreempt(eb->gem_context))
 		eb->request->flags |= I915_REQUEST_NOPREEMPT;
 
@@ -2470,6 +2484,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	eb.buffer_count = args->buffer_count;
 	eb.batch_start_offset = args->batch_start_offset;
 	eb.batch_len = args->batch_len;
+	eb.trampoline = NULL;
 
 	eb.batch_flags = 0;
 	if (args->flags & I915_EXEC_SECURE) {
@@ -2667,6 +2682,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 err_vma:
 	if (eb.exec)
 		eb_release_vmas(&eb);
+	if (eb.trampoline)
+		i915_vma_unpin(eb.trampoline);
 	mutex_unlock(&dev->struct_mutex);
 err_engine:
 	eb_unpin_engine(&eb);
diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index c68c0e033f30..51b8718513bc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -340,4 +340,12 @@ static inline u64 gen8_noncanonical_addr(u64 address)
 	return address & GENMASK_ULL(GEN8_HIGH_ADDRESS_BIT, 0);
 }
 
+static inline u32 *__gen6_emit_bb_start(u32 *cs, u32 addr, unsigned int flags)
+{
+	*cs++ = MI_BATCH_BUFFER_START | flags;
+	*cs++ = addr;
+
+	return cs;
+}
+
 #endif /* _INTEL_GPU_COMMANDS_H_ */
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index ddc8bf5175d9..34b0ea403a96 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1362,8 +1362,7 @@ static int check_bbstart(u32 *cmd, u32 offset, u32 length,
 	return 0;
 }
 
-static unsigned long *
-alloc_whitelist(struct drm_i915_private *i915, u32 batch_length)
+static unsigned long *alloc_whitelist(u32 batch_length)
 {
 	unsigned long *jmp;
 
@@ -1373,9 +1372,6 @@ alloc_whitelist(struct drm_i915_private *i915, u32 batch_length)
 	 * reasonably cheap due to kmalloc caches.
 	 */
 
-	if (CMDPARSER_USES_GGTT(i915))
-		return NULL;
-
 	/* Prefer to report transient allocation failure rather than hit oom */
 	jmp = bitmap_zalloc(DIV_ROUND_UP(batch_length, sizeof(u32)),
 			    GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
@@ -1394,6 +1390,7 @@ alloc_whitelist(struct drm_i915_private *i915, u32 batch_length)
  * @batch_offset: byte offset in the batch at which execution starts
  * @batch_length: length of the commands in batch_obj
  * @shadow: validated copy of the batch buffer in question
+ * @trampoline: whether to emit a conditional trampoline at the end of the batch
  *
  * Parses the specified batch buffer looking for privilege violations as
  * described in the overview.
@@ -1406,7 +1403,8 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 			    struct i915_vma *batch,
 			    u32 batch_offset,
 			    u32 batch_length,
-			    struct i915_vma *shadow)
+			    struct i915_vma *shadow,
+			    bool trampoline)
 {
 	u32 *cmd, *batch_end, offset = 0;
 	struct drm_i915_cmd_descriptor default_desc = noop_desc;
@@ -1430,8 +1428,10 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 		return PTR_ERR(cmd);
 	}
 
-	/* Defer failure until attempted use */
-	jump_whitelist = alloc_whitelist(engine->i915, batch_length);
+	jump_whitelist = NULL;
+	if (!trampoline)
+		/* Defer failure until attempted use */
+		jump_whitelist = alloc_whitelist(batch_length);
 
 	shadow_addr = gen8_canonical_addr(shadow->node.start);
 	batch_addr = gen8_canonical_addr(batch->node.start + batch_offset);
@@ -1493,6 +1493,47 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 		}
 	} while (1);
 
+	if (trampoline) {
+		/*
+		 * With the trampoline, the shadow is executed twice.
+		 *
+		 *   1 - starting at offset 0, in privileged mode
+		 *   2 - starting at offset batch_len, as non-privileged
+		 *
+		 * Only if the batch is valid and safe to execute, do we
+		 * allow the first privileged execution to proceed. If not,
+		 * we terminate the first batch and use the second batchbuffer
+		 * entry to chain to the original unsafe non-privileged batch,
+		 * leaving it to the HW to validate.
+		 */
+		*batch_end = MI_BATCH_BUFFER_END;
+
+		if (ret) {
+			/* Batch unsafe to execute with privileges, cancel! */
+			cmd = page_mask_bits(shadow->obj->mm.mapping);
+			*cmd = MI_BATCH_BUFFER_END;
+
+			/* If batch is unsafe but valid, jump to the original */
+			if (ret == -EACCES) {
+				unsigned int flags;
+
+				flags = MI_BATCH_NON_SECURE_I965;
+				if (IS_HASWELL(engine->i915))
+					flags = MI_BATCH_NON_SECURE_HSW;
+
+				GEM_BUG_ON(!IS_GEN_RANGE(engine->i915, 6, 7));
+				__gen6_emit_bb_start(batch_end,
+						     batch_addr,
+						     flags);
+
+				ret = 0; /* allow execution */
+			}
+		}
+
+		if (needs_clflush_after)
+			drm_clflush_virt_range(batch_end, 8);
+	}
+
 	if (needs_clflush_after) {
 		void *ptr = page_mask_bits(shadow->obj->mm.mapping);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 45f31197b390..0781b6326b8c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1949,7 +1949,9 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 			    struct i915_vma *batch,
 			    u32 batch_offset,
 			    u32 batch_length,
-			    struct i915_vma *shadow);
+			    struct i915_vma *shadow,
+			    bool trampoline);
+#define I915_CMD_PARSER_TRAMPOLINE_SIZE 8
 
 /* intel_device_info.c */
 static inline struct intel_device_info *
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
