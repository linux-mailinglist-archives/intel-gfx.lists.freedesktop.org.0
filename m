Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 859202054B0
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 16:29:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 671316E9AD;
	Tue, 23 Jun 2020 14:28:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA9FE6E42A
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 14:28:48 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2020 16:28:35 +0200
Message-Id: <20200623142843.423594-18-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/26] drm/i915: Convert i915_perf to ww locking
 as well
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

We have the ordering of timeline->mutex vs resv_lock wrong,
convert the i915_pin_vma and intel_context_pin as well to
future-proof this.

We may need to do future changes to do this more transaction-like,
and only get down to a single i915_gem_ww_ctx, but for now this
should work.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 57 +++++++++++++++++++++++---------
 1 file changed, 42 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 25329b7600c9..71a77951467a 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1195,24 +1195,39 @@ static struct intel_context *oa_pin_context(struct i915_perf_stream *stream)
 	struct i915_gem_engines_iter it;
 	struct i915_gem_context *ctx = stream->ctx;
 	struct intel_context *ce;
-	int err;
+	struct i915_gem_ww_ctx ww;
+	int err = -ENODEV;
 
 	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
 		if (ce->engine != stream->engine) /* first match! */
 			continue;
 
-		/*
-		 * As the ID is the gtt offset of the context's vma we
-		 * pin the vma to ensure the ID remains fixed.
-		 */
-		err = intel_context_pin(ce);
-		if (err == 0) {
-			stream->pinned_ctx = ce;
-			break;
-		}
+		err = 0;
+		break;
 	}
 	i915_gem_context_unlock_engines(ctx);
 
+	if (err)
+		return ERR_PTR(err);
+
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	/*
+	 * As the ID is the gtt offset of the context's vma we
+	 * pin the vma to ensure the ID remains fixed.
+	 */
+	err = intel_context_pin_ww(ce, &ww);
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+
+	if (err)
+		return ERR_PTR(err);
+
+	stream->pinned_ctx = ce;
 	return stream->pinned_ctx;
 }
 
@@ -1922,15 +1937,22 @@ emit_oa_config(struct i915_perf_stream *stream,
 {
 	struct i915_request *rq;
 	struct i915_vma *vma;
+	struct i915_gem_ww_ctx ww;
 	int err;
 
 	vma = get_oa_vma(stream, oa_config);
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	err = i915_gem_object_lock(vma->obj, &ww);
+	if (err)
+		goto err;
+
+	err = i915_vma_pin_ww(vma, &ww, 0, 0, PIN_GLOBAL | PIN_HIGH);
 	if (err)
-		goto err_vma_put;
+		goto err;
 
 	intel_engine_pm_get(ce->engine);
 	rq = i915_request_create(ce);
@@ -1952,11 +1974,9 @@ emit_oa_config(struct i915_perf_stream *stream,
 			goto err_add_request;
 	}
 
-	i915_vma_lock(vma);
 	err = i915_request_await_object(rq, vma->obj, 0);
 	if (!err)
 		err = i915_vma_move_to_active(vma, rq, 0);
-	i915_vma_unlock(vma);
 	if (err)
 		goto err_add_request;
 
@@ -1970,7 +1990,14 @@ emit_oa_config(struct i915_perf_stream *stream,
 	i915_request_add(rq);
 err_vma_unpin:
 	i915_vma_unpin(vma);
-err_vma_put:
+err:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+
+	i915_gem_ww_ctx_fini(&ww);
 	i915_vma_put(vma);
 	return err;
 }
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
