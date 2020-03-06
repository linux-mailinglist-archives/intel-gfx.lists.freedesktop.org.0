Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E9217BF3B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 14:39:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF7F16ED15;
	Fri,  6 Mar 2020 13:39:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A769E6ED15
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 13:39:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20467749-1500050 
 for multiple; Fri, 06 Mar 2020 13:38:54 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 13:38:48 +0000
Message-Id: <20200306133852.3420322-13-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/17] drm/syncobj: Allow use of dma-fence-proxy
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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
