Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49ECE275A2A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 16:33:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0DA76E9BC;
	Wed, 23 Sep 2020 14:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B596E9BC;
 Wed, 23 Sep 2020 14:33:21 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1600871599;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=htFCLJWsNhxoKbCNWhQS/6Kyz86LUNNWBiBq6qkBFyQ=;
 b=pA5Hd7/wYPJW36CTtNNTbOYCzRvXBsTbhCHBjjmQZ01hpagIyv/VcnxLW17kJqMxHoJumz
 z5+hv3BrOqb8U7x+bnWe3Vg7hjpdsIzhk0Jj3S1z+5+winumEs8KsUyf1K1TnGwBajSWcB
 LPdDuPzlUY6BQkUL/KCzLAeEkhIHNDaswPGDWAOJny+dzcHlZahNl7c2FSd1xp6gP0rEgj
 KzUlj0Dxhw0txRUSLaqWlErEiWSU9Sozf2/yRD5Qwp08ro8Q2KjAE/20gQBa42apztEBT8
 SUzGb5WlY8s1AJc0khV/84NW02EhLXtT8nMIfQBdpZd1EmcFI7Hj8Ky6D6u98A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1600871599;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=htFCLJWsNhxoKbCNWhQS/6Kyz86LUNNWBiBq6qkBFyQ=;
 b=qGRiwr69/8k8ntlbQpv0icecJVUI4PbZN1b5MTw/xOk+gHpAMJmHhEqUxn40L21XWDImxq
 PUiJwewr0xn47MAg==
To: Linus Torvalds <torvalds@linux-foundation.org>
In-Reply-To: <87sgbbaq0y.fsf@nanos.tec.linutronix.de>
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
Date: Wed, 23 Sep 2020 16:33:19 +0200
Message-ID: <877dska7gw.fsf@nanos.tec.linutronix.de>
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
Cc: Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
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
 Steven Rostedt <rostedt@goodmis.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Nick Hu <nickhu@andestech.com>, Linux-MM <linux-mm@kvack.org>,
 Vineet Gupta <vgupta@synopsys.com>, LKML <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Paul Mackerras <paulus@samba.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Daniel Bristot de Oliveira <bristot@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Greentime Hu <green.hu@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 21 2020 at 21:27, Thomas Gleixner wrote:
> On Mon, Sep 21 2020 at 09:24, Linus Torvalds wrote:
>> On Mon, Sep 21, 2020 at 12:39 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>> Maybe we really *could* call this new kmap functionality something
>> like "kmap_percpu()" (or maybe "local" is good enough), and make it
>> act like your RT code does for spinlocks - not disable preemption, but
>> only disabling CPU migration.
>
> I"m all for it, but the scheduler people have opinions :)

I just took the latest version of migrate disable patches

  https://lore.kernel.org/r/20200921163557.234036895@infradead.org

removed the RT dependency on top of them and adopted the kmap stuff
(addressing the various comments while at it and unbreaking ARM).

I'm not going to post that until there is consensus about the general
availability of migrate disable, but for those who want to play with it
I've pushed the resulting combo out to:

   git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git highmem 

For testing I've tweaked a few places to use the new _local() variants
and it survived testing so far and I've verified that there is actual
preemption which means zap/restore of the thread local kmaps.

Thanks,

        tglx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
