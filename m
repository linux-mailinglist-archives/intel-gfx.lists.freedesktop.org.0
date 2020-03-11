Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 420961819CC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 14:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354316E97F;
	Wed, 11 Mar 2020 13:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D20C16E980
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 13:30:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20521932-1500050 
 for multiple; Wed, 11 Mar 2020 13:30:50 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 13:30:45 +0000
Message-Id: <20200311133047.30696-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311133047.30696-1-chris@chris-wilson.co.uk>
References: <20200311133047.30696-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/12] drm/i915/gem: Allow combining
 submit-fences with syncobj
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

Fixes: a88b6e4cbafd ("drm/i915: Allow specification of parallel execbuf")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 10 +++++++---
 include/uapi/drm/i915_drm.h                    |  7 ++++---
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 3c427bdfbb2d..96a1f36f161c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2456,7 +2456,7 @@ get_fence_array(struct drm_i915_gem_execbuffer2 *args,
 		BUILD_BUG_ON(~(ARCH_KMALLOC_MINALIGN - 1) &
 			     ~__I915_EXEC_FENCE_UNKNOWN_FLAGS);
 
-		fences[n] = ptr_pack_bits(syncobj, fence.flags, 2);
+		fences[n] = ptr_pack_bits(syncobj, fence.flags, 3);
 	}
 
 	return fences;
@@ -2487,7 +2487,7 @@ await_fence_array(struct i915_execbuffer *eb,
 		struct dma_fence *fence;
 		unsigned int flags;
 
-		syncobj = ptr_unpack_bits(fences[n], &flags, 2);
+		syncobj = ptr_unpack_bits(fences[n], &flags, 3);
 		if (!(flags & I915_EXEC_FENCE_WAIT))
 			continue;
 
@@ -2511,7 +2511,11 @@ await_fence_array(struct i915_execbuffer *eb,
 			spin_unlock(&syncobj->lock);
 		}
 
-		err = i915_request_await_dma_fence(eb->request, fence);
+		if (flags & I915_EXEC_FENCE_WAIT_SUBMIT)
+			err = i915_request_await_execution(eb->request, fence,
+							   eb->engine->bond_execute);
+		else
+			err = i915_request_await_dma_fence(eb->request, fence);
 		dma_fence_put(fence);
 		if (err < 0)
 			return err;
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 2813e579b480..3a24817ca25b 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1040,9 +1040,10 @@ struct drm_i915_gem_exec_fence {
 	 */
 	__u32 handle;
 
-#define I915_EXEC_FENCE_WAIT            (1<<0)
-#define I915_EXEC_FENCE_SIGNAL          (1<<1)
-#define __I915_EXEC_FENCE_UNKNOWN_FLAGS (-(I915_EXEC_FENCE_SIGNAL << 1))
+#define I915_EXEC_FENCE_WAIT            (1u << 0)
+#define I915_EXEC_FENCE_SIGNAL          (1u << 1)
+#define I915_EXEC_FENCE_WAIT_SUBMIT     (1u << 2)
+#define __I915_EXEC_FENCE_UNKNOWN_FLAGS (-(I915_EXEC_FENCE_WAIT_SUBMIT << 1))
 	__u32 flags;
 };
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
