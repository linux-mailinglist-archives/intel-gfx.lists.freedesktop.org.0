Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F63C220C69
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:53:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A8B76EB10;
	Wed, 15 Jul 2020 11:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBF266EAD2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826111-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:49 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:50:46 +0100
Message-Id: <20200715115147.11866-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/66] drm/i915: Skip taking acquire mutex for
 no ref->active callback
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

If no active callback is defined for i915_active, we do not need to
serialise its enabling with the mutex. We still do only want to call the
debug activate once, and must still serialise with a concurrent retire.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_active.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index d960d0be5bd2..841b5c30950a 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -416,6 +416,14 @@ bool i915_active_acquire_if_busy(struct i915_active *ref)
 	return atomic_add_unless(&ref->count, 1, 0);
 }
 
+static void __i915_active_activate(struct i915_active *ref)
+{
+	spin_lock_irq(&ref->tree_lock); /* __active_retire() */
+	if (!atomic_fetch_inc(&ref->count))
+		debug_active_activate(ref);
+	spin_unlock_irq(&ref->tree_lock);
+}
+
 int i915_active_acquire(struct i915_active *ref)
 {
 	int err;
@@ -423,23 +431,22 @@ int i915_active_acquire(struct i915_active *ref)
 	if (i915_active_acquire_if_busy(ref))
 		return 0;
 
+	if (!ref->active) {
+		__i915_active_activate(ref);
+		return 0;
+	}
+
 	err = mutex_lock_interruptible(&ref->mutex);
 	if (err)
 		return err;
 
 	if (likely(!i915_active_acquire_if_busy(ref))) {
-		if (ref->active)
-			err = ref->active(ref);
-		if (!err) {
-			spin_lock_irq(&ref->tree_lock); /* __active_retire() */
-			debug_active_activate(ref);
-			atomic_inc(&ref->count);
-			spin_unlock_irq(&ref->tree_lock);
-		}
+		err = ref->active(ref);
+		if (!err)
+			__i915_active_activate(ref);
 	}
 
 	mutex_unlock(&ref->mutex);
-
 	return err;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
