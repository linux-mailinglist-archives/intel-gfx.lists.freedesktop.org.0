Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3946CC84A5
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 15:51:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B353A10ECFC;
	Wed, 17 Dec 2025 14:51:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bAuCAe1P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 933EF10E8C3;
 Wed, 17 Dec 2025 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765983088; x=1797519088;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G/Wh5BKe1HQbhFuM02Y+XD5h2CKfvtoltkEDlOyH6kI=;
 b=bAuCAe1PbLuXr+hpsHcfCHJISMd+acO+dMAFhtbHzlyzmyGzNvIr105E
 G2olUvJk7JABOJ44DhU/SpJ0aakBlQYrgBB7YqRQuzMNiYfaX2+jZAJLG
 KqMTrh8Ne01yIFElRLgx/OTKBtizm34X3OAiOP+zmyoVKG8iMFLtAH/R+
 d61LSHC8f4RR50LD3hGlLjrfnghUxd+FnIEk1HBFJPqZ5sZGpCZgK+yTi
 Xoa6lEEFdtoxG/Cp8Nx/juQqevLAYmCMbeo09jBeERzr6s02rtfCBUv9y
 FwJguXe5XPbmmxVJTYA5edds+kn1KzUJ5iJrJ5P9pUs7J+s3iPxEYVrmo g==;
X-CSE-ConnectionGUID: aefQVKwFS2OTO6b9yZF/cw==
X-CSE-MsgGUID: vvuF+hbHRKqj+KFo8WxQ8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="67115359"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="67115359"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:51:27 -0800
X-CSE-ConnectionGUID: rYRnNRP5Qymm93gr/aSetg==
X-CSE-MsgGUID: /jy6pOFKSO6SakgvoQGzIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198385195"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.201])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:51:24 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t] tests/intel/gem_lmem_swapping: Avoid false failures
 from oom-killer
Date: Wed, 17 Dec 2025 15:50:30 +0100
Message-ID: <20251217145110.131121-2-janusz.krzysztofik@linux.intel.com>
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

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_lmem_swapping.c | 40 ++++++++++++++++++++++++++++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)

diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
index adae26716c..ab951a7414 100644
--- a/tests/intel/gem_lmem_swapping.c
+++ b/tests/intel/gem_lmem_swapping.c
@@ -804,8 +804,9 @@ int igt_main_args("", long_options, help_str, opt_handler, NULL)
 		{ "parallel-random-verify-ccs", TEST_PARALLEL | TEST_RANDOM | TEST_CCS },
 		{ }
 	};
+	int i915 = -1, console_log_level, default_log_level;
 	const intel_ctx_t *ctx;
-	int i915 = -1;
+	FILE *printk;
 
 	igt_fixture() {
 		struct intel_execution_engine2 *e;
@@ -860,11 +861,48 @@ int igt_main_args("", long_options, help_str, opt_handler, NULL)
 			test_evict(i915, ctx, region, test->flags);
 	}
 
+	/*
+	 * The smem-oom subtest can result in oom-killer being triggered, which
+	 * then dumps a call trace from a process that triggered it.  If that
+	 * happens to be a process that executes drm or i915 functions then the
+	 * call trace dump contains lines recognized by igt_runner as warnings
+	 * and a dmesg-warn result is reported.  To avoid false failure reports,
+	 * relax kernel default log level to INFO for those lines to be ignored
+	 * by igt_runner in piglit mode, at an expense of call traces from
+	 * potential real issues not contributing to the igt_runner reported
+	 * result.  Since those call traces are still available to developers,
+	 * only displayed with relaxed severity, that shouldn't hurt as long as
+	 * igt_runner still abandons further execution and reports an abort
+	 * result on a kernel taint.
+	 */
+	igt_fixture() {
+		printk = fopen("/proc/sys/kernel/printk", "r+");
+		if (igt_debug_on(!printk))
+			break;
+
+		if (!igt_debug_on(fscanf(printk, "%d %d",
+					 &console_log_level, &default_log_level) != 2) &&
+		    default_log_level < 6) {
+			rewind(printk);
+			igt_debug_on(fprintf(printk, "%d 6", console_log_level) != 3);
+		} else {
+			fclose(printk);
+			printk = NULL;
+		}
+	}
+
 	igt_describe("Exercise local memory swapping during exhausting system memory");
 	dynamic_lmem_subtest(region, regions, "smem-oom")
 		test_smem_oom(i915, ctx, region);
 
 	igt_fixture() {
+		if (printk) {
+			rewind(printk);
+			igt_debug_on(fprintf(printk, "%d %d",
+					     console_log_level, default_log_level) != 3);
+			fclose(printk);
+		}
+
 		intel_allocator_multiprocess_stop();
 		intel_ctx_destroy(i915, ctx);
 		free(regions);
-- 
2.52.0

