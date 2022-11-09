Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 769B362313E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 18:18:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 701A110E61B;
	Wed,  9 Nov 2022 17:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E60CB10E601
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 17:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1668014300;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xnXgn16clICsmrV6UyAUvoxroMB/57yAi6UKnX9zn/8=;
 b=UC3ThxlhT84zBZGMd8IqFE4roIgiJGlc+QEai2D1irH+ZdlLeIjqER6P9AGdtyQcvZhEs3
 WFekuYaliV44sn6zdDeenTkY58UZDn43B2iSieWBL4CDSxvkiD0SKmolVNPO9DI2j2MsC6
 bYxYzT1IQsPJKxBWA7RU1lMmLv4Hrmk=
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-627-IorMdMbsOCO-5Jtv5FA8Og-1; Wed, 09 Nov 2022 12:18:13 -0500
X-MC-Unique: IorMdMbsOCO-5Jtv5FA8Og-1
Received: by mail-il1-f199.google.com with SMTP id
 s4-20020a056e02216400b003021b648144so5434403ilv.19
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Nov 2022 09:18:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xnXgn16clICsmrV6UyAUvoxroMB/57yAi6UKnX9zn/8=;
 b=Z76uC5QRPbkvjR+NY64pzfSUM7Jxjp5SL2J9ZOaWi4Jhy6vuxh11zbK0sN1c7xGUKi
 N3gb1KaikWmvhJsDZeZLijDzYkXK8XaFGghHYF65SZzbkQ9jdqVwytOQO5am8kWUROpG
 90kkl6fgCNlHDwRGc2c7zNJAcYMbdUJbUYRgBqJ6r26A5cACLOBzmBkJRFggmIpSYmdM
 mdx6oQIhT8apQnt3dcLc81Z4fmAqAGE4fLb3FXTTqkbnUp9HURtu5u/t9Y/KgtphFgG8
 gU9WzU8bwx/FKp+J6xe6iJBxg7VhWaRlsYvoPdrsO9vNdmDDjowVAvkrrwfmguC/AGBc
 Q0Pw==
X-Gm-Message-State: ACrzQf2uXoRbEVNsO4RGQGwtG3jWl3F86RwIpRRTcKS0USYmhPlQ7SBN
 RndkF0v0PE8tc6geulffk0s1GYual9BX0t9UJr0P5Sm+T+AeS+6bq9Vs3YI4Gwz1QvFnSwfq3eR
 DpZVD0qNltvMz9wt+ERlRJDkHoYWa
X-Received: by 2002:a6b:e208:0:b0:6d7:b1a7:c220 with SMTP id
 z8-20020a6be208000000b006d7b1a7c220mr1771072ioc.7.1668014292564; 
 Wed, 09 Nov 2022 09:18:12 -0800 (PST)
X-Google-Smtp-Source: AMsMyM6F677E3Z9Fik/IZx4pkrsVOrB6N7Pz805qwA6pjiuY0YCpqNr/AQzfBn6PMq3gQd7YTPJ/wA==
X-Received: by 2002:a6b:e208:0:b0:6d7:b1a7:c220 with SMTP id
 z8-20020a6be208000000b006d7b1a7c220mr1771033ioc.7.1668014292281; 
 Wed, 09 Nov 2022 09:18:12 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 i12-20020a056e02152c00b00300e6efca96sm5020565ilu.55.2022.11.09.09.18.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Nov 2022 09:18:11 -0800 (PST)
Date: Wed, 9 Nov 2022 10:18:09 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20221109101809.2ff08303.alex.williamson@redhat.com>
In-Reply-To: <Y2r6YnhuR3SxslL6@nvidia.com>
References: <0-v2-65016290f146+33e-vfio_iommufd_jgg@nvidia.com>
 <10-v2-65016290f146+33e-vfio_iommufd_jgg@nvidia.com>
 <20221108152831.1a2ed3df.alex.williamson@redhat.com>
 <Y2r6YnhuR3SxslL6@nvidia.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 10/11] vfio: Make vfio_container
 optionally compiled
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
 Longfang Liu <liulongfang@huawei.com>, linux-s390@vger.kernel.org, "Liu,
 Yi L" <yi.l.liu@intel.com>, Matthew Rosato <mjrosato@linux.ibm.com>,
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

On Tue, 8 Nov 2022 20:54:58 -0400
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Tue, Nov 08, 2022 at 03:28:31PM -0700, Alex Williamson wrote:
> 
> > Perhaps this should have been obvious, but I'm realizing that
> > vfio-noiommu mode is completely missing without VFIO_CONTAINER, which
> > seems a barrier to deprecating VFIO_CONTAINER and perhaps makes it a  
> 
> Yes, it is the same as the allow_unsafe_interrupts - it is something
> that currently goes missing if you turn off VFIO_CONTAINER.
> 
> This seems straightforward enough to resolve in a followup, we mostly
> just need someone with an existing no-iommu application to test
> compatability against. Keeping it working with the device cdev will
> also be a bit interesting. If you have or know about some application
> I can try to make a patch.

DPDK supports no-iommu mode.

> > question whether IOMMUFD should really be taking over /dev/vfio/vfio.
> > No-iommu mode has users.    
> 
> I view VFIO_CONTAINER=n as a process. An aspiration we can work
> toward.
> 
> At this point there are few places that might want to use it. Android
> perhaps, for example. It is also useful for testing. One of the main
> values is you can switch the options and feed the kernel into an
> existing test environment and see what happens. This is how we are
> able to quickly get s390 mdev testing, for instance.
> 
> We are not going to get to a widely useful VFIO_CONTAINER=n if we
> don't have a target that people can test against and evaluate what
> compatability gaps may exist.
> 
> So, everytime we find something like this - let's think about how can
> we make iommufd compatibility handle it and not jump straight to
> giving up :)
> 
> I'm kind of thinking v6.4 might be a reasonable kernel target when we
> might have closed off enough things.

I agree that it's very useful for testing, I'm certainly not suggesting
to give up, but I'm not sure where no-iommu lives when iommufd owns
/dev/vfio/vfio.  Given the unsafe interrupts discussion, it doesn't
seem like the type of thing that would be a priority for iommufd.

We're on a path where vfio accepts an iommufd as a container, and
ultimately iommufd becomes the container provider, supplanting the
IOMMU driver registration aspect of vfio.  I absolutely want type1 and
spapr backends to get replaced by iommufd, but reluctance to support
aspects of vfio "legacy" behavior doesn't give me warm fuzzies about a
wholesale hand-off of the container to a different subsystem, for
example vs an iommufd shim spoofing type1 support.

Unfortunately we no longer have a CONFIG_EXPERIMENTAL option to hide
behind for disabling VFIO_CONTAINER, so regardless of our intentions
that a transition is some time off, it may become an issue sooner than
we expect.  Thanks,

Alex

