Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96714277811
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 19:55:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01DA46E2EF;
	Thu, 24 Sep 2020 17:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9369A6E2EF;
 Thu, 24 Sep 2020 17:55:13 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1600970110;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YRlGrH6qHmnud4V/lnVcV5vqfU+DBGnkWu7EgTdSlr8=;
 b=R1sSPNYUxHYkL72kHsFR+TjF2/2XwUg3yHnnvqS04QAoOSx3FfOe7kjlz2P4SBE6pJNUIa
 hdR8ztc2Y876w4EM4LOexnHM/7SZoZmxV1htzbXf7EKpktR4oJ6+4mHuXWjkPH1VY/l3WA
 BDZuq2kCxBWA+lBGZas1gx2m7Dv1Mr9TuyMtHCzHwnqPd7pEkH0IPycsMRDeGzIT+LhH/P
 fD5rejTsusYZl+6oPjNSvlWEGFuSs+dru2lqmqS0eQyEjsJRaoi/QioZZsY52Jx0mxP/yt
 DHX2BsnUtXH095ARER7BX2h+L097buboL3NLI28knfxP0+LsVtWbo4iS7mzumg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1600970110;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YRlGrH6qHmnud4V/lnVcV5vqfU+DBGnkWu7EgTdSlr8=;
 b=80WsylEKjzTs3/b8Ys3ZZODQN3enPjmHtostMFWbuTS0dOkCPecrcEXoDR2lpjy5cNRqVe
 3kVR1EQtT/FXXFAg==
To: Steven Rostedt <rostedt@goodmis.org>
In-Reply-To: <20200924083241.314f2102@gandalf.local.home>
References: <20200919091751.011116649@linutronix.de>
 <CAHk-=wiYGyrFRbA1cc71D2-nc5U9LM9jUJesXGqpPnB7E4X1YQ@mail.gmail.com>
 <87mu1lc5mp.fsf@nanos.tec.linutronix.de>
 <87k0wode9a.fsf@nanos.tec.linutronix.de>
 <CAHk-=wgbmwsTOKs23Z=71EBTrULoeaH2U3TNqT2atHEWvkBKdw@mail.gmail.com>
 <87eemwcpnq.fsf@nanos.tec.linutronix.de>
 <CAHk-=wgF-upZVpqJWK=TK7MS9H-Rp1ZxGfOG+dDW=JThtxAzVQ@mail.gmail.com>
 <87a6xjd1dw.fsf@nanos.tec.linutronix.de>
 <CAHk-=wjhxzx3KHHOMvdDj3Aw-_Mk5eRiNTUBB=tFf=vTkw1FeA@mail.gmail.com>
 <87sgbbaq0y.fsf@nanos.tec.linutronix.de>
 <20200923084032.GU1362448@hirez.programming.kicks-ass.net>
 <20200923115251.7cc63a7e@oasis.local.home>
 <874kno9pr9.fsf@nanos.tec.linutronix.de>
 <20200923171234.0001402d@oasis.local.home>
 <871riracgf.fsf@nanos.tec.linutronix.de>
 <20200924083241.314f2102@gandalf.local.home>
Date: Thu, 24 Sep 2020 19:55:10 +0200
Message-ID: <875z8383gh.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [patch RFC 00/15] mm/highmem: Provide a preemptible
 variant of kmap_atomic & friends
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
Cc: Juri Lelli <juri.lelli@redhat.com>, peterz@infradead.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 dri-devel <dri-devel@lists.freedesktop.org>, linux-mips@vger.kernel.org,
 Ben Segall <bsegall@google.com>, Max Filippov <jcmvbkbc@gmail.com>,
 Guo Ren <guoren@kernel.org>, linux-sparc <sparclinux@vger.kernel.org>,
 Vincent Chen <deanbo422@gmail.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arch <linux-arch@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Michael Ellerman <mpe@ellerman.id.au>,
 the arch/x86 maintainers <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-csky@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Mel Gorman <mgorman@suse.de>,
 "open list:SYNOPSYS ARC ARCHITECTURE" <linux-snps-arc@lists.infradead.org>,
 linux-xtensa@linux-xtensa.org, Paul McKenney <paulmck@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Greentime Hu <green.hu@gmail.com>, Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Nick Hu <nickhu@andestech.com>, Linux-MM <linux-mm@kvack.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Vineet Gupta <vgupta@synopsys.com>, Paul Mackerras <paulus@samba.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Daniel Bristot de Oliveira <bristot@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 24 2020 at 08:32, Steven Rostedt wrote:
> On Thu, 24 Sep 2020 08:57:52 +0200
> Thomas Gleixner <tglx@linutronix.de> wrote:
>
>> > Now as for migration disabled nesting, at least now we would have
>> > groupings of this, and perhaps the theorists can handle that. I mean,
>> > how is this much different that having a bunch of tasks blocked on a
>> > mutex with the owner is pinned on a CPU?
>> >
>> > migrate_disable() is a BKL of pinning affinity.  
>> 
>> No. That's just wrong. preempt disable is a concurrency control,
>
> I think you totally misunderstood what I was saying. The above wasn't about
> comparing preempt_disable to migrate_disable. It was comparing
> migrate_disable to a chain of tasks blocked on mutexes where the top owner
> has preempt_disable set. You still have a bunch of tasks that can't move to
> other CPUs.

What? The top owner does not prevent any task from moving. The tasks
cannot move because they are blocked on the mutex, which means they are
not runnable and non runnable tasks are not migrated at all.

I really don't understand what you are trying to say.

>> > If we only have local_lock() available (even on !RT), then it makes
>> > the blocking in groups. At least this way you could grep for all the
>> > different local_locks in the system and plug that into the algorithm
>> > for WCS, just like one would with a bunch of mutexes.  
>> 
>> You cannot do that on RT at all where migrate disable is substituting
>> preempt disable in spin and rw locks. The result would be the same as
>> with a !RT kernel just with horribly bad performance.
>
> Note, the spin and rwlocks already have a lock associated with them. Why
> would it be any different on RT? I wasn't suggesting adding another lock
> inside a spinlock. Why would I recommend THAT? I wasn't recommending
> blindly replacing migrate_disable() with local_lock(). I just meant expose
> local_lock() but not migrate_disable().

We already exposed local_lock() to non RT and it's for places which do
preempt_disable() or local_irq_disable() without having a lock
associated. But both primitives are scope less and therefore behave like
CPU local BKLs. What local_lock() provides in these cases is:

  - Making the protection scope clear by associating a named local
    lock which is coverred by lockdep.

  - It still maps to preempt_disable() or local_irq_disable() in !RT
    kernels

  - The scope and the named lock allows RT kernels to substitute with
    real (recursion aware) locking primitives which keep preemption and
    interupts enabled, but provide the fine grained protection for the
    scoped critical section.
  
So how would you substitute migrate_disable() with a local_lock()? You
can't. Again migrate_disable() is NOT a concurrency control and
therefore it cannot be substituted by any concurrency control primitive.

>> That means the stacking problem has to be solved anyway.
>> 
>> So why on earth do you want to create yet another special duct tape case
>> for kamp_local() which proliferates inconsistency instead of aiming for
>> consistency accross all preemption models?
>
> The idea was to help with the scheduling issue.

I don't see how mixing concepts and trying to duct tape a problem which
is clearly in the realm of the scheduler, i.e. load balancing and
placing algorithms, is helpful.

Thanks,

        tglx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
