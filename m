Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A44269765
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 23:07:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC3DC6E5C5;
	Mon, 14 Sep 2020 21:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com
 [IPv6:2a00:1450:4864:20::642])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A2786E5C5
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 21:07:11 +0000 (UTC)
Received: by mail-ej1-x642.google.com with SMTP id e23so1979551eja.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 14:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9Qs78FMzlt+im4GrVUJu3esmNYK1MSMDWWoqgBiwThs=;
 b=ERO6mM2HDltE439vWz9d9wZL1Z1US74Rep2fFSqw78LuIb7lPia7EGvlr1OC0CVjXq
 SMHEUg44TyaQk6ZJLSPy2HsSiKOu/iozCQgjKu5X4wpxZiRqxlsnhy+mopIISbxgK1FP
 TMlpT1uLwxNI5kovsL0EwxutKi15MuXbWCbt0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9Qs78FMzlt+im4GrVUJu3esmNYK1MSMDWWoqgBiwThs=;
 b=lpvlRNcD/qgM5LAlNqTjb0Zxi8IcKsfjq3qcxpseqp6GyRypmvgXepbXHoVgRVLofU
 5NaYSI9oEGo2EbfIHybPSTxhBmWg6GPy8+PgCYw2TQrAXh2Das4YBsLD6WITml4aWLEI
 pugoNwQptOBCzadSzo6qEnTzZPeC17KkvVINBjf15+cqAWLJPAy2Fa1ceLAztIStJPOf
 kwJTlrYCyO37Xqf0t8Lrr/5czut22TM83L1S85XvIeGU4FzNsMA9zchoikszfh2IIsCs
 3uTyBp3Jl2ArplO/HkUOuEgivieDJelsxcGhT6giOq5ZCXZzg2vYs8HuganeW8ADn+fx
 kWXg==
X-Gm-Message-State: AOAM532oddCbt4anZCj1I+4AflJCZe0yiDKcd86ZBU8zlohhD8g62ffX
 HlW4bJbWOCukmOceV3/eyWZgI/kK1W7uvQ==
X-Google-Smtp-Source: ABdhPJzxtrbtvXbBp87jpJzjdXR38TWqoRSXeyJ8ydBpyheglxV6zjtBW9ZjUtLiDEmMbidOzIHTAA==
X-Received: by 2002:a17:906:4993:: with SMTP id
 p19mr17269494eju.277.1600117629478; 
 Mon, 14 Sep 2020 14:07:09 -0700 (PDT)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com.
 [209.85.208.51])
 by smtp.gmail.com with ESMTPSA id l21sm8663683ejg.124.2020.09.14.14.07.09
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Sep 2020 14:07:09 -0700 (PDT)
Received: by mail-ed1-f51.google.com with SMTP id g4so1002893edk.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 14:07:09 -0700 (PDT)
X-Received: by 2002:a2e:91cd:: with SMTP id u13mr5091065ljg.421.1600117171599; 
 Mon, 14 Sep 2020 13:59:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200914204209.256266093@linutronix.de>
In-Reply-To: <20200914204209.256266093@linutronix.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 14 Sep 2020 13:59:15 -0700
X-Gmail-Original-Message-ID: <CAHk-=win80rdof8Pb=5k6gT9j_v+hz-TQzKPVastZDvBe9RimQ@mail.gmail.com>
Message-ID: <CAHk-=win80rdof8Pb=5k6gT9j_v+hz-TQzKPVastZDvBe9RimQ@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
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

On Mon, Sep 14, 2020 at 1:45 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Recently merged code does:
>
>          gfp = preemptible() ? GFP_KERNEL : GFP_ATOMIC;
>
> Looks obviously correct, except for the fact that preemptible() is
> unconditionally false for CONFIF_PREEMPT_COUNT=n, i.e. all allocations in
> that code use GFP_ATOMIC on such kernels.

I don't think this is a good reason to entirely get rid of the no-preempt thing.

The above is just garbage. It's bogus. You can't do it.

Blaming the no-preempt code for this bug is extremely unfair, imho.

And the no-preempt code does help make for much better code generation
for simple spinlocks.

Where is that horribly buggy recent code? It's not in that exact
format, certainly, since 'grep' doesn't find it.

             Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
