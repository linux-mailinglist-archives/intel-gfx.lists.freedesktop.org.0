Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF2B136D0C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 13:31:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FA506E9EE;
	Fri, 10 Jan 2020 12:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3807D6E9DF
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 12:31:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19833853-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 12:30:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 12:30:56 +0000
Message-Id: <20200110123059.1348712-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/4] drm/i915: Start chopping up the GPU error
 capture
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

In the near future, we will want to start a GPU error capture from a new
context, from inside the softirq region of a forced preemption. To do
so requires us to break up the monolithic error capture to provide new
entry points with finer control; in particular focusing on one
engine/gt, and being able to compose an error state from little pieces
of HW capture.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Acked-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h       |    2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |    6 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c         |    3 +
 drivers/gpu/drm/i915/gt/intel_gtt.h          |    1 +
 drivers/gpu/drm/i915/gt/intel_reset.c        |    2 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c |    2 +-
 drivers/gpu/drm/i915/i915_debugfs.c          |   14 +-
 drivers/gpu/drm/i915/i915_drv.h              |    2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c        | 1179 ++++++++++--------
 drivers/gpu/drm/i915/i915_gpu_error.h        |  328 +++--
 drivers/gpu/drm/i915/i915_sysfs.c            |    6 +-
 11 files changed, 873 insertions(+), 672 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 71f1bcdfc92f..5df003061e44 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -202,7 +202,7 @@ void intel_engine_set_hwsp_writemask(struct intel_engine_cs *engine, u32 mask);
 u64 intel_engine_get_active_head(const struct intel_engine_cs *engine);
 u64 intel_engine_get_last_batch_head(const struct intel_engine_cs *engine);
 
