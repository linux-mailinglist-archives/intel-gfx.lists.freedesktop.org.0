Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDB3621F96
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 23:55:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC86210E535;
	Tue,  8 Nov 2022 22:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61D8D10E531
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 22:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1667948126;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Xn5djSvharmtEQx57zviUCQbtnk4lTlyXhCimRZ02/A=;
 b=MQ9u9hzuWajZju0dXt4HicLxI4Y7MKVPPZ2RmKw3GZNm/RP8iM4V3d4HRAn2b3X7Esxf50
 6HqgIOIhF+XwUkq0/HTAusuCsTgfB4M/uD0/5+T6EPrQP1xEozQGK1ZGrtdfjzY75D3IV/
 fXP6u/99U9Rr3lqzVTnThPR9IEODdJ0=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-257-cu6xbRw1P-KRLYKUqj1ifg-1; Tue, 08 Nov 2022 17:55:24 -0500
X-MC-Unique: cu6xbRw1P-KRLYKUqj1ifg-1
Received: by mail-il1-f198.google.com with SMTP id
 a14-20020a921a0e000000b003016bfa7e50so8780773ila.16
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Nov 2022 14:55:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Xn5djSvharmtEQx57zviUCQbtnk4lTlyXhCimRZ02/A=;
 b=Eck7aXE/9DfmlrS4st4GPE9knL2xSs8DFiu1LyoN++VXqGy+MIfjM7FuRdTaMDZ+vm
 1xTllybeFLEAUuzppsg0bm18/wcacfZU2Vsw4XJl8KnAo+glYkWv99IG+c8ojaPAE4tb
 5GrY6WD1sZw+NMDpWq6cY+VoQ06FMhP7XUXvp1SKWxT2LP2mHN2/nHCd7ztKiNC+We+c
 aj/s3GEAbsL9i123/CbbnsZJD7o+8YzqrM3gJK2CHv5vrZ/BooVV8Okz0MbGlxmr1qpe
 by5m8kcbpKHiKsREziAL5HdK1BM6RnbHRWxbD8xFxsDEZT6od2nZ0wU0EtdkIfPA/FT2
 eiag==
X-Gm-Message-State: ACrzQf1/hL4SSj7qLOX3z+yysCex8x2bCgXG+2wuty0n/Xc6fLy/ggVv
 3tpeCnigOAXZmkWuRGfV5/9bnY3Q9jRBHVwBiodkDHeDdLa2zNlQpEGiXZ11x7o6GqRQixGkCqn
 Eue9MUbrAP2za/zN6lZ81jtVIsMMl
X-Received: by 2002:a92:c90b:0:b0:300:9b70:1954 with SMTP id
 t11-20020a92c90b000000b003009b701954mr1157735ilp.52.1667948123565; 
 Tue, 08 Nov 2022 14:55:23 -0800 (PST)
X-Google-Smtp-Source: AMsMyM7inYgp9d81Al2F/3Q/QRh1DvH49c8xJ7dAOPW8yrTtfbiNXukEmtMY97bMKALlOwtV8gl6cQ==
X-Received: by 2002:a92:c90b:0:b0:300:9b70:1954 with SMTP id
 t11-20020a92c90b000000b003009b701954mr1157706ilp.52.1667948123238; 
 Tue, 08 Nov 2022 14:55:23 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 o15-20020a02a1cf000000b00374fa5b600csm4208110jah.0.2022.11.08.14.55.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Nov 2022 14:55:22 -0800 (PST)
