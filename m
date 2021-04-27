Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC18436CBC8
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 21:39:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD2676E9C0;
	Tue, 27 Apr 2021 19:39:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 012206E9C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 19:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619552389;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wh2o6uzEE1/2m8x9DJOEtjlC/Au1gGJTwnUFw7qkLQA=;
 b=VXNp14BMXL2B1FrVxjHfV/FdZXea1Jgchxr95WS5fjglEizdK17QhPP4eD4DxlBCMMu5/x
 ZREobikv1cYFQOI4uh6y4K+0nT69crCdN79vOorXPgT97ZGNzAdcQ0oHoysJSO01rhdQV5
 Jqs1rkHHLg65aWNq7IGInsOztb75GJY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-100-HwncDoFrMwuLAdYzr4Yrgg-1; Tue, 27 Apr 2021 15:39:47 -0400
X-MC-Unique: HwncDoFrMwuLAdYzr4Yrgg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 143D7107ACCA;
 Tue, 27 Apr 2021 19:39:46 +0000 (UTC)
Received: from redhat.com (ovpn-113-225.phx2.redhat.com [10.3.113.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9C4A4100164C;
 Tue, 27 Apr 2021 19:39:45 +0000 (UTC)
Date: Tue, 27 Apr 2021 13:39:45 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>
Message-ID: <20210427133945.434c70cc@redhat.com>
In-Reply-To: <20210427053139.GO1551@zhen-hp.sh.intel.com>
References: <20210426094143.4031527-1-zhenyuw@linux.intel.com>
 <20210426094143.4031527-2-zhenyuw@linux.intel.com>
 <20210426105555.3cad2599@redhat.com>
 <20210426174017.GL2047089@ziepe.ca>
 <20210427053139.GO1551@zhen-hp.sh.intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 2/2] Revert "vfio/gvt: Make DRM_I915_GVT
 depend on VFIO_MDEV"
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
Cc: Jason Gunthorpe <jgg@ziepe.ca>, intel-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org, Arnd Bergmann <arnd@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 27 Apr 2021 13:31:39 +0800
Zhenyu Wang <zhenyuw@linux.intel.com> wrote:

> On 2021.04.26 14:40:17 -0300, Jason Gunthorpe wrote:
> > On Mon, Apr 26, 2021 at 10:55:55AM -0600, Alex Williamson wrote:  
> > > On Mon, 26 Apr 2021 17:41:43 +0800
> > > Zhenyu Wang <zhenyuw@linux.intel.com> wrote:
> > >   
> > > > This reverts commit 07e543f4f9d116d6b4240644191dee6388ef4a85.  
> > > 
> > > 07e543f4f9d1 ("vfio/gvt: Make DRM_I915_GVT depend on VFIO_MDEV")
> > >   
> > > > With all mdev handing moved to kvmgt module, only kvmgt should depend
> > > > on VFIO_MDEV. So revert this one.
> > > > 
> > > > Cc: Arnd Bergmann <arnd@kernel.org>
> > > > Cc: Jason Gunthorpe <jgg@ziepe.ca>
> > > > Cc: Alex Williamson <alex.williamson@redhat.com>
> > > > Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>
> > > >  drivers/gpu/drm/i915/Kconfig | 1 -
> > > >  1 file changed, 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> > > > index 8f15bfb5faac..93f4d059fc89 100644
> > > > +++ b/drivers/gpu/drm/i915/Kconfig
> > > > @@ -102,7 +102,6 @@ config DRM_I915_GVT
> > > >  	bool "Enable Intel GVT-g graphics virtualization host support"
> > > >  	depends on DRM_I915
> > > >  	depends on 64BIT
> > > > -	depends on VFIO_MDEV
> > > >  	default n
> > > >  	help
> > > >  	  Choose this option if you want to enable Intel GVT-g graphics  
> > > 
> > > I take it that this retracts your ack from
> > > https://lore.kernel.org/dri-devel/20210425032356.GH1551@zhen-hp.sh.intel.com/
> > > I'll drop it from consideration for pushing through my tree unless
> > > indicated otherwise.  Thanks,  
> > 
> > In any event you'll need either Arnd's patch or this patch in your
> > tree to avoid randconfig problems.
> > 
> > At this point I would take Arnd's and leave this to go next merge
> > window.
> >   
> 
> I'm ok with that, so won't block your vfio pull for merge window.
> I'll send gvt fixes pull in next RC.

Ok, I've pushed Arnd's fix to my next branch, I'll get it in for rc1.
Thanks,

Alex

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
