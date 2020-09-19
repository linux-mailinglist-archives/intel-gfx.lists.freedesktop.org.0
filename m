Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FAF270D18
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Sep 2020 12:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3EAB6E3DA;
	Sat, 19 Sep 2020 10:38:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E23C86E3DA
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Sep 2020 10:38:04 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id u25so7847702otq.6
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Sep 2020 03:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4qBMELpxnMWeh+ygY0m7dFfIjeObvSXUbCfgU+81OoU=;
 b=MhdAd/ZHaFK/DWpIGeCJTSrL4TspZA8urGXmqj7eu+tNyozMPj8lsNoIYGKFEkHH3i
 tz5kIr/iJffDO0Nt2pDPL1zyk3OacLo0mtMS/oIiThW5ZZklv3HS4ydmHDNHz/bb5JWz
 njvA7YA9+16uPDZnqoPhv6tTBSjVAYTx0v+gc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4qBMELpxnMWeh+ygY0m7dFfIjeObvSXUbCfgU+81OoU=;
 b=LtIJaYrlI2UdQg0FMSugsUV4O9DB65pgEQ28bSoxJMSlQdgFJ/Yb8WLEvbTKfPcUj1
 IgBij1Ho4CrfoocM+l2S+rKOOBCUS5968NVrRTNDowA7afnIx0PfJnfI7biHZUiDHoQN
 GHh+m6AVnZs90sRJzTDvCaKRKx0ilJAiq59sVjzj30Cc9OxHQm8Ys7QGCzdrTwCbE4nj
 Nzut/SNZmvhmNLsRBowNXSLI6Jlxv5Z5vbVWcQ86o2W+f4Z9zSRimfOTqF+hHJ4HGJ5g
 XWc3pWHP+kpcn1tXVYYTdFclwnk/zPMGPOsdF9d1I2P1g7BGXyGx3TeZYCDY7hnHdplf
 4bNw==
X-Gm-Message-State: AOAM533Xr1u5h9lp0R+HZvWn+PSZ/SS57g0MpUeBXoBXWgRScIIvI62k
 n+1mYKwyQJ0izomAAC2jdHRjezEsdBwEo81yiyFAUw==
X-Google-Smtp-Source: ABdhPJx5xVWJo6i2zNxAj54jCqUfintQtxPDT+BaBMGgav4MX+Ax0tqlV2axmkJLRRkUUHGKVrFmThuU1Fd1j9Iveeo=
X-Received: by 2002:a05:6830:14d9:: with SMTP id
 t25mr27032226otq.188.1600511884193; 
 Sat, 19 Sep 2020 03:38:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200919091751.011116649@linutronix.de>
 <CAKMK7uHTVJL2jGtCg61zG=myiF1BSk+yDdRYikcm-Mq_1TQWMQ@mail.gmail.com>
In-Reply-To: <CAKMK7uHTVJL2jGtCg61zG=myiF1BSk+yDdRYikcm-Mq_1TQWMQ@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Sat, 19 Sep 2020 12:37:53 +0200
Message-ID: <CAKMK7uENFDANQKebS_H0bhHeQRijrp1aVHQqyZPute3KBZ+fVQ@mail.gmail.com>
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
 Guo Ren <guoren@kernel.org>, sparclinux@vger.kernel.org,
 Vincent Chen <deanbo422@gmail.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 "open list:GENERIC INCLUDE/A..." <linux-arch@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Michael Ellerman <mpe@ellerman.id.au>, X86 ML <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-csky@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Mel Gorman <mgorman@suse.de>,
 arcml <linux-snps-arc@lists.infradead.org>, linux-xtensa@linux-xtensa.org,
 Paul McKenney <paulmck@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
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

