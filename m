Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1644269EAF
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 08:39:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D5586E83A;
	Tue, 15 Sep 2020 06:39:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com
 [IPv6:2a00:1450:4864:20::642])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E5E06E83A
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 06:39:36 +0000 (UTC)
Received: by mail-ej1-x642.google.com with SMTP id p9so3360187ejf.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 23:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7AZvvtnOCrBJ0y7Ea7nJQgHCW8PeMBJ8MoPUyYrAJro=;
 b=Gqovwkb5A8FW/jwlWWxLLQ/avI7lnDibBgUBcgb3YHy5ole3D6O2HF9xebthy2Sa7D
 pdxdxxmQzGYxo9HEtGYBgkQkdY49pjUNwIF0aUEETd48RydGVCxehC4UHZ1aoiJMH2WY
 rTXUOrEKNo5NyWYCWs4UE3XuCPJLSnSLauj5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7AZvvtnOCrBJ0y7Ea7nJQgHCW8PeMBJ8MoPUyYrAJro=;
 b=joCqNrO2dOef0YJIrgH6GZ1zKeDUm6YEAM89QrX13LkoAtFspYpr7ol781zyGdHTXo
 zQm/7YgjxQdorBIpWBEs++rrP1hNbkMYxADHtOb8P6DPyJQcG/uvI9n5/Kz77OAnBOOU
 bBfYKzzG5PvGi3i0JE12MNh5BYdEmROoAEljEMMZSNEhufTjza8YVhltfwciYvlsIncI
 +f6CFJed19IAnvtjotJzBUApl1wv1h7LhLFwDDh62p/NLc5Z2meLwhVWHr80+vTAJQln
 7zxHkXUUfH0RoQUqjuoVaQijts+Ya8/S8ZA5YHCaKEksgUQDeGaBQnD5z0ZGsx6djeDt
 cZ+Q==
X-Gm-Message-State: AOAM5309QDAtYDSqimkA9I7TKb9XYU/UOEbvp4lQpu0LkU5x1pScb6SF
 nj9NqCEL9G6baLLdwwsiHLDhsqAJhmEVjg==
X-Google-Smtp-Source: ABdhPJzdui1w89HhnhRLxCVYJZB38hm0S/WzsELTW73J43lD8iYyMaUXLSQ39jl5/25nOQvp6vbnAA==
X-Received: by 2002:a17:906:1e11:: with SMTP id
 g17mr17474053ejj.298.1600151974337; 
 Mon, 14 Sep 2020 23:39:34 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com.
 [209.85.221.49])
 by smtp.gmail.com with ESMTPSA id p17sm3783892edw.10.2020.09.14.23.39.32
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Sep 2020 23:39:33 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id e16so2023784wrm.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 23:39:32 -0700 (PDT)
X-Received: by 2002:a19:8907:: with SMTP id l7mr5566265lfd.105.1600151970683; 
 Mon, 14 Sep 2020 23:39:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200914204209.256266093@linutronix.de>
 <CAHk-=win80rdof8Pb=5k6gT9j_v+hz-TQzKPVastZDvBe9RimQ@mail.gmail.com>
 <871rj4owfn.fsf@nanos.tec.linutronix.de>
 <CAHk-=wj0eUuVQ=hRFZv_nY7g5ZLt7Fy3K7SMJL0ZCzniPtsbbg@mail.gmail.com>
 <CAHk-=wjOV6f_ddg+QVCF6RUe+pXPhSR2WevnNyOs9oT+q2ihEA@mail.gmail.com>
 <CAMj1kXHrDU50D08TwLfzz2hCK+8+C7KGPF99PphXtsOYZ-ff1g@mail.gmail.com>
 <20200915062253.GA26275@gondor.apana.org.au>
In-Reply-To: <20200915062253.GA26275@gondor.apana.org.au>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 14 Sep 2020 23:39:14 -0700
X-Gmail-Original-Message-ID: <CAHk-=wir6LZ=4gHt8VDdASv=TmEMjEUONuzbt=s+DyXPCvxaBA@mail.gmail.com>
Message-ID: <CAHk-=wir6LZ=4gHt8VDdASv=TmEMjEUONuzbt=s+DyXPCvxaBA@mail.gmail.com>
To: Herbert Xu <herbert@gondor.apana.org.au>
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
Cc: Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Lai Jiangshan <jiangshanlai@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Ben Segall <bsegall@google.com>,
 Linux-MM <linux-mm@kvack.org>, linux-hexagon@vger.kernel.org,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-arch <linux-arch@vger.kernel.org>, Brian Cain <bcain@codeaurora.org>,
 Richard Weinberger <richard@nod.at>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, David Airlie <airlied@linux.ie>,
 Ingo Molnar <mingo@redhat.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mel Gorman <mgorman@suse.de>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matt Turner <mattst88@gmail.com>,
 Valentin Schneider <valentin.schneider@arm.com>, linux-xtensa@linux-xtensa.org,
 Shuah Khan <shuah@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 Josh Triplett <josh@joshtriplett.org>, Steven Rostedt <rostedt@goodmis.org>,
 rcu@vger.kernel.org, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>, Chris Zankel <chris@zankel.net>,
 Max Filippov <jcmvbkbc@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Daniel Bristot de Oliveira <bristot@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 14, 2020 at 11:24 PM Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> On Tue, Sep 15, 2020 at 09:20:59AM +0300, Ard Biesheuvel wrote:
> >
> > The documentation of kmap_atomic() states the following:
> >
> >  * The use of kmap_atomic/kunmap_atomic is discouraged - kmap/kunmap
> >  * gives a more generic (and caching) interface. But kmap_atomic can
> >  * be used in IRQ contexts, so in some (very limited) cases we need
> >  * it.
> >
> > so if this is no longer accurate, perhaps we should fix it?
>
> This hasn't been accurate for at least ten years :)

Yeah, that used to be true a long long time ago, but the comment is very stale.

> > But another reason I tried to avoid kmap_atomic() is that it disables
> > preemption unconditionally, even on 64-bit architectures where HIGHMEM
> > is irrelevant. So using kmap_atomic() here means that the bulk of
> > WireGuard packet encryption runs with preemption disabled, essentially
> > for legacy reasons.
>
> Agreed.  We should definitely fix that.

Well, honestly, one big reason for that is debugging.

The *semantics* of the kmap_atomic() is in the name - you can't sleep
in between it and the kunmap_atomic().

On any sane architecture, kmap_atomic() ends up being a no-op from an
implementation standpoint, and sleeping would work just fine.

But we very much want to make sure that people don't then write code
that doesn't work on the bad old 32-bit machines where it really needs
that sequence to be safe from preemption.

So it's mostly a debug thing.

I say "mostly", because there might be small other details too, like
shared code, and perhaps even a couple of users out in the wild that
depend on the pagefault_disable() inherent in the current
kmap_atomic(), who knows..

So no, the preemption disabling isn't inherent in the operation
itself. But it does have some argument for it.

                   Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
