Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2BD170A79
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 22:31:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2390889F1B;
	Wed, 26 Feb 2020 21:31:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95AC089F0B
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 21:31:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20363015-1500050 
 for multiple; Wed, 26 Feb 2020 21:30:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 21:30:40 +0000
Message-Id: <20200226213042.1708867-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/perf: Mark up the racy use of
 perf->exclusive_stream
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

Inside the general i915_oa_init_reg_state() we avoid using the
perf->mutex. However, we rely on perf->exclusive_stream being valid to
access at that point, and for that we have to control the race with
disabling perf. This relies on the disabling being a heavy barrier that
inspects all active contexts, after marking the perf->exclusive_stream
as not available. This should ensure that there are no more concurrent
accesses to the perf->exclusive_stream as we destroy it.

Mark up the races around the perf->exclusive_stream so that they stand
out much more. (And hopefully we will be running kcsan to start
validating that the only races we have are carefully controlled.)

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index e34c79df6ebc..0838a12e2dc5 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1405,8 +1405,10 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 	/*
 	 * Unset exclusive_stream first, it will be checked while disabling
 	 * the metric set on gen8+.
+	 *
+	 * See i915_oa_init_reg_state() and lrc_configure_all_contexts()
 	 */
-	perf->exclusive_stream = NULL;
+	WRITE_ONCE(perf->exclusive_stream, NULL);
 	perf->ops.disable_metric_set(stream);
 
 	free_oa_buffer(stream);
@@ -2847,7 +2849,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 		goto err_oa_buf_alloc;
 
 	stream->ops = &i915_oa_stream_ops;
-	perf->exclusive_stream = stream;
+	WRITE_ONCE(perf->exclusive_stream, stream);
 
 	ret = perf->ops.enable_metric_set(stream);
 	if (ret) {
@@ -2867,7 +2869,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	return 0;
 
 err_enable:
-	perf->exclusive_stream = NULL;
+	WRITE_ONCE(perf->exclusive_stream, NULL);
 	perf->ops.disable_metric_set(stream);
 
 	free_oa_buffer(stream);
@@ -2893,12 +2895,11 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
 {
 	struct i915_perf_stream *stream;
 
-	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
-
 	if (engine->class != RENDER_CLASS)
 		return;
 
-	stream = engine->i915->perf.exclusive_stream;
+	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
+	stream = READ_ONCE(engine->i915->perf.exclusive_stream);
 	/*
 	 * For gen12, only CTX_R_PWR_CLK_STATE needs update, but the caller
 	 * is already doing that, so nothing to be done for gen12 here.
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
