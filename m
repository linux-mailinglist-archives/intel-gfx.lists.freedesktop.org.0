Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8580195638
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 12:22:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 962406E167;
	Fri, 27 Mar 2020 11:22:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 513886E167
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 11:22:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20711646-1500050 
 for multiple; Fri, 27 Mar 2020 11:22:13 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 11:22:10 +0000
Message-Id: <20200327112212.16046-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Allow for different modes of
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
 drivers/gpu/drm/i915/i915_active.c           |  6 ++++--
 drivers/gpu/drm/i915/i915_active.h           |  6 +++++-
 drivers/gpu/drm/i915/selftests/i915_active.c | 10 +++++-----
 3 files changed, 14 insertions(+), 8 deletions(-)

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
diff --git a/drivers/gpu/drm/i915/selftests/i915_active.c b/drivers/gpu/drm/i915/selftests/i915_active.c
index 54080fb4af4b..4002c984c2e0 100644
--- a/drivers/gpu/drm/i915/selftests/i915_active.c
+++ b/drivers/gpu/drm/i915/selftests/i915_active.c
@@ -153,7 +153,7 @@ static int live_active_wait(void *arg)
 	if (IS_ERR(active))
 		return PTR_ERR(active);
 
-	i915_active_wait(&active->base);
+	__i915_active_wait(&active->base, TASK_UNINTERRUPTIBLE);
 	if (!READ_ONCE(active->retired)) {
 		struct drm_printer p = drm_err_printer(__func__);
 
@@ -228,11 +228,11 @@ static int live_active_barrier(void *arg)
 	}
 
 	i915_active_release(&active->base);
+	if (err)
+		goto out;
 
-	if (err == 0)
-		err = i915_active_wait(&active->base);
-
-	if (err == 0 && !READ_ONCE(active->retired)) {
+	__i915_active_wait(&active->base, TASK_UNINTERRUPTIBLE);
+	if (!READ_ONCE(active->retired)) {
 		pr_err("i915_active not retired after flushing barriers!\n");
 		err = -EINVAL;
 	}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
