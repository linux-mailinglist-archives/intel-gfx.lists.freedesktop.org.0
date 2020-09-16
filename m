Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2173726CE24
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 23:10:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 212D16EB36;
	Wed, 16 Sep 2020 21:10:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CA246EA2E;
 Wed, 16 Sep 2020 15:29:57 +0000 (UTC)
Received: from paulmck-ThinkPad-P72.home (unknown [50.45.173.55])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B64F12245B;
 Wed, 16 Sep 2020 15:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600270196;
 bh=7NyPhCsJFe+XnywOE0R6a34Zb8JkKakmIMyfHGRY4M4=;
 h=Date:From:To:Cc:Subject:Reply-To:References:In-Reply-To:From;
 b=RDn2wViv7vu9hmTmpsb1bbpxLvCuo/SWaPWp9V1mUJjTgcbrPb3R9uT93osWEIaEM
 9afuPUPWLKufiQ8ziF9Odhp5i1jimAe0xZ86J+gr+sITpv+bXYsBTi2jsiSuqu37hP
 IQWviNGI8iEhKKuiZkBJY1pWiLjStFx1TIayKIP0=
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
 id 4FBEC3522836; Wed, 16 Sep 2020 08:29:56 -0700 (PDT)
Date: Wed, 16 Sep 2020 08:29:56 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20200916152956.GV29330@paulmck-ThinkPad-P72>
References: <20200914204209.256266093@linutronix.de>
 <CAHk-=win80rdof8Pb=5k6gT9j_v+hz-TQzKPVastZDvBe9RimQ@mail.gmail.com>
 <871rj4owfn.fsf@nanos.tec.linutronix.de>
 <CAHk-=wj0eUuVQ=hRFZv_nY7g5ZLt7Fy3K7SMJL0ZCzniPtsbbg@mail.gmail.com>
 <87bli75t7v.fsf@nanos.tec.linutronix.de>
 <CAHk-=wht7kAeyR5xEW2ORj7m0hibVxZ3t+2ie8vNHLQfdbN2_g@mail.gmail.com>
 <CAKMK7uHAk9-Vy2cof0ws=DrcD52GHiCDiyHbjLd19CgpBU2rKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uHAk9-Vy2cof0ws=DrcD52GHiCDiyHbjLd19CgpBU2rKQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Approved-At: Wed, 16 Sep 2020 21:10:25 +0000
Subject: Re: [Intel-gfx] [patch 00/13] preempt: Make preempt count
 unconditional
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
Reply-To: paulmck@kernel.org
Cc: Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Lai Jiangshan <jiangshanlai@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Ben Segall <bsegall@google.com>,
 Linux-MM <linux-mm@kvack.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 linux-hexagon@vger.kernel.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Brian Cain <bcain@codeaurora.org>,
 Richard Weinberger <richard@nod.at>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, David Airlie <airlied@linux.ie>,
 Ingo Molnar <mingo@redhat.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mel Gorman <mgorman@suse.de>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matt Turner <mattst88@gmail.com>,
 Valentin Schneider <valentin.schneider@arm.com>, linux-xtensa@linux-xtensa.org,
 Shuah Khan <shuah@kernel.org>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>, Josh Triplett <josh@joshtriplett.org>,
 Steven Rostedt <rostedt@goodmis.org>, rcu@vger.kernel.org,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>, Chris Zankel <chris@zankel.net>,
 Max Filippov <jcmvbkbc@gmail.com>,
 Daniel Bristot de Oliveira <bristot@redhat.com>,
 LKML <linux-kernel@vger.kernel.org>, alpha <linux-alpha@vger.kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 16, 2020 at 09:37:17AM +0200, Daniel Vetter wrote:
