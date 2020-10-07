Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 058CC285A44
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 10:15:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83B6B6E231;
	Wed,  7 Oct 2020 08:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 393456E054
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 08:15:44 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id f37so1385990otf.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Oct 2020 01:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pzPWUp2kZLxPkBgPS5CFIuIDZhRYDXybDPGOe+gkyjk=;
 b=Sk5u8ZJACW67ugyj/T0pqGfKZwFhZ6QzSMPb8GHncNSoFSXz5ceYEjUiMY2g1VWlur
 akMu3IMZ04idCFQMJIH1qTYbGm9PtJrZDJY7cTSUMyHD2kqt0HmBgZwTu+2zWdQFbvWW
 DnFXUIWNgYS5d6BaKP/BYCJ/koUmUcIdl08hI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pzPWUp2kZLxPkBgPS5CFIuIDZhRYDXybDPGOe+gkyjk=;
 b=CLKOD0pPnyUHmyMb5Vaxa0yJs1+/jxPULDt9EQ64y25o3/C5cUv5Zo+asuC8sSWZDP
 OEQz4aHrUOfiBHmXwJtGsZm3sKktCYUyYaKbXN2gwPh/cvVqeoZTzw/dAFIbCKnLr1Yx
 hRLKG1zV9IAJa7Of1/imF4JwWwGpOt+5lW3UE4LAuzQZFVSKFP3exEZoT3PAgPlJulG0
 jqaVJj8mk3BUqqIwVegMVNMHAHyix0CaRQDT+sN0IjDpG9O2h77sRwM/wgnWOYxQ2pG2
 6ydZ/gTSr+JNawgzqoU8CXihVmE0w88kClT0xCQjiTwkXfQeAcphnjrh8u1M05iZJFhA
 yIPQ==
X-Gm-Message-State: AOAM5329iuqh4PjBqEOIFwSH19pHPqodO5wK2wjqsh4VUIx+IXATnMxR
 td7U5JDytmCtYCtCasBYmWFD35VG3YDPdSu5Pmog4A==
X-Google-Smtp-Source: ABdhPJy+YbYFDPa0+x1zr9PWGe0p0SDWhe7AMwlm685FYFp9ntA32GbX8DL6dp85EDg+Q3d+DRjums1alXx8QoNeihU=
X-Received: by 2002:a05:6830:1e56:: with SMTP id
 e22mr1110002otj.303.1602058542439; 
 Wed, 07 Oct 2020 01:15:42 -0700 (PDT)
MIME-Version: 1.0
References: <20201004154340.1080481-1-leon@kernel.org>
 <20201005235650.GA89159@nvidia.com>
 <20201006104122.GA438822@phenom.ffwll.local> <20201006114627.GE5177@ziepe.ca>
In-Reply-To: <20201006114627.GE5177@ziepe.ca>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 7 Oct 2020 10:15:31 +0200
Message-ID: <CAKMK7uG5UOS5360_HjJyroLE8b+6wrhT291PaqjFbii+BT7+Hg@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [Intel-gfx] [PATCH rdma-next v5 0/4] Dynamicaly allocate SG
 table from the pages
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
Cc: Leon Romanovsky <leon@kernel.org>, David Airlie <airlied@linux.ie>,
 Maor Gottlieb <maorg@nvidia.com>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 Roland Scheidegger <sroland@vmware.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-rdma <linux-rdma@vger.kernel.org>, Doug Ledford <dledford@redhat.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Leon Romanovsky <leonro@nvidia.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 7, 2020 at 9:22 AM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> On Tue, Oct 06, 2020 at 12:41:22PM +0200, Daniel Vetter wrote:
> > On Mon, Oct 05, 2020 at 08:56:50PM -0300, Jason Gunthorpe wrote:
> > > On Sun, Oct 04, 2020 at 06:43:36PM +0300, Leon Romanovsky wrote:
> > > > This series extends __sg_alloc_table_from_pages to allow chaining of
> > > > new pages to already initialized SG table.
> > > >
> > > > This allows for the drivers to utilize the optimization of merging contiguous
> > > > pages without a need to pre allocate all the pages and hold them in
> > > > a very large temporary buffer prior to the call to SG table initialization.
> > > >
> > > > The second patch changes the Infiniband driver to use the new API. It
> > > > removes duplicate functionality from the code and benefits the
> > > > optimization of allocating dynamic SG table from pages.
> > > >
> > > > In huge pages system of 2MB page size, without this change, the SG table
> > > > would contain x512 SG entries.
> > > > E.g. for 100GB memory registration:
> > > >
> > > >              Number of entries      Size
> > > >     Before        26214400          600.0MB
> > > >     After            51200            1.2MB
> > > >
> > > > Thanks
> > > >
> > > > Maor Gottlieb (2):
> > > >   lib/scatterlist: Add support in dynamic allocation of SG table from
> > > >     pages
> > > >   RDMA/umem: Move to allocate SG table from pages
> > > >
> > > > Tvrtko Ursulin (2):
> > > >   tools/testing/scatterlist: Rejuvenate bit-rotten test
> > > >   tools/testing/scatterlist: Show errors in human readable form
> > >
> > > This looks OK, I'm going to send it into linux-next on the hmm tree
> > > for awhile to see if anything gets broken. If there is more
> > > remarks/tags/etc please continue
> >
> > An idea that just crossed my mind: A pin_user_pages_sgt might be useful
> > for both rdma and drm, since this would avoid the possible huge interim
> > struct pages array for thp pages. Or anything else that could be coalesced
> > down into a single sg entry.
> >
> > Not sure it's worth it, but would at least give a slightly neater
> > interface I think.
>
> We've talked about it. Christoph wants to see this area move to a biovec
> interface instead of sgl, but it might still be worthwhile to have an
> interm step at least as an API consolidation.

Hm but then we'd need a new struct for the mapped side of things
(which would still be what you get from dma-buf). That would be quite
a bit of work to roll out everywhere, and sgt isn't such a huge misfit
for passing buffer object mappings and system memory backing storage
around, and hence what we (very slowly) converging drivers/gpu towards
over the past 10 years or so.

And moving the dma_map step out of dma-buf doesn't work, because some
of the use-cases we have is for very special iommus which are managed
by the gpu driver directly. Stuff that e.g. rotates/retiles/compresses
on the fly, and is accessible by other (gfx related like video code,
camera, ..) devices. Not something I expect to ever be relevant for
rdma since this exist mostly on some small soc, but it's a thing.
Without that dma-buf could hand out biovec for struct_page backed
stuff, or some pfn_vec for the p2p stuff.

Anyway was just an idea, I guess we'll have to live with some
impedance mismatch since rolling out the one an only iovec structure
which suits everyone is I think impossible :-)

> Avoiding the page list would be complicated as we'd somehow have to
> code share the page table iterator scheme.

We're (slowly) getting towards thp for vram mappings and everything so
I guess for drivers/gpu we might make that happen. But yeah it'd be
not so pretty I think.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
