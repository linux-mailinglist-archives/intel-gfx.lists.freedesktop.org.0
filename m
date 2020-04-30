Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D12C71C04CD
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 20:29:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56BD16E0F3;
	Thu, 30 Apr 2020 18:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FEE46E09F;
 Thu, 30 Apr 2020 18:29:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21075262-1500050 
 for multiple; Thu, 30 Apr 2020 19:29:01 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 19:28:59 +0100
Message-Id: <20200430182859.892899-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430180102.879208-1-chris@chris-wilson.co.uk>
References: <20200430180102.879208-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Attempt to unload i915
 while the PMU is active
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the PMU is active, it will be utilising the driver internals for its
sampling. Therefore we must not remove the driver while PMU is still
awake! Hence try to unload the module while the pmu is open.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/perf_pmu.c | 96 +++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 94 insertions(+), 2 deletions(-)

diff --git a/tests/perf_pmu.c b/tests/perf_pmu.c
index b9ca6a493..e08c5635a 100644
--- a/tests/perf_pmu.c
+++ b/tests/perf_pmu.c
@@ -28,6 +28,7 @@
 #include <fcntl.h>
 #include <inttypes.h>
 #include <errno.h>
+#include <signal.h>
 #include <sys/stat.h>
 #include <sys/time.h>
 #include <sys/times.h>
@@ -39,6 +40,8 @@
 
 #include "igt.h"
 #include "igt_core.h"
+#include "igt_device.h"
+#include "igt_kmod.h"
 #include "igt_perf.h"
 #include "igt_sysfs.h"
 #include "igt_pm.h"
@@ -930,6 +933,7 @@ event_wait(int gem_fd, const struct intel_execution_engine2 *e)
 	igt_require(has_secure_batches(fd));
 	igt_skip_on(IS_VALLEYVIEW(devid) || IS_CHERRYVIEW(devid));
 
+	igt_device_set_master(gem_fd);
 	kmstest_set_vt_graphics_mode();
 	igt_display_require(&data.display, gem_fd);
 
@@ -1860,6 +1864,85 @@ static void faulting_read(int gem_fd, const struct mmap_offset *t)
 	munmap(ptr, 4096);
 }
 
+static int unload_i915(void)
+{
+	bind_fbcon(false);
+
+	if (igt_kmod_is_loaded("snd_hda_intel")) {
+		igt_terminate_process(SIGTERM, "alsactl");
+		kick_snd_hda_intel();
+		if (igt_kmod_unload("snd_hda_intel", 0))
+			return -EAGAIN;
+	}
+
+	if (igt_kmod_is_loaded("snd_hdmi_lpe_audio")) {
+		igt_terminate_process(SIGTERM, "alsactl");
+		if (igt_kmod_unload("snd_hdmi_lpe_audio", 0))
+			return -EAGAIN;
+	}
+
+	if (igt_kmod_is_loaded("i915")) {
+		if (igt_kmod_unload("i915", 0))
+			return -EBUSY;
+	}
+
+	return 0;
+}
+
+static void test_unload(void)
+{
+	igt_fork(child, 1) {
+		const struct intel_execution_engine2 *e;
+		uint64_t *buf;
+		int count;
+		int i915;
+		int fd;
+
+		igt_debug("Unloading and then re-opening i915 device\n");
+		igt_require(unload_i915() == 0);
+		i915 = __drm_open_driver(DRIVER_INTEL);
+
+		igt_debug("Opening perf events\n");
+		fd = open_group(i915, I915_PMU_REQUESTED_FREQUENCY, -1);
+		open_group(fd, I915_PMU_ACTUAL_FREQUENCY, fd);
+		count = 2;
+
+		__for_each_physical_engine(i915, e) {
+			open_group(i915,
+					I915_PMU_ENGINE_BUSY(e->class, e->instance),
+					fd);
+			open_group(i915,
+					I915_PMU_ENGINE_SEMA(e->class, e->instance),
+					fd);
+			open_group(i915,
+					I915_PMU_ENGINE_WAIT(e->class, e->instance),
+					fd);
+			count += 3;
+		}
+
+		close(i915);
+
+		buf = calloc(count + 1, sizeof(uint64_t));
+		igt_assert(buf);
+
+		igt_debug("Read %d events from perf and trial unload\n", count);
+		pmu_read_multi(fd, count, buf);
+		igt_assert_eq(unload_i915(), -EBUSY);
+		pmu_read_multi(fd, count, buf);
+		sleep(2);
+
+		igt_debug("Close perf\n");
+		close(fd);
+
+		free(buf);
+	}
+	igt_waitchildren();
+
+	igt_debug("Final unload\n");
+	sleep(5);
+	igt_assert_eq(unload_i915(), 0);
+}
+
 #define test_each_engine(T, i915, e) \
 	igt_subtest_with_dynamic(T) __for_each_physical_engine(i915, e) \
 		igt_dynamic_f("%s", e->name)
@@ -1878,7 +1961,7 @@ igt_main
 	int fd = -1;
 
 	igt_fixture {
-		fd = drm_open_driver_master(DRIVER_INTEL);
+		fd = __drm_open_driver(DRIVER_INTEL);
 
 		igt_require_gem(fd);
 		igt_require(i915_perf_type_id(fd) > 0);
@@ -2101,7 +2184,7 @@ igt_main
 		int render_fd = -1;
 
 		igt_fixture {
-			render_fd = drm_open_driver_render(DRIVER_INTEL);
+			render_fd = __drm_open_driver_render(DRIVER_INTEL);
 			igt_require_gem(render_fd);
 
 			gem_quiescent_gpu(fd);
@@ -2116,4 +2199,13 @@ igt_main
 			close(render_fd);
 		}
 	}
+
+	igt_fixture {
+		close(fd);
+	}
+
+	igt_subtest("module-unload") {
+		for (int pass = 0; pass < 3; pass++)
+			test_unload();
+	}
 }
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
