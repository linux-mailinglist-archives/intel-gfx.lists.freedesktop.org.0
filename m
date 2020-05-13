Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1631D0A2C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 09:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A91506E995;
	Wed, 13 May 2020 07:48:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5441E6E990
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 07:48:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21182449-1500050 
 for multiple; Wed, 13 May 2020 08:48:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 08:47:54 +0100
Message-Id: <20200513074809.18194-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200513074809.18194-1-chris@chris-wilson.co.uk>
References: <20200513074809.18194-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/24] drm/i915/gem: Remove redundant exec_fence
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
index 6368f0070157..2067557e277b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2643,7 +2643,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct i915_execbuffer eb;
 	struct dma_fence *in_fence = NULL;
-	struct dma_fence *exec_fence = NULL;
 	struct sync_file *out_fence = NULL;
 	struct i915_vma *batch;
 	int out_fence_fd = -1;
@@ -2698,8 +2697,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 			goto err_in_fence;
 		}
 
-		exec_fence = sync_file_get_fence(lower_32_bits(args->rsvd2));
-		if (!exec_fence) {
+		in_fence = sync_file_get_fence(lower_32_bits(args->rsvd2));
+		if (!in_fence) {
 			err = -EINVAL;
 			goto err_in_fence;
 		}
@@ -2709,7 +2708,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		out_fence_fd = get_unused_fd_flags(O_CLOEXEC);
 		if (out_fence_fd < 0) {
 			err = out_fence_fd;
-			goto err_exec_fence;
+			goto err_in_fence;
 		}
 	}
 
@@ -2800,14 +2799,13 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
@@ -2876,8 +2874,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