Date: Tue, 8 Nov 2022 15:55:20 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20221108155520.4429c2e5.alex.williamson@redhat.com>
In-Reply-To: <Y2lSZwNT8f/RMoZf@nvidia.com>
References: <0-v1-4991695894d8+211-vfio_iommufd_jgg@nvidia.com>
 <4-v1-4991695894d8+211-vfio_iommufd_jgg@nvidia.com>
 <20221026152442.4855c5de.alex.williamson@redhat.com>
 <Y1wiCc33Jh5QY+1f@nvidia.com>
 <20221031164526.0712e456.alex.williamson@redhat.com>
 <Y2kF75zVD581UeR2@nvidia.com>
 <20221107081853.18727337.alex.williamson@redhat.com>
 <Y2klGAUEUwpjWHw6@nvidia.com>
 <20221107110508.7f02abf4.alex.williamson@redhat.com>
 <Y2lSZwNT8f/RMoZf@nvidia.com>
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
Cc: Matthew Rosato <mjrosato@linux.ibm.com>, Eric Farman <farman@linux.ibm.com>,
 dri-devel@lists.freedesktop.org, Vineeth Vijayan <vneethv@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>, Will Deacon <will@kernel.org>,
 Longfang Liu <liulongfang@huawei.com>, linux-s390@vger.kernel.org,
 Yi Liu <yi.l.liu@intel.com>, kvm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Halil Pasic <pasic@linux.ibm.com>,
 iommu@lists.linux.dev, Nicolin Chen <nicolinc@nvidia.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Tony Krowiak <akrowiak@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, intel-gfx@lists.freedesktop.org,
 Eric Auger <eric.auger@redhat.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Jason Herne <jjherne@linux.ibm.com>, Yishai Hadas <yishaih@nvidia.com>,
 Cornelia Huck <cohuck@redhat.com>, Peter Oberparleiter <oberpar@linux.ibm.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Sven Schnelle <svens@linux.ibm.com>, Robin Murphy <robin.murphy@arm.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 7 Nov 2022 14:45:59 -0400
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Mon, Nov 07, 2022 at 11:05:08AM -0700, Alex Williamson wrote:
> 
> > After further consideration... I don't think the option on vfio-main
> > makes sense, basically for the same reason that the original option
> > existed on the IOMMU backend rather than vfio-core.  The option
> > describes a means to relax a specific aspect of IOMMU isolation, which
> > makes more sense to expose via the IOMMU provider, imo.  For example,
> > vfio-main cannot generate an equivalent error message as provided in
> > type1 today, it's too far removed from the IOMMU feature support.  
> 
> vfio-main can do it, we just have to be strict that the EPERM code is
> always going to be this case.

This doesn't seem very practical.

> > > > If vdpa doesn't allow full device access such that it can guarantee
> > > > that a device cannot generate a DMA that can spoof MSI, then it
> > > > sounds like the flag we pass when attaching a device to iommfd
> > > > should to reflect this difference in usage.    
> > > 
> > > VDPA allows arbitary DMA just like VFIO. At most VDPA limits the MMIO
> > > touches.  
> >
> > So why exactly isn't this an issue for VDPA?  Are we just burying our
> > head in the sand that such platforms exists and can still be useful
> > given the appropriate risk vs reward trade-off?  
> 
> Simply that nobody has asked for it, and might never ask for it. This
> is all support for old platforms, and there just doesn't seem to be a
> "real" use case for very new (and actually rare) NIC hardware stuck
> into ancient platforms with this security problem.

vIOMMU support for interrupt remapping is relatively new, the nesting
case is important as well.

> So I'd rather leave this in the past than carry forward a security
> exception as some ongoing 1st class thing.
> 
> > > and IMHO we don't actually want to enable this more
> > > widely. So I don't want to see a global kernel wide flag at this point
> > > until we get reason to make more than just VFIO insecure.  
> > 
> > But this brings into question the entire existence of the opt-in.  Do
> > we agree that there are valid use cases for such an option?  
> 
> I think it is something VFIO has historically allowed and I think we
> can continue to allow it, but I don't think we should encourage its
> use or encourage it to propogate to wider areas given that the
> legitimate use cases are focused on fairly old hardware at this point.
> 
> So, I'd rather wait for someone to ask for it, and explain why they
> need to use a combination of stuff where we need to have a true global
> option.
> 
> > Unlike things like ACS overrides, lack of interrupt isolation really
> > requires a malicious actor.  We're not going to inadvertently overlap
> > DMA to interrupt addresses like we might to a non-isolated MMIO ranges.
> > Therefore an admin can make a reasonable determination relative to the
> > extent to which the userspace is trusted.  This is not unlike opt-outs
> > to CPU vulnerability mitigation imo, there are use cases where the
> > performance or functionality is more important than the isolation.
> > Hand waving this away as a vfio-unique insecurity is a bad precedent
> > for iommufd.  
> 
> I agree with this, which is why I think it should come from the actual
> user facing subsystem not be a system wide flag. The "is userspace
> trusted" for VFIO may be quite different than from VDPA or whatever
> else comes next.
> 
> I'd be much more comfortable with this as a system wide iommufd flag
> if we also tied it to do some demonstration of privilege - eg a
> requirement to open iommufd with CAP_SYS_RAWIO for instance.

Which is not compatible to existing use cases, which is also why we
can't invent some way to allow some applications to run without CPU
mitigations, while requiring it for others as a baseline.

> That is the usual protocol for these kinds of insecurities..

Hmm, is it?

> I think right now we can leave this as-is and we can wait for some
> more information to decide how best to proceed.

It's certainly not acceptable in the latest proposal, iommufd consumes
an option set by another module and when that module goes away, so does
any claim of compatibility.  The code becomes dead and the feature not
present.  The option doesn't belong on the vfio module.  Do we need a
vfio-iommufd module to host it?  Thanks,

Alex

