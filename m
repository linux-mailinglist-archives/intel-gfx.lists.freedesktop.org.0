Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7711D1717B8
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 13:44:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21CA96E8BA;
	Thu, 27 Feb 2020 12:44:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47E8B6E8BA
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 12:44:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 04:43:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="238410643"
Received: from rkujawa-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.137.196])
 by orsmga003.jf.intel.com with ESMTP; 27 Feb 2020 04:43:58 -0800
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 14:43:56 +0200
Message-Id: <20200227124356.1625616-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: reintroduce wait on OA
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

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Fixes: 15d0ace1f876 ("drm/i915/perf: execute OA configuration from command stream")
---
 drivers/gpu/drm/i915/i915_perf.c       | 49 +++++++++++++++++++++++---
 drivers/gpu/drm/i915/i915_perf_types.h |  8 +++++
 2 files changed, 52 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index f4e1dd525fa2..3883c21b13b2 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1378,6 +1378,23 @@ free_noa_wait(struct i915_perf_stream *stream)
 	i915_vma_unpin_and_release(&stream->noa_wait, 0);
 }
 
+static int
+wait_and_put_configure_request(struct i915_perf_stream *stream)
+{
+	struct i915_request *rq = stream->configure_request;
+	int ret = 0;
+
+	stream->configure_request = NULL;
+	GEM_BUG_ON(rq == NULL);
+
+	if (i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT) < 0)
+		ret = -ETIME;
+
+	i915_request_put(rq);
+
+	return ret;
+}
+
 static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 {
 	struct i915_perf *perf = stream->perf;
@@ -1390,6 +1407,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 	 */
 	perf->exclusive_stream = NULL;
 	perf->ops.disable_metric_set(stream);
+	GEM_BUG_ON(stream->configure_request != NULL);
 
 	free_oa_buffer(stream);
 
@@ -1954,7 +1972,8 @@ get_oa_vma(struct i915_perf_stream *stream, struct i915_oa_config *oa_config)
 
 static int emit_oa_config(struct i915_perf_stream *stream,
 			  struct i915_oa_config *oa_config,
-			  struct intel_context *ce)
+			  struct intel_context *ce,
+			  bool store_on_stream)
 {
 	struct i915_request *rq;
 	struct i915_vma *vma;
@@ -1987,6 +2006,12 @@ static int emit_oa_config(struct i915_perf_stream *stream,
 	err = rq->engine->emit_bb_start(rq,
 					vma->node.start, 0,
 					I915_DISPATCH_SECURE);
+
+	if (err == 0 && store_on_stream) {
+		GEM_BUG_ON(stream->configure_request != NULL);
+		stream->configure_request = i915_request_get(rq);
+	}
+
 err_add_request:
 	i915_request_add(rq);
 err_vma_unpin:
@@ -2020,7 +2045,9 @@ static int hsw_enable_metric_set(struct i915_perf_stream *stream)
 	intel_uncore_rmw(uncore, GEN6_UCGCTL1,
 			 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
 
-	return emit_oa_config(stream, stream->oa_config, oa_context(stream));
+	return emit_oa_config(stream, stream->oa_config,
+			      oa_context(stream),
+			      true /* store_on_stream */);
 }
 
 static void hsw_disable_metric_set(struct i915_perf_stream *stream)
@@ -2448,7 +2475,9 @@ static int gen8_enable_metric_set(struct i915_perf_stream *stream)
 	if (ret)
 		return ret;
 
-	return emit_oa_config(stream, oa_config, oa_context(stream));
+	return emit_oa_config(stream, oa_config,
+			      oa_context(stream),
+			      true /* store_on_stream */);
 }
 
 static u32 oag_report_ctx_switches(const struct i915_perf_stream *stream)
@@ -2502,7 +2531,9 @@ static int gen12_enable_metric_set(struct i915_perf_stream *stream)
 			return ret;
 	}
 
-	return emit_oa_config(stream, oa_config, oa_context(stream));
+	return emit_oa_config(stream, oa_config,
+			      oa_context(stream),
+			      true /* store_on_stream */);
 }
 
 static void gen8_disable_metric_set(struct i915_perf_stream *stream)
@@ -2837,6 +2868,12 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 		goto err_enable;
 	}
 
+	ret = wait_and_put_configure_request(stream);
+	if (ret) {
+		DRM_DEBUG("Wait on OA config request timed out\n");
+		goto err_enable;
+	}
+
 	DRM_DEBUG("opening stream oa config uuid=%s\n",
 		  stream->oa_config->uuid);
 
@@ -2851,6 +2888,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 err_enable:
 	perf->exclusive_stream = NULL;
 	perf->ops.disable_metric_set(stream);
+	GEM_BUG_ON(stream->configure_request != NULL);
 
 	free_oa_buffer(stream);
 
@@ -3160,7 +3198,8 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 		 * When set globally, we use a low priority kernel context,
 		 * so it will effectively take effect when idle.
 		 */
-		err = emit_oa_config(stream, config, oa_context(stream));
+		err = emit_oa_config(stream, config, oa_context(stream),
+				     false /* store_on_stream */);
 		if (err == 0)
 			config = xchg(&stream->oa_config, config);
 		else
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index d994fa6a1c5f..92fd3cf5afcc 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -309,6 +309,14 @@ struct i915_perf_stream {
 	 * reprogrammed.
 	 */
 	struct i915_vma *noa_wait;
+
+	/**
+	 * @configure_request: Request on which to wait for HW to complete its
+	 * initial configuration. This is required for applications caring
+	 * about system wide monitoring. We want all the data they can get
+	 * through the OA buffer to be valid.
+	 */
+	struct i915_request *configure_request;
 };
 
 /**
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
