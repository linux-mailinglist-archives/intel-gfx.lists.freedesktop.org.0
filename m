Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F85BAFCB55
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 15:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD60B10E62E;
	Tue,  8 Jul 2025 13:05:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IjSXxQIP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E91A10E62E;
 Tue,  8 Jul 2025 13:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751979904; x=1783515904;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ilN6vjbJSkuHjDSmQUw9LmWsdBHCZh+72e0HSo2s4EI=;
 b=IjSXxQIPhhCnVHpdUHxQTNWVAjUnSuuV9zlnJnFDi4m2nRP1Vp0hD0OZ
 hf6jguDJ2OKk0GvSfv/bd+STWEP85O/8bi9GR0P5nssF/r/Q+uYvspdzy
 gGW5e+UlyBBsJ+UXjpxFRRlkEWBBepZv6tGpq2rYtjbBOOctSsb19ibW0
 xFr+Q7cOqOL3fThwCi5P9lbsWDX6myCV5BP7yvIMD37oWD94elkajWf4l
 glpgypNw4fmp+81sX41RpwRyLloJcOg+Nb5PE+wbCYXSt8x4qQroyVBZb
 r1orTibdQJNzrSC0/Id7th5+Pt5aKyWAifquaorTxbecHVsm59hIfVeK2 Q==;
X-CSE-ConnectionGUID: +gosYFLiRbCUocJM5ZOvTg==
X-CSE-MsgGUID: K/jvrt4pQ6O2CI5AoKJjGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="41840012"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="41840012"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 06:05:04 -0700
X-CSE-ConnectionGUID: SAYJBaFmT7mi9AMOhzKPqQ==
X-CSE-MsgGUID: FT5Vhl36QpSm00nZOdaa7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="154901383"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.245.8])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 06:05:01 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Petri Latvala <adrinael@adrinael.net>, Arkadiusz Hiler <arek@hiler.eu>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v2] runner: Relax timeout reduction on soft lockup
Date: Tue,  8 Jul 2025 15:04:15 +0200
Message-ID: <20250708130437.917619-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.50.0
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

In case of soft lockups, it might be helpful from root cause analysis
perspective to see if the test was still able to complete despite
triggering the soft lockup warning, or if that soft lockup seems not
recoverable without killing the test. For that to be possible, igt_runner
should not kill the test too promptly if a soft lockup related kernel
taint is detected.

On kernel taints, igt_runner now decreases per test and inactivity
timeouts by a factor of 10.  Let it check if the taint is caused by a
soft lockup and decrease the timeouts only by the factor of 2 in those
cases.

v2: Define symbols for taint bits and use them (Kamil)

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_taints.c  |  8 ++++----
 lib/igt_taints.h  |  6 ++++++
 runner/executor.c | 14 ++++++++++----
 3 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/lib/igt_taints.c b/lib/igt_taints.c
index 6b36d11cba..1d238fd2af 100644
--- a/lib/igt_taints.c
+++ b/lib/igt_taints.c
@@ -13,10 +13,10 @@ static const struct {
 	int bad;
 	const char *explanation;
 } abort_taints[] = {
-  { 4, 1, "TAINT_MACHINE_CHECK: Processor reported a Machine Check Exception."},
-  { 5, 1, "TAINT_BAD_PAGE: Bad page reference or an unexpected page flags." },
-  { 7, 1, "TAINT_DIE: Kernel has died - BUG/OOPS." },
-  { 9, 1, "TAINT_WARN: WARN_ON has happened." },
+  { TAINT_MACHINE_CHECK, 1, "TAINT_MACHINE_CHECK: Processor reported a Machine Check Exception."},
+  { TAINT_BAD_PAGE,	 1, "TAINT_BAD_PAGE: Bad page reference or an unexpected page flags." },
+  { TAINT_DIE,		 1, "TAINT_DIE: Kernel has died - BUG/OOPS." },
+  { TAINT_WARN,		 1, "TAINT_WARN: WARN_ON has happened." },
   { -1 }
 };
 
diff --git a/lib/igt_taints.h b/lib/igt_taints.h
index be4195c5aa..50c4cf16f8 100644
--- a/lib/igt_taints.h
+++ b/lib/igt_taints.h
@@ -6,6 +6,12 @@
 #ifndef __IGT_TAINTS_H__
 #define __IGT_TAINTS_H__
 
+#define	TAINT_MACHINE_CHECK	 4
+#define	TAINT_BAD_PAGE		 5
+#define	TAINT_DIE		 7
+#define	TAINT_WARN		 9
+#define	TAINT_SOFT_LOCKUP	14
+
 unsigned long igt_kernel_tainted(unsigned long *taints);
 const char *igt_explain_taints(unsigned long *taints);
 
diff --git a/runner/executor.c b/runner/executor.c
index 13180a0a46..847abe481a 100644
--- a/runner/executor.c
+++ b/runner/executor.c
@@ -871,10 +871,15 @@ static const char *need_to_timeout(struct settings *settings,
 	if (settings->abort_mask & ABORT_TAINT &&
 	    is_tainted(taints)) {
 		/* list of timeouts that may postpone immediate kill on taint */
-		if (settings->per_test_timeout || settings->inactivity_timeout)
-			decrease = 10;
-		else
+		if (settings->per_test_timeout || settings->inactivity_timeout) {
+			if (is_tainted(taints) == (1 << TAINT_WARN) &&
+			    taints & (1 << TAINT_SOFT_LOCKUP))
+				decrease = 2;
+			else
+				decrease = 10;
+		} else {
 			return "Killing the test because the kernel is tainted.\n";
+		}
 	}
 
 	if (settings->per_test_timeout != 0 &&
@@ -1526,8 +1531,9 @@ static int monitor_output(pid_t child,
 			sigfd = -1; /* we are dying, no signal handling for now */
 		}
 
+		igt_kernel_tainted(&taints);
 		timeout_reason = need_to_timeout(settings, killed,
-						 igt_kernel_tainted(&taints),
+						 taints,
 						 igt_time_elapsed(&time_last_activity, &time_now),
 						 igt_time_elapsed(&time_last_subtest, &time_now),
 						 igt_time_elapsed(&time_killed, &time_now),
-- 
2.50.0

