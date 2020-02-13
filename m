Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F17115B6B1
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 02:29:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39CF06EB17;
	Thu, 13 Feb 2020 01:29:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 436AB6EB17;
 Thu, 13 Feb 2020 01:29:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 17:29:16 -0800
X-IronPort-AV: E=Sophos;i="5.70,434,1574150400"; d="scan'208";a="252111806"
Received: from dbstims-dev.fm.intel.com ([10.1.27.172])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 12 Feb 2020 17:29:16 -0800
From: Dale B Stimson <dale.b.stimson@intel.com>
To: igt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 17:28:39 -0800
Message-Id: <20200213012840.31472-5-dale.b.stimson@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213012840.31472-1-dale.b.stimson@intel.com>
References: <20200213012840.31472-1-dale.b.stimson@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 4/5] lib/igt_core.c - Introduce
 igt_exit_early()
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

Call igt_exit() after dealing with assumptions not valid for early calls.

In particular:

igt_exit() assumes that subtests have been considered for execution.
With --run-subtest, for an early exit (where subtests had not yet been
considered):
- igt_exit() would complain about "Unknown subtest"
- igt_exit() would exit prematurely.

Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
---
 lib/igt_core.c | 27 +++++++++++++++++++++++++++
 lib/igt_core.h |  1 +
 2 files changed, 28 insertions(+)

diff --git a/lib/igt_core.c b/lib/igt_core.c
index 70465130c..78704b93a 100644
--- a/lib/igt_core.c
+++ b/lib/igt_core.c
@@ -2028,6 +2028,33 @@ void igt_exit(void)
 	exit(igt_exitcode);
 }
 
+/**
+ * igt_exit_early()
+ *
+ * Call igt_exit() after dealing with assumptions not valid for early calls.
+ *
+ * In particular:
+ * igt_exit() assumes that subtests have been considered for execution
+ * and complains if a subtest specified by --run-subtest was not executed.
+ * (The expectation is that the subtest would have been executed if it existed).
+ *
+ * In particular:
+ * igt_exit() assumes that subtests have been considered for execution.
+ * With --run-subtest, for an early exit (where subtests had not yet been
+ * considered):
+ * - igt_exit() would complain about "Unknown subtest"
+ * - igt_exit() would exit prematurely.
+ */
+void igt_exit_early(void)
+{
+	if (run_single_subtest) {
+		free(run_single_subtest);
+		run_single_subtest = NULL;
+	}
+
+	igt_exit();
+}
+
 /* fork support code */
 static int helper_process_count;
 static pid_t helper_process_pids[] =
diff --git a/lib/igt_core.h b/lib/igt_core.h
index c17a7ba81..a1fe4c361 100644
--- a/lib/igt_core.h
+++ b/lib/igt_core.h
@@ -500,6 +500,7 @@ void __igt_fail_assert(const char *domain, const char *file,
 		       const char *format, ...)
 	__attribute__((noreturn));
 void igt_exit(void) __attribute__((noreturn));
+void igt_exit_early(void) __attribute__((noreturn));
 void igt_fatal_error(void) __attribute__((noreturn));
 
 /**
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
