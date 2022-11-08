Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E69621F3F
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 23:28:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B531310E2DC;
	Tue,  8 Nov 2022 22:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0C2B10E2DC
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 22:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1667946517;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pAwH+5JDvufKDL3NMoeBuf7w8Ln38eP9Ts8frUc7hNk=;
 b=AP9E/YatBORnNdyZAhw4GmmzpSxMmZMGLvdbanNR2Tl7e7VAJsfP1mWTZzOVMcdDXAyFcr
 VjHXlhhjoQ4V7maq/eVxoiQN1OQY7808SlqJt3o6zCUWNEkqMRJtQdJ4uG5qXCjcwlIZkT
 1pGqGmMbGkYTfrDO3QQL+1+tQdC5f+I=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-516-BdZMqmS6OxmwmcYaU7c3zg-1; Tue, 08 Nov 2022 17:28:36 -0500
X-MC-Unique: BdZMqmS6OxmwmcYaU7c3zg-1
Received: by mail-il1-f200.google.com with SMTP id
 j7-20020a056e02154700b003007885e7beso12275470ilu.20
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Nov 2022 14:28:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pAwH+5JDvufKDL3NMoeBuf7w8Ln38eP9Ts8frUc7hNk=;
 b=e/Di9fEVl3vub3qwhA4mDAv+7VBrIMmhS3fXk3RmoYfSK7SmZe/baJf3b7/mWWWMZV
 tG3L7A94aWm2V0Tp5KF+5v883iXupYHTE5CdFJddgesGYet/PkbfS52I81Mp4nJI86gD
 mEMWyGwVs+0WPKRwfAjDXcCxticVcD4W0HikXWX3iGsSS7OL42pgcBSVsGD6mY++iEqP
 yy4tkm3survgAqpLmsGseWJR0boQfqOgh9+afVjcQEfmbXsyxkc7UkXAOquoLUiQToVu
 62I3nkUhOIYb5SnkuK/LwJgAGq34ukyE/4f0oyvHGXIJQ4fmDjiUmnqlDx63DLd98RVH
 pxAA==
X-Gm-Message-State: ACrzQf3x0BQND4c0vzzee+CxO4giVRgW3pZ1+THSiaJz2SKaLS6eeGnY
 DqlQh4jN6PwgZY24N0EEArnear6YueWwuaRN8IQzGz9WyHD8zd5Zd4dG+t1xOf7A9vHS2KlAUGI
 pi89d6WMv611HaDKa1lVW0YUD8ySQ
X-Received: by 2002:a05:6638:3e1b:b0:373:9526:ff23 with SMTP id
 co27-20020a0566383e1b00b003739526ff23mr1059587jab.25.1667946515346; 
 Tue, 08 Nov 2022 14:28:35 -0800 (PST)
X-Google-Smtp-Source: AMsMyM7qQUvxc2/UNOHomsJy1dPTa1Nkgqu6DzA5Et+Lrzoib29h+Bm9PbubEw1u6deu68awl9vxhQ==
X-Received: by 2002:a05:6638:3e1b:b0:373:9526:ff23 with SMTP id
 co27-20020a0566383e1b00b003739526ff23mr1059545jab.25.1667946515058; 
 Tue, 08 Nov 2022 14:28:35 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 k9-20020a026609000000b003753b6452f9sm4039228jac.35.2022.11.08.14.28.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Nov 2022 14:28:34 -0800 (PST)
Date: Tue, 8 Nov 2022 15:28:31 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20221108152831.1a2ed3df.alex.williamson@redhat.com>
In-Reply-To: <10-v2-65016290f146+33e-vfio_iommufd_jgg@nvidia.com>
References: <0-v2-65016290f146+33e-vfio_iommufd_jgg@nvidia.com>
 <10-v2-65016290f146+33e-vfio_iommufd_jgg@nvidia.com>
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

On Mon,  7 Nov 2022 20:52:54 -0400
Jason Gunthorpe <jgg@nvidia.com> wrote:

> Add a kconfig CONFIG_VFIO_CONTAINER that controls compiling the container
> code. If 'n' then only iommufd will provide the container service. All the
> support for vfio iommu drivers, including type1, will not be built.
> 
> This allows a compilation check that no inappropriate dependencies between
> the device/group and container have been created.
> 
> Tested-by: Nicolin Chen <nicolinc@nvidia.com>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/Kconfig  | 35 +++++++++++++++--------
>  drivers/vfio/Makefile |  4 +--
>  drivers/vfio/vfio.h   | 65 +++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 91 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/vfio/Kconfig b/drivers/vfio/Kconfig
> index 1118d322eec97d..286c1663bd7564 100644
> --- a/drivers/vfio/Kconfig
> +++ b/drivers/vfio/Kconfig
> @@ -3,8 +3,8 @@ menuconfig VFIO
>  	tristate "VFIO Non-Privileged userspace driver framework"
>  	select IOMMU_API
>  	depends on IOMMUFD || !IOMMUFD
> -	select VFIO_IOMMU_TYPE1 if MMU && (X86 || S390 || ARM || ARM64)
>  	select INTERVAL_TREE
> +	select VFIO_CONTAINER if IOMMUFD=n
>  	help
>  	  VFIO provides a framework for secure userspace device drivers.
>  	  See Documentation/driver-api/vfio.rst for more details.
> @@ -12,6 +12,18 @@ menuconfig VFIO
>  	  If you don't know what to do here, say N.
>  
>  if VFIO
> +config VFIO_CONTAINER
> +	bool "Support for the VFIO container /dev/vfio/vfio"
> +	select VFIO_IOMMU_TYPE1 if MMU && (X86 || S390 || ARM || ARM64)
> +	default y
> +	help
> +	  The VFIO container is the classic interface to VFIO for establishing
> +	  IOMMU mappings. If N is selected here then IOMMUFD must be used to
> +	  manage the mappings.
> +
> +	  Unless testing IOMMUFD say Y here.
> +
> +if VFIO_CONTAINER
>  config VFIO_IOMMU_TYPE1
>  	tristate
>  	default n
> @@ -21,16 +33,6 @@ config VFIO_IOMMU_SPAPR_TCE
>  	depends on SPAPR_TCE_IOMMU
>  	default VFIO
>  
> -config VFIO_SPAPR_EEH
> -	tristate
> -	depends on EEH && VFIO_IOMMU_SPAPR_TCE
> -	default VFIO
> -
> -config VFIO_VIRQFD
> -	tristate
> -	select EVENTFD
> -	default n
> -
>  config VFIO_NOIOMMU
>  	bool "VFIO No-IOMMU support"
>  	help


Perhaps this should have been obvious, but I'm realizing that
vfio-noiommu mode is completely missing without VFIO_CONTAINER, which
seems a barrier to deprecating VFIO_CONTAINER and perhaps makes it a
question whether IOMMUFD should really be taking over /dev/vfio/vfio.
No-iommu mode has users.  Thanks,

Alex

