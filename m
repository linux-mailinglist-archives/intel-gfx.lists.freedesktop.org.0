Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD931636BD
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 00:03:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6BF56EADD;
	Tue, 18 Feb 2020 23:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from namei.org (namei.org [65.99.196.166])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 180DD6E3B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 19:23:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by namei.org (8.14.4/8.14.4) with ESMTP id 01IJMet4013185;
 Tue, 18 Feb 2020 19:22:40 GMT
Date: Wed, 19 Feb 2020 06:22:40 +1100 (AEDT)
From: James Morris <jmorris@namei.org>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
In-Reply-To: <3364fa26-b5d1-1808-aaee-c057f26e0eb4@linux.intel.com>
Message-ID: <alpine.LRH.2.21.2002190622300.10165@namei.org>
References: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
 <3364fa26-b5d1-1808-aaee-c057f26e0eb4@linux.intel.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 18 Feb 2020 23:03:31 +0000
Subject: Re: [Intel-gfx] [PATCH v7 03/12] perf/core: open access to probes
 for CAP_PERFMON privileged process
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
Cc: linux-man@vger.kernel.org,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 Andi Kleen <ak@linux.intel.com>, Will Deacon <will@kernel.org>,
 Helge Deller <deller@gmx.de>, Igor Lubashev <ilubashe@akamai.com>,
 oprofile-list@lists.sf.net, Stephen Smalley <sds@tycho.nsa.gov>,
 Serge Hallyn <serge@hallyn.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 17 Feb 2020, Alexey Budankov wrote:

> 
> Open access to monitoring via kprobes and uprobes and eBPF tracing for
> CAP_PERFMON privileged process. Providing the access under CAP_PERFMON
> capability singly, without the rest of CAP_SYS_ADMIN credentials,
> excludes chances to misuse the credentials and makes operation more
> secure.
> 
> perf kprobes and uprobes are used by ftrace and eBPF. perf probe uses
> ftrace to define new kprobe events, and those events are treated as
> tracepoint events. eBPF defines new probes via perf_event_open interface
> and then the probes are used in eBPF tracing.
> 
> CAP_PERFMON implements the principal of least privilege for performance
> monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
> principle of least privilege: A security design principle that states
> that a process or program be granted only those privileges (e.g.,
> capabilities) necessary to accomplish its legitimate function, and only
> for the time that such privileges are actually required)
> 
> For backward compatibility reasons access to perf_events subsystem
> remains open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN
> usage for secure perf_events monitoring is discouraged with respect to
> CAP_PERFMON capability.
> 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>


Reviewed-by: James Morris <jamorris@linux.microsoft.com>


-- 
James Morris
<jmorris@namei.org>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
