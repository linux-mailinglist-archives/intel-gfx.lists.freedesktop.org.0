Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E66C160C6C
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 09:09:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEFF56E50E;
	Mon, 17 Feb 2020 08:09:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 906246E50E
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Feb 2020 08:09:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Feb 2020 00:09:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,451,1574150400"; d="scan'208";a="229122673"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga008.fm.intel.com with ESMTP; 17 Feb 2020 00:09:36 -0800
Received: from [10.125.252.180] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.180])
 by linux.intel.com (Postfix) with ESMTP id 8F97A5804A2;
 Mon, 17 Feb 2020 00:09:30 -0800 (PST)
From: Alexey Budankov <alexey.budankov@linux.intel.com>
To: James Morris <jmorris@namei.org>, Serge Hallyn <serge@hallyn.com>,
 Stephen Smalley <sds@tycho.nsa.gov>, Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Helge Deller <deller@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>
References: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
Organization: Intel Corp.
Message-ID: <fc689865-f8ff-1e85-ac0c-b2f1c28b7eb6@linux.intel.com>
Date: Mon, 17 Feb 2020 11:09:29 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
Content-Language: en-US
Subject: [Intel-gfx] [PATCH v7 06/12] trace/bpf_trace: open access for
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
Cc: linux-man@vger.kernel.org, Andi Kleen <ak@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, oprofile-list@lists.sf.net,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Open access to bpf_trace monitoring for CAP_PERFMON privileged process.
Providing the access under CAP_PERFMON capability singly, without the
rest of CAP_SYS_ADMIN credentials, excludes chances to misuse the
credentials and makes operation more secure.

CAP_PERFMON implements the principal of least privilege for performance
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
principle of least privilege: A security design principle that states
that a process or program be granted only those privileges (e.g.,
capabilities) necessary to accomplish its legitimate function, and only
for the time that such privileges are actually required)

For backward compatibility reasons access to bpf_trace monitoring
remains open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN
usage for secure bpf_trace monitoring is discouraged with respect to
CAP_PERFMON capability.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
---
 kernel/trace/bpf_trace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/trace/bpf_trace.c b/kernel/trace/bpf_trace.c
index 19e793aa441a..70e8249eebe5 100644
--- a/kernel/trace/bpf_trace.c
+++ b/kernel/trace/bpf_trace.c
@@ -1416,7 +1416,7 @@ int perf_event_query_prog_array(struct perf_event *event, void __user *info)
 	u32 *ids, prog_cnt, ids_len;
 	int ret;
 
-	if (!capable(CAP_SYS_ADMIN))
+	if (!perfmon_capable())
 		return -EPERM;
 	if (event->attr.type != PERF_TYPE_TRACEPOINT)
 		return -EINVAL;
-- 
2.20.1


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
