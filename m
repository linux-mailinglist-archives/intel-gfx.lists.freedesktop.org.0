Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 494ED525499
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 20:21:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D943210E4A0;
	Thu, 12 May 2022 18:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8018810E4A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 18:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1652379688;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VcoQlfgRlKTkG2QnFhtWwqPtuN/iCo7Oei+ZTVCbp8Q=;
 b=MYwJCpDFNPsCAE61hguOTrE/DJOw7FLgNzWrN10Y9W92d8kjqttp6MSDJNFXnuAtzh/MT2
 U5DehndC2zN2hPSEne16DDi5ZD9fCKbPu9Q0csWCpVvFQ7DMe0+VNcNqYz38fbhUtZNFEK
 fn6NwrNmTQFbZdy4Exh3THlq0va78n0=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-130-nVnLZ_qMOZOG9KMs6jp7ug-1; Thu, 12 May 2022 14:21:27 -0400
X-MC-Unique: nVnLZ_qMOZOG9KMs6jp7ug-1
Received: by mail-il1-f198.google.com with SMTP id
 q6-20020a056e0215c600b002c2c4091914so3759451ilu.14
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 11:21:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=VcoQlfgRlKTkG2QnFhtWwqPtuN/iCo7Oei+ZTVCbp8Q=;
 b=u3Qs6GblhyLmYl902dsdEoHeMuhP1KdTQ0w8E+tSVE7RPklS/eGYgR7hZCR/d5H79N
 l7wnFI/sxS0qMxgvj83Q+PkB7hWo/clsfeo7+tY+D5w0F11IJhCgpjFbb7X7jxbShZ8t
 MuVBzptS8tLDaK0YWcj3CimKKIEgb6p2uWDAg1jvlW+Wkz6ko8Xlgzmwx6BOMsWy4FtV
 Xy+Aoc8NFhM33FdeG6OjgnkTOuX2mSPeXTTBHYgiqRohqEk+SoSXIaz5QGuwdpoAYL+5
 zMwOdTy6ab1IxZmCiLa0PUpAHucBpdY6OvpnNF2Cy5nu7wtcXowizlVpLwx0Tf5uOPBQ
 nESw==
X-Gm-Message-State: AOAM531XOJwVfTTOqIgRaWnKyFUHcR1foyI0/dDfIzDd1g8/kSAuA3iR
 06+wIFQSa+OsUrzAVh3yDWttkTLUhBK6OIlcSAIdwWdV4AdLBoQLxL+eC+f80/cAWhQ8JuO/JDx
 TxxdGHdo0cn9hWZw35a7B0nrPssNe
X-Received: by 2002:a05:6638:112c:b0:32a:e187:db1c with SMTP id
 f12-20020a056638112c00b0032ae187db1cmr674221jar.30.1652379686425; 
 Thu, 12 May 2022 11:21:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzrRp6MP9ShOncs1HnxoZReB9N25AEJ1S9eav9CPEBe+VnbpmFQ2wHym+Hz1/03tFiw2rRYCw==
X-Received: by 2002:a05:6638:112c:b0:32a:e187:db1c with SMTP id
 f12-20020a056638112c00b0032ae187db1cmr674208jar.30.1652379686238; 
 Thu, 12 May 2022 11:21:26 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 t188-20020a0254c5000000b0032b3a7817d6sm53215jaa.154.2022.05.12.11.21.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 May 2022 11:21:25 -0700 (PDT)
Date: Thu, 12 May 2022 12:21:24 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20220512122124.45943a9e.alex.williamson@redhat.com>
In-Reply-To: <0-v4-8045e76bf00b+13d-vfio_mdev_no_group_jgg@nvidia.com>
References: <0-v4-8045e76bf00b+13d-vfio_mdev_no_group_jgg@nvidia.com>
Organization: Red Hat
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 0/7] Make the rest of the VFIO driver
 interface use vfio_device
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Kirti Wankhede <kwankhede@nvidia.com>, Vineeth Vijayan <vneethv@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>, Christoph Hellwig <hch@lst.de>,
 linux-s390@vger.kernel.org, "Liu, Yi L" <yi.l.liu@intel.com>,
 Matthew Rosato <mjrosato@linux.ibm.com>, Jonathan Corbet <corbet@lwn.net>,
 Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, Tony Krowiak <akrowiak@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Jason Herne <jjherne@linux.ibm.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu,  5 May 2022 21:08:38 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> Prior series have transformed other parts of VFIO from working on struct
