Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FE86140CE
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 23:45:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40C0910E1DB;
	Mon, 31 Oct 2022 22:45:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF0210E1E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 22:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1667256331;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VcWeOKGAq8wttzU4CxXOEF2dDnjMMLoZymWv1KKckJE=;
 b=X9XHBielS8ISbbbdT95tzpmYmVdBVNjNiDHwNWcTaIF4A38wBSg7V3JlyIXW85ZjzbuirV
 BtUrJNElbANRWW6kOmrWmR8tBtdUlA5Yyv3UpFNzbl0bn9BaqwMa15hVbyZK5qws2j5A+9
 prgy8WCe47Ru7B6A3LTiMJDOskV2L4M=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-613-a_DrrJcLPmWJHJxfPwj6fA-1; Mon, 31 Oct 2022 18:45:30 -0400
X-MC-Unique: a_DrrJcLPmWJHJxfPwj6fA-1
Received: by mail-il1-f200.google.com with SMTP id
 i14-20020a056e021d0e00b0030028180f5bso11333826ila.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 15:45:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VcWeOKGAq8wttzU4CxXOEF2dDnjMMLoZymWv1KKckJE=;
 b=AbusZUwULyU5D5RPCcGEB7fH/Qq3TEQYghudXfQmh0UiNUK38tUe9JwuumR5pIOPtK
 yUNcPuLaXS1s+wmsKcOmeZLKNghaEl+9s6dyrxlq6M34tfKPP+dhrtujIyAMeTMxcAyy
 Xfm4zQ/C0FxpWGmugIVu/OnV8CSjy9JhgDicn6+cgS9F4t4fUgAArBM2SzuBFVpyDxfB
 UcVsQkQGCjWSUhBnGnUTs+5HdpHspSuRq5HfsYwzuN7bnhsJDiE7B7WvH7BanIpD4bFK
 VLGi9hc8X/XRjhuLgQK2zfV5L82oMUxQcpeveP0EZYGNJoqV0YZlYS/2XcHzR/ceUZ8y
 f9hA==
X-Gm-Message-State: ACrzQf3PnnWChLR+oskj529LycyCFWMpaZe7Fnc77VxqO3m9cz1lRlIl
 nrFNpWD9wWkIrSkwxRYjmJNOe96DEC9vwgdvdvBPq4GJMOPYJn1SZ5zsyA0ugicZorlXioP316W
 N4bzT7rno8aff4Ih07d39O10WiJ6j
X-Received: by 2002:a6b:ba41:0:b0:6bd:1970:16ac with SMTP id
 k62-20020a6bba41000000b006bd197016acmr8720516iof.15.1667256329602; 
 Mon, 31 Oct 2022 15:45:29 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4VfhsMAuyXCH5HPHtMnIJqQGlZT/T/OmjKoluwi54wXJ63m+zcNwWVSXkyLmiQm1Q3/6FVkw==
X-Received: by 2002:a6b:ba41:0:b0:6bd:1970:16ac with SMTP id
 k62-20020a6bba41000000b006bd197016acmr8720475iof.15.1667256329251; 
 Mon, 31 Oct 2022 15:45:29 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 t20-20020a02b194000000b003738c0a80b4sm3202099jah.144.2022.10.31.15.45.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Oct 2022 15:45:28 -0700 (PDT)
Date: Mon, 31 Oct 2022 16:45:26 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20221031164526.0712e456.alex.williamson@redhat.com>
In-Reply-To: <Y1wiCc33Jh5QY+1f@nvidia.com>
References: <0-v1-4991695894d8+211-vfio_iommufd_jgg@nvidia.com>
 <4-v1-4991695894d8+211-vfio_iommufd_jgg@nvidia.com>
 <20221026152442.4855c5de.alex.williamson@redhat.com>
 <Y1wiCc33Jh5QY+1f@nvidia.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 04/10] vfio: Move storage of
 allow_unsafe_interrupts to vfio_main.c
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
Cc: kvm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Vineeth Vijayan <vneethv@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>, David Airlie <airlied@gmail.com>,
 Longfang Liu <liulongfang@huawei.com>, linux-s390@vger.kernel.org,
 Yi Liu <yi.l.liu@intel.com>, Matthew Rosato <mjrosato@linux.ibm.com>,
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Halil Pasic <pasic@linux.ibm.com>, iommu@lists.linux.dev,
 Nicolin Chen <nicolinc@nvidia.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, Jason Herne <jjherne@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Eric Auger <eric.auger@redhat.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Tony Krowiak <akrowiak@linux.ibm.com>, Yishai Hadas <yishaih@nvidia.com>,
 Cornelia Huck <cohuck@redhat.com>, Peter Oberparleiter <oberpar@linux.ibm.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Sven Schnelle <svens@linux.ibm.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Lu Baolu <baolu.lu@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 28 Oct 2022 15:40:09 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Wed, Oct 26, 2022 at 03:24:42PM -0600, Alex Williamson wrote:
> > On Tue, 25 Oct 2022 15:17:10 -0300
> > Jason Gunthorpe <jgg@nvidia.com> wrote:
> >   
> > > This legacy module knob has become uAPI, when set on the vfio_iommu_type1
> > > it disables some security protections in the iommu drivers. Move the
> > > storage for this knob to vfio_main.c so that iommufd can access it too.  
> > 
> > I don't really understand this, we're changing the behavior of the
> > iommufd_device_attach() operation based on the modules options of
> > vfio_iommu_type1,   
> 
> The specific reason it was done is that we had a misconfigured test VM
> in the farm that needed it, and that VM has since been fixed. But it
> did highlight we should try to preserve this in some way.
> 
> > which may not be loaded or even compiled into the
> > kernel.  Our compatibility story falls apart when VFIO_CONTAINER is not
> > set, iommufd sneaks in to usurp /dev/vfio/vfio, and the user's module
> > options for type1 go unprocessed.  
> 
> There are two aspects here, trying to preseve the
> allow_unsafe_interrupts knob as it is already as some ABI in the best
> way we can.
> 
> And the second is how do we make this work in the new world where
> there may be no type 1 module at all. This patch is not trying to
> address that topic. I am expecting a range of small adjustments before
> VFIO_CONTAINER=n becomes really fully viable.
> 
> > I hate to suggest that type1 becomes a module that does nothing more
> > than maintain consistency of this variable when the full type1 isn't
> > available, but is that what we need to do?  
> 
> It is one idea, it depends how literal you want to be on "module
> parameters are ABI". IMHO it is a weak form of ABI and the need of
> this paramter in particular is not that common in modern times, AFAIK.
> 
> So perhaps we just also expose it through vfio.ko and expect people to
> migrate. That would give a window were both options are available.

That might be best.  Ultimately this is an opt-out of a feature that
has security implications, so I'd rather error on the side of requiring
the user to re-assert that opt-out.  It seems the potential good in
eliminating stale or unnecessary options outweighs any weak claims of
preserving an ABI for a module that's no longer in service.

However, I'd question whether vfio is the right place for that new
module option.  As proposed, vfio is only passing it through to
iommufd, where an error related to lack of the hardware feature is
masked behind an -EPERM by the time it gets back to vfio, making any
sort of advisory to the user about the module option convoluted.  It
seems like iommufd should own the option to opt-out universally, not
just through the vfio use case.  Thanks,

Alex

