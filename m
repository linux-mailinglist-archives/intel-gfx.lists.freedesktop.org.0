Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B6D270FC7
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Sep 2020 19:27:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAFB06E270;
	Sat, 19 Sep 2020 17:27:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com
 [IPv6:2a00:1450:4864:20::644])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7D3E6E270
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Sep 2020 17:27:19 +0000 (UTC)
Received: by mail-ej1-x644.google.com with SMTP id z22so12233466ejl.7
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Sep 2020 10:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=waM6UyKAxKjxaPuk1aOj7tJ5Pe/ksOuiXEzSSo1PI/U=;
 b=PDwKTi4lX9j7zg3G7WzPyBOHBiLdhmAgWRxWPWvYR/nEys9FVfUL6zNUVgG09pDixg
 o+e2DCxbAvOZN3jBhyrOMZPfygh9RU8mogp2HXrCoLkUWHRL8e1VK4NRvgzXaMsluBfo
 GR1BPuNqLZOfJqo2g/IqA9gl4eqzfpV+zOYak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=waM6UyKAxKjxaPuk1aOj7tJ5Pe/ksOuiXEzSSo1PI/U=;
 b=BlhNIwej7959flJ1HbGrywBCtBzwv6d99AX9jwDJ5d/g6p6bQkdxeywKxrwKrkWs8d
 a82XJD8I2CORjd02F5X0gPXjeY4r6BKz0JpE1unu151wL7ztnNmjFCY1kBhEPTu/XueP
 OsEKV/OxjVfxDS+ZLVo663SoWRdAxZGUMaPGWjDEoIPvVNeML5zUuS3oX0+AxFtk4eMs
 NQ5nQbD9PNq7dh2lf/6tTXFUGT3dAVxVAs99JQxZicH7cFEqxwTGjtp1KFQZFm/nfdaW
 QcSVQWjTxyoWaxm1Ew8vV7p2NKoQdrr9CMn4+VMomYv2ywU4eWjnVdVKf14xSIXC6V1V
 F7SQ==
X-Gm-Message-State: AOAM532xSfO75SZyNqHW/sKtNc9WyD6u3QfRDEi33kuUAfoi6oX+ueSS
 4IlHf1qQUFIOB/xPDiex2MymoHQtKghyHg==
X-Google-Smtp-Source: ABdhPJwn/Z2Vx7nytk22S9bHE7M+YGvLOxn3bmh2K4sQsx6kpggHiv0j8/an/IdYr0cjMx5W389JGg==
X-Received: by 2002:a17:906:b1d7:: with SMTP id
 bv23mr40216021ejb.464.1600536438192; 
 Sat, 19 Sep 2020 10:27:18 -0700 (PDT)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com.
 [209.85.208.43])
 by smtp.gmail.com with ESMTPSA id y9sm4779266ejw.96.2020.09.19.10.27.17
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 19 Sep 2020 10:27:18 -0700 (PDT)
Received: by mail-ed1-f43.google.com with SMTP id t16so9019483edw.7
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Sep 2020 10:27:17 -0700 (PDT)
X-Received: by 2002:a19:521a:: with SMTP id m26mr14134256lfb.133.1600535951025; 
 Sat, 19 Sep 2020 10:19:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200919091751.011116649@linutronix.de>
In-Reply-To: <20200919091751.011116649@linutronix.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 19 Sep 2020 10:18:54 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiYGyrFRbA1cc71D2-nc5U9LM9jUJesXGqpPnB7E4X1YQ@mail.gmail.com>
Message-ID: <CAHk-=wiYGyrFRbA1cc71D2-nc5U9LM9jUJesXGqpPnB7E4X1YQ@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
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

On Sat, Sep 19, 2020 at 2:50 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> this provides a preemptible variant of kmap_atomic & related
> interfaces. This is achieved by:

Ack. This looks really nice, even apart from the new capability.

The only thing I really reacted to is that the name doesn't make sense
to me: "kmap_temporary()" seems a bit odd.

Particularly for an interface that really is basically meant as a
better replacement of "kmap_atomic()" (but is perhaps also a better
replacement for "kmap()").

I think I understand how the name came about: I think the "temporary"
is there as a distinction from the "longterm" regular kmap(). So I
think it makes some sense from an internal implementation angle, but I
don't think it makes a lot of sense from an interface name.

I don't know what might be a better name, but if we want to emphasize
that it's thread-private and a one-off, maybe "local" would be a
better naming, and make it distinct from the "global" nature of the
old kmap() interface?

However, another solution might be to just use this new preemptible
"local" kmap(), and remove the old global one entirely. Yes, the old
global one caches the page table mapping and that sounds really
efficient and nice. But it's actually horribly horribly bad, because
it means that we need to use locking for them. Your new "temporary"
implementation seems to be fundamentally better locking-wise, and only
need preemption disabling as locking (and is equally fast for the
non-highmem case).

So I wonder if the single-page TLB flush isn't a better model, and
whether it wouldn't be a lot simpler to just get rid of the old
complex kmap() entirely, and replace it with this?

I agree we can't replace the kmap_atomic() version, because maybe
people depend on the preemption disabling it also implied. But what
about replacing the non-atomic kmap()?

Maybe I've missed something.  Is it because the new interface still
does "pagefault_disable()" perhaps?

But does it even need the pagefault_disable() at all? Yes, the
*atomic* one obviously needed it. But why does this new one need to
disable page faults?

[ I'm just reading the patches, I didn't try to apply them and look at
the end result, so I might have missed something ]

The only other worry I would have is just test coverage of this
change. I suspect very few developers use HIGHMEM. And I know the
various test robots don't tend to test 32-bit either.

But apart from that question about naming (and perhaps replacing
kmap() entirely), I very much like it.

                        Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
