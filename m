Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1358137081
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 16:00:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD1AB89E11;
	Fri, 10 Jan 2020 15:00:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 3424 seconds by postgrey-1.36 at gabe;
 Fri, 10 Jan 2020 15:00:28 UTC
Received: from merlin.infradead.org (merlin.infradead.org
 [IPv6:2001:8b0:10b:1231::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C7489E11
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 15:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YfX4Wn1/pqccM1olKxdBD79TA9u9Lbt27vICyToE+ls=; b=hUd/+pKHQBBDMpuaTCGYlb6oP
 tHjI1NofTkszYxvkTnNNqmYmw6EzgYCrcSu2vsBjWQUO0IgTKKkb11WzaDx4LmzdHtz9LW/Hm0RgC
 ZdIv+jcU1kRIITHLD0QOfmJzN7/LA/mfZPgCHq6NIEoLWkJujRv4Sla98UT6cKhPOKLcPGcxN+HMy
 AUc5AvlNE3kz0tVvky+aV9FX0vpYZfR/A3TN2D0GIH29lrbxj3mFkAp1ukIqg0k68ObHXAUR8NbZi
 RCwiUEVFD1oEMiNUTjmJ1fIFGQS7nm2/X6ijHCr37Eyn+JkfXY5mT7EQ0um89vJiV6zkfuXOSIYS0
 +ziuTrUqw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipus5-0003rT-5A; Fri, 10 Jan 2020 14:02:41 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 7AC7C30018B;
 Fri, 10 Jan 2020 15:01:00 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 61C442B612603; Fri, 10 Jan 2020 15:02:34 +0100 (CET)
Date: Fri, 10 Jan 2020 15:02:34 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Message-ID: <20200110140234.GO2844@hirez.programming.kicks-ass.net>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Thu, Jan 09, 2020 at 02:36:50PM +0300, Alexey Budankov wrote:
> On 08.01.2020 19:07, Peter Zijlstra wrote:
> > On Wed, Dec 18, 2019 at 12:25:35PM +0300, Alexey Budankov wrote:

> >> diff --git a/kernel/events/core.c b/kernel/events/core.c
> >> index 059ee7116008..d9db414f2197 100644
> >> --- a/kernel/events/core.c
> >> +++ b/kernel/events/core.c
> >> @@ -9056,7 +9056,7 @@ static int perf_kprobe_event_init(struct perf_event *event)
> >>  	if (event->attr.type != perf_kprobe.type)
> >>  		return -ENOENT;
> >>  
> >> -	if (!capable(CAP_SYS_ADMIN))
> >> +	if (!perfmon_capable())
> >>  		return -EACCES;
> >>  
> >>  	/*
> > 
> > This one only allows attaching to already extant kprobes, right? It does
> > not allow creation of kprobes.
> 
> This unblocks creation of local trace kprobes and uprobes by CAP_SYS_PERFMON 
> privileged process, exactly the same as for CAP_SYS_ADMIN privileged process.

I've no idea what you just said; it's just words.

Again, this only allows attaching to previously created kprobes, it does
not allow creating kprobes, right?

That is; I don't think CAP_SYS_PERFMON should be allowed to create
kprobes.

As might be clear; I don't actually know what the user-ABI is for
creating kprobes.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
