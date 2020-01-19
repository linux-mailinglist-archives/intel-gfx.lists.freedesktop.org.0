Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA025141E5A
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jan 2020 14:56:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 805316E3A0;
	Sun, 19 Jan 2020 13:56:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7F0F6E3A0
 for <intel-gfx@lists.freedesktop.org>; Sun, 19 Jan 2020 13:56:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19936574-1500050 
 for multiple; Sun, 19 Jan 2020 13:55:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 19 Jan 2020 13:55:58 +0000
Message-Id: <20200119135558.3943738-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200119135558.3943738-1-chris@chris-wilson.co.uk>
References: <20200119135558.3943738-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Tighten atomicity of
 i915_active_acquire vs i915_active_release
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

As we use a mutex to serialise the first acquire (as it may be a lengthy
operation), but only an atomic decrement for the release, we have to
be careful in case a second thread races and completes both
acquire/release as the first finishes its acquire.

Fixes: c9ad602feabe ("drm/i915: Split i915_active.mutex into an irq-safe spinlock for the rbtree")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_active.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index ace55d5d4ca7..9d6830885d2e 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -416,13 +416,15 @@ int i915_active_acquire(struct i915_active *ref)
 	if (err)
 		return err;
 
-	if (!atomic_read(&ref->count) && ref->active)
-		err = ref->active(ref);
-	if (!err) {
-		spin_lock_irq(&ref->tree_lock); /* vs __active_retire() */
-		debug_active_activate(ref);
-		atomic_inc(&ref->count);
-		spin_unlock_irq(&ref->tree_lock);
+	if (likely(!i915_active_acquire_if_busy(ref))) {
+		if (ref->active)
+			err = ref->active(ref);
+		if (!err) {
+			spin_lock_irq(&ref->tree_lock); /* __active_retire() */
+			debug_active_activate(ref);
+			atomic_inc(&ref->count);
+			spin_unlock_irq(&ref->tree_lock);
+		}
 	}
 
 	mutex_unlock(&ref->mutex);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
