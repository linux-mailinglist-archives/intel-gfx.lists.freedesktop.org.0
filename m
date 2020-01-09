Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC30136334
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 23:23:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EFC66E977;
	Thu,  9 Jan 2020 22:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F5EB6E06D;
 Thu,  9 Jan 2020 22:23:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19827460-1500050 
 for multiple; Thu, 09 Jan 2020 22:23:01 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jan 2020 22:23:00 +0000
Message-Id: <20200109222300.1154999-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] test/i915_pm_rc6_residency: Check we
 enter RC6 when mostly idle
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Long ago, we would only approach runtime-suspend if the GPU had been
idle (no userspace submissions) for a second or two. However, since
disabling automatic HW RC6 such a relaxed approach to runtime-suspend
caused us to never enter RC6 on the desktop and consume vast quantities
of power. Surmise this behaviour by setting up a background load that is
only active for ~1% of the time (so equivalent to a compositor that is
updating the clock every 50ms or so) and verify that we do continue to
enter RC6 between the GPU pulses.

References: https://gitlab.freedesktop.org/drm/intel/issues/614
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/Makefile.am                  |   1 +
 tests/i915/i915_pm_rc6_residency.c | 174 +++++++++++++++++++++++++++--
 tests/meson.build                  |   9 +-
 3 files changed, 173 insertions(+), 11 deletions(-)

diff --git a/tests/Makefile.am b/tests/Makefile.am
index 9a320bc23..fc3052475 100644
--- a/tests/Makefile.am
+++ b/tests/Makefile.am
@@ -122,6 +122,7 @@ gem_threaded_access_tiled_CFLAGS = $(AM_CFLAGS) $(THREAD_CFLAGS)
 gem_threaded_access_tiled_LDADD = $(LDADD) -lpthread
 gem_tiled_swapping_CFLAGS = $(AM_CFLAGS) $(THREAD_CFLAGS)
 gem_tiled_swapping_LDADD = $(LDADD) -lpthread
+i915_pm_rc6_residency_LDADD = $(LDADD) $(top_builddir)/lib/libigt_perf.la
 prime_self_import_CFLAGS = $(AM_CFLAGS) $(THREAD_CFLAGS)
 prime_self_import_LDADD = $(LDADD) -lpthread
 gem_userptr_blits_CFLAGS = $(AM_CFLAGS) $(THREAD_CFLAGS)
diff --git a/tests/i915/i915_pm_rc6_residency.c b/tests/i915/i915_pm_rc6_residency.c
index 1b39c870e..a5bcb084b 100644
--- a/tests/i915/i915_pm_rc6_residency.c
+++ b/tests/i915/i915_pm_rc6_residency.c
@@ -25,8 +25,6 @@
  *
  */
 
-#include "igt.h"
-#include "igt_sysfs.h"
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
@@ -34,6 +32,9 @@
 #include <errno.h>
 #include <time.h>
 
+#include "igt.h"
+#include "igt_perf.h"
+#include "igt_sysfs.h"
 
 #define SLEEP_DURATION 3 /* in seconds */
 
@@ -195,31 +196,180 @@ static bool wait_for_rc6(void)
 	return false;
 }
 
