Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D21157EA0B
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jul 2022 00:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B367A94739;
	Fri, 22 Jul 2022 22:50:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A352494721
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jul 2022 22:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1658530229;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CK6lmXhfwHfiatVMUw8JndR4RA0GTNn0tRqyQRH49OE=;
 b=ZHylcURL5xcRNw+TYWumTJPBJEkTIYcyzIGC53iCnIVv8ydfCMYK4tSv6IcqXyt8A4+1qR
 Ni61608qygCmHvT9FbR6CNxKTxGVBenzERFZ796At47uNx/wm93QqFML5jQ9ZzKUSpWnPQ
 cSOmbVgVkrVh4euwfiE72cYtEZwBJZ0=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-160-guQWznN-PwOEPRiQZgQGJA-1; Fri, 22 Jul 2022 18:50:28 -0400
X-MC-Unique: guQWznN-PwOEPRiQZgQGJA-1
Received: by mail-il1-f200.google.com with SMTP id
 b15-20020a92c56f000000b002dd2870c587so406749ilj.20
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jul 2022 15:50:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=CK6lmXhfwHfiatVMUw8JndR4RA0GTNn0tRqyQRH49OE=;
 b=WZRB0Shyy5F1oTqaJmSXmpBHvIcq9Rb6nh7MN4DuY7M4dSfaCnFPY6mVmtcIcPwyBr
 5KF7UDNtEb/4/H5vnKqRZ63wc1VM+vR5XOL3OJuq7e4SS3x2s58DS2jSazpbni24W4Gz
 o4eAToSXvEgKEusRkxUqoahnXTqt6Q6hSXtXEocnVIQ9PsMXqm7g00zwDTXEM0Q+mN+j
 sWMuEe+ijBPpk0vS3a7col3ABXz0ZyuMNVG9rZ95SgpyXyieu3WxQaErmNu0rEAoI1oA
 fuhBVVSNIq8YLw5w0b6O1Dzq4bglfuajq0b8kO5DUIS/bR0Vp+9yzL9w6hF/rsmYUifQ
 LX9g==
X-Gm-Message-State: AJIora+GBthM+HEsfnYuITy2g5aqRG24t8acpiWBPQKj9JD7dQvGEPtN
 RJCehXHdIPTIePxkEFWITFZZFmJKi+ktb87kknxF3VYVEMgvR6Pzdg9BEgBkVxb4KIJK1xSLW+S
 FvIrvtxfQy6fYnwZgQke1NGnDl4ue
X-Received: by 2002:a05:6638:3181:b0:32a:eb54:1152 with SMTP id
 z1-20020a056638318100b0032aeb541152mr951303jak.120.1658530227585; 
 Fri, 22 Jul 2022 15:50:27 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1s5wn4lDkAQ/yj/kizLiq+//m5jdlQMu2EqfOktCU40xQgJvUisSso9AjpCLGmeYpAf31sEIQ==
X-Received: by 2002:a05:6638:3181:b0:32a:eb54:1152 with SMTP id
 z1-20020a056638318100b0032aeb541152mr951286jak.120.1658530227371; 
 Fri, 22 Jul 2022 15:50:27 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 f41-20020a0284ac000000b0033f3fcba96bsm2532614jai.100.2022.07.22.15.50.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Jul 2022 15:50:26 -0700 (PDT)
Date: Fri, 22 Jul 2022 16:50:24 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20220722165024.7a41778f.alex.williamson@redhat.com>
In-Reply-To: <0-v4-681e038e30fd+78-vfio_unmap_notif_jgg@nvidia.com>
References: <0-v4-681e038e30fd+78-vfio_unmap_notif_jgg@nvidia.com>
Organization: Red Hat
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 0/2] Remove the
 VFIO_IOMMU_NOTIFY_DMA_UNMAP notifier
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
Cc: kvm@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Vineeth Vijayan <vneethv@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>, Christoph Hellwig <hch@lst.de>,
 linux-s390@vger.kernel.org, Matthew Rosato <mjrosato@linux.ibm.com>,
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

On Tue, 19 Jul 2022 21:02:47 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> This is the last notifier toward the drivers, replace it with a simple op
> callback in the vfio_device_ops.
> 
> v4:
>  - Rebase over the CCW series
> v3: https://lore.kernel.org/r/0-v3-7593f297c43f+56ce-vfio_unmap_notif_jgg@nvidia.com
>  - Remove 'nb' doc string from ccw
>  - Rebase on extern removal patch
>  - Check that register_device/unregister_device are either both defined or
>    not
>  - Remove check of dma_unmap during vfio_register_iommu_driver() as it
>    would break the drivers that don't use pin_pages
>  - Don't change VFIO_IOMMU_NOTIFY_DMA_UNMAP to an enum since we are not
>    keeping it anyhow
> v2: https://lore.kernel.org/r/0-v2-80aa110d03ce+24b-vfio_unmap_notif_jgg@nvidia.com
>  - Declare and initialize variables in intel_vgpu_dma_unmap()
>  - Remove 'vendor' when touching comments
>  - Remove kdoc for vfio dma_unmap notifier
>  - Add WARN_ON to vfio_register_emulated_iommu_dev() since dma_unmap is
>    mandatory
>  - Move dma_unmap call loop to vfio_notify_dma_unmap()
>  - Document why the double mutex is being used and why the mutex lock is
>    dropped when calling dma_unmap
> v1: https://lore.kernel.org/r/0-v1-896844109f36+a-vfio_unmap_notif_jgg@nvidia.com
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> 
> Jason Gunthorpe (2):
>   vfio: Replace the DMA unmapping notifier with a callback
>   vfio: Replace the iommu notifier with a device list
> 
>  drivers/gpu/drm/i915/gvt/gvt.h        |   1 -
>  drivers/gpu/drm/i915/gvt/kvmgt.c      |  75 +++++-------------
>  drivers/s390/cio/vfio_ccw_ops.c       |  39 ++--------
>  drivers/s390/cio/vfio_ccw_private.h   |   2 -
>  drivers/s390/crypto/vfio_ap_ops.c     |  53 ++-----------
>  drivers/s390/crypto/vfio_ap_private.h |   3 -
>  drivers/vfio/vfio.c                   | 108 ++++++--------------------
>  drivers/vfio/vfio.h                   |   9 +--
>  drivers/vfio/vfio_iommu_type1.c       | 103 +++++++++++++++---------
>  include/linux/vfio.h                  |  21 +----
>  10 files changed, 132 insertions(+), 282 deletions(-)
> 
> 
> base-commit: 2a8ed7ef00b939fbcc98b948f780bd03bafed227

Applied to vfio next branch for v5.20.  Applied as posted since
Nicolin's series regressed GVT-g support.  Thanks,

Alex

