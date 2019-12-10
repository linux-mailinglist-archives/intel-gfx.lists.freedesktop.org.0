Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 411F0119F9F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 00:42:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60DCA6EA20;
	Tue, 10 Dec 2019 23:42:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D07E6EA23
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 23:42:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 15:35:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="238341616"
Received: from ahirstiu-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.49.210])
 by fmsmga004.fm.intel.com with ESMTP; 10 Dec 2019 15:35:08 -0800
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 01:34:53 +0200
Message-Id: <20191210233453.183910-4-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191210233453.183910-1-lionel.g.landwerlin@intel.com>
References: <20191210233453.183910-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 3/3] drm/i915: peel dma-fence-chains wait
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

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 39 +++++++++++++++++--
 1 file changed, 35 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 72abd8cacef6..b4532bf9d18d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2596,16 +2596,47 @@ await_fence_array(struct i915_execbuffer *eb,
 
 	for (n = 0; n < nfences; n++) {
 		struct drm_syncobj *syncobj;
+		struct dma_fence_chain *chain;
 		unsigned int flags;
 
 		syncobj = ptr_unpack_bits(fences[n].syncobj, &flags, 2);
 		if (!(flags & I915_EXEC_FENCE_WAIT))
 			continue;
 
-		err = i915_request_await_dma_fence(eb->request,
-						   fences[n].dma_fence);
-		if (err < 0)
-			return err;
+		/*
+		 * If we're dealing with a dma-fence-chain, peel the chain by
+		 * adding all of the unsignaled fences
+		 * (dma_fence_chain_for_each does that for us) the chain
+		 * points to.
+		 *
+		 * This enables us to identify waits on i915 fences and allows
+		 * for faster engine-to-engine synchronization using HW
+		 * semaphores.
+		 */
+		chain = to_dma_fence_chain(fences[n].dma_fence);
+		if (chain) {
+			struct dma_fence *iter;
+
+			dma_fence_chain_for_each(iter, fences[n].dma_fence) {
+				struct dma_fence_chain *iter_chain =
+					to_dma_fence_chain(iter);
+
+				GEM_BUG_ON(!iter_chain);
+
+				err = i915_request_await_dma_fence(eb->request,
+								   iter_chain->fence);
+				if (err < 0) {
+					dma_fence_put(iter);
+					return err;
+				}
+			}
+
+		} else {
+			err = i915_request_await_dma_fence(eb->request,
+							   fences[n].dma_fence);
+			if (err < 0)
+				return err;
+		}
 	}
 
 	return 0;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
