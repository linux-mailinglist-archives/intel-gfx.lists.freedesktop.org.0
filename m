Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CCB172D84
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 01:40:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EB656EDA4;
	Fri, 28 Feb 2020 00:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C76F6EDA4
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 00:40:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20378269-1500050 
 for multiple; Fri, 28 Feb 2020 00:39:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2020 00:39:55 +0000
Message-Id: <20200228003958.2347965-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/perf: Reintroduce wait on OA
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
index e34c79df6ebc..79391d92ab7e 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1970,9 +1970,10 @@ get_oa_vma(struct i915_perf_stream *stream, struct i915_oa_config *oa_config)
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
@@ -1980,7 +1981,7 @@ static int emit_oa_config(struct i915_perf_stream *stream,
 
 	vma = get_oa_vma(stream, oa_config);
 	if (IS_ERR(vma))
-		return PTR_ERR(vma);
+		return ERR_CAST(vma);
 
 	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
 	if (err)
@@ -2005,13 +2006,17 @@ static int emit_oa_config(struct i915_perf_stream *stream,
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
@@ -2019,7 +2024,8 @@ static struct intel_context *oa_context(struct i915_perf_stream *stream)
 	return stream->pinned_ctx ?: stream->engine->kernel_context;
 }
 
-static int hsw_enable_metric_set(struct i915_perf_stream *stream)
+static struct i915_request *
+hsw_enable_metric_set(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
@@ -2422,7 +2428,8 @@ static int lrc_configure_all_contexts(struct i915_perf_stream *stream,
 	return oa_configure_all_contexts(stream, regs, ARRAY_SIZE(regs));
 }
 
-static int gen8_enable_metric_set(struct i915_perf_stream *stream)
+static struct i915_request *
+gen8_enable_metric_set(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
 	struct i915_oa_config *oa_config = stream->oa_config;
@@ -2464,7 +2471,7 @@ static int gen8_enable_metric_set(struct i915_perf_stream *stream)
 	 */
 	ret = lrc_configure_all_contexts(stream, oa_config);
 	if (ret)
-		return ret;
+		return ERR_PTR(ret);
 
 	return emit_oa_config(stream, oa_config, oa_context(stream));
 }
@@ -2476,7 +2483,8 @@ static u32 oag_report_ctx_switches(const struct i915_perf_stream *stream)
 			     0 : GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS);
 }
 
-static int gen12_enable_metric_set(struct i915_perf_stream *stream)
+static struct i915_request *
+gen12_enable_metric_set(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
 	struct i915_oa_config *oa_config = stream->oa_config;
@@ -2507,7 +2515,7 @@ static int gen12_enable_metric_set(struct i915_perf_stream *stream)
 	 */
 	ret = gen12_configure_all_contexts(stream, oa_config);
 	if (ret)
-		return ret;
+		return ERR_PTR(ret);
 
 	/*
 	 * For Gen12, performance counters are context
@@ -2517,7 +2525,7 @@ static int gen12_enable_metric_set(struct i915_perf_stream *stream)
 	if (stream->ctx) {
 		ret = gen12_configure_oar_context(stream, true);
 		if (ret)
-			return ret;
+			return ERR_PTR(ret);
 	}
 
 	return emit_oa_config(stream, oa_config, oa_context(stream));
@@ -2715,6 +2723,20 @@ static const struct i915_perf_stream_ops i915_oa_stream_ops = {
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
@@ -2849,7 +2871,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	stream->ops = &i915_oa_stream_ops;
 	perf->exclusive_stream = stream;
 
-	ret = perf->ops.enable_metric_set(stream);
+	ret = i915_perf_stream_enable_sync(stream);
 	if (ret) {
 		DRM_DEBUG("Unable to enable metric set\n");
 		goto err_enable;
@@ -3167,7 +3189,7 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 		return -EINVAL;
 
 	if (config != stream->oa_config) {
-		int err;
+		struct i915_request *rq;
 
 		/*
 		 * If OA is bound to a specific context, emit the
@@ -3178,11 +3200,13 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
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
