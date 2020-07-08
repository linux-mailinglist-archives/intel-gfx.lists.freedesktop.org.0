Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2992188C6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 15:18:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0309A89E41;
	Wed,  8 Jul 2020 13:18:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3846E89E41
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 13:18:17 +0000 (UTC)
IronPort-SDR: steK7oIpSBT1lTOeWAKNwK/ctD1csH3mmnI+ODgKwBfxdouCjyD1I0Vxg3vx9QI+3A+IF7nj/C
 aGPYo0yOIVBw==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="165865904"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="165865904"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 06:18:01 -0700
IronPort-SDR: 2meetnvFUi9NbAtJYJo2B3JHHVEanylORdsdID1pJenQ/QoEGcWiYUHYyV1jCi+8HfGce72ioK
 JhHU2MRrjkUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="268470621"
Received: from apientak-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.53.198])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jul 2020 06:18:00 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jul 2020 16:17:51 +0300
Message-Id: <20200708131751.334457-4-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200708131751.334457-1-lionel.g.landwerlin@intel.com>
References: <20200708131751.334457-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v12 3/3] drm/i915: peel dma-fence-chains wait
 fences
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

To allow faster engine to engine synchronization, peel the layer of
dma-fence-chain to expose potential i915 fences so that the
i915-request code can emit HW semaphore wait/signal operations in the
ring which is faster than waking up the host to submit unblocked
workloads after interrupt notification.

v2: Also deal with chains where the last node is not a dma-fence-chain

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 39 ++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d8814e637e71..3ffd95d1dc2c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2403,6 +2403,7 @@ await_fence_array(struct i915_execbuffer *eb)
 
 	for (n = 0; n < eb->n_fences; n++) {
 		struct drm_syncobj *syncobj;
+		struct dma_fence_chain *chain;
 		struct dma_fence *fence;
 		unsigned int flags;
 
@@ -2423,7 +2424,43 @@ await_fence_array(struct i915_execbuffer *eb)
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
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
