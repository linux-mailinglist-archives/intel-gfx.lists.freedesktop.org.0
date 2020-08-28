Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1EB2555E5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Aug 2020 10:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEA966EBA0;
	Fri, 28 Aug 2020 08:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D8006EB98;
 Fri, 28 Aug 2020 08:00:26 +0000 (UTC)
IronPort-SDR: qmVMXistbuFLOysMcfxek4QgKsW0r0HXCeuyOYHpXRGiFsI/bSq/zHlHgF4Pe13gt6mpPjsJuE
 /+2GPJ0v1lKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="144375153"
X-IronPort-AV: E=Sophos;i="5.76,363,1592895600"; d="scan'208";a="144375153"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 01:00:24 -0700
IronPort-SDR: qOol0Ohi92gWtaWA9g6nsZ6yb727N3SYabomxFhDn+siNOdXMLPCxs73mbq0CqbBass6sJ+GEO
 O//3hHtl8ruQ==
X-IronPort-AV: E=Sophos;i="5.76,363,1592895600"; d="scan'208";a="444756023"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 01:00:20 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 28 Aug 2020 09:59:23 +0200
Message-Id: <20200828075927.17061-18-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200828075927.17061-1-janusz.krzysztofik@linux.intel.com>
References: <20200828075927.17061-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v5 17/21] tests/core_hotunplug: More
 thorough i915 healthcheck and recovery
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The test now assumes the i915 driver is able to identify potential
hardware or driver issues while rebinding to a device and indicate them
by marking the GPU wedged.  Should that assumption occur wrong, the
health check phase of the test would happily succeed while potentially
leaving the device in an unusable state.  That would not only give us
falsely positive test results but could also potentially affect
subsequently run applications.  Then, we should examine health of the
exercised device more thoroughly and try harder to recover it from
potentially detected stalls.

We could use a gem_test_engine() library function which submits and
asserts successful execution of a NOP batch on each physical engine.
Unfortunately, on failure this function jumps out of an IGT test
section it is called from, while we would like to continue with
recovery steps, possibly not adding another level of test section group
nesting.  Moreover, the function opens the device again and doesn't
close the extra file descriptor before the jump, while we care for
being able to close the exercised device completely before running
certain subtest operations.  Then, reimplement the function locally
with those issues fixed and use it as an i915 health check.  Call it
also on test startup so operations performed by the test are never
blamed for driver or hardware issues which may potentially exist and
be possible to detect on test start.

Should the i915 GPU be found unresponsive by the health check called
from a recovery section, try harder to recover it to a usable state
with a global GPU reset.

For still more effective detection of GPU hangs, use a hang detector
provided by IGT library.  However, replace the library signal handler
with our own implementation that doesn't jump out of the current IGT
test section on GPU hang so we are still able to perform the reset and
retry.

v2: Skip i915 health check if a GPU hang has been already detected by a
    previous health check run and not yet recovered with a GPU reset,
  - take care of stopping a hang detector instance possibly left
    running by a failed health check attempt.
v3: Re-run i915 health check as a first setp of i915 recovery (use full
    GPU reset as a last resort),
  - prefix i915 health check debug messages with step indicators,
  - fix spelling error in a comment.
v4: Unbind the driver from an unhealthy device before recovery,
  - drop caches on i915 health check completion.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 114 +++++++++++++++++++++++++++++++++++++----
 1 file changed, 104 insertions(+), 10 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 923b8cdfd..1f211a820 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -23,8 +23,10 @@
 
 #include <fcntl.h>
 #include <limits.h>
+#include <signal.h>
 #include <stdlib.h>
 #include <string.h>
+#include <sys/ioctl.h>
 #include <sys/stat.h>
 #include <sys/types.h>
 #include <unistd.h>
@@ -196,7 +198,83 @@ static void cleanup(struct hotunplug *priv)
 	priv->fd.sysfs_dev = close_sysfs(priv->fd.sysfs_dev);
 }
 
