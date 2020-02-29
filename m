Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 283AC1746E9
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 13:50:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECD756E320;
	Sat, 29 Feb 2020 12:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AE0E6E31A
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Feb 2020 12:50:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Feb 2020 04:50:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,499,1574150400"; d="scan'208";a="272994385"
Received: from gabrielj-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.51.10])
 by fmsmga002.fm.intel.com with ESMTP; 29 Feb 2020 04:50:27 -0800
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 29 Feb 2020 14:50:21 +0200
Message-Id: <20200229125022.1694679-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200229125022.1694679-1-lionel.g.landwerlin@intel.com>
References: <20200229125022.1694679-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/perf: reintroduce wait on OA
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
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_perf.c       | 49 +++++++++++++++++++++++---
 drivers/gpu/drm/i915/i915_perf_types.h |  8 +++++
 2 files changed, 52 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index b474a0240280..541a818ff3a8 100644
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
@@ -1392,6 +1409,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 	 */
 	WRITE_ONCE(perf->exclusive_stream, NULL);
 	perf->ops.disable_metric_set(stream);
+	GEM_BUG_ON(stream->configure_request != NULL);
 
 	free_oa_buffer(stream);
 
@@ -1956,7 +1974,8 @@ get_oa_vma(struct i915_perf_stream *stream, struct i915_oa_config *oa_config)
 
 static int emit_oa_config(struct i915_perf_stream *stream,
 			  struct i915_oa_config *oa_config,
-			  struct intel_context *ce)
+			  struct intel_context *ce,
+			  bool store_on_stream)
 {
 	struct i915_request *rq;
 	struct i915_vma *vma;
@@ -1989,6 +2008,12 @@ static int emit_oa_config(struct i915_perf_stream *stream,
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
@@ -2022,7 +2047,9 @@ static int hsw_enable_metric_set(struct i915_perf_stream *stream)
 	intel_uncore_rmw(uncore, GEN6_UCGCTL1,
 			 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
 
-	return emit_oa_config(stream, stream->oa_config, oa_context(stream));
+	return emit_oa_config(stream, stream->oa_config,
+			      oa_context(stream),
+			      true /* store_on_stream */);
 }
 
 static void hsw_disable_metric_set(struct i915_perf_stream *stream)
@@ -2452,7 +2479,9 @@ static int gen8_enable_metric_set(struct i915_perf_stream *stream)
 	if (ret)
 		return ret;
 
-	return emit_oa_config(stream, oa_config, oa_context(stream));
+	return emit_oa_config(stream, oa_config,
+			      oa_context(stream),
+			      true /* store_on_stream */);
 }
 
 static u32 oag_report_ctx_switches(const struct i915_perf_stream *stream)
@@ -2506,7 +2535,9 @@ static int gen12_enable_metric_set(struct i915_perf_stream *stream)
 			return ret;
 	}
 
-	return emit_oa_config(stream, oa_config, oa_context(stream));
+	return emit_oa_config(stream, oa_config,
+			      oa_context(stream),
+			      true /* store_on_stream */);
 }
 
 static void gen8_disable_metric_set(struct i915_perf_stream *stream)
@@ -2841,6 +2872,12 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
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
 
@@ -2855,6 +2892,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 err_enable:
 	WRITE_ONCE(perf->exclusive_stream, NULL);
 	perf->ops.disable_metric_set(stream);
+	GEM_BUG_ON(stream->configure_request != NULL);
 
 	free_oa_buffer(stream);
 
@@ -3163,7 +3201,8 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
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
