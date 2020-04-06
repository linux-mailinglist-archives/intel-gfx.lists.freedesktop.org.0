Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F5B19FEC1
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 22:07:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2113D6E4D7;
	Mon,  6 Apr 2020 20:07:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0668B6E4C4
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 20:07:12 +0000 (UTC)
IronPort-SDR: 5quqbziJmX0ZuhANQPE6J+p+iTxf22rBp0SaaCbzkh4Di9kWhbkGbedLoG5kqtZWgXWIV1OhJM
 uJ/TEf9vC7lg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 13:07:11 -0700
IronPort-SDR: 15nRqYJ4QuT0z3RyKLMRU34/o+qDczuKZeqfFloVcYJVpQKAtbZSs46ZsH1opVM8A5W7mKjj/P
 uZBi7P7cayfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,352,1580803200"; d="scan'208";a="424481991"
Received: from linux.fm.intel.com ([10.1.27.42])
 by orsmga005.jf.intel.com with ESMTP; 06 Apr 2020 13:07:11 -0700
From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Apr 2020 13:07:10 -0700
Message-Id: <20200406200710.2056-3-venkata.s.dhanalakota@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20200406200710.2056-1-venkata.s.dhanalakota@intel.com>
References: <20200406200710.2056-1-venkata.s.dhanalakota@intel.com>
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
Cc: chris.p.wilson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

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
index 4cb4cd035daa..9b01f7c51b65 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2504,6 +2504,7 @@ await_fence_array(struct i915_execbuffer *eb,
 
 	for (n = 0; n < nfences; n++) {
 		struct drm_syncobj *syncobj;
+		struct dma_fence_chain *chain;
 		unsigned int flags;
 
 		syncobj = ptr_unpack_bits(fences[n].syncobj, &flags, 2);
@@ -2511,10 +2512,40 @@ await_fence_array(struct i915_execbuffer *eb,
 		if (!fences[n].dma_fence)
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
2.21.0.5.gaeb582a983

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
