Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AE160EAD8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 23:31:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D39910E41E;
	Wed, 26 Oct 2022 21:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BF1B10E411
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 21:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666819899;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kuFaUTxM7jN8IIcowYyyBSnYENOQWRsD3k/T0JWO9mA=;
 b=BWfRrFw2zW7YjHCvZeTsXQlcDpdrwQhbzB8f1rogR2TNc7kOtMtEyCc13cQn4ruA3iRbiv
 DJV/0FAHgK7aQvZXRh7lQ7s+/5NQgXioKjv9kLiyuNEeIfWhc/35Y7biaPJ86bxIKmION6
 5UhnyJAUHD4y/xxOTxmq3bdoi4n6jN4=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-259-JYP9kMVoMuGUnX3dStXOIQ-1; Wed, 26 Oct 2022 17:31:38 -0400
X-MC-Unique: JYP9kMVoMuGUnX3dStXOIQ-1
Received: by mail-il1-f197.google.com with SMTP id
 l4-20020a056e021aa400b003000df80c3aso7148510ilv.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 14:31:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kuFaUTxM7jN8IIcowYyyBSnYENOQWRsD3k/T0JWO9mA=;
 b=R1/xZycdKUkJmmD9asuqeDheWSzzkNBgtFGDNu59bAyTo1vwxmlLOsQx0Jw6s5oqsB
 p6nwwoNwFTh0KvZeccRelcgge3h+HaouTfh04dxo2LgcVHiYzdpKX25fGytdWXPZtq62
 8/HQ218yOovJju0fYud+oya2VqwY1BAZzVD5s3WqZI/1DFH8iuKnazDw2+nhjFLP38A0
 kBUb+4grCJxbIZDsMvlzUUFT1NMkXu6bPBSufd8fUjE8RN+HUupqXkL04zbfOcrmR1Kt
 sQcQHbquebOGN7XtLU4JxMO2cMOzyZzkKmoXVPXyePZQPsnj+E+BxLnHWyVJ2LTc7mmU
 cE1A==
X-Gm-Message-State: ACrzQf25tnyzx0TAOouRjKI5Qd1WFRH2HeJAAgiUvV7gbqACrZU9u70y
 wXYKYB6y9F4ld7hSJMcXUrwEk0YcHGgPfJkaBsFMAg34mfL8QxRPPJg3N7ixF2k9+bfVYST2b5e
 CYcCkzY2IQ72dB6g+dvMd+W2DD/uz
X-Received: by 2002:a05:6602:341c:b0:6bc:1c3d:836e with SMTP id
 n28-20020a056602341c00b006bc1c3d836emr25364754ioz.24.1666819897613; 
 Wed, 26 Oct 2022 14:31:37 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7g0EslrnnS032hMCGhtH/3H9PcP3RsMN5qxVX8v5zeaewsUE7rw9P/VUiao60P3aqERhjABw==
X-Received: by 2002:a05:6602:341c:b0:6bc:1c3d:836e with SMTP id
 n28-20020a056602341c00b006bc1c3d836emr25364701ioz.24.1666819897311; 
 Wed, 26 Oct 2022 14:31:37 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 n31-20020a056602341f00b006bc3bf6e5b5sm2759668ioz.55.2022.10.26.14.31.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Oct 2022 14:31:36 -0700 (PDT)
Date: Wed, 26 Oct 2022 15:31:33 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20221026153133.44dc05c8.alex.williamson@redhat.com>
In-Reply-To: <10-v1-4991695894d8+211-vfio_iommufd_jgg@nvidia.com>
References: <0-v1-4991695894d8+211-vfio_iommufd_jgg@nvidia.com>
 <10-v1-4991695894d8+211-vfio_iommufd_jgg@nvidia.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 10/10] iommufd: Allow iommufd to supply
 /dev/vfio/vfio
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

On Tue, 25 Oct 2022 15:50:45 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> If the VFIO container is compiled out, give a kconfig option for iommufd
> to provide the miscdev node with the same name and permissions as vfio
> uses.
> 
> The compatibility node supports the same ioctls as VFIO and automatically
> enables the VFIO compatible pinned page accounting mode.

I think I'd like to see some sort of breadcrumb when /dev/vfio/vfio is
provided by something other than the vfio container code.  If we intend
to include this before P2P is resolved, that breadcrumb (dmesg I'm
guessing) might also list any known limitations of the compatibility to
save time with debugging.  Thanks,

Alex

> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/iommu/iommufd/Kconfig | 12 ++++++++++++
>  drivers/iommu/iommufd/main.c  | 35 ++++++++++++++++++++++++++++++++---
>  2 files changed, 44 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iommu/iommufd/Kconfig b/drivers/iommu/iommufd/Kconfig
> index f0a2012234fa09..afc83b7575cce6 100644
> --- a/drivers/iommu/iommufd/Kconfig
> +++ b/drivers/iommu/iommufd/Kconfig
> @@ -14,6 +14,18 @@ config IOMMUFD
>  	  If you don't know what to do here, say N.
>  
>  if IOMMUFD
> +config IOMMUFD_VFIO_CONTAINER
> +	bool "IOMMUFD provides the VFIO container /dev/vfio/vfio"
> +	depends on VFIO && !VFIO_CONTAINER
> +	default VFIO && !VFIO_CONTAINER
> +	help
> +	  IOMMUFD will provide /dev/vfio/vfio instead of VFIO. This relies on
> +	  IOMMUFD providing compatibility emulation to give the same ioctls.
> +	  It provides an option to build a kernel with legacy VFIO components
> +	  removed.
> +
> +	  Unless testing IOMMUFD say N here.
> +
>  config IOMMUFD_TEST
>  	bool "IOMMU Userspace API Test support"
>  	depends on RUNTIME_TESTING_MENU
> diff --git a/drivers/iommu/iommufd/main.c b/drivers/iommu/iommufd/main.c
> index 8a31c1a14cdd53..19db81fbf7f08f 100644
> --- a/drivers/iommu/iommufd/main.c
> +++ b/drivers/iommu/iommufd/main.c
> @@ -24,6 +24,7 @@
>  #include <uapi/linux/iommufd.h>
>  #include <linux/iommufd.h>
>  
> +#include "io_pagetable.h"
>  #include "iommufd_private.h"
>  #include "iommufd_test.h"
>  
> @@ -31,6 +32,7 @@ struct iommufd_object_ops {
>  	void (*destroy)(struct iommufd_object *obj);
>  };
>  static struct iommufd_object_ops iommufd_object_ops[];
> +static struct miscdevice vfio_misc_dev;
>  
>  struct iommufd_object *_iommufd_object_alloc(struct iommufd_ctx *ictx,
>  					     size_t size,
> @@ -167,6 +169,13 @@ static int iommufd_fops_open(struct inode *inode, struct file *filp)
>  	if (!ictx)
>  		return -ENOMEM;
>  
> +	/*
> +	 * For compatibility with VFIO when /dev/vfio/vfio is opened we default
> +	 * to the same rlimit accounting as vfio uses.
> +	 */
> +	if (filp->private_data == &vfio_misc_dev)
> +		ictx->account_mode = IOPT_PAGES_ACCOUNT_MM;
> +
>  	xa_init_flags(&ictx->objects, XA_FLAGS_ALLOC1 | XA_FLAGS_ACCOUNT);
>  	ictx->file = filp;
>  	filp->private_data = ictx;
> @@ -392,26 +401,46 @@ static struct miscdevice iommu_misc_dev = {
>  	.mode = 0660,
>  };
>  
> +
> +static struct miscdevice vfio_misc_dev = {
> +	.minor = VFIO_MINOR,
> +	.name = "vfio",
> +	.fops = &iommufd_fops,
> +	.nodename = "vfio/vfio",
> +	.mode = 0666,
> +};
> +
>  static int __init iommufd_init(void)
>  {
>  	int ret;
>  
>  	ret = misc_register(&iommu_misc_dev);
> -	if (ret) {
> -		pr_err("Failed to register misc device\n");
> +	if (ret)
>  		return ret;
> -	}
>  
> +	if (IS_ENABLED(CONFIG_IOMMUFD_VFIO_CONTAINER)) {
> +		ret = misc_register(&vfio_misc_dev);
> +		if (ret)
> +			goto err_misc;
> +	}
>  	return 0;
> +err_misc:
> +	misc_deregister(&iommu_misc_dev);
> +	return ret;
>  }
>  
>  static void __exit iommufd_exit(void)
>  {
> +	if (IS_ENABLED(CONFIG_IOMMUFD_VFIO_CONTAINER))
> +		misc_deregister(&vfio_misc_dev);
>  	misc_deregister(&iommu_misc_dev);
>  }
>  
>  module_init(iommufd_init);
>  module_exit(iommufd_exit);
>  
> +#if IS_ENABLED(CONFIG_IOMMUFD_VFIO_CONTAINER)
> +MODULE_ALIAS_MISCDEV(VFIO_MINOR);
> +#endif
>  MODULE_DESCRIPTION("I/O Address Space Management for passthrough devices");
>  MODULE_LICENSE("GPL");

