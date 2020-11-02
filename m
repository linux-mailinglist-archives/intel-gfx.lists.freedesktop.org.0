Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8102A283A
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 11:28:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C476E4AA;
	Mon,  2 Nov 2020 10:28:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 076586E4AA
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 10:28:27 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id m13so5101013oih.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Nov 2020 02:28:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2Z8GQ3+dlPgWj8N6iGHuphE6RpytAvFZo39Sbtwdhws=;
 b=EzwfEuuEwGYTUTjIasAnUKUIVmBIxn7qJYQhUc2GVEKajha3SO3J3d/VjzMgnwV94F
 V1xFvThPUl79p5+V+oEa5uZ2gpuitZ5MzSvlI5wHu8TwB48Z8uCSz1bX+J83hOAQl2Mc
 ybmPexJOB3IDKeTvAmmWQSMGJBSZzm4EiWwGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2Z8GQ3+dlPgWj8N6iGHuphE6RpytAvFZo39Sbtwdhws=;
 b=iTiiofM28GrpjqGDr+aB4PdJq9xZ6pBOTbhcqg1Wz9fMVTIrMJl9qKazWTqJM7sCfE
 HO375LTFq6Omg5FPyoUPBl3HvtpeZlxCifKvoBRqX9I4uzFDcsjYDg05TIRM2hC/U0go
 k9TQW4a71UVUajBABWE1lPQLWb8diAHevOSfIo0ltBC0QiIJ6pRivebpvsfkls2sYkrt
 WxoqSougMb4ny7ts1moTWHAH++tPcX0wIMmyqwb3gbsx15QuvPuo5QyOBpaMVftY7h/J
 y7DyUnMaHoyT2VdPcOeZIoF1IJc7K32hWVkBDBCj91C8qi9vVn0A97BC26ox106DTxt3
 4Zbw==
X-Gm-Message-State: AOAM532KEecguy3nK47VedSXzE7ihGG8A73Gv+ybK1KGvNau0LVRSea2
 nsJ2/2gh9R+NHIprs2p3x2vBGDLIa1Lau/YnoAvi7g==
X-Google-Smtp-Source: ABdhPJxtPz32ksTu7x/wIQLWRExfPZVZ9cFoMP8T8mP3YC5ZyI58He8otzTX9cJ+0Sx2RumLcBUlS7qWt0oefuIvIy0=
X-Received: by 2002:aca:b141:: with SMTP id a62mr8909832oif.101.1604312906398; 
 Mon, 02 Nov 2020 02:28:26 -0800 (PST)
MIME-Version: 1.0
References: <20201102124327.2f82b2a7@canb.auug.org.au>
 <CAKMK7uHopZfa1vJ2++OQC8z=GKdDcJ=9=sKWJAcSfguec2UgyA@mail.gmail.com>
 <20201102052254-mutt-send-email-mst@kernel.org>
In-Reply-To: <20201102052254-mutt-send-email-mst@kernel.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 2 Nov 2020 11:28:15 +0100
Message-ID: <CAKMK7uFKRHnYFYw19b-iQHfzQisqn0Zms+1+bxVa6CSbExTP8w@mail.gmail.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
Subject: Re: [Intel-gfx] linux-next: build failure after merge of the
 drm-misc tree
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Joerg Roedel <jroedel@suse.de>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>, Christoph Hellwig <hch@infradead.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 2, 2020 at 11:23 AM Michael S. Tsirkin <mst@redhat.com> wrote:
>
> On Mon, Nov 02, 2020 at 10:28:34AM +0100, Daniel Vetter wrote:
> > On Mon, Nov 2, 2020 at 2:43 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> > >
> > > Hi all,
> > >
> > > After merging the drm-misc tree, today's linux-next build (arm
> > > multi_v7_defconfig) failed like this:
> > >
> > > In file included from drivers/gpu/drm/nouveau/nouveau_ttm.c:26:
> > > include/linux/swiotlb.h: In function 'swiotlb_max_mapping_size':
> > > include/linux/swiotlb.h:99:9: error: 'SIZE_MAX' undeclared (first use in this function)
> > >    99 |  return SIZE_MAX;
> > >       |         ^~~~~~~~
> > > include/linux/swiotlb.h:7:1: note: 'SIZE_MAX' is defined in header '<stdint.h>'; did you forget to '#include <stdint.h>'?
> > >     6 | #include <linux/init.h>
> > >   +++ |+#include <stdint.h>
> > >     7 | #include <linux/types.h>
> > > include/linux/swiotlb.h:99:9: note: each undeclared identifier is reported only once for each function it appears in
> > >    99 |  return SIZE_MAX;
> > >       |         ^~~~~~~~
> > >
> > > Caused by commit
> > >
> > >   abe420bfae52 ("swiotlb: Introduce swiotlb_max_mapping_size()")
> > >
> > > but only exposed by commit
> > >
> > >   4dbafbd30aef ("drm/nouveu: fix swiotlb include")
> > >
> > > I applied the following fix for today:
> > >
> > > From: Stephen Rothwell <sfr@canb.auug.org.au>
> > > Date: Mon, 2 Nov 2020 12:34:57 +1100
> > > Subject: [PATCH] swiotlb: using SIZE_MAX needs limits.h included
> > >
> > > Fixes: abe420bfae52 ("swiotlb: Introduce swiotlb_max_mapping_size()")
> > > Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
> >
> > I think simplest if this lands through dma-api tree into current -rc
> > kernels. Or should we just put this into drm-misc-next since that's
> > where the problem shows up? Christoph, any preference from dma-api
> > side?
> > -Daniel
>
>
> Or I can merge it since I merged the original patch causing the
> issue ...

Works for me too.
-Daniel
>
> > > ---
> > >  include/linux/swiotlb.h | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >
> > > diff --git a/include/linux/swiotlb.h b/include/linux/swiotlb.h
> > > index 513913ff7486..ed9de7855d3b 100644
> > > --- a/include/linux/swiotlb.h
> > > +++ b/include/linux/swiotlb.h
> > > @@ -5,6 +5,9 @@
> > >  #include <linux/dma-direction.h>
> > >  #include <linux/init.h>
> > >  #include <linux/types.h>
> > > +#ifndef CONFIG_SWIOTLB
> > > +#include <linux/limits.h>
> > > +#endif
> > >
> > >  struct device;
> > >  struct page;
> > > --
> > > 2.28.0
> > >
> > > --
> > > Cheers,
> > > Stephen Rothwell
> >
> >
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
