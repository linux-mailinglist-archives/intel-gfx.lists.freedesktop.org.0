Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D131371CC
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 16:52:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F6726EA3C;
	Fri, 10 Jan 2020 15:52:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AE046EA3C
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 15:52:25 +0000 (UTC)
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 779C420721;
 Fri, 10 Jan 2020 15:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578671544;
 bh=3nRKzhqWY209SzpxePH8IpaFH19pRWJVa9ge9VwTUWg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hhUyUSbgOhcEXYmwe16oYRXofftAtCaPssxnlo8+wzR1Z+Hc7gIC74+9+Ofo0QovJ
 Uvu/OS2WmFEr18mb/K4VPPNI5p+e0NVDolFkj/C9Q9+59mAjao0fdDHytwiGkznrTa
 HNfDKF7+0bsZZIwPw/QJBAGKYSzKyf3waWGNpk/8=
Date: Sat, 11 Jan 2020 00:52:13 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Message-Id: <20200111005213.6dfd98fb36ace098004bde0e@kernel.org>
In-Reply-To: <20200110140234.GO2844@hirez.programming.kicks-ass.net>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
 <20200110140234.GO2844@hirez.programming.kicks-ass.net>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 2/9] perf/core: open access for
 CAP_SYS_PERFMON privileged process
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jmorris@namei.org>, Ingo Molnar <mingo@redhat.com>,
 oprofile-list@lists.sf.net, Serge Hallyn <serge@hallyn.com>,
 Robert Richter <rric@kernel.org>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, mhiramat@kernel.org,
 Casey Schaufler <casey@schaufler-ca.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Jan 2020 15:02:34 +0100
Peter Zijlstra <peterz@infradead.org> wrote:

> On Thu, Jan 09, 2020 at 02:36:50PM +0300, Alexey Budankov wrote:
> > On 08.01.2020 19:07, Peter Zijlstra wrote:
> > > On Wed, Dec 18, 2019 at 12:25:35PM +0300, Alexey Budankov wrote:
> 
> > >> diff --git a/kernel/events/core.c b/kernel/events/core.c
> > >> index 059ee7116008..d9db414f2197 100644
> > >> --- a/kernel/events/core.c
> > >> +++ b/kernel/events/core.c
> > >> @@ -9056,7 +9056,7 @@ static int perf_kprobe_event_init(struct perf_event *event)
> > >>  	if (event->attr.type != perf_kprobe.type)
> > >>  		return -ENOENT;
> > >>  
> > >> -	if (!capable(CAP_SYS_ADMIN))
> > >> +	if (!perfmon_capable())
> > >>  		return -EACCES;
> > >>  
> > >>  	/*
> > > 
> > > This one only allows attaching to already extant kprobes, right? It does
> > > not allow creation of kprobes.
> > 
> > This unblocks creation of local trace kprobes and uprobes by CAP_SYS_PERFMON 
> > privileged process, exactly the same as for CAP_SYS_ADMIN privileged process.
> 
> I've no idea what you just said; it's just words.
> 
> Again, this only allows attaching to previously created kprobes, it does
> not allow creating kprobes, right?
> 
> That is; I don't think CAP_SYS_PERFMON should be allowed to create
> kprobes.
> 
> As might be clear; I don't actually know what the user-ABI is for
> creating kprobes.

There are 2 ABIs nowadays, ftrace and ebpf. perf-probe uses ftrace interface to
define new kprobe events, and those events are treated as completely same as
tracepoint events. On the other hand, ebpf tries to define new probe event
via perf_event interface. Above one is that interface. IOW, it creates new kprobe.

Thank you,


-- 
Masami Hiramatsu <mhiramat@kernel.org>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
