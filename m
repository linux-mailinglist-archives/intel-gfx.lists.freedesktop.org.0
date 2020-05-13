Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 879361D1BB8
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 19:00:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0CF6EA6E;
	Wed, 13 May 2020 17:00:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B638E6EA6B
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 17:00:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21190025-1500050 
 for multiple; Wed, 13 May 2020 17:59:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 17:59:31 +0100
Message-Id: <20200513165937.9508-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/gem: Remove redundant exec_fence
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

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 24 ++++++++-----------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d54a4933cc05..824a2b76947a 100644
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
@@ -2677,8 +2676,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 			goto err_in_fence;
 		}
 
-		exec_fence = sync_file_get_fence(lower_32_bits(args->rsvd2));
-		if (!exec_fence) {
+		in_fence = sync_file_get_fence(lower_32_bits(args->rsvd2));
+		if (!in_fence) {
 			err = -EINVAL;
 			goto err_in_fence;
 		}
@@ -2688,7 +2687,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		out_fence_fd = get_unused_fd_flags(O_CLOEXEC);
 		if (out_fence_fd < 0) {
 			err = out_fence_fd;
-			goto err_exec_fence;
+			goto err_in_fence;
 		}
 	}
 
@@ -2779,14 +2778,13 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
@@ -2855,8 +2853,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
