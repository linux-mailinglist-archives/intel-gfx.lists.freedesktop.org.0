Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC461916F9
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 17:52:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 421D76E4C7;
	Tue, 24 Mar 2020 16:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 702F96E4C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 16:51:53 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Mar 2020 17:51:43 +0100
Message-Id: <20200324165146.1032624-18-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200324165146.1032624-1-maarten.lankhorst@linux.intel.com>
References: <20200324165146.1032624-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/21] drm/i915: Move i915_vma_lock in the
 selftests to avoid lock inversion
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

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../i915/gem/selftests/i915_gem_coherency.c   | 26 ++++++++++---------
 drivers/gpu/drm/i915/selftests/i915_request.c | 18 ++++++++-----
 2 files changed, 26 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index 99f8466a108a..d93b7d9ad174 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -199,25 +199,25 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 
 	i915_gem_object_lock(ctx->obj, NULL);
 	err = i915_gem_object_set_to_gtt_domain(ctx->obj, true);
-	i915_gem_object_unlock(ctx->obj);
 	if (err)
-		return err;
+		goto out_unlock;
 
 	vma = i915_gem_object_ggtt_pin(ctx->obj, NULL, 0, 0, 0);
-	if (IS_ERR(vma))
-		return PTR_ERR(vma);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto out_unlock;
+	}
 
 	rq = intel_engine_create_kernel_request(ctx->engine);
 	if (IS_ERR(rq)) {
-		i915_vma_unpin(vma);
-		return PTR_ERR(rq);
+		err = PTR_ERR(rq);
+		goto out_unpin;
 	}
 
 	cs = intel_ring_begin(rq, 4);
 	if (IS_ERR(cs)) {
-		i915_request_add(rq);
-		i915_vma_unpin(vma);
-		return PTR_ERR(cs);
+		err = PTR_ERR(cs);
+		goto out_rq;
 	}
 
 	if (INTEL_GEN(ctx->engine->i915) >= 8) {
@@ -238,14 +238,16 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 	}
 	intel_ring_advance(rq, cs);
 
-	i915_vma_lock(vma);
 	err = i915_request_await_object(rq, vma->obj, true);
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
-	i915_vma_unlock(vma);
-	i915_vma_unpin(vma);
 
+out_rq:
 	i915_request_add(rq);
+out_unpin:
+	i915_vma_unpin(vma);
+out_unlock:
+	i915_gem_object_unlock(ctx->obj);
 
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 7ac9616de9d8..7f1150fc7767 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -848,6 +848,8 @@ static int live_all_engines(void *arg)
 		goto out_free;
 	}
 
+	i915_vma_lock(batch);
+
 	idx = 0;
 	for_each_uabi_engine(engine, i915) {
 		request[idx] = intel_engine_create_kernel_request(engine);
@@ -865,11 +867,9 @@ static int live_all_engines(void *arg)
 		GEM_BUG_ON(err);
 		request[idx]->batch = batch;
 
-		i915_vma_lock(batch);
 		err = i915_request_await_object(request[idx], batch->obj, 0);
 		if (err == 0)
 			err = i915_vma_move_to_active(batch, request[idx], 0);
-		i915_vma_unlock(batch);
 		GEM_BUG_ON(err);
 
 		i915_request_get(request[idx]);
@@ -877,6 +877,8 @@ static int live_all_engines(void *arg)
 		idx++;
 	}
 
+	i915_vma_unlock(batch);
+
 	idx = 0;
 	for_each_uabi_engine(engine, i915) {
 		if (i915_request_completed(request[idx])) {
@@ -967,12 +969,13 @@ static int live_sequential_engines(void *arg)
 			goto out_free;
 		}
 
+		i915_vma_lock(batch);
 		request[idx] = intel_engine_create_kernel_request(engine);
 		if (IS_ERR(request[idx])) {
 			err = PTR_ERR(request[idx]);
 			pr_err("%s: Request allocation failed for %s with err=%d\n",
 			       __func__, engine->name, err);
-			goto out_request;
+			goto out_unlock;
 		}
 
 		if (prev) {
@@ -982,7 +985,7 @@ static int live_sequential_engines(void *arg)
 				i915_request_add(request[idx]);
 				pr_err("%s: Request await failed for %s with err=%d\n",
 				       __func__, engine->name, err);
-				goto out_request;
+				goto out_unlock;
 			}
 		}
 
@@ -993,12 +996,10 @@ static int live_sequential_engines(void *arg)
 		GEM_BUG_ON(err);
 		request[idx]->batch = batch;
 
-		i915_vma_lock(batch);
 		err = i915_request_await_object(request[idx],
 						batch->obj, false);
 		if (err == 0)
 			err = i915_vma_move_to_active(batch, request[idx], 0);
-		i915_vma_unlock(batch);
 		GEM_BUG_ON(err);
 
 		i915_request_get(request[idx]);
@@ -1006,6 +1007,11 @@ static int live_sequential_engines(void *arg)
 
 		prev = request[idx];
 		idx++;
+
+out_unlock:
+		i915_vma_unlock(batch);
+		if (err)
+			goto out_request;
 	}
 
 	idx = 0;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
