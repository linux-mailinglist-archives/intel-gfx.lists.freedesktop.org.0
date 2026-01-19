Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E1BD3A49D
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 11:17:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8265E10E3DE;
	Mon, 19 Jan 2026 10:17:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OLHmlb+i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C850B10E3DE;
 Mon, 19 Jan 2026 10:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768817876; x=1800353876;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B3VV8A+PouJR1YCOGllCPo7gd6LEdpZc0Ey6PgMGrzc=;
 b=OLHmlb+i1Se6oJoCCyf5b/Q8lcv/tysoN6bIEjWn9E8Sq84dLinv8CqU
 b8xmSXjZefQiUk0e7P8Z43T6aDxuY6m/AR9Js94RIvKdvTwPkbvXmx5XV
 iZxyMgAk8mjOZa3KRQQqGnLt1SAVvLG8C0Vo7TKb32kDV3N9yK+yfDFEl
 kWfzOLS5IjvyJnYEFgGNcw0TWbFoVRCyEuNTv/FkLol83RQpT+S16jFl2
 AF6aeYxdr98dg7mO0A9eyEniWXsFIf9+lLDXcz0PfJf9ut1QB5uw8Jwyl
 iqpIBSjWUPHFBSlKeTO2F11xSEYRxKkLcnG4wXzzM3CKw/t6ecn0yd110 Q==;
X-CSE-ConnectionGUID: E+eLlJ/fTTGYL4iU4ihh7w==
X-CSE-MsgGUID: QJM/2HtjSAay5Yw3OkmqpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="70078824"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="70078824"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 02:17:55 -0800
X-CSE-ConnectionGUID: faX62xL0Tc6sdRrBZFAlUQ==
X-CSE-MsgGUID: zqznzjqQS2WLSwOiI0jGYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="204978205"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.246.22])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 02:17:52 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v7] tests/intel/gem_lmem_swapping: Avoid false failures
 from oom-killer
Date: Mon, 19 Jan 2026 11:17:30 +0100
Message-ID: <20260119101735.1328416-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The smem-oom subtest can expectedly result in oom-killer being triggered,
which then dumps a call trace from a process that triggered it.  If that
happens to be a process that executes drm or i915 functions then the call
trace dump contains lines recognized by igt_runner running in piglit mode
as potential warnings.  If severity of the call trace dump messages is
NOTICE or higher, which isn't unlikely, then a dmesg-warn result is
reported despite successful completion of the subtest.

Fortunately, severity of those call trace dump messages depends on kernel
default log level which can be controlled from user space over sysctl.

To avoid false failure reports, relax kernel default log level to INFO so
those log lines are ignored by igt_runner in piglit mode at an expense of
call traces from real issues potentially detected by the subtest not
contributing to the igt_runner reported result.  Since those call traces
are still available to developers, only submitted with reduced severity,
that shouldn't hurt as long as the igt_runner still abandons further
execution and reports an abort result on a kernel taint.

v7: Use symbolic name for relaxed log level (Krzysztof),
    emit debug message also when default log level change not needed.
v6: Expect fprintf() to return 3, not a mistyped 6 (Kamil),
  - fclose() the stream if not null, leaking it not only doesn't look good
    but also results in fprintf() output potentially not flushed.
v5: Fix abort skipped on memory allocation failure or other error.
v4: In the exit handler, restore the default log level with a simple
    write() from a formerly prepared buffer, and abort verbosely if that
    doesn't succeed (Kamil).
v3: Move cleanup to an exit handler in case we are killed (Kamil).
v2: Move default log level setup inside subtest smem-oom (Kamil),
  - move cleanup there as well.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_lmem_swapping.c | 90 ++++++++++++++++++++++++++++++++-
 1 file changed, 88 insertions(+), 2 deletions(-)

diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
index adae26716c..77e18f1a3c 100644
--- a/tests/intel/gem_lmem_swapping.c
+++ b/tests/intel/gem_lmem_swapping.c
@@ -9,6 +9,7 @@
 #include "i915/intel_memory_region.h"
 #include "igt.h"
 #include "igt_kmod.h"
