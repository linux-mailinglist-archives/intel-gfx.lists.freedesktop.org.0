Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FE52723CB
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 14:22:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9207C6E07F;
	Mon, 21 Sep 2020 12:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E67789257;
 Mon, 21 Sep 2020 06:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Tci2tqg3leIbmrKKmdytiLIb3svt+yq3AUhipK0JnoY=; b=eHeD509SDxyAiHGiTwo9U9RK6O
 BdV0ol0+bUl0JcuR4cH5K4iJppCvrjMC+FXmd1lF9otzHdHbgaqWCPBbYEVccspM4hNb0ELFrDX41
 s330N9PwkKFmY1+L4xtZqC6TuuZXPpHTsXwNy2mxRh6hHZxeOvX7QA3hIrIh11xqjXXtgY0KOrH1g
 TAa/FH4UUQzLwOqDXwmFk20iXdkTE1C5bNJ47X+kA8GBuFsMKdIwnr8VE2F05aYZUn3BWrCVUA/8S
 mbIk+BpzsIVAf7vJcwgjD0vdvWTXz3H9YwI8DG/vud/142FwM17JAPgxfqgTAucNSaDR8ooXWbNYe
 L6UrCpkA==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kKFJD-0000eG-TH; Mon, 21 Sep 2020 06:28:19 +0000
Date: Mon, 21 Sep 2020 07:28:19 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20200921062819.GB32081@infradead.org>
References: <20200919091751.011116649@linutronix.de>
 <20200919092615.990731525@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200919092615.990731525@linutronix.de>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Mon, 21 Sep 2020 12:22:02 +0000
Subject: Re: [Intel-gfx] [patch RFC 02/15] highmem: Provide generic variant
 of kmap_atomic*
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
 Guo Ren <guoren@kernel.org>, sparclinux@vger.kernel.org,
 Vincent Chen <deanbo422@gmail.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arch@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-csky@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Mel Gorman <mgorman@suse.de>,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Paul McKenney <paulmck@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, linuxppc-dev@lists.ozlabs.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
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

> +# ifndef ARCH_NEEDS_KMAP_HIGH_GET
> +static inline void *arch_kmap_temporary_high_get(struct page *page)
> +{
> +	return NULL;
> +}
> +# endif

Turn this into a macro and use #ifndef on the symbol name?

> +static inline void __kunmap_atomic(void *addr)
> +{
> +	kumap_atomic_indexed(addr);
> +}
> +
> +
> +#endif /* CONFIG_KMAP_ATOMIC_GENERIC */

Stange double empty line above the endif.

> -#define kunmap_atomic(addr)                                     \
> -do {                                                            \
> -	BUILD_BUG_ON(__same_type((addr), struct page *));       \
> -	kunmap_atomic_high(addr);                                  \
> -	pagefault_enable();                                     \
> -	preempt_enable();                                       \
> -} while (0)
> -
> +#define kunmap_atomic(addr)						\
> +	do {								\
> +		BUILD_BUG_ON(__same_type((addr), struct page *));	\
> +		__kunmap_atomic(addr);					\
> +		preempt_enable();					\
> +	} while (0)

Why the strange re-indent to a form that is much less common and less
readable?

> +void *kmap_atomic_pfn_prot(unsigned long pfn, pgprot_t prot)
> +{
> +	pagefault_disable();
> +	return __kmap_atomic_pfn_prot(pfn, prot);
> +}
> +EXPORT_SYMBOL(kmap_atomic_pfn_prot);

The existing kmap_atomic_pfn & co implementation is EXPORT_SYMBOL_GPL,
and this stuff should preferably stay that way.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
