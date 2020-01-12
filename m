Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBE1138470
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Jan 2020 02:45:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D7BF6E2B4;
	Sun, 12 Jan 2020 01:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 702CD6E2B4
 for <intel-gfx@lists.freedesktop.org>; Sun, 12 Jan 2020 01:44:56 +0000 (UTC)
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B06520848;
 Sun, 12 Jan 2020 01:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578793495;
 bh=be5/qvDI0xWmWfszMbPxV2+iE40FAvtbAVatuYqBdFU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=f0hoRGlul2fyhkOOcYf1vS5xKaAldIjyYI8U8Uba9sbzBzlr3WwBUMp4wsLy5lJdJ
 XmmdHCMtMDQduupcXI0Mw4zH29CkC4uugIayLSeHFJMxGogQNV1b79k9XvjtJOogU9
 4tM2vpzf/obL6Rvpm4tCnfNHWY7gk7jjptMstCSE=
Date: Sun, 12 Jan 2020 10:44:46 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: arnaldo.melo@gmail.com
Message-Id: <20200112104446.f667df82b061dfb9c7a6bdce@kernel.org>
In-Reply-To: <5e191833.1c69fb81.8bc25.a88c@mx.google.com>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
 <20200110140234.GO2844@hirez.programming.kicks-ass.net>
 <20200111005213.6dfd98fb36ace098004bde0e@kernel.org>
 <20200110164531.GA2598@kernel.org>
 <20200111084735.0ff01c758bfbfd0ae2e1f24e@kernel.org>
 <2B79131A-3F76-47F5-AAB4-08BCA820473F@fb.com>
 <5e191833.1c69fb81.8bc25.a88c@mx.google.com>
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
Cc: , Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>, james.bottomley@hansenpartnership.com,
 Paul Mackerras <paulus@samba.org>, Jiri Olsa <jolsa@redhat.com>,
 Andi Kleen <ak@linux.intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 "oprofile-list@lists.sf.net" <oprofile-list@lists.sf.net>,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
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

On Fri, 10 Jan 2020 21:35:12 -0300
arnaldo.melo@gmail.com wrote:

> <keescook@chromium.org>,Jann Horn <jannh@google.com>,Thomas Gleixner <tglx@linutronix.de>,Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,Lionel Landwerlin <lionel.g.landwerlin@intel.com>,linux-kernel <linux-kernel@vger.kernel.org>,"linux-security-module@vger.kernel.org" <linux-security-module@vger.kernel.org>,"selinux@vger.kernel.org" <selinux@vger.kernel.org>,"intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,"bpf@vger.kernel.org" <bpf@vger.kernel.org>,"linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,"linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,"linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,"oprofile-list@lists.sf.net" <oprofile-list@lists.sf.net>
> From: Arnaldo Carvalho de Melo <acme@kernel.org>
> Message-ID: <A7F0BF73-9189-44BA-9264-C88F2F51CBF3@kernel.org>
> 
> On January 10, 2020 9:23:27 PM GMT-03:00, Song Liu <songliubraving@fb.com> wrote:
> >
> >
> >> On Jan 10, 2020, at 3:47 PM, Masami Hiramatsu <mhiramat@kernel.org>
> >wrote:
> >> 
> >> On Fri, 10 Jan 2020 13:45:31 -0300
> >> Arnaldo Carvalho de Melo <acme@kernel.org> wrote:
> >> 
> >>> Em Sat, Jan 11, 2020 at 12:52:13AM +0900, Masami Hiramatsu escreveu:
> >>>> On Fri, 10 Jan 2020 15:02:34 +0100 Peter Zijlstra
> ><peterz@infradead.org> wrote:
> >>>>> Again, this only allows attaching to previously created kprobes,
> >it does
> >>>>> not allow creating kprobes, right?
> >>> 
> >>>>> That is; I don't think CAP_SYS_PERFMON should be allowed to create
> >>>>> kprobes.
> >>> 
> >>>>> As might be clear; I don't actually know what the user-ABI is for
> >>>>> creating kprobes.
> >>> 
> >>>> There are 2 ABIs nowadays, ftrace and ebpf. perf-probe uses ftrace
> >interface to
> >>>> define new kprobe events, and those events are treated as
> >completely same as
> >>>> tracepoint events. On the other hand, ebpf tries to define new
> >probe event
> >>>> via perf_event interface. Above one is that interface. IOW, it
> >creates new kprobe.
> >>> 
> >>> Masami, any plans to make 'perf probe' use the perf_event_open()
> >>> interface for creating kprobes/uprobes?
> >> 
> >> Would you mean perf probe to switch to perf_event_open()?
> >> No, perf probe is for setting up the ftrace probe events. I think we
> >can add an
> >> option to use perf_event_open(). But current kprobe creation from
> >perf_event_open()
> >> is separated from ftrace by design.
> >
> >I guess we can extend event parser to understand kprobe directly.
> >Instead of
> >
> >	perf probe kernel_func
> >	perf stat/record -e probe:kernel_func ...
> >
> >We can just do 
> >
> >	perf stat/record -e kprobe:kernel_func ...
> 
> 
> You took the words from my mouth, exactly, that is a perfect use case, an alternative to the 'perf probe' one of making a disabled event that then gets activated via record/stat/trace, in many cases it's better, removes the explicit probe setup case.

Ah, I got it. If the perf event parser just kicks perf's kprobe creation
interface, it will be easy. In that case, there should be following differences.

- perf * -e "kprobe":kernel_func will put a local (hidden) kprobe
  events. So ftrace user can not access it.
- perf * -e "kprobe":kernel_func may not support inline/function-body
  nor trace local variables etc.

Hm, if we support inline function via -e "kprobe" interface, we have to
expand perf_event_open() to support multi-probe event.

Thanks,

> 
> Regards, 
> 
> - Arnaldo
> 
> >
> >Thanks,
> >Song
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
