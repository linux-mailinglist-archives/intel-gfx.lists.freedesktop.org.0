Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A561B128D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 19:06:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD2F6E81E;
	Mon, 20 Apr 2020 17:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 690B26E17E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 11:54:22 +0000 (UTC)
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0969C21D94;
 Mon, 20 Apr 2020 11:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587383662;
 bh=BOa5Mw0/hpw+98z21+6ed6jZc+vUnN9uwr6UPY2Ps1g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VXwto54smORPjo0Ke2LCHi8I/iZHqIoqAIdoHvug3M0BQDLEWe1njfHDGO98wHT+A
 eIwqkCs5YR8BVWAyu9kGhiVBI6Sys36FvQE0MuLfs+vEUWVECE7Gt8b5MN+EAeLO57
 FBgxuPhdNbgEHCzbXSUh9vCwk2eU8ljKMe0c1otI=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Date: Mon, 20 Apr 2020 08:52:27 -0300
Message-Id: <20200420115316.18781-12-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200420115316.18781-1-acme@kernel.org>
References: <20200420115316.18781-1-acme@kernel.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 20 Apr 2020 17:06:15 +0000
Subject: [Intel-gfx] [PATCH 11/60] powerpc/perf: open access for CAP_PERFMON
 privileged process
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
Cc: linux-man@vger.kernel.org, Song Liu <songliubraving@fb.com>,
 linux-doc@vger.kernel.org, Clark Williams <williams@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Stephane Eranian <eranian@google.com>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jamorris@linux.microsoft.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Anju T Sudhakar <anju@linux.vnet.ibm.com>, Serge Hallyn <serge@hallyn.com>,
 selinux@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-kernel@vger.kernel.org, linux-perf-users@vger.kernel.org,
 linux-security-module@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Alexey Budankov <alexey.budankov@linux.intel.com>

Open access to monitoring for CAP_PERFMON privileged process.  Providing
the access under CAP_PERFMON capability singly, without the rest of
CAP_SYS_ADMIN credentials, excludes chances to misuse the credentials
and makes operation more secure.

CAP_PERFMON implements the principle of least privilege for performance
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
principle of least privilege: A security design principle that states
that a process or program be granted only those privileges (e.g.,
capabilities) necessary to accomplish its legitimate function, and only
for the time that such privileges are actually required)

For backward compatibility reasons access to the monitoring remains open
for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for
secure monitoring is discouraged with respect to CAP_PERFMON capability.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
Reviewed-by: James Morris <jamorris@linux.microsoft.com>
Acked-by: Anju T Sudhakar <anju@linux.vnet.ibm.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Igor Lubashev <ilubashe@akamai.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Serge Hallyn <serge@hallyn.com>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Cc: linux-doc@vger.kernel.org
Cc: linux-man@vger.kernel.org
Cc: linux-security-module@vger.kernel.org
Cc: selinux@vger.kernel.org
Link: http://lore.kernel.org/lkml/ac98cd9f-b59e-673c-c70d-180b3e7695d2@linux.intel.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 arch/powerpc/perf/imc-pmu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/powerpc/perf/imc-pmu.c b/arch/powerpc/perf/imc-pmu.c
index eb82dda884e5..0edcfd0b491d 100644
--- a/arch/powerpc/perf/imc-pmu.c
+++ b/arch/powerpc/perf/imc-pmu.c
@@ -976,7 +976,7 @@ static int thread_imc_event_init(struct perf_event *event)
 	if (event->attr.type != event->pmu->type)
 		return -ENOENT;
 
-	if (!capable(CAP_SYS_ADMIN))
+	if (!perfmon_capable())
 		return -EACCES;
 
 	/* Sampling not supported */
@@ -1412,7 +1412,7 @@ static int trace_imc_event_init(struct perf_event *event)
 	if (event->attr.type != event->pmu->type)
 		return -ENOENT;
 
-	if (!capable(CAP_SYS_ADMIN))
+	if (!perfmon_capable())
 		return -EACCES;
 
 	/* Return if this is a couting event */
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
