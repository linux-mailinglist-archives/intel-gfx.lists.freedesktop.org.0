Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A501423A17B
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 11:05:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CD606E227;
	Mon,  3 Aug 2020 09:05:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BDFA6E223
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 09:05:19 +0000 (UTC)
IronPort-SDR: K4bq7mCtkuyFt48SVs69u+YzKDfKuME6eirXnuvrZnrPs3ok4PVWfiwFS1ZkHOlaQmTe+VVaoJ
 eoUD7uJXNZrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9701"; a="213602706"
X-IronPort-AV: E=Sophos;i="5.75,429,1589266800"; d="scan'208";a="213602706"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2020 02:05:18 -0700
IronPort-SDR: likVXJfRDFlPyEq6yigeResJU4BURA1+NjEOd8+Hvwoe5aAa4CR3EsyKqNhpqTo6aoSGEVve47
 Ae763LLHj8qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,429,1589266800"; d="scan'208";a="273868603"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.252.62.231])
 by fmsmga007.fm.intel.com with ESMTP; 03 Aug 2020 02:05:17 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Aug 2020 12:05:06 +0300
Message-Id: <20200803090506.260325-4-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200803090506.260325-1-lionel.g.landwerlin@intel.com>
References: <20200803090506.260325-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: peel dma-fence-chains wait fences
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To allow faster engine to engine synchronization, peel the layer of
dma-fence-chain to expose potential i915 fences so that the
i915-request code can emit HW semaphore wait/signal operations in the
ring which is faster than waking up the host to submit unblocked
workloads after interrupt notification.

v2: Also deal with chains where the last node is not a dma-fence-chain

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 39 ++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 1f766431f3a3..dbd7f03c2187 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2390,6 +2390,7 @@ await_fence_array(struct i915_execbuffer *eb)
 
 	for (n = 0; n < eb->n_fences; n++) {
 		struct drm_syncobj *syncobj;
+		struct dma_fence_chain *chain;
 		struct dma_fence *fence;
 		unsigned int flags;
 
@@ -2410,7 +2411,43 @@ await_fence_array(struct i915_execbuffer *eb)
 				continue;
 		}
 
-		err = i915_request_await_dma_fence(eb->request, fence);
+		chain = to_dma_fence_chain(fence);
+		if (chain) {
+			struct dma_fence *iter;
+
+			/*
+			 * If we're dealing with a dma-fence-chain, peel the
+			 * chain by adding all of the unsignaled fences
+			 * (dma_fence_chain_for_each does that for us) the
+			 * chain points to.
+			 *
+			 * This enables us to identify waits on i915 fences
+			 * and allows for faster engine-to-engine
+			 * synchronization using HW semaphores.
+			 */
+			dma_fence_chain_for_each(iter, fence) {
+				struct dma_fence_chain *iter_chain =
+					to_dma_fence_chain(iter);
+
+				/*
+				 * It is possible that the last item in the
+				 * chain is not a dma_fence_chain.
+				 */
+				if (iter_chain) {
+					err = i915_request_await_dma_fence(eb->request,
+									   iter_chain->fence);
+				} else {
+					err = i915_request_await_dma_fence(eb->request, iter);
+				}
+				if (err < 0) {
+					dma_fence_put(iter);
+					break;
+				}
+			}
+		} else {
+			err = i915_request_await_dma_fence(eb->request, fence);
+		}
+
 		dma_fence_put(fence);
 		if (err < 0)
 			return err;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
