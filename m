Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C64C60EACC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 23:25:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22FCD10E3A7;
	Wed, 26 Oct 2022 21:25:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE15D10E394
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 21:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666819502;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2ys5yrKnSWNrdXyOIt/+2hibuD6RgZdYjr5anEvm87I=;
 b=Vvq8AXeBox8vEqHJj0qtp0m6EfFfcbAbksNpD0bZfMhnKv6YHnX17c3t6KAEwufl6/5Ac6
 9Wstpy6zKDS+ljuh/eILrfxQRLCGkfrme3UorRy0J0KbtcFFLN6qHD3bujCCQ9LIxg31ko
 zKxxTchD+o9nqladGNRFrptgJP/Ivkg=
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com
 [209.85.215.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-304-oPQOOaVCOA-ezGFLZuSXew-1; Wed, 26 Oct 2022 17:25:01 -0400
X-MC-Unique: oPQOOaVCOA-ezGFLZuSXew-1
Received: by mail-pg1-f197.google.com with SMTP id
 a33-20020a630b61000000b00429d91cc649so8533573pgl.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 14:25:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2ys5yrKnSWNrdXyOIt/+2hibuD6RgZdYjr5anEvm87I=;
 b=IWoEq1Pl85xW5/0JTQDgM0tovLDALISnjfsWxyHH4Es6Vm9RA87nWby0pbqvT4Vlhi
 R0REmlO7lFePGlIEve75Pp19/a0CmFE5H6Da5wCfx+xC15TwcFIWwGtt20nnCa9i1rgm
 +8HXrdoLIkTCjJptayy+QmbgBSafKveBMTRUlSn7IjDI9K/I4G5qv8qnw9ghUqGaxQVD
 GLwJFmArjnJomkavThVHggfkhHh5pErhEuiBnxagG3LJCuiIikpj7MfdhuHaLwkFlvw6
 SnrJCJNgqPibmFpSBSmjzxQNjXLphLfv7wq2+L4+CedQZeg7htJDg8jhy0/6bB0wkV5N
 Jxhw==
X-Gm-Message-State: ACrzQf3TlX1nkNqdqfzfAL0nprbIQBVaRclF/Gd958qt6jkBN72ZugWZ
 so8aqb3GNMd8mJ5TzNmxhThhL2l8t5TIjPfdyco1CCOJOc93kJE9LQqPqZEFZuBsmD1uEOMfzSe
 410rI+Z/YDJUqtAO6aygqxEnEIuGr
X-Received: by 2002:a63:2c4c:0:b0:434:e001:89fd with SMTP id
 s73-20020a632c4c000000b00434e00189fdmr38998214pgs.444.1666819496802; 
 Wed, 26 Oct 2022 14:24:56 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM78B1N1rhquL7I27LvLWaJii8bhooCw6yJ0rMTPt8axTAAIzjlyMmOikhzath1gqGNuTiEASg==
X-Received: by 2002:a05:6e02:1b08:b0:2fc:4df6:e468 with SMTP id
 i8-20020a056e021b0800b002fc4df6e468mr27916129ilv.148.1666819486067; 
 Wed, 26 Oct 2022 14:24:46 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 x13-20020a02948d000000b0036c8a246f54sm2409348jah.142.2022.10.26.14.24.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Oct 2022 14:24:45 -0700 (PDT)
Date: Wed, 26 Oct 2022 15:24:42 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20221026152442.4855c5de.alex.williamson@redhat.com>
In-Reply-To: <4-v1-4991695894d8+211-vfio_iommufd_jgg@nvidia.com>
References: <0-v1-4991695894d8+211-vfio_iommufd_jgg@nvidia.com>
 <4-v1-4991695894d8+211-vfio_iommufd_jgg@nvidia.com>
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

On Tue, 25 Oct 2022 15:17:10 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> This legacy module knob has become uAPI, when set on the vfio_iommu_type1
> it disables some security protections in the iommu drivers. Move the
> storage for this knob to vfio_main.c so that iommufd can access it too.

I don't really understand this, we're changing the behavior of the
iommufd_device_attach() operation based on the modules options of
vfio_iommu_type1, which may not be loaded or even compiled into the
kernel.  Our compatibility story falls apart when VFIO_CONTAINER is not
set, iommufd sneaks in to usurp /dev/vfio/vfio, and the user's module
options for type1 go unprocessed.

I hate to suggest that type1 becomes a module that does nothing more
than maintain consistency of this variable when the full type1 isn't
available, but is that what we need to do?  Thanks,

Alex

> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/vfio.h             | 2 ++
>  drivers/vfio/vfio_iommu_type1.c | 5 ++---
>  drivers/vfio/vfio_main.c        | 3 +++
>  3 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/vfio/vfio.h b/drivers/vfio/vfio.h
> index f95f4925b83bbd..54e5a8e0834ccb 100644
> --- a/drivers/vfio/vfio.h
> +++ b/drivers/vfio/vfio.h
> @@ -130,4 +130,6 @@ extern bool vfio_noiommu __read_mostly;
>  enum { vfio_noiommu = false };
>  #endif
>  
> +extern bool vfio_allow_unsafe_interrupts;
> +
>  #endif
> diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
> index 23c24fe98c00d4..186e33a006d314 100644
> --- a/drivers/vfio/vfio_iommu_type1.c
> +++ b/drivers/vfio/vfio_iommu_type1.c
> @@ -44,9 +44,8 @@
>  #define DRIVER_AUTHOR   "Alex Williamson <alex.williamson@redhat.com>"
>  #define DRIVER_DESC     "Type1 IOMMU driver for VFIO"
>  
> -static bool allow_unsafe_interrupts;
>  module_param_named(allow_unsafe_interrupts,
> -		   allow_unsafe_interrupts, bool, S_IRUGO | S_IWUSR);
> +		   vfio_allow_unsafe_interrupts, bool, S_IRUGO | S_IWUSR);
>  MODULE_PARM_DESC(allow_unsafe_interrupts,
>  		 "Enable VFIO IOMMU support for on platforms without interrupt remapping support.");
>  
> @@ -2282,7 +2281,7 @@ static int vfio_iommu_type1_attach_group(void *iommu_data,
>  		    iommu_group_for_each_dev(iommu_group, (void *)IOMMU_CAP_INTR_REMAP,
>  					     vfio_iommu_device_capable);
>  
> -	if (!allow_unsafe_interrupts && !msi_remap) {
> +	if (!vfio_allow_unsafe_interrupts && !msi_remap) {
>  		pr_warn("%s: No interrupt remapping support.  Use the module param \"allow_unsafe_interrupts\" to enable VFIO IOMMU support on this platform\n",
>  		       __func__);
>  		ret = -EPERM;
> diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> index 8d809ecd982b39..1e414b2c48a511 100644
> --- a/drivers/vfio/vfio_main.c
> +++ b/drivers/vfio/vfio_main.c
> @@ -51,6 +51,9 @@ static struct vfio {
>  	struct ida			device_ida;
>  } vfio;
>  
> +bool vfio_allow_unsafe_interrupts;
> +EXPORT_SYMBOL_GPL(vfio_allow_unsafe_interrupts);
> +
>  static DEFINE_XARRAY(vfio_device_set_xa);
>  static const struct file_operations vfio_group_fops;
>  