+static uint64_t __pmu_read_single(int fd, uint64_t *ts)
+{
+	uint64_t data[2];
+
+	igt_assert_eq(read(fd, data, sizeof(data)), sizeof(data));
+
+	if (ts)
+		*ts = data[1];
+
+	return data[0];
+}
+
+static uint64_t pmu_read_single(int fd)
+{
+	return __pmu_read_single(fd, NULL);
+}
+
+#define __assert_within_epsilon(x, ref, tol_up, tol_down) \
+	igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
+		     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
+		     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n",\
+		     #x, #ref, (double)(x), \
+		     (tol_up) * 100.0, (tol_down) * 100.0, \
+		     (double)(ref))
+
+#define assert_within_epsilon(x, ref, tolerance) \
+	__assert_within_epsilon(x, ref, tolerance, tolerance)
+
+static bool __pmu_wait_for_rc6(int fd)
+{
+	struct timespec tv = {};
+	uint64_t start, now;
+
+	/* First wait for roughly an RC6 Evaluation Interval */
+	usleep(160 * 1000);
+
+	/* Then poll for RC6 to start ticking */
+	now = pmu_read_single(fd);
+	do {
+		start = now;
+		usleep(5000);
+		now = pmu_read_single(fd);
+		if (now - start > 1e6)
+			return true;
+	} while (!igt_seconds_elapsed(&tv));
+
+	return false;
+}
+
+static unsigned int measured_usleep(unsigned int usec)
+{
+	struct timespec ts = { };
+	unsigned int slept;
+
+	slept = igt_nsec_elapsed(&ts);
+	igt_assert(slept == 0);
+	do {
+		usleep(usec - slept);
+		slept = igt_nsec_elapsed(&ts) / 1000;
+	} while (slept < usec);
+
+	return igt_nsec_elapsed(&ts);
+}
+
+static uint32_t batch_create(int fd)
+{
+	const uint32_t bbe = MI_BATCH_BUFFER_END;
+	uint32_t handle;
+
+	handle = gem_create(fd, 4096);
+	gem_write(fd, handle, 0, &bbe, sizeof(bbe));
+
+	return handle;
+}
+
+static int open_pmu(int i915, uint64_t config)
+{
+	int fd;
+
+	fd = perf_i915_open(config);
+	igt_skip_on(fd < 0 && errno == ENODEV);
+	igt_assert(fd >= 0);
+
+	return fd;
+}
+
+static void rc6_perf(int i915)
+{
+	const int64_t duration_ns = 2e9;
+	uint64_t idle, prev, ts[2];
+	unsigned long slept, cycles;
+	unsigned long *done;
+	int fd;
+
+	fd = open_pmu(i915, I915_PMU_RC6_RESIDENCY);
+	igt_require(__pmu_wait_for_rc6(fd));
+
+	/* While idle check full RC6. */
+	prev = __pmu_read_single(fd, &ts[0]);
+	slept = measured_usleep(duration_ns / 1000);
+	idle = __pmu_read_single(fd, &ts[1]);
+	igt_debug("slept=%lu perf=%"PRIu64"\n", slept, ts[1] - ts[0]);
+	assert_within_epsilon(idle - prev, ts[1] - ts[0], 5);
+
+	/* Setup up a very light load */
+	done = mmap(0, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
+	igt_fork(child, 1) {
+		struct drm_i915_gem_exec_object2 obj = {
+			.handle = batch_create(i915),
+		};
+		struct drm_i915_gem_execbuffer2 execbuf = {
+			.buffers_ptr = to_user_pointer(&obj),
+			.buffer_count = 1,
+		};
+
+		do {
+			struct timespec tv = {};
+
+			igt_seconds_elapsed(&tv);
+
+			gem_execbuf(i915, &execbuf);
+			gem_sync(i915, obj.handle);
+			done[1]++;
+
+			usleep(igt_seconds_elapsed(&tv) / 10); /* => 1% busy */
+		} while (!*done);
+	}
+
+	/* While very nearly idle (idle to within tolerance), except full RC6 */
+	cycles = -done[1];
+	prev = __pmu_read_single(fd, &ts[0]);
+	slept = measured_usleep(duration_ns / 1000);
+	idle = __pmu_read_single(fd, &ts[1]);
+	cycles += done[1];
+	igt_debug("slept=%lu perf=%"PRIu64", cycles=%lu\n",
+		  slept, ts[1] - ts[0], cycles);
+	igt_assert(cycles > 0);
+	assert_within_epsilon(idle - prev, ts[1] - ts[0], 5);
+
+	close(fd);
+
+	*done = 1;
+	igt_waitchildren();
+}
+
 igt_main
 {
 	unsigned int rc6_enabled = 0;
 	unsigned int devid = 0;
+	int i915 = -1;
 
 	/* Use drm_open_driver to verify device existence */
 	igt_fixture {
-		int fd;
-
-		fd = drm_open_driver(DRIVER_INTEL);
-		devid = intel_get_drm_devid(fd);
-		sysfs = igt_sysfs_open(fd);
+		i915 = drm_open_driver(DRIVER_INTEL);
+		devid = intel_get_drm_devid(i915);
+		sysfs = igt_sysfs_open(i915);
 
 		igt_require(has_rc6_residency("rc6"));
 
 		/* Make sure rc6 counters are running */
-		igt_drop_caches_set(fd, DROP_IDLE);
+		igt_drop_caches_set(i915, DROP_IDLE);
 		igt_require(wait_for_rc6());
 
-		close(fd);
-
 		rc6_enabled = get_rc6_enabled_mask();
 		igt_require(rc6_enabled & RC6_ENABLED);
 	}
 
+	igt_subtest("rc6-perf") {
+		igt_require_gem(i915);
+		gem_quiescent_gpu(i915);
+
+		rc6_perf(i915);
+	}
+
 	igt_subtest("rc6-accuracy") {
 		struct residencies res;
 
@@ -235,4 +385,8 @@ igt_main
 		measure_residencies(devid, rc6_enabled, &res);
 		residency_accuracy(res.media_rc6, res.duration, "media_rc6");
 	}
+
+	igt_fixture
+		close(i915);
+
 }
diff --git a/tests/meson.build b/tests/meson.build
index 570de5459..a79d22ba1 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -232,7 +232,6 @@ i915_progs = [
 	'i915_module_load',
 	'i915_pm_backlight',
 	'i915_pm_lpsp',
-	'i915_pm_rc6_residency',
 	'i915_pm_rpm',
 	'i915_pm_dc',
 	'i915_pm_rps',
@@ -336,6 +335,14 @@ test_executables += executable('gem_mmap_offset',
 	   install : true)
 test_list += 'gem_mmap_offset'
 
+test_executables += executable('i915_pm_rc6_residency',
+	   join_paths('i915', 'i915_pm_rc6_residency.c'),
+	   dependencies : test_deps + [ lib_igt_perf ],
+	   install_dir : libexecdir,
+	   install_rpath : libexecdir_rpathdir,
+	   install : true)
+test_list += 'i915_pm_rc6_residency'
+
 test_executables += executable('perf_pmu', 'perf_pmu.c',
 	   dependencies : test_deps + [ lib_igt_perf ],
 	   install_dir : libexecdir,
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
