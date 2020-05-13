Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 054F81D1CB1
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 19:56:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2D0C6EA8E;
	Wed, 13 May 2020 17:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DD5B6E261
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 17:56:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21190757-1500050 
 for multiple; Wed, 13 May 2020 18:56:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 18:56:30 +0100
Message-Id: <20200513175630.20806-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200513165937.9508-1-chris@chris-wilson.co.uk>
References: <20200513165937.9508-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gem: Remove redundant exec_fence
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since there can only be one of in_fence/exec_fence, just use the single
in_fence local.

v2: Consolidate lookup

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 40 +++++++------------
 1 file changed, 14 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d54a4933cc05..3c98aaaa8d11 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2622,7 +2622,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct i915_execbuffer eb;
 	struct dma_fence *in_fence = NULL;
-	struct dma_fence *exec_fence = NULL;
 	struct sync_file *out_fence = NULL;
 	struct i915_vma *batch;
 	int out_fence_fd = -1;
@@ -2665,30 +2664,22 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (args->flags & I915_EXEC_IS_PINNED)
 		eb.batch_flags |= I915_DISPATCH_PINNED;
 
-	if (args->flags & I915_EXEC_FENCE_IN) {
+#define IN_FENCES (I915_EXEC_FENCE_IN | I915_EXEC_FENCE_SUBMIT)
+	if (args->flags & IN_FENCES) {
+		if ((args->flags & IN_FENCES) == IN_FENCES)
+			return -EINVAL;
+
 		in_fence = sync_file_get_fence(lower_32_bits(args->rsvd2));
 		if (!in_fence)
 			return -EINVAL;
 	}
-
-	if (args->flags & I915_EXEC_FENCE_SUBMIT) {
-		if (in_fence) {
-			err = -EINVAL;
-			goto err_in_fence;
-		}
-
-		exec_fence = sync_file_get_fence(lower_32_bits(args->rsvd2));
-		if (!exec_fence) {
-			err = -EINVAL;
-			goto err_in_fence;
-		}
-	}
+#undef IN_FENCES
 
 	if (args->flags & I915_EXEC_FENCE_OUT) {
 		out_fence_fd = get_unused_fd_flags(O_CLOEXEC);
 		if (out_fence_fd < 0) {
 			err = out_fence_fd;
-			goto err_exec_fence;
+			goto err_in_fence;
 		}
 	}
 
@@ -2779,14 +2770,13 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	}
 
 	if (in_fence) {
-		err = i915_request_await_dma_fence(eb.request, in_fence);
-		if (err < 0)
-			goto err_request;
-	}
-
-	if (exec_fence) {
-		err = i915_request_await_execution(eb.request, exec_fence,
-						   eb.engine->bond_execute);
+		if (args->flags & I915_EXEC_FENCE_SUBMIT)
+			err = i915_request_await_execution(eb.request,
+							   in_fence,
+							   eb.engine->bond_execute);
+		else
+			err = i915_request_await_dma_fence(eb.request,
+							   in_fence);
 		if (err < 0)
 			goto err_request;
 	}
@@ -2855,8 +2845,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 err_out_fence:
 	if (out_fence_fd != -1)
 		put_unused_fd(out_fence_fd);
-err_exec_fence:
-	dma_fence_put(exec_fence);
 err_in_fence:
 	dma_fence_put(in_fence);
 	return err;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
