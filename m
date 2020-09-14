Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AC82698E1
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 00:33:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2DA16E7DA;
	Mon, 14 Sep 2020 22:33:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B07D96E7D9
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 22:33:23 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id n25so1076219ljj.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 15:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FYq5Ck3jxQlGA/9U/OgNyRBwFyvhqjGeOq2xChwQGbM=;
 b=XFttBOpQLvqvIRVeSi6uJbTlvU6SlD5mRsF0dJOTawed/ahybFXu96kFFWmQERfAs5
 uWk/oLz9DrNGHszMiHMxoNqcLliSwLYwqi8cuttKuqm5YKsnPsoT05HyVh7UvUs3bSkf
 Wa6vYuwCrOJ+5ggzCPNzgdilcNNnHeeOAvJeA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FYq5Ck3jxQlGA/9U/OgNyRBwFyvhqjGeOq2xChwQGbM=;
 b=bG89ABzXo7VhTn7pcqqTMKSG0+fqGJrGlKdS+m59Z33t2clBYblvwXKzKP5ynBAAaV
 s9PcUScYGDR9sw3RoGK7zcHFpNXpwoxdg+7NEK4VBhO1tweZxla6aZp1nnXNu5B3bFtW
 C8h6h03QrVC3K+urdX5EIbNDfE+ZmiHJCRZR6X3h5R3BECHCATfIjOJ+LpzXD+xzRazQ
 okrA2Fu2Vo91oF+4LNN3++1eLdze5RksuYwb61NlDR2bv4s5adtV1zA7UCcK30Q5207T
 Zk42alK98L1TbRzsYDbyGxjfvzrv0zvWK1VcvOqLHWg7WlBLnqMDzga4gZqdik9Ln+bv
 9iOg==
X-Gm-Message-State: AOAM5337kSFkS2GDSRuGLZojm7JaxOIoZ5e/98Adc4VjyRb/o8e5//Ag
 v8mH1Fk4QkisDkk3NZHmW/zZd9vjCz9Uyw==
X-Google-Smtp-Source: ABdhPJxq2NwRqVPiZNB+e6jtNDJSB1VGZj9KHjnkGs4bfnGl8njcKZcUSCKXPGDHdcZ7uUvMZIuNhw==
X-Received: by 2002:a05:651c:1352:: with SMTP id
 j18mr5322723ljb.343.1600122801769; 
 Mon, 14 Sep 2020 15:33:21 -0700 (PDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com.
 [209.85.167.52])
 by smtp.gmail.com with ESMTPSA id b13sm3964121lfa.92.2020.09.14.15.33.21
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Sep 2020 15:33:21 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id x69so1007579lff.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 15:33:21 -0700 (PDT)
X-Received: by 2002:a2e:91cd:: with SMTP id u13mr5174538ljg.421.1600122308748; 
 Mon, 14 Sep 2020 15:25:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200914204209.256266093@linutronix.de>
 <CAHk-=win80rdof8Pb=5k6gT9j_v+hz-TQzKPVastZDvBe9RimQ@mail.gmail.com>
 <871rj4owfn.fsf@nanos.tec.linutronix.de>
In-Reply-To: <871rj4owfn.fsf@nanos.tec.linutronix.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 14 Sep 2020 15:24:52 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj0eUuVQ=hRFZv_nY7g5ZLt7Fy3K7SMJL0ZCzniPtsbbg@mail.gmail.com>
Message-ID: <CAHk-=wj0eUuVQ=hRFZv_nY7g5ZLt7Fy3K7SMJL0ZCzniPtsbbg@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ard Biesheuvel <ardb@kernel.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>
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
 Linux-MM <linux-mm@kvack.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 linux-hexagon@vger.kernel.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-arch <linux-arch@vger.kernel.org>, Brian Cain <bcain@codeaurora.org>,
 Richard Weinberger <richard@nod.at>, Russell King <linux@armlinux.org.uk>,
 David Airlie <airlied@linux.ie>, Ingo Molnar <mingo@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mel Gorman <mgorman@suse.de>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, Matt Turner <mattst88@gmail.com>,
 Valentin Schneider <valentin.schneider@arm.com>, linux-xtensa@linux-xtensa.org,
 Shuah Khan <shuah@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 Josh Triplett <josh@joshtriplett.org>, Steven Rostedt <rostedt@goodmis.org>,
 rcu@vger.kernel.org, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
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

On Mon, Sep 14, 2020 at 2:55 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Yes it does generate better code, but I tried hard to spot a difference
> in various metrics exposed by perf. It's all in the noise and I only
> can spot a difference when the actual preemption check after the
> decrement

I'm somewhat more worried about the small-device case.

That said, the diffstat certainly has its very clear charm, and I do
agree that it makes things simpler.

I'm just not convinced people should ever EVER do things like that "if
(preemptible())" garbage. It sounds like somebody is doing seriously
bad things.

The chacha20poly1305 code does look fundamentally broken. But no, the
fix is not to make "preemptible" work with spinlocks, the fix is to
not *do* that kind of broken things.

Those things would be broken even if you changed the semantics of
preemptible. There's no way that it's valid to say "use this debug
flag to decide if we should do atomic allocations or not".

It smells like "I got a debug failure, so I'm papering it over by
checking the thing the debug code checks for".

The debug check is to catch the obvious bad cases. It's not the _only_
bad cases, so copying the debug check test is just completely wrong.

Ard and Herbert added to participants: see
chacha20poly1305_crypt_sg_inplace(), which does

        flags = SG_MITER_TO_SG;
        if (!preemptible())
                flags |= SG_MITER_ATOMIC;

introduced in commit d95312a3ccc0 ("crypto: lib/chacha20poly1305 -
reimplement crypt_from_sg() routine").

You *fundamentally* cannot do that. Seriously. It's completely wrong.
Pick one or the other, or have the caller *tell* you what the context
is.

                Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
