Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B34A52A2825
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 11:23:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D25146E491;
	Mon,  2 Nov 2020 10:23:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 425696E48F
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 10:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604312624;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Wp9LWIdQQeaVWYBrapN4RJch0BVmepD/23UqIg4kz2Q=;
 b=DRpgIHZtBQvx7tJ6ZpR6TOXSnvJbwyDoOw+uf5o630KrC/L0nYSFLRyTxU1b2wvINnt7AQ
 F23zeUoM/f4v3iPU9pcPfPJrMBv/8thWOQTW4Y01Vw/9JybeqN7ad1W1UZ8Rw0hqYl0294
 LCjjbDXPzk6VUYRKdj7yHPzWhCzLs34=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-421-0OZ8rQyXOH2u1simnrv1eQ-1; Mon, 02 Nov 2020 05:23:39 -0500
X-MC-Unique: 0OZ8rQyXOH2u1simnrv1eQ-1
Received: by mail-wr1-f71.google.com with SMTP id q15so6241109wrw.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Nov 2020 02:23:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Wp9LWIdQQeaVWYBrapN4RJch0BVmepD/23UqIg4kz2Q=;
 b=I+JQyjjnDjMhSvB7dXK979VGBBVpuxnXtUX3pITBx6OtLl06YB+Hz8duLAwotpuI72
 stTS62GUHgHeFzJOn4FJ5f34sTxZewlqnVVS+HHAWWmH7atlKKLwBkrs6aYsu4NfZ8Bz
 WwzZ+kqTA2KJJgyWnLrrJXN5rxox7rtkat2gz5g5eCwX4b84HYmhKoB9JMYGITRaujaX
 x15OBO+FMEL36dFPykTvURmCBjNocyn4fQb1v9zTVBi/PZK3ZavPSMZBebVmT8bbQxNw
 SqnCukaCHo387+nfexJeYhuhzmJQUF5uIY9C3ZgszXQAQ3lv96dDimb162muTvWV5fVw
 f3FA==
X-Gm-Message-State: AOAM531Z2kNw2pZQXQuNR/fD21Bf43ZnG1Z/JJNacKENb+l54QSbxNl0
 27/SycdfCXD/W+kavizpOw75Ias5osUnu5oJ9hvjxLbgnPSiLCa08+hL1jclYQqvw24QYeFJhnq
 e7CXHL2v+DPMHz8NzjOY80SOpij8Y
X-Received: by 2002:a05:6000:18f:: with SMTP id
 p15mr12460078wrx.185.1604312618489; 
 Mon, 02 Nov 2020 02:23:38 -0800 (PST)
X-Google-Smtp-Source: ABdhPJznFGNmmLYGwZJwr0mGaJjbUUa+GHkURX7Blm6FFeB1v9AnrgQ4pPjIhkgBVh1ilzBqxxD+OQ==
X-Received: by 2002:a05:6000:18f:: with SMTP id
 p15mr12460054wrx.185.1604312618293; 
 Mon, 02 Nov 2020 02:23:38 -0800 (PST)
Received: from redhat.com (bzq-79-182-97-190.red.bezeqint.net. [79.182.97.190])
 by smtp.gmail.com with ESMTPSA id z15sm20847366wrq.24.2020.11.02.02.23.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Nov 2020 02:23:37 -0800 (PST)
Date: Mon, 2 Nov 2020 05:23:28 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20201102052254-mutt-send-email-mst@kernel.org>
References: <20201102124327.2f82b2a7@canb.auug.org.au>
 <CAKMK7uHopZfa1vJ2++OQC8z=GKdDcJ=9=sKWJAcSfguec2UgyA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKMK7uHopZfa1vJ2++OQC8z=GKdDcJ=9=sKWJAcSfguec2UgyA@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
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
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 02, 2020 at 10:28:34AM +0100, Daniel Vetter wrote:
> On Mon, Nov 2, 2020 at 2:43 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> >
> > Hi all,
> >
> > After merging the drm-misc tree, today's linux-next build (arm
> > multi_v7_defconfig) failed like this:
> >
> > In file included from drivers/gpu/drm/nouveau/nouveau_ttm.c:26:
> > include/linux/swiotlb.h: In function 'swiotlb_max_mapping_size':
> > include/linux/swiotlb.h:99:9: error: 'SIZE_MAX' undeclared (first use in this function)
> >    99 |  return SIZE_MAX;
> >       |         ^~~~~~~~
> > include/linux/swiotlb.h:7:1: note: 'SIZE_MAX' is defined in header '<stdint.h>'; did you forget to '#include <stdint.h>'?
> >     6 | #include <linux/init.h>
> >   +++ |+#include <stdint.h>
> >     7 | #include <linux/types.h>
> > include/linux/swiotlb.h:99:9: note: each undeclared identifier is reported only once for each function it appears in
> >    99 |  return SIZE_MAX;
> >       |         ^~~~~~~~
> >
> > Caused by commit
> >
> >   abe420bfae52 ("swiotlb: Introduce swiotlb_max_mapping_size()")
> >
> > but only exposed by commit
> >
> >   4dbafbd30aef ("drm/nouveu: fix swiotlb include")
> >
> > I applied the following fix for today:
> >
> > From: Stephen Rothwell <sfr@canb.auug.org.au>
> > Date: Mon, 2 Nov 2020 12:34:57 +1100
> > Subject: [PATCH] swiotlb: using SIZE_MAX needs limits.h included
> >
> > Fixes: abe420bfae52 ("swiotlb: Introduce swiotlb_max_mapping_size()")
> > Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
> 
> I think simplest if this lands through dma-api tree into current -rc
> kernels. Or should we just put this into drm-misc-next since that's
> where the problem shows up? Christoph, any preference from dma-api
> side?
> -Daniel


Or I can merge it since I merged the original patch causing the
issue ...

> > ---
> >  include/linux/swiotlb.h | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/include/linux/swiotlb.h b/include/linux/swiotlb.h
> > index 513913ff7486..ed9de7855d3b 100644
> > --- a/include/linux/swiotlb.h
> > +++ b/include/linux/swiotlb.h
> > @@ -5,6 +5,9 @@
> >  #include <linux/dma-direction.h>
> >  #include <linux/init.h>
> >  #include <linux/types.h>
> > +#ifndef CONFIG_SWIOTLB
> > +#include <linux/limits.h>
> > +#endif
> >
> >  struct device;
> >  struct page;
> > --
> > 2.28.0
> >
> > --
> > Cheers,
> > Stephen Rothwell
> 
> 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