On Sat, Sep 19, 2020 at 12:35 PM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Sat, Sep 19, 2020 at 11:50 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> >
> > First of all, sorry for the horribly big Cc list!
> >
> > Following up to the discussion in:
> >
> >   https://lore.kernel.org/r/20200914204209.256266093@linutronix.de
> >
> > this provides a preemptible variant of kmap_atomic & related
> > interfaces. This is achieved by:
> >
> >  - Consolidating all kmap atomic implementations in generic code
> >
> >  - Switching from per CPU storage of the kmap index to a per task storage
> >
> >  - Adding a pteval array to the per task storage which contains the ptevals
> >    of the currently active temporary kmaps
> >
> >  - Adding context switch code which checks whether the outgoing or the
> >    incoming task has active temporary kmaps. If so, the outgoing task's
> >    kmaps are removed and the incoming task's kmaps are restored.
> >
> >  - Adding new interfaces k[un]map_temporary*() which are not disabling
> >    preemption and can be called from any context (except NMI).
> >
> >    Contrary to kmap() which provides preemptible and "persistant" mappings,
> >    these interfaces are meant to replace the temporary mappings provided by
> >    kmap_atomic*() today.
> >
> > This allows to get rid of conditional mapping choices and allows to have
> > preemptible short term mappings on 64bit which are today enforced to be
> > non-preemptible due to the highmem constraints. It clearly puts overhead on
> > the highmem users, but highmem is slow anyway.
> >
> > This is not a wholesale conversion which makes kmap_atomic magically
> > preemptible because there might be usage sites which rely on the implicit
> > preempt disable. So this needs to be done on a case by case basis and the
> > call sites converted to kmap_temporary.
> >
> > Note, that this is only lightly tested on X86 and completely untested on
> > all other architectures.
> >
> > The lot is also available from
> >
> >    git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git highmem
>
> I think it should be the case, but I want to double check: Will
> copy_*_user be allowed within a kmap_temporary section? This would
> allow us to ditch an absolute pile of slowpaths.

(coffee just kicked in) copy_*_user is ofc allowed, but if you hit a
page fault you get a short read/write. This looks like it would remove
the need to handle these in a slowpath, since page faults can now be
served in this new kmap_temporary sections. But this sounds too good
to be true, so I'm wondering what I'm missing.
-Daniel
>
> >
> > Thanks,
> >
> >         tglx
> > ---
> >  a/arch/arm/mm/highmem.c               |  121 ---------------------
> >  a/arch/microblaze/mm/highmem.c        |   78 -------------
> >  a/arch/nds32/mm/highmem.c             |   48 --------
> >  a/arch/powerpc/mm/highmem.c           |   67 -----------
> >  a/arch/sparc/mm/highmem.c             |  115 --------------------
> >  arch/arc/Kconfig                      |    1
> >  arch/arc/include/asm/highmem.h        |    8 +
> >  arch/arc/mm/highmem.c                 |   44 -------
> >  arch/arm/Kconfig                      |    1
> >  arch/arm/include/asm/highmem.h        |   30 +++--
> >  arch/arm/mm/Makefile                  |    1
> >  arch/csky/Kconfig                     |    1
> >  arch/csky/include/asm/highmem.h       |    4
> >  arch/csky/mm/highmem.c                |   75 -------------
> >  arch/microblaze/Kconfig               |    1
> >  arch/microblaze/include/asm/highmem.h |    6 -
> >  arch/microblaze/mm/Makefile           |    1
> >  arch/microblaze/mm/init.c             |    6 -
> >  arch/mips/Kconfig                     |    1
> >  arch/mips/include/asm/highmem.h       |    4
> >  arch/mips/mm/highmem.c                |   77 -------------
> >  arch/mips/mm/init.c                   |    3
> >  arch/nds32/Kconfig.cpu                |    1
> >  arch/nds32/include/asm/highmem.h      |   21 ++-
> >  arch/nds32/mm/Makefile                |    1
> >  arch/powerpc/Kconfig                  |    1
> >  arch/powerpc/include/asm/highmem.h    |    6 -
> >  arch/powerpc/mm/Makefile              |    1
> >  arch/powerpc/mm/mem.c                 |    7 -
> >  arch/sparc/Kconfig                    |    1
> >  arch/sparc/include/asm/highmem.h      |    7 -
> >  arch/sparc/mm/Makefile                |    3
> >  arch/sparc/mm/srmmu.c                 |    2
> >  arch/x86/include/asm/fixmap.h         |    1
> >  arch/x86/include/asm/highmem.h        |   12 +-
> >  arch/x86/include/asm/iomap.h          |   29 +++--
> >  arch/x86/mm/highmem_32.c              |   59 ----------
> >  arch/x86/mm/init_32.c                 |   15 --
> >  arch/x86/mm/iomap_32.c                |   57 ----------
> >  arch/xtensa/Kconfig                   |    1
> >  arch/xtensa/include/asm/highmem.h     |    9 +
> >  arch/xtensa/mm/highmem.c              |   44 -------
> >  b/arch/x86/Kconfig                    |    3
> >  include/linux/highmem.h               |  141 +++++++++++++++---------
> >  include/linux/io-mapping.h            |    2
> >  include/linux/sched.h                 |    9 +
> >  kernel/sched/core.c                   |   10 +
> >  mm/Kconfig                            |    3
> >  mm/highmem.c                          |  192 ++++++++++++++++++++++++++++++++--
> >  49 files changed, 422 insertions(+), 909 deletions(-)
>
>
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
