Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E15272C35
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 18:30:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D86FA6E4FE;
	Mon, 21 Sep 2020 16:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A22B6E4FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 16:30:21 +0000 (UTC)
Received: by mail-lf1-x142.google.com with SMTP id w11so14754959lfn.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 09:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LbpMl5lO0+qWgp9uAKdYj5ux1bx38Si35gqGXl7ChFs=;
 b=a2Cw4ka1cjcNejUhLUZAAjSLNoYelCoyZSpmQCatftbiLw5qTc+pZIam7CQ+bzySoC
 gGOBNlZFILF1rbb13VR5vHbBB6o7IPhfhEtjuIQ55GiefDbPErJYqMNF7ag3KHBM9T1M
 Z1SXFFsw84dXXtq0Bg7SO0KF3jcdxFjvGihOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LbpMl5lO0+qWgp9uAKdYj5ux1bx38Si35gqGXl7ChFs=;
 b=NEVKYxpbiZ7zS/Sa8rqeG9PhSs0R+adtc1NICmjcBqvJojnc/QyQpOG1/lnW3KvUsQ
 q5SOxBp1j31jkp62oWXrPimTr+lQV4KlQk93Eh4JbCp0iNsmXVZBwcQ+Ayxu9bMmszoL
 eX7d8Q/bTViiwKbtqHCc0KQDCmtfOVR1BhFiqcBi27lFqBtuVB5SJRLQOZRAAr5k45J4
 lJfgZmZODZUm0zJdiku4PZchnBGfChBCmyHHKJF8WGRfTZ+B8FDmXWd7O2HScKscP4gf
 B2EZmHtBOR836Bjgtxn187R5jPf6K2RefHGyCi7UoqdKSD4SV27G3zHFUmLe+wwVdoEI
 yK+A==
X-Gm-Message-State: AOAM533UagFmUgX2ueHmmSO1bY1xocDUiUOrdfFdIGbbBnUyhE8Kv3R1
 I1XOVS+XZRfvCZ7ML8eWC+bBqRKs7KgHmA==
X-Google-Smtp-Source: ABdhPJwdbl0KeVhhFH5eGGXfR7Mrg7UJfK6Uxkjlj4RqYPxk1T7J6B9Nc5LhWRWLA8KsbxrxuIuDQg==
X-Received: by 2002:ac2:54b4:: with SMTP id w20mr258036lfk.13.1600705819547;
 Mon, 21 Sep 2020 09:30:19 -0700 (PDT)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com.
 [209.85.167.51])
 by smtp.gmail.com with ESMTPSA id u2sm1933571lff.255.2020.09.21.09.30.19
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Sep 2020 09:30:19 -0700 (PDT)
Received: by mail-lf1-f51.google.com with SMTP id z19so14745778lfr.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 09:30:19 -0700 (PDT)
X-Received: by 2002:a2e:994a:: with SMTP id r10mr154392ljj.102.1600705501870; 
 Mon, 21 Sep 2020 09:25:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200919091751.011116649@linutronix.de>
 <CAHk-=wiYGyrFRbA1cc71D2-nc5U9LM9jUJesXGqpPnB7E4X1YQ@mail.gmail.com>
 <87mu1lc5mp.fsf@nanos.tec.linutronix.de>
 <87k0wode9a.fsf@nanos.tec.linutronix.de>
 <CAHk-=wgbmwsTOKs23Z=71EBTrULoeaH2U3TNqT2atHEWvkBKdw@mail.gmail.com>
 <87eemwcpnq.fsf@nanos.tec.linutronix.de>
 <CAHk-=wgF-upZVpqJWK=TK7MS9H-Rp1ZxGfOG+dDW=JThtxAzVQ@mail.gmail.com>
 <87a6xjd1dw.fsf@nanos.tec.linutronix.de>
In-Reply-To: <87a6xjd1dw.fsf@nanos.tec.linutronix.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 21 Sep 2020 09:24:45 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjhxzx3KHHOMvdDj3Aw-_Mk5eRiNTUBB=tFf=vTkw1FeA@mail.gmail.com>
Message-ID: <CAHk-=wjhxzx3KHHOMvdDj3Aw-_Mk5eRiNTUBB=tFf=vTkw1FeA@mail.gmail.com>
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

On Mon, Sep 21, 2020 at 12:39 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> If a task is migrated to a different CPU then the mapping address will
> change which will explode in colourful ways.

Heh.

Right you are.

Maybe we really *could* call this new kmap functionality something
like "kmap_percpu()" (or maybe "local" is good enough), and make it
act like your RT code does for spinlocks - not disable preemption, but
only disabling CPU migration.

That would probably be good enough for a lot of users that don't want
to expose excessive latencies, but where it's really not a huge deal
to say "stick to this CPU for a short while".

The crypto code certainly sounds like one such case.

             Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
