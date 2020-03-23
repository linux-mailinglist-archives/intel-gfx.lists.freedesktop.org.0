Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F259718F54B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 14:09:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 648D689FD4;
	Mon, 23 Mar 2020 13:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2512189FC0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 13:09:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20660720-1500050 
 for multiple; Mon, 23 Mar 2020 13:09:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Mar 2020 13:09:34 +0000
Message-Id: <20200323130935.13568-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200323130935.13568-1-chris@chris-wilson.co.uk>
References: <20200323130935.13568-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Allow for different modes of
 interruptible i915_active_wait
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

Allow some users the discretion to not immediately return on a normal
signal. Hopefully, they will opt to use TASK_KILLABLE instead.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_active.c | 6 ++++--
 drivers/gpu/drm/i915/i915_active.h | 6 +++++-
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index a0d31f7bfb42..7b685032cc1e 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -496,7 +496,7 @@ static int flush_lazy_signals(struct i915_active *ref)
 	return err;
 }
 
-int i915_active_wait(struct i915_active *ref)
+int __i915_active_wait(struct i915_active *ref, int state)
 {
 	int err;
 
@@ -511,7 +511,9 @@ int i915_active_wait(struct i915_active *ref)
 	if (err)
 		return err;
 
-	if (wait_var_event_interruptible(ref, i915_active_is_idle(ref)))
+	if (!i915_active_is_idle(ref) &&
+	    ___wait_var_event(ref, i915_active_is_idle(ref),
+			      state, 0, 0, schedule()))
 		return -EINTR;
 
 	flush_work(&ref->work);
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index b3282ae7913c..4f9aa7bab514 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -181,7 +181,11 @@ static inline bool i915_active_has_exclusive(struct i915_active *ref)
 	return rcu_access_pointer(ref->excl.fence);
 }
 
-int i915_active_wait(struct i915_active *ref);
+int __i915_active_wait(struct i915_active *ref, int state);
+static inline int i915_active_wait(struct i915_active *ref)
+{
+	return __i915_active_wait(ref, TASK_INTERRUPTIBLE);
+}
 
 int i915_sw_fence_await_active(struct i915_sw_fence *fence,
 			       struct i915_active *ref,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