> On Tue, Sep 15, 2020 at 7:35 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > On Tue, Sep 15, 2020 at 1:39 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> > >
> > > OTOH, having a working 'preemptible()' or maybe better named
> > > 'can_schedule()' check makes tons of sense to make decisions about
> > > allocation modes or other things.
> >
> > No. I think that those kinds of decisions about actual behavior are
> > always simply fundamentally wrong.
> >
> > Note that this is very different from having warnings about invalid
> > use. THAT is correct. It may not warn in all configurations, but that
> > doesn't matter: what matters is that it warns in common enough
> > configurations that developers will catch it.
> >
> > So having a warning in "might_sleep()" that doesn't always trigger,
> > because you have a limited configuration that can't even detect the
> > situation, that's fine and dandy and intentional.
> >
> > But having code like
> >
> >        if (can_schedule())
> >            .. do something different ..
> >
> > is fundamentally complete and utter garbage.
> >
> > It's one thing if you test for "am I in hardware interrupt context".
> > Those tests aren't great either, but at least they make sense.
> >
> > But a driver - or some library routine - making a difference based on
> > some nebulous "can I schedule" is fundamentally and basically WRONG.
> >
> > If some code changes behavior, it needs to be explicit to the *caller*
> > of that code.
> >
> > So this is why GFP_ATOMIC is fine, but "if (!can_schedule())
> > do_something_atomic()" is pure shite.
> >
> > And I am not IN THE LEAST interested in trying to help people doing
> > pure shite. We need to fix them. Like the crypto code is getting
> > fixed.
> 
> Just figured I'll throw my +1 in from reading too many (gpu) drivers.
> Code that tries to cleverly adjust its behaviour depending upon the
> context it's running in is harder to understand and blows up in more
> interesting ways. We still have drm_can_sleep() and it's mostly just
> used for debug code, and I've largely ended up just deleting
> everything that used it because when you're driver is blowing up the
> last thing you want is to realize your debug code and output can't be
> relied upon. Or worse, that the only Oops you have is the one in the
> debug code, because the real one scrolled away - the original idea
> behind drm_can_sleep was to make all the modeset code work
> automagically both in normal ioctl/kworker context and in the panic
> handlers or kgdb callbacks. Wishful thinking at best.
> 
> Also at least for me that extends to everything, e.g. I much prefer
> explicit spin_lock and spin_lock_irq vs magic spin_lock_irqsave for
> locks shared with interrupt handlers, since the former two gives me
> clear information from which contexts such function can be called.
> Other end is the memalloc_no*_save/restore functions, where I recently
> made a real big fool of myself because I didn't realize how much that
> impacts everything that's run within - suddenly "GFP_KERNEL for small
> stuff never fails" is wrong everywhere.
> 
> It's all great for debugging and sanity checks (and we run with all
> that stuff enabled in our CI), but really semantic changes depending
> upon magic context checks freak my out :-)

All fair, but some of us need to write code that must handle being
invoked from a wide variety of contexts.  Now perhaps you like the idea of
call_rcu() for schedulable contexts, call_rcu_nosched() when preemption
is disabled, call_rcu_irqs_are_disabled() when interrupts are disabled,
call_rcu_raw_atomic() from contexts where (for example) raw spinlocks
are held, and so on.  However, from what I can see, most people instead
consistently prefer that the RCU API instead be consolidated.

Some in-flight cache-efficiency work for kvfree_rcu() and call_rcu()
needs to be able to allocate memory occasionally.  It can do that when
invoked from some contexts, but not when invoked from others.  Right now,
in !PREEMPT kernels, it cannot tell, and must either do things to the
memory allocators that some of the MM hate or must unnecessarily invoke
workqueues.  Thomas's patches would allow the code to just allocate in
the common case when these primitives are invoked from contexts where
allocation is permitted.

If we want to restrict access to the can_schedule() or whatever primitive,
fine and good.  We can add a check to checkpatch.pl, for example.  Maybe
we can go back to the old brlock approach of requiring certain people's
review for each addition to the kernel.

But there really are use cases that it would greatly help.

							Thanx, Paul
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
