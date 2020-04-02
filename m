Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F00A019BE0E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 10:51:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 554546EA17;
	Thu,  2 Apr 2020 08:51:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9571C6EA17
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 08:51:28 +0000 (UTC)
IronPort-SDR: nvWdZOcPCrc67BJsU2E/Y/8zQTSLMwk2vqkDbOtBHSmDawqq+CUmD5R/mm0o9g9ilaaQAbPc4r
 c7s6PHznhmfQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 01:51:28 -0700
IronPort-SDR: IF+cEYctsHFQ08Sbaj+anI96JPMe3wcbE8NaJKB88zsR9ywE+3in0DWyZ3mG1tpEK+HDlP5hvc
 AiHwhMHZ5AFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="284706545"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga002.fm.intel.com with ESMTP; 02 Apr 2020 01:51:27 -0700
Received: from [10.249.226.252] (abudanko-mobl.ccr.corp.intel.com
 [10.249.226.252])
 by linux.intel.com (Postfix) with ESMTP id 97E76580544;
 Thu,  2 Apr 2020 01:51:22 -0700 (PDT)
From: Alexey Budankov <alexey.budankov@linux.intel.com>
To: Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 James Morris <jmorris@namei.org>, Namhyung Kim <namhyung@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
Organization: Intel Corp.
Message-ID: <4ec1d6f7-548c-8d1c-f84a-cebeb9674e4e@linux.intel.com>
Date: Thu, 2 Apr 2020 11:51:21 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
Content-Language: en-US
Subject: [Intel-gfx] [PATCH v8 09/12] drivers/perf: open access for
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
Cc: linux-man@vger.kernel.org, Song Liu <songliubraving@fb.com>,
 Andi Kleen <ak@linux.intel.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, Serge Hallyn <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Open access to monitoring for CAP_PERFMON privileged process.
Providing the access under CAP_PERFMON capability singly, without
the rest of CAP_SYS_ADMIN credentials, excludes chances to misuse
the credentials and makes operation more secure.

CAP_PERFMON implements the principal of least privilege for performance
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
principle of least privilege: A security design principle that states
that a process or program be granted only those privileges (e.g.,
capabilities) necessary to accomplish its legitimate function, and
only for the time that such privileges are actually required)

For backward compatibility reasons access to the monitoring remains
open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage
for secure monitoring is discouraged with respect to CAP_PERFMON
capability.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
Acked-by: Will Deacon <will@kernel.org>
Acked-by: James Morris <jamorris@linux.microsoft.com>
Reviewed-by: James Morris <jamorris@linux.microsoft.com>
---
 drivers/perf/arm_spe_pmu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/perf/arm_spe_pmu.c b/drivers/perf/arm_spe_pmu.c
index 4e4984a55cd1..5dff81bc3324 100644
--- a/drivers/perf/arm_spe_pmu.c
+++ b/drivers/perf/arm_spe_pmu.c
@@ -274,7 +274,7 @@ static u64 arm_spe_event_to_pmscr(struct perf_event *event)
 	if (!attr->exclude_kernel)
 		reg |= BIT(SYS_PMSCR_EL1_E1SPE_SHIFT);
 
-	if (IS_ENABLED(CONFIG_PID_IN_CONTEXTIDR) && capable(CAP_SYS_ADMIN))
+	if (IS_ENABLED(CONFIG_PID_IN_CONTEXTIDR) && perfmon_capable())
 		reg |= BIT(SYS_PMSCR_EL1_CX_SHIFT);
 
 	return reg;
@@ -700,7 +700,7 @@ static int arm_spe_pmu_event_init(struct perf_event *event)
 		return -EOPNOTSUPP;
 
 	reg = arm_spe_event_to_pmscr(event);
-	if (!capable(CAP_SYS_ADMIN) &&
+	if (!perfmon_capable() &&
 	    (reg & (BIT(SYS_PMSCR_EL1_PA_SHIFT) |
 		    BIT(SYS_PMSCR_EL1_CX_SHIFT) |
 		    BIT(SYS_PMSCR_EL1_PCT_SHIFT))))
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
