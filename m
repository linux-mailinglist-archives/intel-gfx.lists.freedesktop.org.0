Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C94E214AF6F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 07:10:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20EC56EC99;
	Tue, 28 Jan 2020 06:10:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC9F06EC99
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 06:10:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 22:10:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,372,1574150400"; d="scan'208";a="401566867"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga005.jf.intel.com with ESMTP; 27 Jan 2020 22:10:05 -0800
Received: from [10.252.25.124] (abudanko-mobl.ccr.corp.intel.com
 [10.252.25.124])
 by linux.intel.com (Postfix) with ESMTP id 7A2B3580277;
 Mon, 27 Jan 2020 22:09:58 -0800 (PST)
From: Alexey Budankov <alexey.budankov@linux.intel.com>
To: Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Serge Hallyn <serge@hallyn.com>,
 Will Deacon <will@kernel.org>, Robert Richter <rric@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>
References: <74d524ab-ac11-a7b8-1052-eba10f117e09@linux.intel.com>
Organization: Intel Corp.
Message-ID: <f6eee965-e35d-e4dd-d794-85b7e152c428@linux.intel.com>
Date: Tue, 28 Jan 2020 09:09:57 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <74d524ab-ac11-a7b8-1052-eba10f117e09@linux.intel.com>
Content-Language: en-US
Subject: [Intel-gfx] [PATCH v6 04/10] perf tool: extend Perf tool with
 CAP_PERFMON capability support
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
Cc: Song Liu <songliubraving@fb.com>, Andi Kleen <ak@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, oprofile-list@lists.sf.net,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Extend error messages to mention CAP_PERFMON capability as an option
to substitute CAP_SYS_ADMIN capability for secure system performance
monitoring and observability operations. Make perf_event_paranoid_check()
and __cmd_ftrace() to be aware of CAP_PERFMON capability.

CAP_PERFMON implements the principal of least privilege for performance
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle
of least privilege: A security design principle that states that a process
or program be granted only those privileges (e.g., capabilities) necessary
to accomplish its legitimate function, and only for the time that such
privileges are actually required)

For backward compatibility reasons access to perf_events subsystem remains
open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for
secure perf_events monitoring is discouraged with respect to CAP_PERFMON
capability.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
---
 tools/perf/builtin-ftrace.c |  5 +++--
 tools/perf/design.txt       |  3 ++-
 tools/perf/util/cap.h       |  4 ++++
 tools/perf/util/evsel.c     | 10 +++++-----
 tools/perf/util/util.c      |  1 +
 5 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/tools/perf/builtin-ftrace.c b/tools/perf/builtin-ftrace.c
index d5adc417a4ca..55eda54240fb 100644
--- a/tools/perf/builtin-ftrace.c
+++ b/tools/perf/builtin-ftrace.c
@@ -284,10 +284,11 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
 		.events = POLLIN,
 	};
 
-	if (!perf_cap__capable(CAP_SYS_ADMIN)) {
+	if (!(perf_cap__capable(CAP_PERFMON) ||
+	      perf_cap__capable(CAP_SYS_ADMIN))) {
 		pr_err("ftrace only works for %s!\n",
 #ifdef HAVE_LIBCAP_SUPPORT
-		"users with the SYS_ADMIN capability"
+		"users with the CAP_PERFMON or CAP_SYS_ADMIN capability"
 #else
 		"root"
 #endif
diff --git a/tools/perf/design.txt b/tools/perf/design.txt
index 0453ba26cdbd..a42fab308ff6 100644
--- a/tools/perf/design.txt
+++ b/tools/perf/design.txt
@@ -258,7 +258,8 @@ gets schedule to. Per task counters can be created by any user, for
 their own tasks.
 
 A 'pid == -1' and 'cpu == x' counter is a per CPU counter that counts
-all events on CPU-x. Per CPU counters need CAP_SYS_ADMIN privilege.
+all events on CPU-x. Per CPU counters need CAP_PERFMON or CAP_SYS_ADMIN
+privilege.
 
 The 'flags' parameter is currently unused and must be zero.
 
diff --git a/tools/perf/util/cap.h b/tools/perf/util/cap.h
index 051dc590ceee..ae52878c0b2e 100644
--- a/tools/perf/util/cap.h
+++ b/tools/perf/util/cap.h
@@ -29,4 +29,8 @@ static inline bool perf_cap__capable(int cap __maybe_unused)
 #define CAP_SYSLOG	34
 #endif
 
+#ifndef CAP_PERFMON
+#define CAP_PERFMON	38
+#endif
+
 #endif /* __PERF_CAP_H */
diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
index a69e64236120..a35f17723dd3 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -2491,14 +2491,14 @@ int perf_evsel__open_strerror(struct evsel *evsel, struct target *target,
 		 "You may not have permission to collect %sstats.\n\n"
 		 "Consider tweaking /proc/sys/kernel/perf_event_paranoid,\n"
 		 "which controls use of the performance events system by\n"
-		 "unprivileged users (without CAP_SYS_ADMIN).\n\n"
+		 "unprivileged users (without CAP_PERFMON or CAP_SYS_ADMIN).\n\n"
 		 "The current value is %d:\n\n"
 		 "  -1: Allow use of (almost) all events by all users\n"
 		 "      Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK\n"
-		 ">= 0: Disallow ftrace function tracepoint by users without CAP_SYS_ADMIN\n"
-		 "      Disallow raw tracepoint access by users without CAP_SYS_ADMIN\n"
-		 ">= 1: Disallow CPU event access by users without CAP_SYS_ADMIN\n"
-		 ">= 2: Disallow kernel profiling by users without CAP_SYS_ADMIN\n\n"
+		 ">= 0: Disallow ftrace function tracepoint by users without CAP_PERFMON or CAP_SYS_ADMIN\n"
+		 "      Disallow raw tracepoint access by users without CAP_SYS_PERFMON or CAP_SYS_ADMIN\n"
+		 ">= 1: Disallow CPU event access by users without CAP_PERFMON or CAP_SYS_ADMIN\n"
+		 ">= 2: Disallow kernel profiling by users without CAP_PERFMON or CAP_SYS_ADMIN\n\n"
 		 "To make this setting permanent, edit /etc/sysctl.conf too, e.g.:\n\n"
 		 "	kernel.perf_event_paranoid = -1\n" ,
 				 target->system_wide ? "system-wide " : "",
diff --git a/tools/perf/util/util.c b/tools/perf/util/util.c
index 969ae560dad9..51cf3071db74 100644
--- a/tools/perf/util/util.c
+++ b/tools/perf/util/util.c
@@ -272,6 +272,7 @@ int perf_event_paranoid(void)
 bool perf_event_paranoid_check(int max_level)
 {
 	return perf_cap__capable(CAP_SYS_ADMIN) ||
+			perf_cap__capable(CAP_PERFMON) ||
 			perf_event_paranoid() <= max_level;
 }
 
-- 
2.20.1


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