-void intel_engine_get_instdone(struct intel_engine_cs *engine,
+void intel_engine_get_instdone(const struct intel_engine_cs *engine,
 			       struct intel_instdone *instdone);
 
 void intel_engine_init_execlists(struct intel_engine_cs *engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 825c94e7ca0b..f451ef376548 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -914,8 +914,8 @@ const char *i915_cache_level_str(struct drm_i915_private *i915, int type)
 }
 
 static u32
-read_subslice_reg(struct intel_engine_cs *engine, int slice, int subslice,
-		  i915_reg_t reg)
+read_subslice_reg(const struct intel_engine_cs *engine,
+		  int slice, int subslice, i915_reg_t reg)
 {
 	struct drm_i915_private *i915 = engine->i915;
 	struct intel_uncore *uncore = engine->uncore;
@@ -959,7 +959,7 @@ read_subslice_reg(struct intel_engine_cs *engine, int slice, int subslice,
 }
 
 /* NB: please notice the memset */
-void intel_engine_get_instdone(struct intel_engine_cs *engine,
+void intel_engine_get_instdone(const struct intel_engine_cs *engine,
 			       struct intel_instdone *instdone)
 {
 	struct drm_i915_private *i915 = engine->i915;
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 795cd267e28e..5dba7344d7ab 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -495,6 +495,7 @@ static void cleanup_init_ggtt(struct i915_ggtt *ggtt)
 	ggtt_release_guc_top(ggtt);
 	if (drm_mm_node_allocated(&ggtt->error_capture))
 		drm_mm_remove_node(&ggtt->error_capture);
+	mutex_destroy(&ggtt->error_mutex);
 }
 
 static int init_ggtt(struct i915_ggtt *ggtt)
@@ -526,6 +527,7 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 	if (ret)
 		return ret;
 
+	mutex_init(&ggtt->error_mutex);
 	if (ggtt->mappable_end) {
 		/* Reserve a mappable slot for our lockless error capture */
 		ret = drm_mm_insert_node_in_range(&ggtt->vm.mm,
@@ -716,6 +718,7 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
 
 	if (drm_mm_node_allocated(&ggtt->error_capture))
 		drm_mm_remove_node(&ggtt->error_capture);
+	mutex_destroy(&ggtt->error_mutex);
 
 	ggtt_release_guc_top(ggtt);
 	intel_vgt_deballoon(ggtt);
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 029363cbdf49..7da7681c20b1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -345,6 +345,7 @@ struct i915_ggtt {
 	/* Manual runtime pm autosuspend delay for user GGTT mmaps */
 	struct intel_wakeref_auto userfault_wakeref;
 
+	struct mutex error_mutex;
 	struct drm_mm_node error_capture;
 	struct drm_mm_node uc_fw;
 };
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 76de33ae9efe..beee0cf89bce 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1230,7 +1230,7 @@ void intel_gt_handle_error(struct intel_gt *gt,
 	engine_mask &= INTEL_INFO(gt->i915)->engine_mask;
 
 	if (flags & I915_ERROR_CAPTURE) {
-		i915_capture_error_state(gt->i915, engine_mask, msg);
+		i915_capture_error_state(gt->i915);
 		intel_gt_clear_error_registers(gt, engine_mask);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 7c824c26b705..3e5e6c86e843 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -1498,7 +1498,7 @@ static int igt_handle_error(void *arg)
 	struct intel_engine_cs *engine = gt->engine[RCS0];
 	struct hang h;
 	struct i915_request *rq;
-	struct i915_gpu_state *error;
+	struct i915_gpu_coredump *error;
 	int err;
 
 	/* Check that we can issue a global GPU and engine reset */
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 8f01c2bc7355..61e547308d2e 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -685,7 +685,7 @@ static int i915_gem_fence_regs_info(struct seq_file *m, void *data)
 static ssize_t gpu_state_read(struct file *file, char __user *ubuf,
 			      size_t count, loff_t *pos)
 {
-	struct i915_gpu_state *error;
+	struct i915_gpu_coredump *error;
 	ssize_t ret;
 	void *buf;
 
@@ -698,7 +698,7 @@ static ssize_t gpu_state_read(struct file *file, char __user *ubuf,
 	if (!buf)
 		return -ENOMEM;
 
-	ret = i915_gpu_state_copy_to_buffer(error, buf, *pos, count);
+	ret = i915_gpu_coredump_copy_to_buffer(error, buf, *pos, count);
 	if (ret <= 0)
 		goto out;
 
@@ -714,19 +714,19 @@ static ssize_t gpu_state_read(struct file *file, char __user *ubuf,
 
 static int gpu_state_release(struct inode *inode, struct file *file)
 {
-	i915_gpu_state_put(file->private_data);
+	i915_gpu_coredump_put(file->private_data);
 	return 0;
 }
 
 static int i915_gpu_info_open(struct inode *inode, struct file *file)
 {
 	struct drm_i915_private *i915 = inode->i_private;
-	struct i915_gpu_state *gpu;
+	struct i915_gpu_coredump *gpu;
 	intel_wakeref_t wakeref;
 
 	gpu = NULL;
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-		gpu = i915_capture_gpu_state(i915);
+		gpu = i915_gpu_coredump(i915);
 	if (IS_ERR(gpu))
 		return PTR_ERR(gpu);
 
@@ -748,7 +748,7 @@ i915_error_state_write(struct file *filp,
 		       size_t cnt,
 		       loff_t *ppos)
 {
-	struct i915_gpu_state *error = filp->private_data;
+	struct i915_gpu_coredump *error = filp->private_data;
 
 	if (!error)
 		return 0;
@@ -761,7 +761,7 @@ i915_error_state_write(struct file *filp,
 
 static int i915_error_state_open(struct inode *inode, struct file *file)
 {
-	struct i915_gpu_state *error;
+	struct i915_gpu_coredump *error;
 
 	error = i915_first_error_state(inode->i_private);
 	if (IS_ERR(error))
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1025d783f494..e7be4c3e43c6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1874,7 +1874,7 @@ static inline u32 i915_reset_count(struct i915_gpu_error *error)
 }
 
 static inline u32 i915_reset_engine_count(struct i915_gpu_error *error,
-					  struct intel_engine_cs *engine)
+					  const struct intel_engine_cs *engine)
 {
 	return atomic_read(&error->reset_engine_count[engine->uabi_class]);
 }
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index fda0977d2059..faa93c4296a7 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -41,6 +41,7 @@
 
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_lmem.h"
+#include "gt/intel_gt_pm.h"
 
 #include "i915_drv.h"
 #include "i915_gpu_error.h"
@@ -232,14 +233,13 @@ static void pool_free(struct pagevec *pv, void *addr)
 
 #ifdef CONFIG_DRM_I915_COMPRESS_ERROR
 
-struct compress {
+struct i915_vma_compress {
 	struct pagevec pool;
 	struct z_stream_s zstream;
 	void *tmp;
-	bool wc;
 };
 
-static bool compress_init(struct compress *c)
+static bool compress_init(struct i915_vma_compress *c)
 {
 	struct z_stream_s *zstream = &c->zstream;
 
@@ -261,7 +261,7 @@ static bool compress_init(struct compress *c)
 	return true;
 }
 
-static bool compress_start(struct compress *c)
+static bool compress_start(struct i915_vma_compress *c)
 {
 	struct z_stream_s *zstream = &c->zstream;
 	void *workspace = zstream->workspace;
@@ -272,8 +272,8 @@ static bool compress_start(struct compress *c)
 	return zlib_deflateInit(zstream, Z_DEFAULT_COMPRESSION) == Z_OK;
 }
 
-static void *compress_next_page(struct compress *c,
-				struct drm_i915_error_object *dst)
+static void *compress_next_page(struct i915_vma_compress *c,
+				struct i915_vma_coredump *dst)
 {
 	void *page;
 
@@ -287,14 +287,15 @@ static void *compress_next_page(struct compress *c,
 	return dst->pages[dst->page_count++] = page;
 }
 
-static int compress_page(struct compress *c,
+static int compress_page(struct i915_vma_compress *c,
 			 void *src,
-			 struct drm_i915_error_object *dst)
+			 struct i915_vma_coredump *dst,
+			 bool wc)
 {
 	struct z_stream_s *zstream = &c->zstream;
 
 	zstream->next_in = src;
-	if (c->wc && c->tmp && i915_memcpy_from_wc(c->tmp, src, PAGE_SIZE))
+	if (wc && c->tmp && i915_memcpy_from_wc(c->tmp, src, PAGE_SIZE))
 		zstream->next_in = c->tmp;
 	zstream->avail_in = PAGE_SIZE;
 
@@ -318,8 +319,8 @@ static int compress_page(struct compress *c,
 	return 0;
 }
 
-static int compress_flush(struct compress *c,
-			  struct drm_i915_error_object *dst)
+static int compress_flush(struct i915_vma_compress *c,
+			  struct i915_vma_coredump *dst)
 {
 	struct z_stream_s *zstream = &c->zstream;
 
@@ -347,12 +348,12 @@ static int compress_flush(struct compress *c,
 	return 0;
 }
 
-static void compress_finish(struct compress *c)
+static void compress_finish(struct i915_vma_compress *c)
 {
 	zlib_deflateEnd(&c->zstream);
 }
 
-static void compress_fini(struct compress *c)
+static void compress_fini(struct i915_vma_compress *c)
 {
 	kfree(c->zstream.workspace);
 	if (c->tmp)
@@ -367,24 +368,24 @@ static void err_compression_marker(struct drm_i915_error_state_buf *m)
 
 #else
 
-struct compress {
+struct i915_vma_compress {
 	struct pagevec pool;
-	bool wc;
 };
 
-static bool compress_init(struct compress *c)
+static bool compress_init(struct i915_vma_compress *c)
 {
 	return pool_init(&c->pool, ALLOW_FAIL) == 0;
 }
 
-static bool compress_start(struct compress *c)
+static bool compress_start(struct i915_vma_compress *c)
 {
 	return true;
 }
 
-static int compress_page(struct compress *c,
+static int compress_page(struct i915_vma_compress *c,
 			 void *src,
-			 struct drm_i915_error_object *dst)
+			 struct i915_vma_coredump *dst,
+			 bool wc)
 {
 	void *ptr;
 
@@ -392,24 +393,24 @@ static int compress_page(struct compress *c,
 	if (!ptr)
 		return -ENOMEM;
 
-	if (!(c->wc && i915_memcpy_from_wc(ptr, src, PAGE_SIZE)))
+	if (!(wc && i915_memcpy_from_wc(ptr, src, PAGE_SIZE)))
 		memcpy(ptr, src, PAGE_SIZE);
 	dst->pages[dst->page_count++] = ptr;
 
 	return 0;
 }
 
-static int compress_flush(struct compress *c,
-			  struct drm_i915_error_object *dst)
+static int compress_flush(struct i915_vma_compress *c,
+			  struct i915_vma_coredump *dst)
 {
 	return 0;
 }
 
-static void compress_finish(struct compress *c)
+static void compress_finish(struct i915_vma_compress *c)
 {
 }
 
-static void compress_fini(struct compress *c)
+static void compress_fini(struct i915_vma_compress *c)
 {
 	pool_fini(&c->pool);
 }
@@ -422,7 +423,7 @@ static void err_compression_marker(struct drm_i915_error_state_buf *m)
 #endif
 
 static void error_print_instdone(struct drm_i915_error_state_buf *m,
-				 const struct drm_i915_error_engine *ee)
+				 const struct intel_engine_coredump *ee)
 {
 	const struct sseu_dev_info *sseu = &RUNTIME_INFO(m->i915)->sseu;
 	int slice;
@@ -453,40 +454,56 @@ static void error_print_instdone(struct drm_i915_error_state_buf *m,
 
 static void error_print_request(struct drm_i915_error_state_buf *m,
 				const char *prefix,
-				const struct drm_i915_error_request *erq,
-				const unsigned long epoch)
+				const struct i915_request_coredump *erq)
 {
 	if (!erq->seqno)
 		return;
 
-	err_printf(m, "%s pid %d, seqno %8x:%08x%s%s, prio %d, emitted %dms, start %08x, head %08x, tail %08x\n",
+	err_printf(m, "%s pid %d, seqno %8x:%08x%s%s, prio %d, start %08x, head %08x, tail %08x\n",
 		   prefix, erq->pid, erq->context, erq->seqno,
 		   test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
 			    &erq->flags) ? "!" : "",
 		   test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
 			    &erq->flags) ? "+" : "",
 		   erq->sched_attr.priority,
-		   jiffies_to_msecs(erq->jiffies - epoch),
 		   erq->start, erq->head, erq->tail);
 }
 
 static void error_print_context(struct drm_i915_error_state_buf *m,
 				const char *header,
-				const struct drm_i915_error_context *ctx)
+				const struct i915_gem_context_coredump *ctx)
 {
 	err_printf(m, "%s%s[%d] prio %d, guilty %d active %d\n",
 		   header, ctx->comm, ctx->pid, ctx->sched_attr.priority,
 		   ctx->guilty, ctx->active);
 }
 
+static struct i915_vma_coredump *
+__find_vma(struct i915_vma_coredump *vma, const char *name)
+{
+	while (vma) {
+		if (strcmp(vma->name, name) == 0)
+			return vma;
+		vma = vma->next;
+	}
+
+	return NULL;
+}
+
+static struct i915_vma_coredump *
+find_batch(const struct intel_engine_coredump *ee)
+{
+	return __find_vma(ee->vma, "batch");
+}
+
 static void error_print_engine(struct drm_i915_error_state_buf *m,
-			       const struct drm_i915_error_engine *ee,
-			       const unsigned long epoch)
+			       const struct intel_engine_coredump *ee)
 {
+	struct i915_vma_coredump *batch;
 	int n;
 
 	err_printf(m, "%s command stream:\n", ee->engine->name);
-	err_printf(m, "  IDLE?: %s\n", yesno(ee->idle));
+	err_printf(m, "  CCID:  0x%08x\n", ee->ccid);
 	err_printf(m, "  START: 0x%08x\n", ee->start);
 	err_printf(m, "  HEAD:  0x%08x [0x%08x]\n", ee->head, ee->rq_head);
 	err_printf(m, "  TAIL:  0x%08x [0x%08x, 0x%08x]\n",
@@ -501,9 +518,10 @@ static void error_print_engine(struct drm_i915_error_state_buf *m,
 
 	error_print_instdone(m, ee);
 
-	if (ee->batchbuffer) {
-		u64 start = ee->batchbuffer->gtt_offset;
-		u64 end = start + ee->batchbuffer->gtt_size;
+	batch = find_batch(ee);
+	if (batch) {
+		u64 start = batch->gtt_offset;
+		u64 end = start + batch->gtt_size;
 
 		err_printf(m, "  batch: [0x%08x_%08x, 0x%08x_%08x]\n",
 			   upper_32_bits(start), lower_32_bits(start),
@@ -541,7 +559,7 @@ static void error_print_engine(struct drm_i915_error_state_buf *m,
 
 	for (n = 0; n < ee->num_ports; n++) {
 		err_printf(m, "  ELSP[%d]:", n);
-		error_print_request(m, " ", &ee->execlist[n], epoch);
+		error_print_request(m, " ", &ee->execlist[n]);
 	}
 
 	error_print_context(m, "  Active context: ", &ee->context);
@@ -556,38 +574,35 @@ void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...)
 	va_end(args);
 }
 
-static void print_error_obj(struct drm_i915_error_state_buf *m,
+static void print_error_vma(struct drm_i915_error_state_buf *m,
 			    const struct intel_engine_cs *engine,
-			    const char *name,
-			    const struct drm_i915_error_object *obj)
+			    const struct i915_vma_coredump *vma)
 {
 	char out[ASCII85_BUFSZ];
 	int page;
 
-	if (!obj)
+	if (!vma)
 		return;
 
-	if (name) {
-		err_printf(m, "%s --- %s = 0x%08x %08x\n",
-			   engine ? engine->name : "global", name,
-			   upper_32_bits(obj->gtt_offset),
-			   lower_32_bits(obj->gtt_offset));
-	}
+	err_printf(m, "%s --- %s = 0x%08x %08x\n",
+		   engine ? engine->name : "global", vma->name,
+		   upper_32_bits(vma->gtt_offset),
+		   lower_32_bits(vma->gtt_offset));
 
-	if (obj->gtt_page_sizes > I915_GTT_PAGE_SIZE_4K)
-		err_printf(m, "gtt_page_sizes = 0x%08x\n", obj->gtt_page_sizes);
+	if (vma->gtt_page_sizes > I915_GTT_PAGE_SIZE_4K)
+		err_printf(m, "gtt_page_sizes = 0x%08x\n", vma->gtt_page_sizes);
 
 	err_compression_marker(m);
-	for (page = 0; page < obj->page_count; page++) {
+	for (page = 0; page < vma->page_count; page++) {
 		int i, len;
 
 		len = PAGE_SIZE;
-		if (page == obj->page_count - 1)
-			len -= obj->unused;
+		if (page == vma->page_count - 1)
+			len -= vma->unused;
 		len = ascii85_encode_len(len);
 
 		for (i = 0; i < len; i++)
-			err_puts(m, ascii85_encode(obj->pages[page][i], out));
+			err_puts(m, ascii85_encode(vma->pages[page][i], out));
 	}
 	err_puts(m, "\n");
 }
@@ -626,18 +641,13 @@ static void err_print_pciid(struct drm_i915_error_state_buf *m,
 }
 
 static void err_print_uc(struct drm_i915_error_state_buf *m,
-			 const struct i915_error_uc *error_uc)
+			 const struct intel_uc_coredump *error_uc)
 {
 	struct drm_printer p = i915_error_printer(m);
-	const struct i915_gpu_state *error =
-		container_of(error_uc, typeof(*error), uc);
-
-	if (!error->device_info.has_gt_uc)
-		return;
 
 	intel_uc_fw_dump(&error_uc->guc_fw, &p);
 	intel_uc_fw_dump(&error_uc->huc_fw, &p);
-	print_error_obj(m, NULL, "GuC log buffer", error_uc->guc_log);
+	print_error_vma(m, NULL, error_uc->guc_log);
 }
 
 static void err_free_sgl(struct scatterlist *sgl)
@@ -657,12 +667,78 @@ static void err_free_sgl(struct scatterlist *sgl)
 	}
 }
 
+static void err_print_gt(struct drm_i915_error_state_buf *m,
+			 struct intel_gt_coredump *gt)
+{
+	const struct intel_engine_coredump *ee;
+	int i, j;
+
+	err_printf(m, "GT awake: %s\n", yesno(gt->awake));
+	err_printf(m, "EIR: 0x%08x\n", gt->eir);
+	err_printf(m, "IER: 0x%08x\n", gt->ier);
+	for (i = 0; i < gt->ngtier; i++)
+		err_printf(m, "GTIER[%d]: 0x%08x\n", i, gt->gtier[i]);
+	err_printf(m, "PGTBL_ER: 0x%08x\n", gt->pgtbl_er);
+	err_printf(m, "FORCEWAKE: 0x%08x\n", gt->forcewake);
+	err_printf(m, "DERRMR: 0x%08x\n", gt->derrmr);
+
+	for (i = 0; i < gt->nfence; i++)
+		err_printf(m, "  fence[%d] = %08llx\n", i, gt->fence[i]);
+
+	if (IS_GEN_RANGE(m->i915, 6, 11)) {
+		err_printf(m, "ERROR: 0x%08x\n", gt->error);
+		err_printf(m, "DONE_REG: 0x%08x\n", gt->done_reg);
+	}
+
+	if (INTEL_GEN(m->i915) >= 8)
+		err_printf(m, "FAULT_TLB_DATA: 0x%08x 0x%08x\n",
+			   gt->fault_data1, gt->fault_data0);
+
+	if (IS_GEN(m->i915, 7))
+		err_printf(m, "ERR_INT: 0x%08x\n", gt->err_int);
+
+	if (IS_GEN_RANGE(m->i915, 8, 11))
+		err_printf(m, "GTT_CACHE_EN: 0x%08x\n", gt->gtt_cache);
+
+	if (IS_GEN(m->i915, 12))
+		err_printf(m, "AUX_ERR_DBG: 0x%08x\n", gt->aux_err);
+
+	if (INTEL_GEN(m->i915) >= 12) {
+		int i;
+
+		for (i = 0; i < GEN12_SFC_DONE_MAX; i++)
+			err_printf(m, "  SFC_DONE[%d]: 0x%08x\n", i,
+				   gt->sfc_done[i]);
+
+		err_printf(m, "  GAM_DONE: 0x%08x\n", gt->gam_done);
+	}
+
+	for (ee = gt->engine; ee; ee = ee->next) {
+		const struct i915_vma_coredump *vma;
+
+		error_print_engine(m, ee);
+
+		for (vma = ee->vma; vma; vma = vma->next)
+			print_error_vma(m, ee->engine, vma);
+
+		if (ee->num_requests) {
+			err_printf(m, "%s --- %d requests\n",
+				   ee->engine->name,
+				   ee->num_requests);
+			for (j = 0; j < ee->num_requests; j++)
+				error_print_request(m, " ", &ee->requests[j]);
+		}
+	}
+
+	if (gt->uc)
+		err_print_uc(m, gt->uc);
+}
+
 static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
-			       struct i915_gpu_state *error)
+			       struct i915_gpu_coredump *error)
 {
-	const struct drm_i915_error_engine *ee;
+	const struct intel_engine_coredump *ee;
 	struct timespec64 ts;
-	int i, j;
 
 	if (*error->error_msg)
 		err_printf(m, "%s\n", error->error_msg);
@@ -682,7 +758,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 	err_printf(m, "Capture: %lu jiffies; %d ms ago\n",
 		   error->capture, jiffies_to_msecs(jiffies - error->capture));
 
-	for (ee = error->engine; ee; ee = ee->next)
+	for (ee = error->gt ? error->gt->engine : NULL; ee; ee = ee->next)
 		err_printf(m, "Active process (on ring %s): %s [%d]\n",
 			   ee->engine->name,
 			   ee->context.comm,
@@ -708,90 +784,11 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 			   CSR_VERSION_MINOR(csr->version));
 	}
 
-	err_printf(m, "GT awake: %s\n", yesno(error->awake));
 	err_printf(m, "RPM wakelock: %s\n", yesno(error->wakelock));
 	err_printf(m, "PM suspended: %s\n", yesno(error->suspended));
-	err_printf(m, "EIR: 0x%08x\n", error->eir);
-	err_printf(m, "IER: 0x%08x\n", error->ier);
-	for (i = 0; i < error->ngtier; i++)
-		err_printf(m, "GTIER[%d]: 0x%08x\n", i, error->gtier[i]);
-	err_printf(m, "PGTBL_ER: 0x%08x\n", error->pgtbl_er);
-	err_printf(m, "FORCEWAKE: 0x%08x\n", error->forcewake);
-	err_printf(m, "DERRMR: 0x%08x\n", error->derrmr);
-	err_printf(m, "CCID: 0x%08x\n", error->ccid);
-
-	for (i = 0; i < error->nfence; i++)
-		err_printf(m, "  fence[%d] = %08llx\n", i, error->fence[i]);
-
-	if (IS_GEN_RANGE(m->i915, 6, 11)) {
-		err_printf(m, "ERROR: 0x%08x\n", error->error);
-		err_printf(m, "DONE_REG: 0x%08x\n", error->done_reg);
-	}
-
-	if (INTEL_GEN(m->i915) >= 8)
-		err_printf(m, "FAULT_TLB_DATA: 0x%08x 0x%08x\n",
-			   error->fault_data1, error->fault_data0);
-
-	if (IS_GEN(m->i915, 7))
-		err_printf(m, "ERR_INT: 0x%08x\n", error->err_int);
-
-	if (IS_GEN_RANGE(m->i915, 8, 11))
-		err_printf(m, "GTT_CACHE_EN: 0x%08x\n", error->gtt_cache);
-
-	if (IS_GEN(m->i915, 12))
-		err_printf(m, "AUX_ERR_DBG: 0x%08x\n", error->aux_err);
 
-	if (INTEL_GEN(m->i915) >= 12) {
-		int i;
-
-		for (i = 0; i < GEN12_SFC_DONE_MAX; i++)
-			err_printf(m, "  SFC_DONE[%d]: 0x%08x\n", i,
-				   error->sfc_done[i]);
-
-		err_printf(m, "  GAM_DONE: 0x%08x\n", error->gam_done);
-	}
-
-	for (ee = error->engine; ee; ee = ee->next)
-		error_print_engine(m, ee, error->capture);
-
-	for (ee = error->engine; ee; ee = ee->next) {
-		const struct drm_i915_error_object *obj;
-
-		obj = ee->batchbuffer;
-		if (obj) {
-			err_puts(m, ee->engine->name);
-			if (ee->context.pid)
-				err_printf(m, " (submitted by %s [%d])",
-					   ee->context.comm,
-					   ee->context.pid);
-			err_printf(m, " --- gtt_offset = 0x%08x %08x\n",
-				   upper_32_bits(obj->gtt_offset),
-				   lower_32_bits(obj->gtt_offset));
-			print_error_obj(m, ee->engine, NULL, obj);
-		}
-
-		for (j = 0; j < ee->user_bo_count; j++)
-			print_error_obj(m, ee->engine, "user", ee->user_bo[j]);
-
-		if (ee->num_requests) {
-			err_printf(m, "%s --- %d requests\n",
-				   ee->engine->name,
-				   ee->num_requests);
-			for (j = 0; j < ee->num_requests; j++)
-				error_print_request(m, " ",
-						    &ee->requests[j],
-						    error->capture);
-		}
-
-		print_error_obj(m, ee->engine, "ringbuffer", ee->ringbuffer);
-		print_error_obj(m, ee->engine, "HW Status", ee->hws_page);
-		print_error_obj(m, ee->engine, "HW context", ee->ctx);
-		print_error_obj(m, ee->engine, "WA context", ee->wa_ctx);
-		print_error_obj(m, ee->engine,
-				"WA batchbuffer", ee->wa_batchbuffer);
-		print_error_obj(m, ee->engine,
-				"NULL context", ee->default_state);
-	}
+	if (error->gt)
+		err_print_gt(m, error->gt);
 
 	if (error->overlay)
 		intel_overlay_print_error_state(m, error->overlay);
@@ -802,10 +799,9 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 	err_print_capabilities(m, &error->device_info, &error->runtime_info,
 			       &error->driver_caps);
 	err_print_params(m, &error->params);
-	err_print_uc(m, &error->uc);
 }
 
-static int err_print_to_sgl(struct i915_gpu_state *error)
+static int err_print_to_sgl(struct i915_gpu_coredump *error)
 {
 	struct drm_i915_error_state_buf m;
 
@@ -842,8 +838,8 @@ static int err_print_to_sgl(struct i915_gpu_state *error)
 	return 0;
 }
 
-ssize_t i915_gpu_state_copy_to_buffer(struct i915_gpu_state *error,
-				      char *buf, loff_t off, size_t rem)
+ssize_t i915_gpu_coredump_copy_to_buffer(struct i915_gpu_coredump *error,
+					 char *buf, loff_t off, size_t rem)
 {
 	struct scatterlist *sg;
 	size_t count;
@@ -906,78 +902,82 @@ ssize_t i915_gpu_state_copy_to_buffer(struct i915_gpu_state *error,
 	return count;
 }
 
-static void i915_error_object_free(struct drm_i915_error_object *obj)
+static void i915_vma_coredump_free(struct i915_vma_coredump *vma)
 {
-	int page;
-
-	if (obj == NULL)
-		return;
+	while (vma) {
+		struct i915_vma_coredump *next = vma->next;
+		int page;
 
-	for (page = 0; page < obj->page_count; page++)
-		free_page((unsigned long)obj->pages[page]);
+		for (page = 0; page < vma->page_count; page++)
+			free_page((unsigned long)vma->pages[page]);
 
-	kfree(obj);
+		kfree(vma);
+		vma = next;
+	}
 }
 
-
-static void cleanup_params(struct i915_gpu_state *error)
+static void cleanup_params(struct i915_gpu_coredump *error)
 {
 	i915_params_free(&error->params);
 }
 
-static void cleanup_uc_state(struct i915_gpu_state *error)
+static void cleanup_uc(struct intel_uc_coredump *uc)
 {
-	struct i915_error_uc *error_uc = &error->uc;
+	kfree(uc->guc_fw.path);
+	kfree(uc->huc_fw.path);
+	i915_vma_coredump_free(uc->guc_log);
 
-	kfree(error_uc->guc_fw.path);
-	kfree(error_uc->huc_fw.path);
-	i915_error_object_free(error_uc->guc_log);
+	kfree(uc);
 }
 
-void __i915_gpu_state_free(struct kref *error_ref)
+static void cleanup_gt(struct intel_gt_coredump *gt)
 {
-	struct i915_gpu_state *error =
-		container_of(error_ref, typeof(*error), ref);
-	long i;
+	while (gt->engine) {
+		struct intel_engine_coredump *ee = gt->engine;
 
-	while (error->engine) {
-		struct drm_i915_error_engine *ee = error->engine;
+		gt->engine = ee->next;
 
-		error->engine = ee->next;
+		i915_vma_coredump_free(ee->vma);
+		kfree(ee->requests);
+		kfree(ee);
+	}
 
-		for (i = 0; i < ee->user_bo_count; i++)
-			i915_error_object_free(ee->user_bo[i]);
-		kfree(ee->user_bo);
+	if (gt->uc)
+		cleanup_uc(gt->uc);
 
-		i915_error_object_free(ee->batchbuffer);
-		i915_error_object_free(ee->wa_batchbuffer);
-		i915_error_object_free(ee->ringbuffer);
-		i915_error_object_free(ee->hws_page);
-		i915_error_object_free(ee->ctx);
-		i915_error_object_free(ee->wa_ctx);
+	kfree(gt);
+}
 
-		kfree(ee->requests);
-		kfree(ee);
+void __i915_gpu_coredump_free(struct kref *error_ref)
+{
+	struct i915_gpu_coredump *error =
+		container_of(error_ref, typeof(*error), ref);
+
+	while (error->gt) {
+		struct intel_gt_coredump *gt = error->gt;
+
+		error->gt = gt->next;
+		cleanup_gt(gt);
 	}
 
 	kfree(error->overlay);
 	kfree(error->display);
 
 	cleanup_params(error);
-	cleanup_uc_state(error);
 
 	err_free_sgl(error->sgl);
 	kfree(error);
 }
 
-static struct drm_i915_error_object *
-i915_error_object_create(struct drm_i915_private *i915,
-			 struct i915_vma *vma,
-			 struct compress *compress)
+static struct i915_vma_coredump *
+i915_vma_coredump_create(const struct intel_gt *gt,
+			 const struct i915_vma *vma,
+			 const char *name,
+			 struct i915_vma_compress *compress)
 {
-	struct i915_ggtt *ggtt = &i915->ggtt;
+	struct i915_ggtt *ggtt = gt->ggtt;
 	const u64 slot = ggtt->error_capture.start;
-	struct drm_i915_error_object *dst;
+	struct i915_vma_coredump *dst;
 	unsigned long num_pages;
 	struct sgt_iter iter;
 	int ret;
@@ -998,6 +998,9 @@ i915_error_object_create(struct drm_i915_private *i915,
 		return NULL;
 	}
 
+	strcpy(dst->name, name);
+	dst->next = NULL;
+
 	dst->gtt_offset = vma->node.start;
 	dst->gtt_size = vma->node.size;
 	dst->gtt_page_sizes = vma->page_sizes.gtt;
@@ -1005,9 +1008,6 @@ i915_error_object_create(struct drm_i915_private *i915,
 	dst->page_count = 0;
 	dst->unused = 0;
 
-	compress->wc = i915_gem_object_is_lmem(vma->obj) ||
-		       drm_mm_node_allocated(&ggtt->error_capture);
-
 	ret = -EINVAL;
 	if (drm_mm_node_allocated(&ggtt->error_capture)) {
 		void __iomem *s;
@@ -1016,9 +1016,12 @@ i915_error_object_create(struct drm_i915_private *i915,
 		for_each_sgt_daddr(dma, iter, vma->pages) {
 			ggtt->vm.insert_page(&ggtt->vm, dma, slot,
 					     I915_CACHE_NONE, 0);
+			mb();
 
 			s = io_mapping_map_wc(&ggtt->iomap, slot, PAGE_SIZE);
-			ret = compress_page(compress, (void  __force *)s, dst);
+			ret = compress_page(compress,
+					    (void  __force *)s, dst,
+					    true);
 			io_mapping_unmap(s);
 			if (ret)
 				break;
@@ -1031,7 +1034,9 @@ i915_error_object_create(struct drm_i915_private *i915,
 			void __iomem *s;
 
 			s = io_mapping_map_wc(&mem->iomap, dma, PAGE_SIZE);
-			ret = compress_page(compress, (void __force *)s, dst);
+			ret = compress_page(compress,
+					    (void __force *)s, dst,
+					    true);
 			io_mapping_unmap(s);
 			if (ret)
 				break;
@@ -1045,7 +1050,7 @@ i915_error_object_create(struct drm_i915_private *i915,
 			drm_clflush_pages(&page, 1);
 
 			s = kmap(page);
-			ret = compress_page(compress, s, dst);
+			ret = compress_page(compress, s, dst, false);
 			kunmap(page);
 
 			drm_clflush_pages(&page, 1);
@@ -1066,77 +1071,56 @@ i915_error_object_create(struct drm_i915_private *i915,
 	return dst;
 }
 
-/*
- * Generate a semi-unique error code. The code is not meant to have meaning, The
- * code's only purpose is to try to prevent false duplicated bug reports by
- * grossly estimating a GPU error state.
- *
- * TODO Ideally, hashing the batchbuffer would be a very nice way to determine
- * the hang if we could strip the GTT offset information from it.
- *
- * It's only a small step better than a random number in its current form.
- */
-static u32 i915_error_generate_code(struct i915_gpu_state *error)
-{
-	const struct drm_i915_error_engine *ee = error->engine;
-
-	/*
-	 * IPEHR would be an ideal way to detect errors, as it's the gross
-	 * measure of "the command that hung." However, has some very common
-	 * synchronization commands which almost always appear in the case
-	 * strictly a client bug. Use instdone to differentiate those some.
-	 */
-	return ee ? ee->ipehr ^ ee->instdone.instdone : 0;
-}
-
-static void gem_record_fences(struct i915_gpu_state *error)
+static void gt_record_fences(struct intel_gt_coredump *gt)
 {
-	struct drm_i915_private *dev_priv = error->i915;
-	struct intel_uncore *uncore = &dev_priv->uncore;
+	struct i915_ggtt *ggtt = gt->_gt->ggtt;
+	struct intel_uncore *uncore = gt->_gt->uncore;
 	int i;
 
-	if (INTEL_GEN(dev_priv) >= 6) {
-		for (i = 0; i < dev_priv->ggtt.num_fences; i++)
-			error->fence[i] =
+	if (INTEL_GEN(uncore->i915) >= 6) {
+		for (i = 0; i < ggtt->num_fences; i++)
+			gt->fence[i] =
 				intel_uncore_read64(uncore,
 						    FENCE_REG_GEN6_LO(i));
-	} else if (INTEL_GEN(dev_priv) >= 4) {
-		for (i = 0; i < dev_priv->ggtt.num_fences; i++)
-			error->fence[i] =
+	} else if (INTEL_GEN(uncore->i915) >= 4) {
+		for (i = 0; i < ggtt->num_fences; i++)
+			gt->fence[i] =
 				intel_uncore_read64(uncore,
 						    FENCE_REG_965_LO(i));
 	} else {
-		for (i = 0; i < dev_priv->ggtt.num_fences; i++)
-			error->fence[i] =
+		for (i = 0; i < ggtt->num_fences; i++)
+			gt->fence[i] =
 				intel_uncore_read(uncore, FENCE_REG(i));
 	}
-	error->nfence = i;
+	gt->nfence = i;
 }
 
-static void error_record_engine_registers(struct i915_gpu_state *error,
-					  struct intel_engine_cs *engine,
-					  struct drm_i915_error_engine *ee)
+static void engine_record_registers(struct intel_engine_coredump *ee)
 {
-	struct drm_i915_private *dev_priv = engine->i915;
+	const struct intel_engine_cs *engine = ee->engine;
+	struct drm_i915_private *i915 = engine->i915;
 
-	if (INTEL_GEN(dev_priv) >= 6) {
+	if (INTEL_GEN(i915) >= 6) {
 		ee->rc_psmi = ENGINE_READ(engine, RING_PSMI_CTL);
 
-		if (INTEL_GEN(dev_priv) >= 12)
-			ee->fault_reg = I915_READ(GEN12_RING_FAULT_REG);
-		else if (INTEL_GEN(dev_priv) >= 8)
-			ee->fault_reg = I915_READ(GEN8_RING_FAULT_REG);
+		if (INTEL_GEN(i915) >= 12)
+			ee->fault_reg = intel_uncore_read(engine->uncore,
+							  GEN12_RING_FAULT_REG);
+		else if (INTEL_GEN(i915) >= 8)
+			ee->fault_reg = intel_uncore_read(engine->uncore,
+							  GEN8_RING_FAULT_REG);
 		else
 			ee->fault_reg = GEN6_RING_FAULT_REG_READ(engine);
 	}
 
-	if (INTEL_GEN(dev_priv) >= 4) {
+	if (INTEL_GEN(i915) >= 4) {
 		ee->faddr = ENGINE_READ(engine, RING_DMA_FADD);
 		ee->ipeir = ENGINE_READ(engine, RING_IPEIR);
 		ee->ipehr = ENGINE_READ(engine, RING_IPEHR);
 		ee->instps = ENGINE_READ(engine, RING_INSTPS);
 		ee->bbaddr = ENGINE_READ(engine, RING_BBADDR);
-		if (INTEL_GEN(dev_priv) >= 8) {
+		ee->ccid = ENGINE_READ(engine, CCID);
+		if (INTEL_GEN(i915) >= 8) {
 			ee->faddr |= (u64)ENGINE_READ(engine, RING_DMA_FADD_UDW) << 32;
 			ee->bbaddr |= (u64)ENGINE_READ(engine, RING_BBADDR_UDW) << 32;
 		}
@@ -1155,13 +1139,13 @@ static void error_record_engine_registers(struct i915_gpu_state *error,
 	ee->head = ENGINE_READ(engine, RING_HEAD);
 	ee->tail = ENGINE_READ(engine, RING_TAIL);
 	ee->ctl = ENGINE_READ(engine, RING_CTL);
-	if (INTEL_GEN(dev_priv) > 2)
+	if (INTEL_GEN(i915) > 2)
 		ee->mode = ENGINE_READ(engine, RING_MI_MODE);
 
-	if (!HWS_NEEDS_PHYSICAL(dev_priv)) {
+	if (!HWS_NEEDS_PHYSICAL(i915)) {
 		i915_reg_t mmio;
 
-		if (IS_GEN(dev_priv, 7)) {
+		if (IS_GEN(i915, 7)) {
 			switch (engine->id) {
 			default:
 				MISSING_CASE(engine->id);
@@ -1186,40 +1170,40 @@ static void error_record_engine_registers(struct i915_gpu_state *error,
 			mmio = RING_HWS_PGA(engine->mmio_base);
 		}
 
-		ee->hws = I915_READ(mmio);
+		ee->hws = intel_uncore_read(engine->uncore, mmio);
 	}
 
-	ee->idle = intel_engine_is_idle(engine);
-	ee->reset_count = i915_reset_engine_count(&dev_priv->gpu_error,
-						  engine);
+	ee->reset_count = i915_reset_engine_count(&i915->gpu_error, engine);
 
-	if (HAS_PPGTT(dev_priv)) {
+	if (HAS_PPGTT(i915)) {
 		int i;
 
 		ee->vm_info.gfx_mode = ENGINE_READ(engine, RING_MODE_GEN7);
 
-		if (IS_GEN(dev_priv, 6)) {
+		if (IS_GEN(i915, 6)) {
 			ee->vm_info.pp_dir_base =
 				ENGINE_READ(engine, RING_PP_DIR_BASE_READ);
-		} else if (IS_GEN(dev_priv, 7)) {
+		} else if (IS_GEN(i915, 7)) {
 			ee->vm_info.pp_dir_base =
 				ENGINE_READ(engine, RING_PP_DIR_BASE);
-		} else if (INTEL_GEN(dev_priv) >= 8) {
+		} else if (INTEL_GEN(i915) >= 8) {
 			u32 base = engine->mmio_base;
 
 			for (i = 0; i < 4; i++) {
 				ee->vm_info.pdp[i] =
-					I915_READ(GEN8_RING_PDP_UDW(base, i));
+					intel_uncore_read(engine->uncore,
+							  GEN8_RING_PDP_UDW(base, i));
 				ee->vm_info.pdp[i] <<= 32;
 				ee->vm_info.pdp[i] |=
-					I915_READ(GEN8_RING_PDP_LDW(base, i));
+					intel_uncore_read(engine->uncore,
+							  GEN8_RING_PDP_LDW(base, i));
 			}
 		}
 	}
 }
 
 static void record_request(const struct i915_request *request,
-			   struct drm_i915_error_request *erq)
+			   struct i915_request_coredump *erq)
 {
 	const struct i915_gem_context *ctx;
 
@@ -1227,7 +1211,6 @@ static void record_request(const struct i915_request *request,
 	erq->context = request->fence.context;
 	erq->seqno = request->fence.seqno;
 	erq->sched_attr = request->sched.attr;
-	erq->jiffies = request->emitted_jiffies;
 	erq->start = i915_ggtt_offset(request->ring->vma);
 	erq->head = request->head;
 	erq->tail = request->tail;
@@ -1240,9 +1223,9 @@ static void record_request(const struct i915_request *request,
 	rcu_read_unlock();
 }
 
-static void engine_record_requests(struct intel_engine_cs *engine,
+static void engine_record_requests(const struct intel_engine_cs *engine,
 				   struct i915_request *first,
-				   struct drm_i915_error_engine *ee)
+				   struct intel_engine_coredump *ee)
 {
 	struct i915_request *request;
 	int count;
@@ -1288,11 +1271,10 @@ static void engine_record_requests(struct intel_engine_cs *engine,
 	ee->num_requests = count;
 }
 
-static void error_record_engine_execlists(const struct intel_engine_cs *engine,
-					  struct drm_i915_error_engine *ee)
+static void engine_record_execlists(struct intel_engine_coredump *ee)
 {
-	const struct intel_engine_execlists * const execlists = &engine->execlists;
-	struct i915_request * const *port = execlists->active;
+	const struct intel_engine_execlists * const el = &ee->engine->execlists;
+	struct i915_request * const *port = el->active;
 	unsigned int n = 0;
 
 	while (*port)
@@ -1301,7 +1283,7 @@ static void error_record_engine_execlists(const struct intel_engine_cs *engine,
 	ee->num_ports = n;
 }
 
-static bool record_context(struct drm_i915_error_context *e,
+static bool record_context(struct i915_gem_context_coredump *e,
 			   const struct i915_request *rq)
 {
 	struct i915_gem_context *ctx;
@@ -1334,23 +1316,24 @@ static bool record_context(struct drm_i915_error_context *e,
 	return capture;
 }
 
-struct capture_vma {
-	struct capture_vma *next;
-	void **slot;
+struct intel_engine_capture_vma {
+	struct intel_engine_capture_vma *next;
+	struct i915_vma *vma;
+	char name[16];
 };
 
-static struct capture_vma *
-capture_vma(struct capture_vma *next,
+static struct intel_engine_capture_vma *
+capture_vma(struct intel_engine_capture_vma *next,
 	    struct i915_vma *vma,
-	    struct drm_i915_error_object **out)
+	    const char *name,
+	    gfp_t gfp)
 {
-	struct capture_vma *c;
+	struct intel_engine_capture_vma *c;
 
-	*out = NULL;
 	if (!vma)
 		return next;
 
-	c = kmalloc(sizeof(*c), ATOMIC_MAYFAIL);
+	c = kmalloc(sizeof(*c), gfp);
 	if (!c)
 		return next;
 
@@ -1359,54 +1342,31 @@ capture_vma(struct capture_vma *next,
 		return next;
 	}
 
-	c->slot = (void **)out;
-	*c->slot = i915_vma_get(vma);
+	strcpy(c->name, name);
+	c->vma = i915_vma_get(vma);
 
 	c->next = next;
 	return c;
 }
 
-static struct capture_vma *
-request_record_user_bo(struct i915_request *request,
-		       struct drm_i915_error_engine *ee,
-		       struct capture_vma *capture)
+static struct intel_engine_capture_vma *
+capture_user(struct intel_engine_capture_vma *capture,
+	     const struct i915_request *rq,
+	     gfp_t gfp)
 {
 	struct i915_capture_list *c;
-	struct drm_i915_error_object **bo;
-	long count, max;
-
-	max = 0;
-	for (c = request->capture_list; c; c = c->next)
-		max++;
-	if (!max)
-		return capture;
-
-	bo = kmalloc_array(max, sizeof(*bo), ATOMIC_MAYFAIL);
-	if (!bo) {
-		/* If we can't capture everything, try to capture something. */
-		max = min_t(long, max, PAGE_SIZE / sizeof(*bo));
-		bo = kmalloc_array(max, sizeof(*bo), ATOMIC_MAYFAIL);
-	}
-	if (!bo)
-		return capture;
 
-	count = 0;
-	for (c = request->capture_list; c; c = c->next) {
-		capture = capture_vma(capture, c->vma, &bo[count]);
-		if (++count == max)
-			break;
-	}
-
-	ee->user_bo = bo;
-	ee->user_bo_count = count;
+	for (c = rq->capture_list; c; c = c->next)
+		capture = capture_vma(capture, c->vma, "user", gfp);
 
 	return capture;
 }
 
-static struct drm_i915_error_object *
-capture_object(struct drm_i915_private *dev_priv,
+static struct i915_vma_coredump *
+capture_object(const struct intel_gt *gt,
 	       struct drm_i915_gem_object *obj,
-	       struct compress *compress)
+	       const char *name,
+	       struct i915_vma_compress *compress)
 {
 	if (obj && i915_gem_object_has_pages(obj)) {
 		struct i915_vma fake = {
@@ -1416,127 +1376,183 @@ capture_object(struct drm_i915_private *dev_priv,
 			.obj = obj,
 		};
 
-		return i915_error_object_create(dev_priv, &fake, compress);
+		return i915_vma_coredump_create(gt, &fake, name, compress);
 	} else {
 		return NULL;
 	}
 }
 
-static void
-gem_record_rings(struct i915_gpu_state *error, struct compress *compress)
+static void add_vma(struct intel_engine_coredump *ee,
+		    struct i915_vma_coredump *vma)
 {
-	struct drm_i915_private *i915 = error->i915;
-	struct intel_engine_cs *engine;
-	struct drm_i915_error_engine *ee;
+	if (vma) {
+		vma->next = ee->vma;
+		ee->vma = vma;
+	}
+}
+
+struct intel_engine_coredump *
+intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
+{
+	struct intel_engine_coredump *ee;
 
-	ee = kzalloc(sizeof(*ee), GFP_KERNEL);
+	ee = kzalloc(sizeof(*ee), gfp);
 	if (!ee)
-		return;
+		return NULL;
 
-	for_each_uabi_engine(engine, i915) {
-		struct capture_vma *capture = NULL;
-		struct i915_request *request;
-		unsigned long flags;
+	ee->engine = engine;
 
-		/* Refill our page pool before entering atomic section */
-		pool_refill(&compress->pool, ALLOW_FAIL);
+	engine_record_registers(ee);
+	engine_record_execlists(ee);
 
-		spin_lock_irqsave(&engine->active.lock, flags);
-		request = intel_engine_find_active_request(engine);
-		if (!request) {
-			spin_unlock_irqrestore(&engine->active.lock, flags);
-			continue;
-		}
+	return ee;
+}
 
-		error->simulated |= record_context(&ee->context, request);
+struct intel_engine_capture_vma *
+intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
+				  struct i915_request *rq,
+				  gfp_t gfp)
+{
+	struct intel_engine_capture_vma *vma = NULL;
 
-		/*
-		 * We need to copy these to an anonymous buffer
-		 * as the simplest method to avoid being overwritten
-		 * by userspace.
-		 */
-		capture = capture_vma(capture,
-				      request->batch,
-				      &ee->batchbuffer);
+	ee->simulated |= record_context(&ee->context, rq);
+	if (ee->simulated)
+		return NULL;
 
-		if (HAS_BROKEN_CS_TLB(i915))
-			capture = capture_vma(capture,
-					      engine->gt->scratch,
-					      &ee->wa_batchbuffer);
+	/*
+	 * We need to copy these to an anonymous buffer
+	 * as the simplest method to avoid being overwritten
+	 * by userspace.
+	 */
+	vma = capture_vma(vma, rq->batch, "batch", gfp);
+	vma = capture_user(vma, rq, gfp);
+	vma = capture_vma(vma, rq->ring->vma, "ring", gfp);
+	vma = capture_vma(vma, rq->context->state, "HW context", gfp);
+	if (HAS_BROKEN_CS_TLB(rq->i915))
+		vma = capture_vma(vma, ee->engine->gt->scratch, "WA batch", gfp);
 
-		capture = request_record_user_bo(request, ee, capture);
+	ee->cpu_ring_head = rq->ring->head;
+	ee->cpu_ring_tail = rq->ring->tail;
 
-		capture = capture_vma(capture,
-				      request->context->state,
-				      &ee->ctx);
+	ee->rq_head = rq->head;
+	ee->rq_post = rq->postfix;
+	ee->rq_tail = rq->tail;
 
-		capture = capture_vma(capture,
-				      request->ring->vma,
-				      &ee->ringbuffer);
+	return vma;
+}
 
-		ee->cpu_ring_head = request->ring->head;
-		ee->cpu_ring_tail = request->ring->tail;
+void
+intel_engine_coredump_add_vma(struct intel_engine_coredump *ee,
+			      struct intel_engine_capture_vma *capture,
+			      struct i915_vma_compress *compress)
+{
+	const struct intel_engine_cs *engine = ee->engine;
 
-		ee->rq_head = request->head;
-		ee->rq_post = request->postfix;
-		ee->rq_tail = request->tail;
+	while (capture) {
+		struct intel_engine_capture_vma *this = capture;
+		struct i915_vma *vma = this->vma;
 
-		engine_record_requests(engine, request, ee);
-		spin_unlock_irqrestore(&engine->active.lock, flags);
+		add_vma(ee,
+			i915_vma_coredump_create(engine->gt,
+						 vma, this->name,
+						 compress));
 
-		error_record_engine_registers(error, engine, ee);
-		error_record_engine_execlists(engine, ee);
+		i915_active_release(&vma->active);
+		i915_vma_put(vma);
 
-		while (capture) {
-			struct capture_vma *this = capture;
-			struct i915_vma *vma = *this->slot;
+		capture = this->next;
+		kfree(this);
+	}
 
-			*this->slot =
-				i915_error_object_create(i915, vma, compress);
+	add_vma(ee,
+		i915_vma_coredump_create(engine->gt,
+					 engine->status_page.vma,
+					 "HW Status",
+					 compress));
 
-			i915_active_release(&vma->active);
-			i915_vma_put(vma);
+	add_vma(ee,
+		i915_vma_coredump_create(engine->gt,
+					 engine->wa_ctx.vma,
+					 "WA context",
+					 compress));
 
-			capture = this->next;
-			kfree(this);
-		}
+	add_vma(ee,
+		capture_object(engine->gt,
+			       engine->default_state,
+			       "NULL context",
+			       compress));
+}
+
+static struct intel_engine_coredump *
+capture_engine(struct intel_engine_cs *engine,
+	       struct i915_vma_compress *compress)
+{
+	struct intel_engine_capture_vma *capture;
+	struct intel_engine_coredump *ee;
+	struct i915_request *rq;
+	unsigned long flags;
 
-		ee->hws_page =
-			i915_error_object_create(i915,
-						 engine->status_page.vma,
-						 compress);
+	ee = intel_engine_coredump_alloc(engine, GFP_KERNEL);
+	if (!ee)
+		return NULL;
 
-		ee->wa_ctx =
-			i915_error_object_create(i915,
-						 engine->wa_ctx.vma,
-						 compress);
+	spin_lock_irqsave(&engine->active.lock, flags);
 
-		ee->default_state =
-			capture_object(i915, engine->default_state, compress);
+	rq = intel_engine_find_active_request(engine);
+	if (!rq) {
+		spin_unlock_irqrestore(&engine->active.lock, flags);
+		kfree(ee);
+		return NULL;
+	}
 
-		ee->engine = engine;
+	capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);
+	engine_record_requests(engine, rq, ee);
 
-		ee->next = error->engine;
-		error->engine = ee;
+	spin_unlock_irqrestore(&engine->active.lock, flags);
 
-		ee = kzalloc(sizeof(*ee), GFP_KERNEL);
-		if (!ee)
-			return;
-	}
+	intel_engine_coredump_add_vma(ee, capture, compress);
 
-	kfree(ee);
+	return ee;
 }
 
 static void
-capture_uc_state(struct i915_gpu_state *error, struct compress *compress)
+gt_record_engines(struct intel_gt_coredump *gt,
+		  struct i915_vma_compress *compress)
 {
-	struct drm_i915_private *i915 = error->i915;
-	struct i915_error_uc *error_uc = &error->uc;
-	struct intel_uc *uc = &i915->gt.uc;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
 
-	/* Capturing uC state won't be useful if there is no GuC */
-	if (!error->device_info.has_gt_uc)
-		return;
+	for_each_engine(engine, gt->_gt, id) {
+		struct intel_engine_coredump *ee;
+
+		/* Refill our page pool before entering atomic section */
+		pool_refill(&compress->pool, ALLOW_FAIL);
+
+		ee = capture_engine(engine, compress);
+		if (!ee)
+			continue;
+
+		gt->simulated |= ee->simulated;
+		if (ee->simulated) {
+			kfree(ee);
+			continue;
+		}
+
+		ee->next = gt->engine;
+		gt->engine = ee;
+	}
+}
+
+static struct intel_uc_coredump *
+gt_record_uc(struct intel_gt_coredump *gt,
+	     struct i915_vma_compress *compress)
+{
+	const struct intel_uc *uc = &gt->_gt->uc;
+	struct intel_uc_coredump *error_uc;
+
+	error_uc = kzalloc(sizeof(*error_uc), ALLOW_FAIL);
+	if (!error_uc)
+		return NULL;
 
 	memcpy(&error_uc->guc_fw, &uc->guc.fw, sizeof(uc->guc.fw));
 	memcpy(&error_uc->huc_fw, &uc->huc.fw, sizeof(uc->huc.fw));
@@ -1547,19 +1563,42 @@ capture_uc_state(struct i915_gpu_state *error, struct compress *compress)
 	 */
 	error_uc->guc_fw.path = kstrdup(uc->guc.fw.path, ALLOW_FAIL);
 	error_uc->huc_fw.path = kstrdup(uc->huc.fw.path, ALLOW_FAIL);
-	error_uc->guc_log = i915_error_object_create(i915,
-						     uc->guc.log.vma,
-						     compress);
+	error_uc->guc_log =
+		i915_vma_coredump_create(gt->_gt,
+					 uc->guc.log.vma, "GuC log buffer",
+					 compress);
+
+	return error_uc;
+}
+
+static void gt_capture_prepare(struct intel_gt_coredump *gt)
+{
+	struct i915_ggtt *ggtt = gt->_gt->ggtt;
+
+	mutex_lock(&ggtt->error_mutex);
+}
+
+static void gt_capture_finish(struct intel_gt_coredump *gt)
+{
+	struct i915_ggtt *ggtt = gt->_gt->ggtt;
+
+	if (drm_mm_node_allocated(&ggtt->error_capture))
+		ggtt->vm.clear_range(&ggtt->vm,
+				     ggtt->error_capture.start,
+				     PAGE_SIZE);
+
+	mutex_unlock(&ggtt->error_mutex);
 }
 
 /* Capture all registers which don't fit into another category. */
-static void capture_reg_state(struct i915_gpu_state *error)
+static void gt_record_regs(struct intel_gt_coredump *gt)
 {
-	struct drm_i915_private *i915 = error->i915;
-	struct intel_uncore *uncore = &i915->uncore;
+	struct intel_uncore *uncore = gt->_gt->uncore;
+	struct drm_i915_private *i915 = uncore->i915;
 	int i;
 
-	/* General organization
+	/*
+	 * General organization
 	 * 1. Registers specific to a single generation
 	 * 2. Registers which belong to multiple generations
 	 * 3. Feature specific registers.
@@ -1569,138 +1608,162 @@ static void capture_reg_state(struct i915_gpu_state *error)
 
 	/* 1: Registers specific to a single generation */
 	if (IS_VALLEYVIEW(i915)) {
-		error->gtier[0] = intel_uncore_read(uncore, GTIER);
-		error->ier = intel_uncore_read(uncore, VLV_IER);
-		error->forcewake = intel_uncore_read_fw(uncore, FORCEWAKE_VLV);
+		gt->gtier[0] = intel_uncore_read(uncore, GTIER);
+		gt->ier = intel_uncore_read(uncore, VLV_IER);
+		gt->forcewake = intel_uncore_read_fw(uncore, FORCEWAKE_VLV);
 	}
 
 	if (IS_GEN(i915, 7))
-		error->err_int = intel_uncore_read(uncore, GEN7_ERR_INT);
+		gt->err_int = intel_uncore_read(uncore, GEN7_ERR_INT);
 
 	if (INTEL_GEN(i915) >= 12) {
-		error->fault_data0 = intel_uncore_read(uncore,
-						       GEN12_FAULT_TLB_DATA0);
-		error->fault_data1 = intel_uncore_read(uncore,
-						       GEN12_FAULT_TLB_DATA1);
+		gt->fault_data0 = intel_uncore_read(uncore,
+						    GEN12_FAULT_TLB_DATA0);
+		gt->fault_data1 = intel_uncore_read(uncore,
+						    GEN12_FAULT_TLB_DATA1);
 	} else if (INTEL_GEN(i915) >= 8) {
-		error->fault_data0 = intel_uncore_read(uncore,
-						       GEN8_FAULT_TLB_DATA0);
-		error->fault_data1 = intel_uncore_read(uncore,
-						       GEN8_FAULT_TLB_DATA1);
+		gt->fault_data0 = intel_uncore_read(uncore,
+						    GEN8_FAULT_TLB_DATA0);
+		gt->fault_data1 = intel_uncore_read(uncore,
+						    GEN8_FAULT_TLB_DATA1);
 	}
 
 	if (IS_GEN(i915, 6)) {
-		error->forcewake = intel_uncore_read_fw(uncore, FORCEWAKE);
-		error->gab_ctl = intel_uncore_read(uncore, GAB_CTL);
-		error->gfx_mode = intel_uncore_read(uncore, GFX_MODE);
+		gt->forcewake = intel_uncore_read_fw(uncore, FORCEWAKE);
+		gt->gab_ctl = intel_uncore_read(uncore, GAB_CTL);
+		gt->gfx_mode = intel_uncore_read(uncore, GFX_MODE);
 	}
 
 	/* 2: Registers which belong to multiple generations */
 	if (INTEL_GEN(i915) >= 7)
-		error->forcewake = intel_uncore_read_fw(uncore, FORCEWAKE_MT);
+		gt->forcewake = intel_uncore_read_fw(uncore, FORCEWAKE_MT);
 
 	if (INTEL_GEN(i915) >= 6) {
-		error->derrmr = intel_uncore_read(uncore, DERRMR);
+		gt->derrmr = intel_uncore_read(uncore, DERRMR);
 		if (INTEL_GEN(i915) < 12) {
-			error->error = intel_uncore_read(uncore, ERROR_GEN6);
-			error->done_reg = intel_uncore_read(uncore, DONE_REG);
+			gt->error = intel_uncore_read(uncore, ERROR_GEN6);
+			gt->done_reg = intel_uncore_read(uncore, DONE_REG);
 		}
 	}
 
-	if (INTEL_GEN(i915) >= 5)
-		error->ccid = intel_uncore_read(uncore, CCID(RENDER_RING_BASE));
-
 	/* 3: Feature specific registers */
 	if (IS_GEN_RANGE(i915, 6, 7)) {
-		error->gam_ecochk = intel_uncore_read(uncore, GAM_ECOCHK);
-		error->gac_eco = intel_uncore_read(uncore, GAC_ECO_BITS);
+		gt->gam_ecochk = intel_uncore_read(uncore, GAM_ECOCHK);
+		gt->gac_eco = intel_uncore_read(uncore, GAC_ECO_BITS);
 	}
 
 	if (IS_GEN_RANGE(i915, 8, 11))
-		error->gtt_cache = intel_uncore_read(uncore, HSW_GTT_CACHE_EN);
+		gt->gtt_cache = intel_uncore_read(uncore, HSW_GTT_CACHE_EN);
 
 	if (IS_GEN(i915, 12))
-		error->aux_err = intel_uncore_read(uncore, GEN12_AUX_ERR_DBG);
+		gt->aux_err = intel_uncore_read(uncore, GEN12_AUX_ERR_DBG);
 
 	if (INTEL_GEN(i915) >= 12) {
 		for (i = 0; i < GEN12_SFC_DONE_MAX; i++) {
-			error->sfc_done[i] =
+			gt->sfc_done[i] =
 				intel_uncore_read(uncore, GEN12_SFC_DONE(i));
 		}
 
-		error->gam_done = intel_uncore_read(uncore, GEN12_GAM_DONE);
+		gt->gam_done = intel_uncore_read(uncore, GEN12_GAM_DONE);
 	}
 
 	/* 4: Everything else */
 	if (INTEL_GEN(i915) >= 11) {
-		error->ier = intel_uncore_read(uncore, GEN8_DE_MISC_IER);
-		error->gtier[0] =
+		gt->ier = intel_uncore_read(uncore, GEN8_DE_MISC_IER);
+		gt->gtier[0] =
 			intel_uncore_read(uncore,
 					  GEN11_RENDER_COPY_INTR_ENABLE);
-		error->gtier[1] =
+		gt->gtier[1] =
 			intel_uncore_read(uncore, GEN11_VCS_VECS_INTR_ENABLE);
-		error->gtier[2] =
+		gt->gtier[2] =
 			intel_uncore_read(uncore, GEN11_GUC_SG_INTR_ENABLE);
-		error->gtier[3] =
+		gt->gtier[3] =
 			intel_uncore_read(uncore,
 					  GEN11_GPM_WGBOXPERF_INTR_ENABLE);
-		error->gtier[4] =
+		gt->gtier[4] =
 			intel_uncore_read(uncore,
 					  GEN11_CRYPTO_RSVD_INTR_ENABLE);
-		error->gtier[5] =
+		gt->gtier[5] =
 			intel_uncore_read(uncore,
 					  GEN11_GUNIT_CSME_INTR_ENABLE);
-		error->ngtier = 6;
+		gt->ngtier = 6;
 	} else if (INTEL_GEN(i915) >= 8) {
-		error->ier = intel_uncore_read(uncore, GEN8_DE_MISC_IER);
+		gt->ier = intel_uncore_read(uncore, GEN8_DE_MISC_IER);
 		for (i = 0; i < 4; i++)
-			error->gtier[i] = intel_uncore_read(uncore,
-							    GEN8_GT_IER(i));
-		error->ngtier = 4;
+			gt->gtier[i] =
+				intel_uncore_read(uncore, GEN8_GT_IER(i));
+		gt->ngtier = 4;
 	} else if (HAS_PCH_SPLIT(i915)) {
-		error->ier = intel_uncore_read(uncore, DEIER);
-		error->gtier[0] = intel_uncore_read(uncore, GTIER);
-		error->ngtier = 1;
+		gt->ier = intel_uncore_read(uncore, DEIER);
+		gt->gtier[0] = intel_uncore_read(uncore, GTIER);
+		gt->ngtier = 1;
 	} else if (IS_GEN(i915, 2)) {
-		error->ier = intel_uncore_read16(uncore, GEN2_IER);
+		gt->ier = intel_uncore_read16(uncore, GEN2_IER);
 	} else if (!IS_VALLEYVIEW(i915)) {
-		error->ier = intel_uncore_read(uncore, GEN2_IER);
+		gt->ier = intel_uncore_read(uncore, GEN2_IER);
 	}
-	error->eir = intel_uncore_read(uncore, EIR);
-	error->pgtbl_er = intel_uncore_read(uncore, PGTBL_ER);
+	gt->eir = intel_uncore_read(uncore, EIR);
+	gt->pgtbl_er = intel_uncore_read(uncore, PGTBL_ER);
+}
+
+/*
+ * Generate a semi-unique error code. The code is not meant to have meaning, The
+ * code's only purpose is to try to prevent false duplicated bug reports by
+ * grossly estimating a GPU error state.
+ *
+ * TODO Ideally, hashing the batchbuffer would be a very nice way to determine
+ * the hang if we could strip the GTT offset information from it.
+ *
+ * It's only a small step better than a random number in its current form.
+ */
+static u32 generate_ecode(const struct intel_engine_coredump *ee)
+{
+	/*
+	 * IPEHR would be an ideal way to detect errors, as it's the gross
+	 * measure of "the command that hung." However, has some very common
+	 * synchronization commands which almost always appear in the case
+	 * strictly a client bug. Use instdone to differentiate those some.
+	 */
+	return ee ? ee->ipehr ^ ee->instdone.instdone : 0;
 }
 
-static const char *
-error_msg(struct i915_gpu_state *error,
-	  intel_engine_mask_t engines, const char *msg)
+static const char *error_msg(struct i915_gpu_coredump *error)
 {
+	struct intel_engine_coredump *first = NULL;
+	struct intel_gt_coredump *gt;
+	intel_engine_mask_t engines;
 	int len;
 
+	engines = 0;
+	for (gt = error->gt; gt; gt = gt->next) {
+		struct intel_engine_coredump *cs;
+
+		if (gt->engine && !first)
+			first = gt->engine;
+
+		for (cs = gt->engine; cs; cs = cs->next)
+			engines |= cs->engine->mask;
+	}
+
 	len = scnprintf(error->error_msg, sizeof(error->error_msg),
-			"GPU HANG: ecode %d:%x:0x%08x",
+			"GPU HANG: ecode %d:%x:%08x",
 			INTEL_GEN(error->i915), engines,
-			i915_error_generate_code(error));
-	if (error->engine) {
+			generate_ecode(first));
+	if (first) {
 		/* Just show the first executing process, more is confusing */
 		len += scnprintf(error->error_msg + len,
 				 sizeof(error->error_msg) - len,
 				 ", in %s [%d]",
-				 error->engine->context.comm,
-				 error->engine->context.pid);
+				 first->context.comm, first->context.pid);
 	}
-	if (msg)
-		len += scnprintf(error->error_msg + len,
-				 sizeof(error->error_msg) - len,
-				 ", %s", msg);
 
 	return error->error_msg;
 }
 
-static void capture_gen_state(struct i915_gpu_state *error)
+static void capture_gen(struct i915_gpu_coredump *error)
 {
 	struct drm_i915_private *i915 = error->i915;
 
-	error->awake = i915->gt.awake;
 	error->wakelock = atomic_read(&i915->runtime_pm.wakeref_count);
 	error->suspended = i915->runtime_pm.suspended;
 
@@ -1711,6 +1774,7 @@ static void capture_gen_state(struct i915_gpu_state *error)
 	error->reset_count = i915_reset_count(&i915->gpu_error);
 	error->suspend_count = i915->suspend_count;
 
+	i915_params_copy(&error->params, &i915_modparams);
 	memcpy(&error->device_info,
 	       INTEL_INFO(i915),
 	       sizeof(error->device_info));
@@ -1720,115 +1784,135 @@ static void capture_gen_state(struct i915_gpu_state *error)
 	error->driver_caps = i915->caps;
 }
 
-static void capture_params(struct i915_gpu_state *error)
+struct i915_gpu_coredump *
+i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp)
 {
-	i915_params_copy(&error->params, &i915_modparams);
+	struct i915_gpu_coredump *error;
+
+	if (!i915_modparams.error_capture)
+		return NULL;
+
+	error = kzalloc(sizeof(*error), gfp);
+	if (!error)
+		return NULL;
+
+	kref_init(&error->ref);
+	error->i915 = i915;
+
+	error->time = ktime_get_real();
+	error->boottime = ktime_get_boottime();
+	error->uptime = ktime_sub(ktime_get(), i915->gt.last_init_time);
+	error->capture = jiffies;
+
+	capture_gen(error);
+
+	return error;
 }
 
-static void capture_finish(struct i915_gpu_state *error)
+#define DAY_AS_SECONDS(x) (24 * 60 * 60 * (x))
+
+struct intel_gt_coredump *
+intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp)
 {
-	struct i915_ggtt *ggtt = &error->i915->ggtt;
+	struct intel_gt_coredump *gc;
 
-	if (drm_mm_node_allocated(&ggtt->error_capture)) {
-		const u64 slot = ggtt->error_capture.start;
+	gc = kzalloc(sizeof(*gc), gfp);
+	if (!gc)
+		return NULL;
+
+	gc->_gt = gt;
+	gc->awake = intel_gt_pm_is_awake(gt);
+
+	gt_record_regs(gc);
+	gt_record_fences(gc);
+
+	return gc;
+}
+
+struct i915_vma_compress *
+i915_vma_capture_prepare(struct intel_gt_coredump *gt)
+{
+	struct i915_vma_compress *compress;
+
+	compress = kmalloc(sizeof(*compress), ALLOW_FAIL);
+	if (!compress)
+		return NULL;
 
-		ggtt->vm.clear_range(&ggtt->vm, slot, PAGE_SIZE);
+	if (!compress_init(compress)) {
+		kfree(compress);
+		return NULL;
 	}
+
+	gt_capture_prepare(gt);
+
+	return compress;
 }
 
-#define DAY_AS_SECONDS(x) (24 * 60 * 60 * (x))
+void i915_vma_capture_finish(struct intel_gt_coredump *gt,
+			     struct i915_vma_compress *compress)
+{
+	gt_capture_finish(gt);
+
+	compress_fini(compress);
+	kfree(compress);
+}
 
-struct i915_gpu_state *
-i915_capture_gpu_state(struct drm_i915_private *i915)
+struct i915_gpu_coredump *i915_gpu_coredump(struct drm_i915_private *i915)
 {
-	struct i915_gpu_state *error;
-	struct compress compress;
+	struct i915_gpu_coredump *error;
 
 	/* Check if GPU capture has been disabled */
 	error = READ_ONCE(i915->gpu_error.first_error);
 	if (IS_ERR(error))
 		return error;
 
-	error = kzalloc(sizeof(*error), ALLOW_FAIL);
-	if (!error) {
-		i915_disable_error_state(i915, -ENOMEM);
+	error = i915_gpu_coredump_alloc(i915, ALLOW_FAIL);
+	if (!error)
 		return ERR_PTR(-ENOMEM);
-	}
 
-	if (!compress_init(&compress)) {
-		kfree(error);
-		i915_disable_error_state(i915, -ENOMEM);
-		return ERR_PTR(-ENOMEM);
-	}
+	error->gt = intel_gt_coredump_alloc(&i915->gt, ALLOW_FAIL);
+	if (error->gt) {
+		struct i915_vma_compress *compress;
 
-	kref_init(&error->ref);
-	error->i915 = i915;
+		compress = i915_vma_capture_prepare(error->gt);
+		if (!compress) {
+			kfree(error->gt);
+			kfree(error);
+			return ERR_PTR(-ENOMEM);
+		}
 
-	error->time = ktime_get_real();
-	error->boottime = ktime_get_boottime();
-	error->uptime = ktime_sub(ktime_get(), i915->gt.last_init_time);
-	error->capture = jiffies;
+		gt_record_engines(error->gt, compress);
+
+		if (INTEL_INFO(i915)->has_gt_uc)
+			error->gt->uc = gt_record_uc(error->gt, compress);
 
-	capture_params(error);
-	capture_gen_state(error);
-	capture_uc_state(error, &compress);
-	capture_reg_state(error);
-	gem_record_fences(error);
-	gem_record_rings(error, &compress);
+		i915_vma_capture_finish(error->gt, compress);
+
+		error->simulated |= error->gt->simulated;
+	}
 
 	error->overlay = intel_overlay_capture_error_state(i915);
 	error->display = intel_display_capture_error_state(i915);
 
-	capture_finish(error);
-	compress_fini(&compress);
-
 	return error;
 }
 
-/**
- * i915_capture_error_state - capture an error record for later analysis
- * @i915: i915 device
- * @engine_mask: the mask of engines triggering the hang
- * @msg: a message to insert into the error capture header
- *
- * Should be called when an error is detected (either a hang or an error
- * interrupt) to capture error state from the time of the error.  Fills
- * out a structure which becomes available in debugfs for user level tools
- * to pick up.
- */
-void i915_capture_error_state(struct drm_i915_private *i915,
-			      intel_engine_mask_t engine_mask,
-			      const char *msg)
+void i915_error_state_store(struct i915_gpu_coredump *error)
 {
+	struct drm_i915_private *i915;
 	static bool warned;
-	struct i915_gpu_state *error;
-	unsigned long flags;
 
-	if (!i915_modparams.error_capture)
+	if (IS_ERR_OR_NULL(error))
 		return;
 
-	if (READ_ONCE(i915->gpu_error.first_error))
-		return;
+	i915 = error->i915;
+	dev_info(i915->drm.dev, "%s\n", error_msg(error));
 
-	error = i915_capture_gpu_state(i915);
-	if (IS_ERR(error))
+	if (error->simulated ||
+	    cmpxchg(&i915->gpu_error.first_error, NULL, error))
 		return;
 
-	dev_info(i915->drm.dev, "%s\n", error_msg(error, engine_mask, msg));
-
-	if (!error->simulated) {
-		spin_lock_irqsave(&i915->gpu_error.lock, flags);
-		if (!i915->gpu_error.first_error) {
-			i915->gpu_error.first_error = error;
-			error = NULL;
-		}
-		spin_unlock_irqrestore(&i915->gpu_error.lock, flags);
-	}
-
-	if (error) {
-		__i915_gpu_state_free(&error->ref);
-		return;
-	}
+	i915_gpu_coredump_get(error);
 
 	if (!xchg(&warned, true) &&
 	    ktime_get_real_seconds() - DRIVER_TIMESTAMP < DAY_AS_SECONDS(180)) {
@@ -1841,15 +1925,38 @@ void i915_capture_error_state(struct drm_i915_private *i915,
 	}
 }
 
-struct i915_gpu_state *
+/**
+ * i915_capture_error_state - capture an error record for later analysis
+ * @i915: i915 device
+ *
+ * Should be called when an error is detected (either a hang or an error
+ * interrupt) to capture error state from the time of the error.  Fills
+ * out a structure which becomes available in debugfs for user level tools
+ * to pick up.
+ */
+void i915_capture_error_state(struct drm_i915_private *i915)
+{
+	struct i915_gpu_coredump *error;
+
+	error = i915_gpu_coredump(i915);
+	if (IS_ERR(error)) {
+		cmpxchg(&i915->gpu_error.first_error, NULL, error);
+		return;
+	}
+
+	i915_error_state_store(error);
+	i915_gpu_coredump_put(error);
+}
+
+struct i915_gpu_coredump *
 i915_first_error_state(struct drm_i915_private *i915)
 {
-	struct i915_gpu_state *error;
+	struct i915_gpu_coredump *error;
 
 	spin_lock_irq(&i915->gpu_error.lock);
 	error = i915->gpu_error.first_error;
 	if (!IS_ERR_OR_NULL(error))
-		i915_gpu_state_get(error);
+		i915_gpu_coredump_get(error);
 	spin_unlock_irq(&i915->gpu_error.lock);
 
 	return error;
@@ -1857,7 +1964,7 @@ i915_first_error_state(struct drm_i915_private *i915)
 
 void i915_reset_error_state(struct drm_i915_private *i915)
 {
-	struct i915_gpu_state *error;
+	struct i915_gpu_coredump *error;
 
 	spin_lock_irq(&i915->gpu_error.lock);
 	error = i915->gpu_error.first_error;
@@ -1866,7 +1973,7 @@ void i915_reset_error_state(struct drm_i915_private *i915)
 	spin_unlock_irq(&i915->gpu_error.lock);
 
 	if (!IS_ERR_OR_NULL(error))
-		i915_gpu_state_put(error);
+		i915_gpu_coredump_put(error);
 }
 
 void i915_disable_error_state(struct drm_i915_private *i915, int err)
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 5d2c3372ff99..0df9d8c32056 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -25,43 +25,105 @@
 #include "i915_scheduler.h"
 
 struct drm_i915_private;
+struct i915_vma_compress;
+struct intel_engine_capture_vma;
 struct intel_overlay_error_state;
 struct intel_display_error_state;
 
-struct i915_gpu_state {
-	struct kref ref;
-	ktime_t time;
-	ktime_t boottime;
-	ktime_t uptime;
-	unsigned long capture;
+struct i915_vma_coredump {
+	struct i915_vma_coredump *next;
 
-	struct drm_i915_private *i915;
+	char name[20];
+
+	u64 gtt_offset;
+	u64 gtt_size;
+	u32 gtt_page_sizes;
+
+	int num_pages;
+	int page_count;
+	int unused;
+	u32 *pages[0];
+};
+
+struct i915_request_coredump {
+	unsigned long flags;
+	pid_t pid;
+	u32 context;
+	u32 seqno;
+	u32 start;
+	u32 head;
+	u32 tail;
+	struct i915_sched_attr sched_attr;
+};
+
+struct intel_engine_coredump {
+	const struct intel_engine_cs *engine;
 
-	char error_msg[128];
 	bool simulated;
-	bool awake;
-	bool wakelock;
-	bool suspended;
-	int iommu;
+	int num_requests;
 	u32 reset_count;
-	u32 suspend_count;
-	struct intel_device_info device_info;
-	struct intel_runtime_info runtime_info;
-	struct intel_driver_caps driver_caps;
-	struct i915_params params;
 
-	struct i915_error_uc {
-		struct intel_uc_fw guc_fw;
-		struct intel_uc_fw huc_fw;
-		struct drm_i915_error_object *guc_log;
-	} uc;
+	/* position of active request inside the ring */
+	u32 rq_head, rq_post, rq_tail;
+
+	/* our own tracking of ring head and tail */
+	u32 cpu_ring_head;
+	u32 cpu_ring_tail;
+
+	/* Register state */
+	u32 ccid;
+	u32 start;
+	u32 tail;
+	u32 head;
+	u32 ctl;
+	u32 mode;
+	u32 hws;
+	u32 ipeir;
+	u32 ipehr;
+	u32 bbstate;
+	u32 instpm;
+	u32 instps;
+	u64 bbaddr;
+	u64 acthd;
+	u32 fault_reg;
+	u64 faddr;
+	u32 rc_psmi; /* sleep state */
+	struct intel_instdone instdone;
+
+	struct i915_gem_context_coredump {
+		char comm[TASK_COMM_LEN];
+		pid_t pid;
+		int active;
+		int guilty;
+		struct i915_sched_attr sched_attr;
+	} context;
+
+	struct i915_vma_coredump *vma;
+
+	struct i915_request_coredump *requests, execlist[EXECLIST_MAX_PORTS];
+	unsigned int num_ports;
+
+	struct {
+		u32 gfx_mode;
+		union {
+			u64 pdp[4];
+			u32 pp_dir_base;
+		};
+	} vm_info;
+
+	struct intel_engine_coredump *next;
+};
+
+struct intel_gt_coredump {
+	const struct intel_gt *_gt;
+	bool awake;
+	bool simulated;
 
 	/* Generic register state */
 	u32 eir;
 	u32 pgtbl_er;
 	u32 ier;
 	u32 gtier[6], ngtier;
-	u32 ccid;
 	u32 derrmr;
 	u32 forcewake;
 	u32 error; /* gen6+ */
@@ -80,91 +142,45 @@ struct i915_gpu_state {
 
 	u32 nfence;
 	u64 fence[I915_MAX_NUM_FENCES];
+
+	struct intel_engine_coredump *engine;
+
+	struct intel_uc_coredump {
+		struct intel_uc_fw guc_fw;
+		struct intel_uc_fw huc_fw;
+		struct i915_vma_coredump *guc_log;
+	} *uc;
+
+	struct intel_gt_coredump *next;
+};
+
+struct i915_gpu_coredump {
+	struct kref ref;
+	ktime_t time;
+	ktime_t boottime;
+	ktime_t uptime;
+	unsigned long capture;
+
+	struct drm_i915_private *i915;
+
+	struct intel_gt_coredump *gt;
+
+	char error_msg[128];
+	bool simulated;
+	bool wakelock;
+	bool suspended;
+	int iommu;
+	u32 reset_count;
+	u32 suspend_count;
+
+	struct intel_device_info device_info;
+	struct intel_runtime_info runtime_info;
+	struct intel_driver_caps driver_caps;
+	struct i915_params params;
+
 	struct intel_overlay_error_state *overlay;
 	struct intel_display_error_state *display;
 
-	struct drm_i915_error_engine {
-		const struct intel_engine_cs *engine;
-
-		/* Software tracked state */
-		bool idle;
-		int num_requests;
-		u32 reset_count;
-
-		/* position of active request inside the ring */
-		u32 rq_head, rq_post, rq_tail;
-
-		/* our own tracking of ring head and tail */
-		u32 cpu_ring_head;
-		u32 cpu_ring_tail;
-
-		/* Register state */
-		u32 start;
-		u32 tail;
-		u32 head;
-		u32 ctl;
-		u32 mode;
-		u32 hws;
-		u32 ipeir;
-		u32 ipehr;
-		u32 bbstate;
-		u32 instpm;
-		u32 instps;
-		u64 bbaddr;
-		u64 acthd;
-		u32 fault_reg;
-		u64 faddr;
-		u32 rc_psmi; /* sleep state */
-		struct intel_instdone instdone;
-
-		struct drm_i915_error_context {
-			char comm[TASK_COMM_LEN];
-			pid_t pid;
-			int active;
-			int guilty;
-			struct i915_sched_attr sched_attr;
-		} context;
-
-		struct drm_i915_error_object {
-			u64 gtt_offset;
-			u64 gtt_size;
-			u32 gtt_page_sizes;
-			int num_pages;
-			int page_count;
-			int unused;
-			u32 *pages[0];
-		} *ringbuffer, *batchbuffer, *wa_batchbuffer, *ctx, *hws_page;
-
-		struct drm_i915_error_object **user_bo;
-		long user_bo_count;
-
-		struct drm_i915_error_object *wa_ctx;
-		struct drm_i915_error_object *default_state;
-
-		struct drm_i915_error_request {
-			unsigned long flags;
-			long jiffies;
-			pid_t pid;
-			u32 context;
-			u32 seqno;
-			u32 start;
-			u32 head;
-			u32 tail;
-			struct i915_sched_attr sched_attr;
-		} *requests, execlist[EXECLIST_MAX_PORTS];
-		unsigned int num_ports;
-
-		struct {
-			u32 gfx_mode;
-			union {
-				u64 pdp[4];
-				u32 pp_dir_base;
-			};
-		} vm_info;
-
-		struct drm_i915_error_engine *next;
-	} *engine;
-
 	struct scatterlist *sgl, *fit;
 };
 
@@ -172,7 +188,7 @@ struct i915_gpu_error {
 	/* For reset and error_state handling. */
 	spinlock_t lock;
 	/* Protected by the above dev->gpu_error.lock. */
-	struct i915_gpu_state *first_error;
+	struct i915_gpu_coredump *first_error;
 
 	atomic_t pending_fb_pin;
 
@@ -200,29 +216,54 @@ struct drm_i915_error_state_buf {
 __printf(2, 3)
 void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...);
 
-struct i915_gpu_state *i915_capture_gpu_state(struct drm_i915_private *i915);
-void i915_capture_error_state(struct drm_i915_private *dev_priv,
-			      intel_engine_mask_t engine_mask,
-			      const char *error_msg);
+struct i915_gpu_coredump *i915_gpu_coredump(struct drm_i915_private *i915);
+void i915_capture_error_state(struct drm_i915_private *dev_priv);
+
+struct i915_gpu_coredump *
+i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp);
+
+struct intel_gt_coredump *
+intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp);
+
+struct intel_engine_coredump *
+intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp);
 
-static inline struct i915_gpu_state *
-i915_gpu_state_get(struct i915_gpu_state *gpu)
+struct intel_engine_capture_vma *
+intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
+				  struct i915_request *rq,
+				  gfp_t gfp);
+
+void intel_engine_coredump_add_vma(struct intel_engine_coredump *ee,
+				   struct intel_engine_capture_vma *capture,
+				   struct i915_vma_compress *compress);
+
+struct i915_vma_compress *
+i915_vma_capture_prepare(struct intel_gt_coredump *gt);
+
+void i915_vma_capture_finish(struct intel_gt_coredump *gt,
+			     struct i915_vma_compress *compress);
+
+void i915_error_state_store(struct i915_gpu_coredump *error);
+
+static inline struct i915_gpu_coredump *
+i915_gpu_coredump_get(struct i915_gpu_coredump *gpu)
 {
 	kref_get(&gpu->ref);
 	return gpu;
 }
 
-ssize_t i915_gpu_state_copy_to_buffer(struct i915_gpu_state *error,
-				      char *buf, loff_t offset, size_t count);
+ssize_t
+i915_gpu_coredump_copy_to_buffer(struct i915_gpu_coredump *error,
+				 char *buf, loff_t offset, size_t count);
 
-void __i915_gpu_state_free(struct kref *kref);
-static inline void i915_gpu_state_put(struct i915_gpu_state *gpu)
+void __i915_gpu_coredump_free(struct kref *kref);
+static inline void i915_gpu_coredump_put(struct i915_gpu_coredump *gpu)
 {
 	if (gpu)
-		kref_put(&gpu->ref, __i915_gpu_state_free);
+		kref_put(&gpu->ref, __i915_gpu_coredump_free);
 }
 
-struct i915_gpu_state *i915_first_error_state(struct drm_i915_private *i915);
+struct i915_gpu_coredump *i915_first_error_state(struct drm_i915_private *i915);
 void i915_reset_error_state(struct drm_i915_private *i915);
 void i915_disable_error_state(struct drm_i915_private *i915, int err);
 
@@ -234,7 +275,56 @@ static inline void i915_capture_error_state(struct drm_i915_private *dev_priv,
 {
 }
 
-static inline struct i915_gpu_state *
+static inline struct i915_gpu_coredump *
+i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp)
+{
+	return NULL;
+}
+
+static inline struct intel_gt_coredump *
+intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp)
+{
+	return NULL;
+}
+
+static inline struct intel_engine_coredump *
+intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
+{
+	return NULL;
+}
+
+static inline struct intel_engine_capture_vma *
+intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
+				  struct i915_request *rq,
+				  gfp_t gfp)
+{
+	return NULL;
+}
+
+static inline void
+intel_engine_coredump_add_vma(struct intel_engine_coredump *ee,
+			      struct intel_engine_capture_vma *capture,
+			      struct i915_vma_compress *compress)
+{
+}
+
+static inline struct i915_vma_compress *
+i915_vma_compress_prepare(struct intel_gt_coredump *gt)
+{
+	return NULL;
+}
+
+void i915_vma_compress_prepare(struct i915_vma_compress *compress)
+{
+}
+
+static inline void
+i915_error_state_store(struct drm_i915_private *i915,
+		       struct i915_gpu_coredump *error)
+{
+}
+
+static inline struct i915_gpu_coredump *
 i915_first_error_state(struct drm_i915_private *i915)
 {
 	return ERR_PTR(-ENODEV);
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index ad2b1b833d7b..0cef3130db05 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -498,15 +498,15 @@ static ssize_t error_state_read(struct file *filp, struct kobject *kobj,
 
 	struct device *kdev = kobj_to_dev(kobj);
 	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
-	struct i915_gpu_state *gpu;
+	struct i915_gpu_coredump *gpu;
 	ssize_t ret;
 
 	gpu = i915_first_error_state(i915);
 	if (IS_ERR(gpu)) {
 		ret = PTR_ERR(gpu);
 	} else if (gpu) {
-		ret = i915_gpu_state_copy_to_buffer(gpu, buf, off, count);
-		i915_gpu_state_put(gpu);
+		ret = i915_gpu_coredump_copy_to_buffer(gpu, buf, off, count);
+		i915_gpu_coredump_put(gpu);
 	} else {
 		const char *str = "No error state collected\n";
 		size_t len = strlen(str);
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