> device or struct vfio_group into working directly on struct
> vfio_device. Based on that work we now have vfio_device's readily
> available in all the drivers.
> 
> Update the rest of the driver facing API to use vfio_device as an input.
> 
> The following are switched from struct device to struct vfio_device:
>   vfio_register_notifier()
>   vfio_unregister_notifier()
>   vfio_pin_pages()
>   vfio_unpin_pages()
>   vfio_dma_rw()
> 
> The following group APIs are obsoleted and removed by just using struct
> vfio_device with the above:
>   vfio_group_pin_pages()
>   vfio_group_unpin_pages()
>   vfio_group_iommu_domain()
>   vfio_group_get_external_user_from_dev()
> 
> To retain the performance of the new device APIs relative to their group
> versions optimize how vfio_group_add_container_user() is used to avoid
> calling it when the driver must already guarantee the device is open and
> the container_users incrd.
> 
> The remaining exported VFIO group interfaces are only used by kvm, and are
> addressed by a parallel series.
> 
> This series is based on Christoph's gvt rework here:
> 
>  https://lore.kernel.org/all/5a8b9f48-2c32-8177-1c18-e3bd7bfde558@intel.com/
> 
> and so will need the PR merged first.
> 
> I have a followup series that needs this.
> 
> This is also part of the iommufd work - moving the driver facing interface
> to vfio_device provides a much cleaner path to integrate with iommufd.
> 
> v4:
>  - Use 'device' as the argument name for a struct vfio_device in vfio.c
> v3: https://lore.kernel.org/r/0-v3-e131a9b6b467+14b6-vfio_mdev_no_group_jgg@nvidia.com
>  - Based on VFIO's gvt/iommu merge
>  - Remove mention of mdev_legacy_get_vfio_device() from commit message
>  - Clarify commit message for vfio_dma_rw() conversion
>  - Talk about the open_count change in the commit message
>  - No code change
> v2: https://lore.kernel.org/r/0-v2-6011bde8e0a1+5f-vfio_mdev_no_group_jgg@nvidia.com
>  - Based on Christoph's series so mdev_legacy_get_vfio_device() is removed
>  - Reflow indenting
>  - Use vfio_assert_device_open() and WARN_ON_ONCE instead of open coding
>    the assertion
> v1: https://lore.kernel.org/r/0-v1-a8faf768d202+125dd-vfio_mdev_no_group_jgg@nvidia.com
> 
> Jason Gunthorpe (7):
>   vfio: Make vfio_(un)register_notifier accept a vfio_device
>   vfio/ccw: Remove mdev from struct channel_program
>   vfio/mdev: Pass in a struct vfio_device * to vfio_pin/unpin_pages()
>   vfio/mdev: Pass in a struct vfio_device * to vfio_dma_rw()
>   drm/i915/gvt: Change from vfio_group_(un)pin_pages to
>     vfio_(un)pin_pages
>   vfio: Remove dead code
>   vfio: Remove calls to vfio_group_add_container_user()
> 
>  .../driver-api/vfio-mediated-device.rst       |   4 +-
>  drivers/gpu/drm/i915/gvt/gvt.h                |   5 +-
>  drivers/gpu/drm/i915/gvt/kvmgt.c              |  51 ++-
>  drivers/s390/cio/vfio_ccw_cp.c                |  47 +--
>  drivers/s390/cio/vfio_ccw_cp.h                |   4 +-
>  drivers/s390/cio/vfio_ccw_fsm.c               |   3 +-
>  drivers/s390/cio/vfio_ccw_ops.c               |   7 +-
>  drivers/s390/crypto/vfio_ap_ops.c             |  23 +-
>  drivers/vfio/vfio.c                           | 299 +++---------------
>  include/linux/vfio.h                          |  21 +-
>  10 files changed, 109 insertions(+), 355 deletions(-)

Applied to vfio next branch for v5.19.  Thanks,

Alex

