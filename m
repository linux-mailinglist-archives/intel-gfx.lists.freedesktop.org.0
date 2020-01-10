Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74977137A56
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jan 2020 00:47:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27C0D89CDE;
	Fri, 10 Jan 2020 23:47:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED52789CDE
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 23:47:45 +0000 (UTC)
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A61EC20721;
 Fri, 10 Jan 2020 23:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578700065;
 bh=NuMXPw3kPSPAokfxRtkSxkyo7a4EVAlOcwjKZAwv8nY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=t116nza3ajSBnjZbfKgcN5ONvfAghlxApVIAIUZPf0R8FY7ey0DryHbox6JEQPVwR
 2xql9T24vHJ7lZgd8/0P6ybYgmcY34jFGX+VnlShjoGYoVU3chcg4p7xaRfP4Azzzx
 FSSjjNHlhTZMBRDpXhh2exzFwwJlouRtCsAGpcsw=
Date: Sat, 11 Jan 2020 08:47:35 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>
Message-Id: <20200111084735.0ff01c758bfbfd0ae2e1f24e@kernel.org>
In-Reply-To: <20200110164531.GA2598@kernel.org>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
 <20200110140234.GO2844@hirez.programming.kicks-ass.net>
 <20200111005213.6dfd98fb36ace098004bde0e@kernel.org>
 <20200110164531.GA2598@kernel.org>
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
 Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Jan 2020 13:45:31 -0300
Arnaldo Carvalho de Melo <acme@kernel.org> wrote:

> Em Sat, Jan 11, 2020 at 12:52:13AM +0900, Masami Hiramatsu escreveu:
> > On Fri, 10 Jan 2020 15:02:34 +0100 Peter Zijlstra <peterz@infradead.org> wrote:
> > > Again, this only allows attaching to previously created kprobes, it does
> > > not allow creating kprobes, right?
> 
> > > That is; I don't think CAP_SYS_PERFMON should be allowed to create
> > > kprobes.
> 
> > > As might be clear; I don't actually know what the user-ABI is for
> > > creating kprobes.
> 
> > There are 2 ABIs nowadays, ftrace and ebpf. perf-probe uses ftrace interface to
> > define new kprobe events, and those events are treated as completely same as
> > tracepoint events. On the other hand, ebpf tries to define new probe event
> > via perf_event interface. Above one is that interface. IOW, it creates new kprobe.
> 
> Masami, any plans to make 'perf probe' use the perf_event_open()
> interface for creating kprobes/uprobes?

Would you mean perf probe to switch to perf_event_open()?
No, perf probe is for setting up the ftrace probe events. I think we can add an
option to use perf_event_open(). But current kprobe creation from perf_event_open()
is separated from ftrace by design.

I think the reason why ebpf uses perf_event_open() interface is to avoid conflict
with ftrace users. Those probes are temporally used by ebpf, but if it is appeared on
ftrace, it is easy to be used by ftrace. In that case, it can not be removed when
the ebpf exits.

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
