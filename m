Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B712058A0
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 19:29:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40E866E13A;
	Tue, 23 Jun 2020 17:29:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com
 [IPv6:2607:f8b0:4864:20::844])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11C416E9EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 16:18:02 +0000 (UTC)
Received: by mail-qt1-x844.google.com with SMTP id i3so6318950qtq.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 09:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=SowX6r/DrbyMyIPo7bbmN6dCO4WOaZBpx8lXkNiYwRQ=;
 b=q5PXizvouRcfNA2W9Djqc/Z84L8gq+5xyPGe7rkAVVUXYo0XRUHAEI4yVuKgTSfgc9
 RoYCG4UkEgCC9vVO+IYyrz7JORXpNUWmlzMkIni2Vfw9kxBsp2K+YgamdfZElTJuJZTW
 bbafUUDUQEhd51JcrBKUA9xHz8S+ZvnGFC/bx4j/zd/tIY4JT4nqabnA6jtnfro4Yx69
 YevfddRvEKhgwHMyV0hQh6x3L1BXH3reCRQkEUr6zmcuCWOBikrw37RohUhW9xkrCqv7
 nLIezDVzEaNlXEnFqrM5wDtOVHCyOyKL9todYtNNNUOatrNgrkdDPEXpNyPANNjAfT9T
 s5yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=SowX6r/DrbyMyIPo7bbmN6dCO4WOaZBpx8lXkNiYwRQ=;
 b=E7SpC4OXZwm0yjkf691EaYeYB1M3QWDTIJ9D/quN4jcGDZQSiTETFAgb782SIgblaI
 uuZqfa18P9TE0kEodxmqSK1psADu/LTfQ4TEu5+0erHm3YyY9QqT5vun3JqVWx5Ssk76
 3Tk8nWfJDa2xt1FFLeiEhIRltr1/3BskvNDIXRcSnSuVTBn35/7Sj/VxeNJie4osDXjI
 AfuLNYuEcGj4aIvwdU17gjyuQIhdi0hIuxY0KqeCapu+GV6nAxeVHyVjsq9SCG4I2V/k
 cdBD3wqMTbpDGUb97S6AYU/hR09UAUkiO+je4RwLJRXmDTuAGkUR9nSVSVHOEl4uCEWb
 5OJQ==
X-Gm-Message-State: AOAM531gK3jrRHj6BdpzCdixRPBL0yIS1n16B55PnYeGooi1fZ1ZUEiC
 KmyXXKgHHUJRvETWIexx/fRemw==
X-Google-Smtp-Source: ABdhPJy2/MUFYS3DJu96XPGFYPvGEfp9/cvT3JQEnV1SM172gUGWrPZ+0/Xawft3xZIbg4oUrttvEg==
X-Received: by 2002:ac8:4448:: with SMTP id m8mr22935603qtn.4.1592929081912;
 Tue, 23 Jun 2020 09:18:01 -0700 (PDT)
