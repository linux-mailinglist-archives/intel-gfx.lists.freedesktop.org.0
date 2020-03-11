Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C08AB1819CB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 14:31:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5BA66E980;
	Wed, 11 Mar 2020 13:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED10B6E980
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 13:30:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20521926-1500050 
 for multiple; Wed, 11 Mar 2020 13:30:49 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 13:30:40 +0000
Message-Id: <20200311133047.30696-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311133047.30696-1-chris@chris-wilson.co.uk>
References: <20200311133047.30696-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/12] dma-buf: Report signaled links inside
 dma-fence-chain
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

Whenever we walk along the dma-fence-chain, we prune signaled links to
keep the chain nice and tidy. This leads to situations where we can
prune a link and report the earlier fence as the target seqno --
violating our own consistency checks that the seqno is not more advanced
than the last element in a dma-fence-chain.

Report a NULL fence and success if the seqno has already been signaled.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/dma-buf/dma-fence-chain.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/dma-buf/dma-fence-chain.c b/drivers/dma-buf/dma-fence-chain.c
index 3d123502ff12..c435bbba851c 100644
--- a/drivers/dma-buf/dma-fence-chain.c
+++ b/drivers/dma-buf/dma-fence-chain.c
@@ -99,6 +99,12 @@ int dma_fence_chain_find_seqno(struct dma_fence **pfence, uint64_t seqno)
 		return -EINVAL;
 
 	dma_fence_chain_for_each(*pfence, &chain->base) {
+		if ((*pfence)->seqno < seqno) { /* already signaled */
+			dma_fence_put(*pfence);
+			*pfence = NULL;
+			break;
+		}
+
 		if ((*pfence)->context != chain->base.context ||
 		    to_dma_fence_chain(*pfence)->prev_seqno < seqno)
 			break;
@@ -222,6 +228,7 @@ EXPORT_SYMBOL(dma_fence_chain_ops);
  * @chain: the chain node to initialize
  * @prev: the previous fence
  * @fence: the current fence
+ * @seqno: the sequence number (syncpt) of the fence within the chain
  *
  * Initialize a new chain node and either start a new chain or add the node to
  * the existing chain of the previous fence.
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
