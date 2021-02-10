Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D54317332
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 23:20:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CDE06ED10;
	Wed, 10 Feb 2021 22:20:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE5286ED0F
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 22:20:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23839046-1500050 
 for multiple; Wed, 10 Feb 2021 22:19:53 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Feb 2021 22:19:52 +0000
Message-Id: <20210210221955.10025-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210210221955.10025-1-chris@chris-wilson.co.uk>
References: <20210210221955.10025-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/selftests: Declare suspend_state
 before testing suspend
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

As we mock the suspend routines to exercise suspending driver and
manipulating backing storage across the suspend, declare the suspend
target as we do.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/selftests/i915_gem.c | 40 +++++++++++++++++------
 1 file changed, 30 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
index dc394fb7ccfa..6c764bcfe512 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/random.h>
+#include <linux/suspend.h>
 
 #include "gem/selftests/igt_gem_utils.h"
 #include "gem/selftests/mock_context.h"
@@ -87,25 +88,38 @@ static void simulate_hibernate(struct drm_i915_private *i915)
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 }
 
-static int pm_prepare(struct drm_i915_private *i915)
+static int do_prepare(struct drm_i915_private *i915)
 {
 	i915_gem_suspend(i915);
 
 	return 0;
 }
 
-static void pm_suspend(struct drm_i915_private *i915)
+static suspend_state_t set_pm_target(suspend_state_t target)
 {
+#ifdef CONFIG_PM_SLEEP
+	return xchg(&pm_suspend_target_state, target);
+#else
+	return PM_SUSPEND_ON;
+#endif
+}
+
+static suspend_state_t do_suspend(struct drm_i915_private *i915)
+{
+	suspend_state_t old = set_pm_target(PM_SUSPEND_MEM);
 	intel_wakeref_t wakeref;
 
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
 		i915_ggtt_suspend(&i915->ggtt);
 		i915_gem_suspend_late(i915);
 	}
+
+	return old;
 }
 
-static void pm_hibernate(struct drm_i915_private *i915)
+static suspend_state_t do_hibernate(struct drm_i915_private *i915)
 {
+	suspend_state_t old = set_pm_target(PM_SUSPEND_MAX);
 	intel_wakeref_t wakeref;
 
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
@@ -114,9 +128,11 @@ static void pm_hibernate(struct drm_i915_private *i915)
 		i915_gem_freeze(i915);
 		i915_gem_freeze_late(i915);
 	}
+
+	return old;
 }
 
-static void pm_resume(struct drm_i915_private *i915)
+static void do_resume(struct drm_i915_private *i915, suspend_state_t saved)
 {
 	intel_wakeref_t wakeref;
 
@@ -128,12 +144,15 @@ static void pm_resume(struct drm_i915_private *i915)
 		i915_ggtt_resume(&i915->ggtt);
 		i915_gem_resume(i915);
 	}
+
+	set_pm_target(saved);
 }
 
 static int igt_gem_suspend(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
 	struct i915_gem_context *ctx;
+	suspend_state_t saved;
 	struct file *file;
 	int err;
 
@@ -148,16 +167,16 @@ static int igt_gem_suspend(void *arg)
 	if (err)
 		goto out;
 
-	err = pm_prepare(i915);
+	err = do_prepare(i915);
 	if (err)
 		goto out;
 
-	pm_suspend(i915);
+	saved = do_suspend(i915);
 
 	/* Here be dragons! Note that with S3RST any S3 may become S4! */
 	simulate_hibernate(i915);
 
-	pm_resume(i915);
+	do_resume(i915, saved);
 
 	err = switch_to_context(ctx);
 out:
@@ -169,6 +188,7 @@ static int igt_gem_hibernate(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
 	struct i915_gem_context *ctx;
+	suspend_state_t saved;
 	struct file *file;
 	int err;
 
@@ -183,16 +203,16 @@ static int igt_gem_hibernate(void *arg)
 	if (err)
 		goto out;
 
-	err = pm_prepare(i915);
+	err = do_prepare(i915);
 	if (err)
 		goto out;
 
-	pm_hibernate(i915);
+	saved = do_hibernate(i915);
 
 	/* Here be dragons! */
 	simulate_hibernate(i915);
 
-	pm_resume(i915);
+	do_resume(i915, saved);
 
 	err = switch_to_context(ctx);
 out:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