Received: from lca.pw (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id d140sm966654qkc.22.2020.06.23.09.18.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Jun 2020 09:18:01 -0700 (PDT)
Date: Tue, 23 Jun 2020 12:17:54 -0400
From: Qian Cai <cai@lca.pw>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20200623161754.GA1140@lca.pw>
References: <20200604081224.863494-2-daniel.vetter@ffwll.ch>
 <20200610194101.1668038-1-daniel.vetter@ffwll.ch>
 <20200621174205.GB1398@lca.pw>
 <CAKMK7uFZAFVmceoYvqPovOifGw_Y8Ey-OMy6wioMjwPWhu9dDg@mail.gmail.com>
 <20200621200103.GV20149@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200621200103.GV20149@phenom.ffwll.local>
X-Mailman-Approved-At: Tue, 23 Jun 2020 17:29:24 +0000
Subject: Re: [Intel-gfx] [PATCH] mm: Track mmu notifiers in
 fs_reclaim_acquire/release
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
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-xfs@vger.kernel.org, Linux MM <linux-mm@kvack.org>,
 Jason Gunthorpe <jgg@mellanox.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Jun 21, 2020 at 10:01:03PM +0200, Daniel Vetter wrote:
> On Sun, Jun 21, 2020 at 08:07:08PM +0200, Daniel Vetter wrote:
> > On Sun, Jun 21, 2020 at 7:42 PM Qian Cai <cai@lca.pw> wrote:
> > >
> > > On Wed, Jun 10, 2020 at 09:41:01PM +0200, Daniel Vetter wrote:
> > > > fs_reclaim_acquire/release nicely catch recursion issues when
> > > > allocating GFP_KERNEL memory against shrinkers (which gpu drivers t=
end
> > > > to use to keep the excessive caches in check). For mmu notifier
> > > > recursions we do have lockdep annotations since 23b68395c7c7
> > > > ("mm/mmu_notifiers: add a lockdep map for invalidate_range_start/en=
d").
> > > >
> > > > But these only fire if a path actually results in some pte
> > > > invalidation - for most small allocations that's very rarely the ca=
se.
> > > > The other trouble is that pte invalidation can happen any time when
> > > > __GFP_RECLAIM is set. Which means only really GFP_ATOMIC is a safe
> > > > choice, GFP_NOIO isn't good enough to avoid potential mmu notifier
> > > > recursion.
> > > >
> > > > I was pondering whether we should just do the general annotation, b=
ut
> > > > there's always the risk for false positives. Plus I'm assuming that
> > > > the core fs and io code is a lot better reviewed and tested than
> > > > random mmu notifier code in drivers. Hence why I decide to only
> > > > annotate for that specific case.
> > > >
> > > > Furthermore even if we'd create a lockdep map for direct reclaim, w=
e'd
> > > > still need to explicit pull in the mmu notifier map - there's a lot
> > > > more places that do pte invalidation than just direct reclaim, these
> > > > two contexts arent the same.
> > > >
> > > > Note that the mmu notifiers needing their own independent lockdep m=
ap
> > > > is also the reason we can't hold them from fs_reclaim_acquire to
> > > > fs_reclaim_release - it would nest with the acquistion in the pte
> > > > invalidation code, causing a lockdep splat. And we can't remove the
> > > > annotations from pte invalidation and all the other places since
> > > > they're called from many other places than page reclaim. Hence we c=
an
> > > > only do the equivalent of might_lock, but on the raw lockdep map.
> > > >
> > > > With this we can also remove the lockdep priming added in 66204f1d2=
d1b
> > > > ("mm/mmu_notifiers: prime lockdep") since the new annotations are
> > > > strictly more powerful.
> > > >
> > > > v2: Review from Thomas Hellstrom:
> > > > - unbotch the fs_reclaim context check, I accidentally inverted it,
> > > >   but it didn't blow up because I inverted it immediately
> > > > - fix compiling for !CONFIG_MMU_NOTIFIER
> > > >
> > > > Cc: Thomas Hellstr=F6m (Intel) <thomas_os@shipmail.org>
> > > > Cc: Andrew Morton <akpm@linux-foundation.org>
> > > > Cc: Jason Gunthorpe <jgg@mellanox.com>
> > > > Cc: linux-mm@kvack.org
> > > > Cc: linux-rdma@vger.kernel.org
> > > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > Cc: Christian K=F6nig <christian.koenig@amd.com>
> > > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > >
> > > Replying the right patch here...
> > >
> > > Reverting this commit [1] fixed the lockdep warning below while apply=
ing
> > > some memory pressure.
> > >
> > > [1] linux-next cbf7c9d86d75 ("mm: track mmu notifiers in fs_reclaim_a=
cquire/release")
> > =

> > Hm, then I'm confused because
> > - there's not mmut notifier lockdep map in the splat at a..
> > - the patch is supposed to not change anything for fs_reclaim (but the
> > interim version got that wrong)
> > - looking at the paths it's kmalloc vs kswapd, both places I totally
> > expect fs_reflaim to be used.
> > =

> > But you're claiming reverting this prevents the lockdep splat. If
> > that's right, then my reasoning above is broken somewhere. Someone
> > less blind than me having an idea?
> > =

> > Aside this is the first email I've typed, until I realized the first
> > report was against the broken patch and that looked like a much more
> > reasonable explanation (but didn't quite match up with the code
> > paths).
> =

> Below diff should undo the functional change in my patch. Can you pls test
> whether the lockdep splat is really gone with that? Might need a lot of
> testing and memory pressure to be sure, since all these reclaim paths
> aren't very deterministic.

No, this patch does not help but reverting the whole patch still fixed
the splat.

> -Daniel
> =

> ---
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index d807587c9ae6..27ea763c6155 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -4191,11 +4191,6 @@ void fs_reclaim_acquire(gfp_t gfp_mask)
>  		if (gfp_mask & __GFP_FS)
>  			__fs_reclaim_acquire();
>  =

> -#ifdef CONFIG_MMU_NOTIFIER
> -		lock_map_acquire(&__mmu_notifier_invalidate_range_start_map);
> -		lock_map_release(&__mmu_notifier_invalidate_range_start_map);
> -#endif
> -
>  	}
>  }
>  EXPORT_SYMBOL_GPL(fs_reclaim_acquire);
> -- =

> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
