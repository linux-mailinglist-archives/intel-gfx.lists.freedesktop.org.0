Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6873B1B1290
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 19:06:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E54C06E824;
	Mon, 20 Apr 2020 17:06:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29CD96E17E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 11:53:54 +0000 (UTC)
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE2F3206D4;
 Mon, 20 Apr 2020 11:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587383634;
 bh=PWjy/B+21HQPLawk/uU7/6+PxUTYrdc8ItS1u38jg7E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CrCekbuQzUEiHVCs3rvwQlRQOhBIgD9Yfij35aayQghq4Xtruet5C9dhhuUzK2CZ+
 d3YqNFRVpyou2eNrp2a0PY1TfH0jRdom/Gyv95KZ7+O+sTqBVmuMoifnhQAwhz/O6I
 +thbwzrPtr5UJVdSyP4QNQlXSsrKp0pn1W1d7T0o=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Date: Mon, 20 Apr 2020 08:52:22 -0300
Message-Id: <20200420115316.18781-7-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200420115316.18781-1-acme@kernel.org>
References: <20200420115316.18781-1-acme@kernel.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 20 Apr 2020 17:06:15 +0000
Subject: [Intel-gfx] [PATCH 06/60] perf/core: Open access to the core for
 CAP_PERFMON privileged process
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
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>,
 Song Liu <songliubraving@fb.com>, Andi Kleen <ak@linux.intel.com>,
 linux-man@vger.kernel.org, Clark Williams <williams@redhat.com>,
 Igor Lubashev <ilubashe@akamai.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, James Morris <jamorris@linux.microsoft.com>,
 Alexei Starovoitov <ast@kernel.org>, linux-perf-users@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linux-security-module@vger.kernel.org,
 Stephane Eranian <eranian@google.com>, Jiri Olsa <jolsa@kernel.org>,
 selinux@vger.kernel.org, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, intel-gfx@lists.freedesktop.org,
 Serge Hallyn <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Alexey Budankov <alexey.budankov@linux.intel.com>

Open access to monitoring of kernel code, CPUs, tracepoints and
namespaces data for a CAP_PERFMON privileged process. Providing the
access under CAP_PERFMON capability singly, without the rest of
CAP_SYS_ADMIN credentials, excludes chances to misuse the credentials
and makes operation more secure.

CAP_PERFMON implements the principle of least privilege for performance
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
principle of least privilege: A security design principle that states
that a process or program be granted only those privileges (e.g.,
capabilities) necessary to accomplish its legitimate function, and only
for the time that such privileges are actually required)

For backward compatibility reasons the access to perf_events subsystem
remains open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN
usage for secure perf_events monitoring is discouraged with respect to
CAP_PERFMON capability.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
Reviewed-by: James Morris <jamorris@linux.microsoft.com>
Tested-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Igor Lubashev <ilubashe@akamai.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: linux-man@vger.kernel.org
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Serge Hallyn <serge@hallyn.com>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Cc: linux-doc@vger.kernel.org
Cc: linux-security-module@vger.kernel.org
Cc: selinux@vger.kernel.org
Link: http://lore.kernel.org/lkml/471acaef-bb8a-5ce2-923f-90606b78eef9@linux.intel.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 include/linux/perf_event.h | 6 +++---
 kernel/events/core.c       | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/perf_event.h b/include/linux/perf_event.h
index 9c3e7619c929..87e21681759c 100644
--- a/include/linux/perf_event.h
+++ b/include/linux/perf_event.h
@@ -1305,7 +1305,7 @@ static inline int perf_is_paranoid(void)
 
 static inline int perf_allow_kernel(struct perf_event_attr *attr)
 {
-	if (sysctl_perf_event_paranoid > 1 && !capable(CAP_SYS_ADMIN))
+	if (sysctl_perf_event_paranoid > 1 && !perfmon_capable())
 		return -EACCES;
 
 	return security_perf_event_open(attr, PERF_SECURITY_KERNEL);
@@ -1313,7 +1313,7 @@ static inline int perf_allow_kernel(struct perf_event_attr *attr)
 
 static inline int perf_allow_cpu(struct perf_event_attr *attr)
 {
-	if (sysctl_perf_event_paranoid > 0 && !capable(CAP_SYS_ADMIN))
+	if (sysctl_perf_event_paranoid > 0 && !perfmon_capable())
 		return -EACCES;
 
 	return security_perf_event_open(attr, PERF_SECURITY_CPU);
@@ -1321,7 +1321,7 @@ static inline int perf_allow_cpu(struct perf_event_attr *attr)
 
 static inline int perf_allow_tracepoint(struct perf_event_attr *attr)
 {
-	if (sysctl_perf_event_paranoid > -1 && !capable(CAP_SYS_ADMIN))
+	if (sysctl_perf_event_paranoid > -1 && !perfmon_capable())
 		return -EPERM;
 
 	return security_perf_event_open(attr, PERF_SECURITY_TRACEPOINT);
diff --git a/kernel/events/core.c b/kernel/events/core.c
index bc9b98a9af9a..74025b7b83a0 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -11504,7 +11504,7 @@ SYSCALL_DEFINE5(perf_event_open,
 	}
 
 	if (attr.namespaces) {
-		if (!capable(CAP_SYS_ADMIN))
+		if (!perfmon_capable())
 			return -EACCES;
 	}
 
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
