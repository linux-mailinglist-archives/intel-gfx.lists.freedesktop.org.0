Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 780006D0E9C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 21:21:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABECB10E057;
	Thu, 30 Mar 2023 19:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03A3A10E057
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 19:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680204108;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sqnQEZxaWao68chgcCo4orFozBmRoRDCr3XacwFOlaI=;
 b=YyTSyAGc+X9C/yP5yiBjmNUMMbmUok5KC/Xm1bX4sM7WHos4tC1aNW1El7p4CGNDmFsA5j
 G/hYiYLQv5mwMAHmTILseWRYrkK2N2Y8H0AwX1ZLX4JiwmIlY9na4SIC9Y9beSaelwS5Xo
 NEwmwSfFtKv5zkv4vZK2kiQI3rfLjvM=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-258-creimHq0PSCBsWLIqbgkKQ-1; Thu, 30 Mar 2023 15:21:44 -0400
X-MC-Unique: creimHq0PSCBsWLIqbgkKQ-1
Received: by mail-il1-f197.google.com with SMTP id
 s1-20020a92ae01000000b0032637be81d1so2261583ilh.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 12:21:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680204106;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sqnQEZxaWao68chgcCo4orFozBmRoRDCr3XacwFOlaI=;
 b=fXYWe5S2IfsPYTmROEGTwZVc/QtMuD/xDO/Yt75JF7hLZI758qeOG5k1K5iesoOf7r
 i0zsoSyiS6ICvCeoMTeYY4GhlUfR3D9JdFBpAjAv9der130ZKK7xLHDTu3FuRZ01DhsC
 IBDylwttFZ1s66/GMWW1hTXWcpLELoLhr6xhA5RtxoQLg/6rcJvfFo3YtV4evXt+JzTm
 674cIoXigTm+MqfgRikJmg/tFrTXJfQkW6rOhLdqh3qSaRTllojBsTkmGkcdt4n7iFmt
 pfwCcmMz1bfmALuGxkXDWFiusb68XA6wQZFVBiFBPlKstwUNaB+dk7BngXsCiKczi966
 3vYQ==
X-Gm-Message-State: AO0yUKWud3pNEFWCOr5rTVjN1p8VDEj8rTAj4V5C0dYJ4Fj1AAN/l/wR
 1lCXy8xr/1ru5x6bxl6N8F1obXCO1bRzrg9fSi/Pzq+TaG3RjXFy20gO1MUD0TbXr6mYt1uctLP
 mlSougR+VGwsmRv3kHXopJYpw7e21
X-Received: by 2002:a05:6602:20da:b0:74c:aa1d:c1a1 with SMTP id
 26-20020a05660220da00b0074caa1dc1a1mr17687525ioz.3.1680204105938; 
 Thu, 30 Mar 2023 12:21:45 -0700 (PDT)
X-Google-Smtp-Source: AK7set+mNeudR7e8tOPV/GXrIldwy7od5clU9Br4psJl/Z0Ulm5W6yZvi903JIlNz219vg0XihaniQ==
X-Received: by 2002:a05:6602:20da:b0:74c:aa1d:c1a1 with SMTP id
 26-20020a05660220da00b0074caa1dc1a1mr17687509ioz.3.1680204105715; 
 Thu, 30 Mar 2023 12:21:45 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 cp7-20020a056638480700b00403089c2a1dsm104349jab.108.2023.03.30.12.21.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Mar 2023 12:21:45 -0700 (PDT)
Date: Thu, 30 Mar 2023 13:21:43 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230330132143.0c33f4d3.alex.williamson@redhat.com>
In-Reply-To: <ZCSV2+LbgeWD2bPa@nvidia.com>
References: <20230327093351.44505-1-yi.l.liu@intel.com>
 <ZCSV2+LbgeWD2bPa@nvidia.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 0/6] vfio: Make emulated devices prepared
 for vfio device cdev
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
Cc: mjrosato@linux.ibm.com, jasowang@redhat.com, xudong.hao@intel.com,
 peterx@redhat.com, terrence.xu@intel.com, chao.p.peng@linux.intel.com,
 linux-s390@vger.kernel.org, Yi Liu <yi.l.liu@intel.com>, kvm@vger.kernel.org,
 lulu@redhat.com, yanting.jiang@intel.com, joro@8bytes.org, nicolinc@nvidia.com,
 yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org, eric.auger@redhat.com,
 intel-gvt-dev@lists.freedesktop.org, yi.y.sun@linux.intel.com,
 cohuck@redhat.com, shameerali.kolothum.thodi@huawei.com,
 suravee.suthikulpanit@amd.com, robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 29 Mar 2023 16:47:39 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Mon, Mar 27, 2023 at 02:33:45AM -0700, Yi Liu wrote:
> > Nicolin Chen (1):
> >   iommufd: Create access in vfio_iommufd_emulated_bind()
> > 
> > Yi Liu (5):
> >   iommu/iommufd: Pass iommufd_ctx pointer in iommufd_get_ioas()
> >   vfio-iommufd: No need to record iommufd_ctx in vfio_device
> >   vfio-iommufd: Make vfio_iommufd_emulated_bind() return iommufd_access
> >     ID
> >   vfio/mdev: Uses the vfio emulated iommufd ops set in the mdev sample
> >     drivers
> >   vfio: Check the presence for iommufd callbacks in
> >     __vfio_register_dev()
> > 
> >  drivers/iommu/iommufd/device.c          | 55 +++++++++++++++----------
> >  drivers/iommu/iommufd/ioas.c            | 14 +++----
> >  drivers/iommu/iommufd/iommufd_private.h |  4 +-
> >  drivers/iommu/iommufd/selftest.c        | 14 ++++---
> >  drivers/iommu/iommufd/vfio_compat.c     |  2 +-
> >  drivers/vfio/iommufd.c                  | 37 ++++++++---------
> >  drivers/vfio/vfio_main.c                |  5 ++-
> >  include/linux/iommufd.h                 |  5 ++-
> >  include/linux/vfio.h                    |  1 -
> >  samples/vfio-mdev/mbochs.c              |  3 ++
> >  samples/vfio-mdev/mdpy.c                |  3 ++
> >  samples/vfio-mdev/mtty.c                |  3 ++
> >  12 files changed, 85 insertions(+), 61 deletions(-)  
> 
> It looks like most of this is iommufd so I will take it - Ok Alex?
> 
> The following cdev patch needs it so I'll stick it on its own branch
> and we can sort it out after the reset series is done

Ok

Acked-by: Alex Williamson <alex.williamson@redhat.com>