-static void healthcheck(struct hotunplug *priv)
+static bool local_i915_is_wedged(int i915)
+{
+	int err = 0;
+
+	if (ioctl(i915, DRM_IOCTL_I915_GEM_THROTTLE))
+		err = -errno;
+	return err == -EIO;
+}
+
+static bool hang_detected = false;
+
+static void local_sig_abort(int sig)
+{
+	errno = 0; /* inside a signal, last errno reporting is confusing */
+	hang_detected = true;
+}
+
+static int local_i915_healthcheck(int i915, const char *prefix)
+{
+	const uint32_t bbe = MI_BATCH_BUFFER_END;
+	struct drm_i915_gem_exec_object2 obj = { };
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+	};
+	const struct intel_execution_engine2 *engine;
+
+	/* stop our hang detector possibly still running if we failed before */
+	igt_stop_hang_detector();
+
+	/* don't run again before GPU reset if hang has been already detected */
+	if (hang_detected)
+		return -EIO;
+
+	igt_debug("%srunning i915 GPU healthcheck\n", prefix);
+
+	if (local_i915_is_wedged(i915))
+		return -EIO;
+
+	obj.handle = gem_create(i915, 4096);
+	gem_write(i915, obj.handle, 0, &bbe, sizeof(bbe));
+
+	igt_fork_hang_detector(i915);
+	signal(SIGIO, local_sig_abort);
+
+	__for_each_physical_engine(i915, engine) {
+		execbuf.flags = engine->flags;
+		gem_execbuf(i915, &execbuf);
+	}
+
+	gem_sync(i915, obj.handle);
+	gem_close(i915, obj.handle);
+
+	igt_stop_hang_detector();
+	if (hang_detected)
+		return -EIO;
+
+	if (local_i915_is_wedged(i915))
+		return -EIO;
+
+	return 0;
+}
+
+static int local_i915_recover(int i915)
+{
+	hang_detected = false;
+	if (!local_i915_healthcheck(i915, "re-"))
+		return 0;
+
+	igt_debug("forcing i915 GPU reset\n");
+	igt_force_gpu_reset(i915);
+
+	hang_detected = false;
+	return local_i915_healthcheck(i915, "post-");
+}
+
+static void healthcheck(struct hotunplug *priv, bool recover)
 {
 	/* preserve error code potentially stored before in priv->fd.drm */
 	bool closed = priv->fd.drm == -1;
@@ -211,9 +289,19 @@ static void healthcheck(struct hotunplug *priv)
 		priv->fd.drm = fd_drm;
 
 	if (is_i915_device(fd_drm)) {
-		priv->failure = "GEM failure";
-		igt_require_gem(fd_drm);
-		priv->failure = NULL;
+		const char *failure = NULL;
+
+		/* don't report library failed asserts as healthcheck failure */
+		priv->failure = "Unrecoverable test failure";
+
+		if (local_i915_healthcheck(fd_drm, "") &&
+		    (!recover || local_i915_recover(fd_drm)))
+			failure = "Healthcheck failure!";
+
+		gem_quiescent_gpu(fd_drm);
+
+		priv->failure = failure;
+
 	} else {
 		/* no device specific healthcheck, rely on reopen result */
 		priv->failure = NULL;
@@ -231,6 +319,11 @@ static void recover(struct hotunplug *priv)
 {
 	cleanup(priv);
 
+	/* unbind the driver from a possibly hot rebound unhealthy device */
+	if (priv->failure && priv->fd.drm == -1 &&
+	    !faccessat(priv->fd.sysfs_drv, priv->dev_bus_addr, F_OK, 0))
+		driver_unbind(priv, "post ", 60);
+
 	if (faccessat(priv->fd.sysfs_bus, priv->dev_bus_addr, F_OK, 0))
 		bus_rescan(priv, 60);
 
@@ -238,7 +331,7 @@ static void recover(struct hotunplug *priv)
 		driver_bind(priv, 60);
 
 	if (priv->failure)
-		healthcheck(priv);
+		healthcheck(priv, true);
 }
 
 static void post_healthcheck(struct hotunplug *priv)
@@ -274,7 +367,7 @@ static void unbind_rebind(struct hotunplug *priv)
 
 	driver_bind(priv, 0);
 
-	healthcheck(priv);
+	healthcheck(priv, false);
 }
 
 static void unplug_rescan(struct hotunplug *priv)
@@ -285,7 +378,7 @@ static void unplug_rescan(struct hotunplug *priv)
 
 	bus_rescan(priv, 0);
 
-	healthcheck(priv);
+	healthcheck(priv, false);
 }
 
 static void hotunbind_lateclose(struct hotunplug *priv)
@@ -301,7 +394,7 @@ static void hotunbind_lateclose(struct hotunplug *priv)
 	priv->fd.drm = close_device(priv->fd.drm);
 	igt_assert_eq(priv->fd.drm, -1);
 
-	healthcheck(priv);
+	healthcheck(priv, false);
 }
 
 static void hotunplug_lateclose(struct hotunplug *priv)
@@ -317,7 +410,7 @@ static void hotunplug_lateclose(struct hotunplug *priv)
 	priv->fd.drm = close_device(priv->fd.drm);
 	igt_assert_eq(priv->fd.drm, -1);
 
-	healthcheck(priv);
+	healthcheck(priv, false);
 }
 
 /* Main */
@@ -337,7 +430,8 @@ igt_main
 
 		if (is_i915_device(fd_drm)) {
 			gem_quiescent_gpu(fd_drm);
-			igt_require_gem(fd_drm);
+			igt_skip_on_f(local_i915_healthcheck(fd_drm, "pre-"),
+				      "i915 device not healthy on test start\n");
 		}
 
 		/* Make sure subtests always reopen the same device */
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