+#include "runnercomms.h"
 #include <unistd.h>
 #include <stdlib.h>
 #include <stdint.h>
@@ -19,6 +20,7 @@
 #include <errno.h>
 #include <sys/stat.h>
 #include <sys/ioctl.h>
+#include <sys/syslog.h>
 #include <sys/time.h>
 #include <sys/wait.h>
 #include "drm.h"
@@ -661,6 +663,35 @@ static void gem_leak(int fd, uint64_t alloc)
 	gem_madvise(fd, handle, I915_MADV_DONTNEED);
 }
 
+static int printk = -1;
+static char log_levels[4];
+
+static void printk_exit_handler(int sig)
+{
+	char msg[80] = {};
+	int len;
+
+	if (printk < 0)
+		return;
+
+	len = strlen(log_levels);
+	if (!len)
+		snprintf(msg, sizeof(msg), "%s\n",
+			 "no defaults saved, unable to restore /proc/sys/kernel/printk");
+	else if (write(printk, log_levels, len) != len)
+		snprintf(msg, sizeof(msg),
+			 "restoring /proc/sys/kernel/printk defaults failed, errno: %d\n",
+			 errno);
+	close(printk);
+
+	if (*msg) {
+		log_to_runner_sig_safe(msg, strlen(msg));
+		abort();
+	}
+
+	printk = -1;
+}
+
 static int *lmem_done;
 
 static void smem_oom_exit_handler(int sig)
@@ -861,8 +892,63 @@ int igt_main_args("", long_options, help_str, opt_handler, NULL)
 	}
 
 	igt_describe("Exercise local memory swapping during exhausting system memory");
-	dynamic_lmem_subtest(region, regions, "smem-oom")
-		test_smem_oom(i915, ctx, region);
+	igt_subtest_with_dynamic("smem-oom") {
+		int console_log_level, default_log_level;
+		unsigned int fd, i = 0;
+		FILE *stream = NULL;
+
+		/*
+		 * This subtest can result in oom-killer being triggered, which
+		 * then dumps a call trace from a process that triggered it.
+		 * If that happens to be a process that executes drm or i915
+		 * functions then the call trace dump contains lines recognized
+		 * by igt_runner as warnings and a dmesg-warn result is
+		 * reported.  To avoid false failure reports, relax kernel
+		 * default log level to INFO for those lines to be ignored by
+		 * igt_runner in piglit mode, at an expense of call traces from
+		 * potential real issues not contributing to the igt_runner
+		 * reported result.  Since those call traces are still available
+		 * to developers, only displayed with relaxed severity, that
+		 * shouldn't hurt as long as igt_runner still abandons further
+		 * execution and reports an abort result on a kernel taint.
+		 */
+		fd = open("/proc/sys/kernel/printk", O_RDWR);
+		if (!igt_debug_on(fd < 0))
+			stream = fdopen(fd, "r+");
+
+		if (igt_debug_on(!stream))
+			close(fd);
+		else
+			i = fscanf(stream, "%d %d", &console_log_level, &default_log_level);
+
+		if (igt_debug_on(i != 2) || igt_debug_on(default_log_level >= LOG_INFO))
+			i = 0;
+		else
+			i = snprintf(log_levels, sizeof(log_levels), "%d %d",
+				     console_log_level, default_log_level);
+
+		if (!igt_debug_on(i != 3))
+			printk = dup(fd);
+
+		if (!igt_debug_on(printk < 0)) {
+			igt_install_exit_handler(printk_exit_handler);
+
+			rewind(stream);
+			igt_debug_on(fprintf(stream, "%d %d", console_log_level, LOG_INFO) != 3);
+		}
+
+		if (stream)
+			igt_debug_on(fclose(stream) == EOF);
+
+		for (i = 0; i < regions->num_regions; i++) {
+			region = &regions->regions[i];
+			if (region->region.memory_class == I915_MEMORY_CLASS_DEVICE)
+				igt_dynamic_f("lmem%u", region->region.memory_instance)
+					test_smem_oom(i915, ctx, region);
+		}
+
+		printk_exit_handler(0);
+	}
 
 	igt_fixture() {
 		intel_allocator_multiprocess_stop();
-- 
2.52.0

