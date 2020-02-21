Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B41F5168070
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 15:38:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0226E6F45E;
	Fri, 21 Feb 2020 14:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29A7A6F45E;
 Fri, 21 Feb 2020 14:38:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20303280-1500050 
 for multiple; Fri, 21 Feb 2020 14:38:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: dri-devel@lists.freedesktop.org
Date: Fri, 21 Feb 2020 14:38:20 +0000
Message-Id: <20200221143820.2795039-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] dma-buf: Precheck for a valid dma_fence before
 acquiring the reference
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

dma_fence_get_rcu() is used to acquire a reference to under a dma-fence
under racey conditions -- a perfect recipe for a disaster. As we know
the caller may be handling stale memory, use kasan to confirm the
dma-fence, or rather its memory block, is valid before attempting to
acquire a reference. This should help us to more quickly and clearly
identify lost races.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 include/linux/dma-fence.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
index 3347c54f3a87..2805edd74738 100644
--- a/include/linux/dma-fence.h
+++ b/include/linux/dma-fence.h
@@ -301,6 +301,9 @@ static inline struct dma_fence *dma_fence_get(struct dma_fence *fence)
  */
 static inline struct dma_fence *dma_fence_get_rcu(struct dma_fence *fence)
 {
+	if (unlikely(!kasan_check_read(fence, sizeof(*fence))))
+		return NULL;
+
 	if (kref_get_unless_zero(&fence->refcount))
 		return fence;
 	else
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
