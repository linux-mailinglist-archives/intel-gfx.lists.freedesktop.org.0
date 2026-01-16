Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDD5D31A48
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 14:16:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0188210E899;
	Fri, 16 Jan 2026 13:16:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LZ0R0U5e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46CC310E890;
 Fri, 16 Jan 2026 13:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768569364; x=1800105364;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0qno8bMA9rv7vDa4jXsfyZO6qostaKVxjCEXjO+Qup8=;
 b=LZ0R0U5e+gTg9idin1DFGoTb2ER7wegg/Y/S+9QdRjR8Qm9EQggSwCad
 9ZkmJ8M+nwxi3YMC09OcjQPcY9WJvX1mVhnGBw8yOejq2HCHG42+ndu2I
 2wusJsi4GGW3Ws/WxjBYulI2CRS2UYF8gqFOaULdt9UWIFQiPMHXK3n+2
 +KM13u4eWyMEpo3wP+UnrAdr9G5M4rBDphAFvF277FBCmh5Dp1wTYwqfG
 Uc0uAQHvFdDpfzl8MnDDhRJ/qo0Ykk8EeUPajeG4wXYmpwf3iLWvvuQLg
 tXONv+qI9nKOM61A677zDc0Z7hIL/IW6f4oevoHO2y8F0PKKXV1BXLYp1 w==;
X-CSE-ConnectionGUID: wINjKi57SVaU2gUF7kXJjg==
X-CSE-MsgGUID: 8u7/BjdbSSmPXH2ygN1AvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11673"; a="92546931"
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; d="scan'208";a="92546931"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 05:16:04 -0800
X-CSE-ConnectionGUID: wsoovHt7RrCjkcU2Wx181g==
X-CSE-MsgGUID: 4sOAu1vGTFm0CkM+6Y7veg==
X-ExtLoop1: 1
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.246.210])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 05:16:01 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v5] tests/intel/gem_lmem_swapping: Avoid false failures
 from oom-killer
Date: Fri, 16 Jan 2026 14:15:06 +0100
Message-ID: <20260116131549.1092265-2-janusz.krzysztofik@linux.intel.com>
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

v5: Fix abort skipped on memory allocation failure or other error.
v4: In the exit handler, restore the default log level with a simple
    write() from a formerly prepared buffer, and abort verbosely if that
    doesn't succeed (Kamil).
v3: Move cleanup to an exit handler in case we are killed (Kamil).
v2: Move default log level setup inside subtest smem-oom (Kamil),
  - move cleanup there as well.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_lmem_swapping.c | 88 ++++++++++++++++++++++++++++++++-
 1 file changed, 86 insertions(+), 2 deletions(-)

diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
index adae26716c..acd3714b5a 100644
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
@@ -661,6 +662,35 @@ static void gem_leak(int fd, uint64_t alloc)
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
@@ -861,8 +891,62 @@ int igt_main_args("", long_options, help_str, opt_handler, NULL)
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
+		if (igt_debug_on(i != 2) || default_log_level >= 6) {
+			i = 0;
+			fclose(stream);
+		} else {
+			i = snprintf(log_levels, sizeof(log_levels), "%d %d",
+				     console_log_level, default_log_level);
+		}
+
+		if (!igt_debug_on(i != 3))
+			printk = dup(fd);
+
+		if (!igt_debug_on(printk < 0)) {
+			igt_install_exit_handler(printk_exit_handler);
+
+			rewind(stream);
+			igt_debug_on(fprintf(stream, "%d 6", console_log_level) != 6);
+		}
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

