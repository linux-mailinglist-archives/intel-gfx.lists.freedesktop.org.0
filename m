Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D56EFCCF437
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 11:03:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C17810E1C3;
	Fri, 19 Dec 2025 10:03:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KVut7DbI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7568F10E1C3;
 Fri, 19 Dec 2025 10:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766138617; x=1797674617;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+lRbaVlLQIPnqlNtiVoXdIsrrtEEawslsLc6qNpw6GI=;
 b=KVut7DbI1E0ERbMPWafCcx6YqiGhVn4yGDr8eQlp7/456GeT4cdkw6Ri
 +do7QWrvb5nEct4d+FzGb6iXo5KJRDh8EMHxK4Id72Z+CoTONzLiADMRZ
 Ug+CpnQ2Z7YIjTJOdDGh9S/zNCwV3HRxMiMuQlAZa0P/XNw1lWzh66ixp
 OhsKmvSKEXgzzLuOKM5jsCS9ONWbWsul4VxryH/RZ0cxvQsZ/lP2eJAhg
 9cfzC8BnFLmuVZYXyzojI04Kzd9bpxfiq44zhmPTGkgTmIrPwtgY2Vk3Y
 WKQ0nQGNxeKPAKS5Gq6gj8dMJKX9BJdooBUxVlspFb1Evr6SNgDdRpeYY A==;
X-CSE-ConnectionGUID: /ohFl6DtRHyX42Agu3BBog==
X-CSE-MsgGUID: 8yuxrsHPStO/htbHM/wqXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="79556242"
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="79556242"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 02:02:47 -0800
X-CSE-ConnectionGUID: In5Gc9txSaC22FBQtbVnag==
X-CSE-MsgGUID: 6n4Z+kOyRj2aylBsJ6IXdw==
X-ExtLoop1: 1
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.36])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 02:02:44 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v2] tests/intel/gem_lmem_swapping: Avoid false failures
 from oom-killer
Date: Fri, 19 Dec 2025 11:01:12 +0100
Message-ID: <20251219100218.334117-2-janusz.krzysztofik@linux.intel.com>
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

v2: Move default log level setup inside subtest smem-oom (Kamil),
  - move cleanup there as well.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_lmem_swapping.c | 51 +++++++++++++++++++++++++++++++--
 1 file changed, 49 insertions(+), 2 deletions(-)

diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
index adae26716c..a8ffae19f1 100644
--- a/tests/intel/gem_lmem_swapping.c
+++ b/tests/intel/gem_lmem_swapping.c
@@ -861,8 +861,55 @@ int igt_main_args("", long_options, help_str, opt_handler, NULL)
 	}
 
 	igt_describe("Exercise local memory swapping during exhausting system memory");
-	dynamic_lmem_subtest(region, regions, "smem-oom")
-		test_smem_oom(i915, ctx, region);
+	igt_subtest_with_dynamic("smem-oom") {
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
+		FILE *printk = fopen("/proc/sys/kernel/printk", "r+");
+		int console_log_level, default_log_level;
+		unsigned int i;
+
+		if (!igt_debug_on(!printk)) {
+			if (!igt_debug_on(fscanf(printk, "%d %d",
+						 &console_log_level,
+						 &default_log_level) != 2) &&
+			    default_log_level < 6) {
+				rewind(printk);
+				igt_debug_on(fprintf(printk, "%d 6",
+						     console_log_level) != 3);
+			} else {
+				fclose(printk);
+				printk = NULL;
+			}
+		}
+
+		for (i = 0; i < regions->num_regions; i++) {
+			region = &regions->regions[i];
+			if (region->region.memory_class == I915_MEMORY_CLASS_DEVICE)
+				igt_dynamic_f("lmem%u", region->region.memory_instance)
+					test_smem_oom(i915, ctx, region);
+		}
+
+		if (printk) {
+			rewind(printk);
+			igt_debug_on(fprintf(printk, "%d %d",
+					     console_log_level,
+					     default_log_level) != 3);
+			fclose(printk);
+		}
+	}
 
 	igt_fixture() {
 		intel_allocator_multiprocess_stop();
-- 
2.52.0

