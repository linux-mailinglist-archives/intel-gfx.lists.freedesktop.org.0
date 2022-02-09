Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 841A84AFD3E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 20:23:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A63FF10E57C;
	Wed,  9 Feb 2022 19:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 085FD10E57C
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 19:22:58 +0000 (UTC)
Received: by mail-lj1-f181.google.com with SMTP id h18so937346lja.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Feb 2022 11:22:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TAb9RMF5rdP3oF08yRzn8MffJjQ5kNb8IB5u5y/hypk=;
 b=iRYeSBTHbemMrN8mpC0VrQO7Yj4IBkpZGy+xPCDIPZ/SIaLatzC200NR8cxDnWJtDc
 sTA1vjv9WnCtHKyVW6Ztp4F40tvlNN+kkK+uALqs4Q/V2Qnw2eYN1fr+MRoqdYCaojMf
 KD4eBMPqcbGei93c5Gyn/X2Ixu2+HnMdiXqzh5PP/yG2GIoq3A1NdzJRZePDCDERVTl8
 SpqGAK3A13H26WgYf2gcSkJAe9ZyBnGE2uBdTJAFcjA1SE/CBcmUOpIxMlN1YyV9vKM1
 +VogPCzebBhgpjjp+SyTabo07QtGoFE7BtZqfO8rLRm7dVUTff+oRSrejFYqJnNtFilf
 s88g==
X-Gm-Message-State: AOAM531xfmBm3dvmMFy4akgr1uSc19jildAum5rgAzvhfBim5T7wRsov
 iRuJZ1ivBlR3KE9ob7vX7JSXCsxJnaTbSjrAv+8=
X-Google-Smtp-Source: ABdhPJw08QD4wUSfZkYC8eoOu9YPXO1KD3DoKCorkCNdm3c9GLfZqlvWEz+RohSDhEAzIwcPChf/Tq1QQHAWfxCujNM=
X-Received: by 2002:a2e:5352:: with SMTP id t18mr2459533ljd.241.1644434575676; 
 Wed, 09 Feb 2022 11:22:55 -0800 (PST)
MIME-Version: 1.0
References: <20220208184208.79303-1-namhyung@kernel.org>
 <20220209090908.GK23216@worktop.programming.kicks-ass.net>
 <24fe6a08-5931-8e8d-8d77-459388c4654e@redhat.com>
 <919214156.50301.1644431371345.JavaMail.zimbra@efficios.com>
 <69e5f778-8715-4acf-c027-58b6ec4a9e77@redhat.com>
In-Reply-To: <69e5f778-8715-4acf-c027-58b6ec4a9e77@redhat.com>
From: Namhyung Kim <namhyung@kernel.org>
Date: Wed, 9 Feb 2022 11:22:44 -0800
Message-ID: <CAM9d7ci=N2NVj57k=W0ebqBzfW+ThBqYSrx-CZbgwGcbOSrEGA@mail.gmail.com>
To: Waiman Long <longman@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [RFC 00/12] locking: Separate lock tracepoints from
 lockdep/lock_stat (v1)
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
Cc: rcu <rcu@vger.kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Boqun Feng <boqun.feng@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, rostedt <rostedt@goodmis.org>,
 Radoslaw Burny <rburny@google.com>, Byungchul Park <byungchul.park@lge.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 intel-gfx@lists.freedesktop.org, Tejun Heo <tj@kernel.org>,
 cgroups <cgroups@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello,

On Wed, Feb 9, 2022 at 11:02 AM Waiman Long <longman@redhat.com> wrote:
>
> On 2/9/22 13:29, Mathieu Desnoyers wrote:
> > ----- On Feb 9, 2022, at 1:19 PM, Waiman Long longman@redhat.com wrote:
> >
> >> On 2/9/22 04:09, Peter Zijlstra wrote:
> >>> On Tue, Feb 08, 2022 at 10:41:56AM -0800, Namhyung Kim wrote:
> >>>
> >>>> Eventually I'm mostly interested in the contended locks only and I
> >>>> want to reduce the overhead in the fast path.  By moving that, it'd be
> >>>> easy to track contended locks with timing by using two tracepoints.
> >>> So why not put in two new tracepoints and call it a day?
> >>>
> >>> Why muck about with all that lockdep stuff just to preserve the name
> >>> (and in the process continue to blow up data structures etc..). This
> >>> leaves distros in a bind, will they enable this config and provide
> >>> tracepoints while bloating the data structures and destroying things
> >>> like lockref (which relies on sizeof(spinlock_t)), or not provide this
> >>> at all.
> >>>
> >>> Yes, the name is convenient, but it's just not worth it IMO. It makes
> >>> the whole proposition too much of a trade-off.
> >>>
> >>> Would it not be possible to reconstruct enough useful information from
> >>> the lock callsite?
> >>>
> >> I second that as I don't want to see the size of a spinlock exceeds 4
> >> bytes in a production system.
> >>
> >> Instead of storing additional information (e.g. lock name) directly into
> >> the lock itself. Maybe we can store it elsewhere and use the lock
> >> address as the key to locate it in a hash table. We can certainly extend
> >> the various lock init functions to do that. It will be trickier for
> >> statically initialized locks, but we can probably find a way to do that too.
> > If we go down that route, it would be nice if we can support a few different
> > use-cases for various tracers out there.
> >
> > One use-case (a) requires the ability to query the lock name based on its address as key.
> > For this a hash table is a good fit. This would allow tracers like ftrace to
> > output lock names in its human-readable output which is formatted within the kernel.
> >
> > Another use-case (b) is to be able to "dump" the lock { name, address } tuples
> > into the trace stream (we call this statedump events in lttng), and do the
> > translation from address to name at post-processing. This simply requires
> > that this information is available for iteration for both the core kernel
> > and module locks, so the tracer can dump this information on trace start
> > and module load.
> >
> > Use-case (b) is very similar to what is done for the kernel tracepoints. Based
> > on this, implementing the init code that iterates on those sections and populates
> > a hash table for use-case (a) should be easy enough.
>
> Yes, that are good use cases for this type of functionality. I do need
> to think about how to do it for statically initialized lock first.

Thank you all for the review and good suggestions.

I'm also concerning dynamic allocated locks in a data structure.
If we keep the info in a hash table, we should delete it when the
lock is gone.  I'm not sure we have a good place to hook it up all.

Thanks,
Namhyung
