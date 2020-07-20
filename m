Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4543F225B59
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 11:23:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4B6A6E245;
	Mon, 20 Jul 2020 09:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2E5889F19
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 09:23:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21870907-1500050 
 for multiple; Mon, 20 Jul 2020 10:23:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jul 2020 10:23:12 +0100
Message-Id: <20200720092312.16975-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200720092312.16975-1-chris@chris-wilson.co.uk>
References: <20200720092312.16975-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/10] drm/i915: Drop i915_request.lock
 serialisation around await_start
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

Originally, we used the signal->lock as a means of following the
previous link in its timeline and peeking at the previous fence.
However, we have replaced the explicit serialisation with a series of
very careful probes that anticipate the links being deleted and the
fences recycled before we are able to acquire a strong reference to it.
We do not need the signal->lock crutch anymore, nor want the contention.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 4ebb0f144ac4..9f369c33ca49 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -955,9 +955,16 @@ i915_request_await_start(struct i915_request *rq, struct i915_request *signal)
 	if (i915_request_started(signal))
 		return 0;
 
+	/*
+	 * The caller holds a reference on @signal, but we do not serialise
+	 * against it being retired and removed from the lists.
+	 *
+	 * We do not hold a reference to the request before @signal, and
+	 * so must be very careful to ensure that it is not _recycled_ as
+	 * we follow the link backwards.
+	 */
 	fence = NULL;
 	rcu_read_lock();
-	spin_lock_irq(&signal->lock);
 	do {
 		struct list_head *pos = READ_ONCE(signal->link.prev);
 		struct i915_request *prev;
@@ -988,7 +995,6 @@ i915_request_await_start(struct i915_request *rq, struct i915_request *signal)
 
 		fence = &prev->fence;
 	} while (0);
-	spin_unlock_irq(&signal->lock);
 	rcu_read_unlock();
 	if (!fence)
 		return 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
