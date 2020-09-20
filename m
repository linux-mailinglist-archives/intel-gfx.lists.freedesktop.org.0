Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3192712FA
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Sep 2020 10:49:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AD498966B;
	Sun, 20 Sep 2020 08:49:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 146F18966B;
 Sun, 20 Sep 2020 08:49:23 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1600591762;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yl4SJva1ZaL/QSosb5XX7oiMR9yOUZ2hryRMeN6gUOs=;
 b=h8jv+yltDHIngnBBGJjPbxbwRp4WWvfUYCE010JZcD8mxV4UaeO8dLdDu13Q2cG+LY8JOQ
 h6npHbPhilGj3v1VUqWxvnxWjS/ksALdSUA+5C9fXgz9TR+62SaZPqFm9CDQlxwGmO5sxH
 Og/nMSeW9my8zlDQTOZZtLu/e9zkMmPgdx5NK5E8Rcfn4iS1ni7EpBlci97FKZLWMkER3O
 +JFJopKrMaT622cTfw+fq7PTs6AJTMpiNhuh5DlxWwRcA1+vumWCIqGRFavPq8Rwh2wOji
 LMGpm7pbhOs/2HMUMaIGkJEZas3RBbG5QRgXaIHLQPqkcnXaia1X2M3U1G452Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1600591762;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yl4SJva1ZaL/QSosb5XX7oiMR9yOUZ2hryRMeN6gUOs=;
 b=ZMmhQ6D75ka6LNiomg7OC2DwIv8yEqOFqmHU4LlJlX/duWyJlSPDqvfBsTbUq7MYp5KhFm
 dW4ZRnByLA6ZBcCQ==
To: Linus Torvalds <torvalds@linux-foundation.org>
In-Reply-To: <87mu1lc5mp.fsf@nanos.tec.linutronix.de>
References: <20200919091751.011116649@linutronix.de>
 <CAHk-=wiYGyrFRbA1cc71D2-nc5U9LM9jUJesXGqpPnB7E4X1YQ@mail.gmail.com>
 <87mu1lc5mp.fsf@nanos.tec.linutronix.de>
Date: Sun, 20 Sep 2020 10:49:21 +0200
Message-ID: <87k0wode9a.fsf@nanos.tec.linutronix.de>
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

On Sun, Sep 20 2020 at 08:41, Thomas Gleixner wrote:
> On Sat, Sep 19 2020 at 10:18, Linus Torvalds wrote:
>> Maybe I've missed something.  Is it because the new interface still
>> does "pagefault_disable()" perhaps?
>>
>> But does it even need the pagefault_disable() at all? Yes, the
>> *atomic* one obviously needed it. But why does this new one need to
>> disable page faults?
>
> It disables pagefaults because it can be called from atomic and
> non-atomic context. That was the point to get rid of
>
>          if (preeemptible())
>          	kmap();
>          else
>                 kmap_atomic();
>
> If it does not disable pagefaults, then it's just a lightweight variant
> of kmap() for short lived mappings.

Actually most usage sites of kmap atomic do not need page faults to be
disabled at all. As Daniel pointed out the implicit pagefault disable
enforces copy_from_user_inatomic() even in places which are clearly
preemptible task context.

As we need to look at each instance anyway we can add the PF disable
explicitely to the very few places which actually need it.

Thanks,

        tglx

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
