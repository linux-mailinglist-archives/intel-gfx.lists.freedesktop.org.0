Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBF21D1BC3
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 19:00:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F41E06EA74;
	Wed, 13 May 2020 17:00:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7EFD6EA74
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 17:00:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21190028-1500050 
 for multiple; Wed, 13 May 2020 17:59:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 17:59:34 +0100
Message-Id: <20200513165937.9508-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200513165937.9508-1-chris@chris-wilson.co.uk>
References: <20200513165937.9508-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/syncobj: Allow use of dma-fence-proxy
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

Allow the callers to supply a dma-fence-proxy for asynchronous waiting on
future fences.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/drm_syncobj.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index 42d46414f767..e141db0e1eb6 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -184,6 +184,7 @@
  */
 
 #include <linux/anon_inodes.h>
+#include <linux/dma-fence-proxy.h>
 #include <linux/file.h>
 #include <linux/fs.h>
 #include <linux/sched/signal.h>
@@ -324,14 +325,9 @@ void drm_syncobj_replace_fence(struct drm_syncobj *syncobj,
 	struct dma_fence *old_fence;
 	struct syncobj_wait_entry *cur, *tmp;
 
-	if (fence)
-		dma_fence_get(fence);
-
 	spin_lock(&syncobj->lock);
 
-	old_fence = rcu_dereference_protected(syncobj->fence,
-					      lockdep_is_held(&syncobj->lock));
-	rcu_assign_pointer(syncobj->fence, fence);
+	old_fence = dma_fence_replace_proxy(&syncobj->fence, fence);
 
 	if (fence != old_fence) {
 		list_for_each_entry_safe(cur, tmp, &syncobj->cb_list, node)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
