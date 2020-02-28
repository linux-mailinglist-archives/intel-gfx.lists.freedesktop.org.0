Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE7F1732D8
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 09:24:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2E026EE6F;
	Fri, 28 Feb 2020 08:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 035EB6EE6B
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 08:24:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20380873-1500050 
 for multiple; Fri, 28 Feb 2020 08:23:33 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2020 08:23:11 +0000
Message-Id: <20200228082330.2411941-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200228082330.2411941-1-chris@chris-wilson.co.uk>
References: <20200228082330.2411941-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/24] drm/i915/perf: Reintroduce wait on OA
 configuration completion
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

We still need to wait for the initial OA configuration to happen
before we enable OA report writes to the OA buffer.

Reported-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Fixes: 15d0ace1f876 ("drm/i915/perf: execute OA configuration from command stream")
Testcase: igt/perf/stream-open-close
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
This is simply an alternative to storing the request inside the stream.
---
 drivers/gpu/drm/i915/i915_perf.c       | 58 ++++++++++++++++++--------
 drivers/gpu/drm/i915/i915_perf_types.h |  3 +-
 2 files changed, 43 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 2334c45f1d08..1b074bb4a7fe 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1972,9 +1972,10 @@ get_oa_vma(struct i915_perf_stream *stream, struct i915_oa_config *oa_config)
 	return i915_vma_get(oa_bo->vma);
 }
 
-static int emit_oa_config(struct i915_perf_stream *stream,
-			  struct i915_oa_config *oa_config,
-			  struct intel_context *ce)
+static struct i915_request *
+emit_oa_config(struct i915_perf_stream *stream,
+	       struct i915_oa_config *oa_config,
+	       struct intel_context *ce)
 {
 	struct i915_request *rq;
 	struct i915_vma *vma;
@@ -1982,7 +1983,7 @@ static int emit_oa_config(struct i915_perf_stream *stream,
 
 	vma = get_oa_vma(stream, oa_config);
 	if (IS_ERR(vma))
-		return PTR_ERR(vma);
+		return ERR_CAST(vma);
 
 	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
 	if (err)
@@ -2007,13 +2008,17 @@ static int emit_oa_config(struct i915_perf_stream *stream,
 	err = rq->engine->emit_bb_start(rq,
 					vma->node.start, 0,
 					I915_DISPATCH_SECURE);
+	if (err)
+		goto err_add_request;
+
+	i915_request_get(rq);
 err_add_request:
 	i915_request_add(rq);
 err_vma_unpin:
 	i915_vma_unpin(vma);
 err_vma_put:
 	i915_vma_put(vma);
-	return err;
+	return err ? ERR_PTR(err) : rq;
 }
 
 static struct intel_context *oa_context(struct i915_perf_stream *stream)
@@ -2021,7 +2026,8 @@ static struct intel_context *oa_context(struct i915_perf_stream *stream)
 	return stream->pinned_ctx ?: stream->engine->kernel_context;
 }
 
-static int hsw_enable_metric_set(struct i915_perf_stream *stream)
+static struct i915_request *
+hsw_enable_metric_set(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
@@ -2426,7 +2432,8 @@ static int lrc_configure_all_contexts(struct i915_perf_stream *stream,
 	return oa_configure_all_contexts(stream, regs, ARRAY_SIZE(regs));
 }
 
-static int gen8_enable_metric_set(struct i915_perf_stream *stream)
+static struct i915_request *
+gen8_enable_metric_set(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
 	struct i915_oa_config *oa_config = stream->oa_config;
@@ -2468,7 +2475,7 @@ static int gen8_enable_metric_set(struct i915_perf_stream *stream)
 	 */
 	ret = lrc_configure_all_contexts(stream, oa_config);
 	if (ret)
-		return ret;
+		return ERR_PTR(ret);
 
 	return emit_oa_config(stream, oa_config, oa_context(stream));
 }
@@ -2480,7 +2487,8 @@ static u32 oag_report_ctx_switches(const struct i915_perf_stream *stream)
 			     0 : GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS);
 }
 
-static int gen12_enable_metric_set(struct i915_perf_stream *stream)
+static struct i915_request *
+gen12_enable_metric_set(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
 	struct i915_oa_config *oa_config = stream->oa_config;
@@ -2511,7 +2519,7 @@ static int gen12_enable_metric_set(struct i915_perf_stream *stream)
 	 */
 	ret = gen12_configure_all_contexts(stream, oa_config);
 	if (ret)
-		return ret;
+		return ERR_PTR(ret);
 
 	/*
 	 * For Gen12, performance counters are context
@@ -2521,7 +2529,7 @@ static int gen12_enable_metric_set(struct i915_perf_stream *stream)
 	if (stream->ctx) {
 		ret = gen12_configure_oar_context(stream, true);
 		if (ret)
-			return ret;
+			return ERR_PTR(ret);
 	}
 
 	return emit_oa_config(stream, oa_config, oa_context(stream));
@@ -2719,6 +2727,20 @@ static const struct i915_perf_stream_ops i915_oa_stream_ops = {
 	.read = i915_oa_read,
 };
 
+static int i915_perf_stream_enable_sync(struct i915_perf_stream *stream)
+{
+	struct i915_request *rq;
+
+	rq = stream->perf->ops.enable_metric_set(stream);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
+	i915_request_put(rq);
+
+	return 0;
+}
+
 /**
  * i915_oa_stream_init - validate combined props for OA stream and init
  * @stream: An i915 perf stream
@@ -2853,7 +2875,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	stream->ops = &i915_oa_stream_ops;
 	WRITE_ONCE(perf->exclusive_stream, stream);
 
-	ret = perf->ops.enable_metric_set(stream);
+	ret = i915_perf_stream_enable_sync(stream);
 	if (ret) {
 		DRM_DEBUG("Unable to enable metric set\n");
 		goto err_enable;
@@ -3170,7 +3192,7 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 		return -EINVAL;
 
 	if (config != stream->oa_config) {
-		int err;
+		struct i915_request *rq;
 
 		/*
 		 * If OA is bound to a specific context, emit the
@@ -3181,11 +3203,13 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 		 * When set globally, we use a low priority kernel context,
 		 * so it will effectively take effect when idle.
 		 */
-		err = emit_oa_config(stream, config, oa_context(stream));
-		if (err == 0)
+		rq = emit_oa_config(stream, config, oa_context(stream));
+		if (!IS_ERR(rq)) {
 			config = xchg(&stream->oa_config, config);
-		else
-			ret = err;
+			i915_request_put(rq);
+		} else {
+			ret = PTR_ERR(rq);
+		}
 	}
 
 	i915_oa_config_put(config);
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index 45e581455f5d..a0e22f00f6cf 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -339,7 +339,8 @@ struct i915_oa_ops {
 	 * counter reports being sampled. May apply system constraints such as
 	 * disabling EU clock gating as required.
 	 */
-	int (*enable_metric_set)(struct i915_perf_stream *stream);
+	struct i915_request *
+		(*enable_metric_set)(struct i915_perf_stream *stream);
 
 	/**
 	 * @disable_metric_set: Remove system constraints associated with using
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
