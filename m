Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9EB2037AE
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 15:16:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 579F06E550;
	Mon, 22 Jun 2020 13:16:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com
 [IPv6:2607:f8b0:4864:20::741])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F9876E532
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Jun 2020 22:09:46 +0000 (UTC)
Received: by mail-qk1-x741.google.com with SMTP id k18so4800473qke.4
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Jun 2020 15:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=PKmshvnxCi3S4qzqvpETs1bTZ4nXpcFNE/ZdSSfX0T8=;
 b=ok6whzLttVjTCO00ZovY5Qp+9Q/FskzrHZBq0nVmfOvL/dcgMm+F7BlV7yqhjjXb2X
 /GwABUb/F6auR4clLv8LxDt1lKCw3f8fujRm3J4i/7DDAQgKxLpG0EuX57O3kZWS14gK
 EsYW/RxS6uQwawrvN4U8hak6jfE0PruLgOG4UWxJzpqfzKghVgpaH+iIV0MUevUsYdyg
 xB1iej8rKxcKHL0hPe/QqnHpLcOSZqD8qT5a3oe6uj8mx/sPXjLPrR9H/ehgbtv1McrY
 iP1jdqNmUV9sf5TPwgiNsgcua92k6hyr6K5LzHUMB/vQlopQ/6WDMCA3F4wCOYffDokR
 bXxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=PKmshvnxCi3S4qzqvpETs1bTZ4nXpcFNE/ZdSSfX0T8=;
 b=lOPye5wV7YHhdCZAcg8U8qS5cmrkn8i4Ub9F3Z3wKCzlt2BEUHSRBqYtMti/ZMoqeM
 xy2/CFRbsP/x18L6UEuxPiC1EhRKaUULNttYNJL/3pfYlsC+7aMbyKKzcMual4tjgXYb
 XeeqaUpg25nzS2OrPb7LbhKboyhP+2FRcZ6dtpZemgnZFxLuMmWI9Hx0MYZeBAUl1tvO
 Gq3aWETMqBaClLKX88/SZeI6kS/6VB1i+L+YACfT3dgalE3dbLXB4ltAb5zk3XQaZViu
 I3vytdzYhMrhz/NwdcfYAqvobtWKsUIpttNhEkUjSyODr8zWXqAvIE15qRu1egpr2F0c
 uWiQ==
X-Gm-Message-State: AOAM530ozOjVDmdKDO5aHG+I1HFF+t4LRB4suY+eTdJkLaqCGEcI2776
 qxBvRd39w+T6D23lmXr1o4oGwRlM0OJA4A==
X-Google-Smtp-Source: ABdhPJxLimkm/zUVwedVJyzs6tH8cndzNlIvqCwJYXshoIa3c1bZDmz6pO0xFTlj2WcNXoCJFH1VsA==
X-Received: by 2002:a37:cd4:: with SMTP id 203mr8810965qkm.342.1592777385668; 
 Sun, 21 Jun 2020 15:09:45 -0700 (PDT)
Received: from lca.pw (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id k17sm13998471qtb.5.2020.06.21.15.09.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Jun 2020 15:09:45 -0700 (PDT)
Date: Sun, 21 Jun 2020 18:09:37 -0400
From: Qian Cai <cai@lca.pw>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas_os@shipmail.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Jason Gunthorpe <jgg@mellanox.com>, Linux MM <linux-mm@kvack.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-xfs@vger.kernel.org
Message-ID: <20200621220937.GA2034@lca.pw>
References: <20200604081224.863494-2-daniel.vetter@ffwll.ch>
 <20200610194101.1668038-1-daniel.vetter@ffwll.ch>
 <20200621174205.GB1398@lca.pw>
 <CAKMK7uFZAFVmceoYvqPovOifGw_Y8Ey-OMy6wioMjwPWhu9dDg@mail.gmail.com>
 <20200621200103.GV20149@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200621200103.GV20149@phenom.ffwll.local>
X-Mailman-Approved-At: Mon, 22 Jun 2020 13:16:47 +0000
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

Well, I am running even heavy memory pressure workloads on linux-next
like every day, and never saw this splat until today where your patch
first show up.

Since I am rather busy tracking another regression, here is the steps to
reproduce (super easy to reproduce on multiple machines here.):

# git clone https://github.com/cailca/linux-mm.git
# cd linux-mm; make
# ./random 0

The .config is in there as well if ever matters.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
