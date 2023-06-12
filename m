Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E1972D49B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 00:42:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFCD10E1E7;
	Mon, 12 Jun 2023 22:42:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D11D010E1E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jun 2023 22:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1686609753;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=F75ik3Gqkzq0N+7Vu1ovwO7gqAH3ydx4ZbmNUzc5hkM=;
 b=CI86WMOL3+auhHrN3vY43UBN5zXxRsq+aA4YAZD6qrAbB1BktWwoe01NkZNf99lYivWCrZ
 /uvtRkda0LhCwNN3s5aL148zdNouITVwJ+Vt25ImZq9OZxzxsGpzlbT9v4LlZeQrx9WYQO
 nKPvQkLlLTdXwfUEP7bDpqu0BBkE4r8=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-331-XS0QmAScPuSN8d2Q-u7j5A-1; Mon, 12 Jun 2023 18:42:30 -0400
X-MC-Unique: XS0QmAScPuSN8d2Q-u7j5A-1
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-77a0fd9d2eeso588294939f.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jun 2023 15:42:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686609750; x=1689201750;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=F75ik3Gqkzq0N+7Vu1ovwO7gqAH3ydx4ZbmNUzc5hkM=;
 b=Ty3znnVM9poNaxHaT7QD8Mrcgc5BZyawgOpJAatai0bSiSXuf3i9bn4GtTKpYakJYn
 INMJZhCMg21yRWDs8GH+lYqiEGsUOeOdsdzqGvp3hRy5BiwZoOh45kpzWzI/vQMGj/Ji
 BPhRkYM86K7LPFUcq7YgLzzvvWpJhMK+uBAg7WK+jDTtsq34fUebTbP/0dLpZ8qihVYO
 B5ilxieRlDMm7qURknuxPcWEQIkdzI8Q3v4Cge4A8M2XSuTu39IXFuq15fPzF7dvsHwj
 g5oZoIadV26+Yd46s/kpmeHRAq5XZATPjyld0evewJB/SS55h+iDQw9X5bmuXXHH5baa
 M8lw==
X-Gm-Message-State: AC+VfDzRqKkW20/atqTy1aaio/IlnGr4uKWZVPaA8/fRxFBqoRLYxdKU
 xnVpAjFJU6VxP3oCI7MGVgz01PKaa7trgpRphbQTLn8DxS9zkyOj8B86ObrnN0VyZx9oWHeSMDb
 QmcIsZwAHs74GQQX3sXbU9cDdR9s7
X-Received: by 2002:a6b:7b45:0:b0:77a:ec0c:5907 with SMTP id
 m5-20020a6b7b45000000b0077aec0c5907mr7030170iop.13.1686609750031; 
 Mon, 12 Jun 2023 15:42:30 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ659aPve/JGIQqnJc4um0EzETnEkwaU4sAoCUXmtup2XV1i32AN8041DFRUd8E22BOJmpf8JA==
X-Received: by 2002:a6b:7b45:0:b0:77a:ec0c:5907 with SMTP id
 m5-20020a6b7b45000000b0077aec0c5907mr7030155iop.13.1686609749769; 
 Mon, 12 Jun 2023 15:42:29 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 h19-20020a02c4d3000000b0041f52ea3514sm2963153jaj.158.2023.06.12.15.42.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jun 2023 15:42:29 -0700 (PDT)
Date: Mon, 12 Jun 2023 16:42:28 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Yi Liu <yi.l.liu@intel.com>
Message-ID: <20230612164228.65b500e0.alex.williamson@redhat.com>
In-Reply-To: <20230602121653.80017-22-yi.l.liu@intel.com>
References: <20230602121653.80017-1-yi.l.liu@intel.com>
 <20230602121653.80017-22-yi.l.liu@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v12 21/24] vfio: Determine noiommu device in
 __vfio_register_dev()
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
 zhenzhong.duan@intel.com, peterx@redhat.com, terrence.xu@intel.com,
 chao.p.peng@linux.intel.com, linux-s390@vger.kernel.org, kvm@vger.kernel.org,
 lulu@redhat.com, yanting.jiang@intel.com, joro@8bytes.org, nicolinc@nvidia.com,
 jgg@nvidia.com, kevin.tian@intel.com, yan.y.zhao@intel.com,
 intel-gfx@lists.freedesktop.org, eric.auger@redhat.com,
 intel-gvt-dev@lists.freedesktop.org, yi.y.sun@linux.intel.com,
 clegoate@redhat.com, cohuck@redhat.com, shameerali.kolothum.thodi@huawei.com,
 suravee.suthikulpanit@amd.com, robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri,  2 Jun 2023 05:16:50 -0700
Yi Liu <yi.l.liu@intel.com> wrote:

> This moves the noiommu device determination and noiommu taint out of
> vfio_group_find_or_alloc(). noiommu device is determined in
> __vfio_register_dev() and result is stored in flag vfio_device->noiommu,
> the noiommu taint is added in the end of __vfio_register_dev().
> 
> This is also a preparation for compiling out vfio_group infrastructure
> as it makes the noiommu detection and taint common between the cdev path
> and group path though cdev path does not support noiommu.

Does this really still make sense?  The motivation for the change is
really not clear without cdev support for noiommu.  Thanks,

Alex
 
> Suggested-by: Alex Williamson <alex.williamson@redhat.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  drivers/vfio/group.c     | 15 ---------------
>  drivers/vfio/vfio_main.c | 31 ++++++++++++++++++++++++++++++-
>  include/linux/vfio.h     |  1 +
>  3 files changed, 31 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/vfio/group.c b/drivers/vfio/group.c
> index 653b62f93474..64cdd0ea8825 100644
> --- a/drivers/vfio/group.c
> +++ b/drivers/vfio/group.c
> @@ -668,21 +668,6 @@ static struct vfio_group *vfio_group_find_or_alloc(struct device *dev)
>  	struct vfio_group *group;
>  
>  	iommu_group = iommu_group_get(dev);
> -	if (!iommu_group && vfio_noiommu) {
> -		/*
> -		 * With noiommu enabled, create an IOMMU group for devices that
> -		 * don't already have one, implying no IOMMU hardware/driver
> -		 * exists.  Taint the kernel because we're about to give a DMA
> -		 * capable device to a user without IOMMU protection.
> -		 */
> -		group = vfio_noiommu_group_alloc(dev, VFIO_NO_IOMMU);
> -		if (!IS_ERR(group)) {
> -			add_taint(TAINT_USER, LOCKDEP_STILL_OK);
> -			dev_warn(dev, "Adding kernel taint for vfio-noiommu group on device\n");
> -		}
> -		return group;
> -	}
> -
>  	if (!iommu_group)
>  		return ERR_PTR(-EINVAL);
>  
> diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> index 6d8f9b0f3637..00a699b9f76b 100644
> --- a/drivers/vfio/vfio_main.c
> +++ b/drivers/vfio/vfio_main.c
> @@ -265,6 +265,18 @@ static int vfio_init_device(struct vfio_device *device, struct device *dev,
>  	return ret;
>  }
>  
> +static int vfio_device_set_noiommu(struct vfio_device *device)
> +{
> +	struct iommu_group *iommu_group = iommu_group_get(device->dev);
> +
> +	if (!iommu_group && !vfio_noiommu)
> +		return -EINVAL;
> +
> +	device->noiommu = !iommu_group;
> +	iommu_group_put(iommu_group); /* Accepts NULL */
> +	return 0;
> +}
> +
>  static int __vfio_register_dev(struct vfio_device *device,
>  			       enum vfio_group_type type)
>  {
> @@ -277,6 +289,13 @@ static int __vfio_register_dev(struct vfio_device *device,
>  		     !device->ops->detach_ioas)))
>  		return -EINVAL;
>  
> +	/* Only physical devices can be noiommu device */
> +	if (type == VFIO_IOMMU) {
> +		ret = vfio_device_set_noiommu(device);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	/*
>  	 * If the driver doesn't specify a set then the device is added to a
>  	 * singleton set just for itself.
> @@ -288,7 +307,8 @@ static int __vfio_register_dev(struct vfio_device *device,
>  	if (ret)
>  		return ret;
>  
> -	ret = vfio_device_set_group(device, type);
> +	ret = vfio_device_set_group(device,
> +				    device->noiommu ? VFIO_NO_IOMMU : type);
>  	if (ret)
>  		return ret;
>  
> @@ -301,6 +321,15 @@ static int __vfio_register_dev(struct vfio_device *device,
>  
>  	vfio_device_group_register(device);
>  
> +	if (device->noiommu) {
> +		/*
> +		 * noiommu deivces have no IOMMU hardware/driver.  Taint the
> +		 * kernel because we're about to give a DMA capable device to
> +		 * a user without IOMMU protection.
> +		 */
> +		add_taint(TAINT_USER, LOCKDEP_STILL_OK);
> +		dev_warn(device->dev, "Adding kernel taint for vfio-noiommu on device\n");
> +	}
>  	return 0;
>  err_out:
>  	vfio_device_remove_group(device);
> diff --git a/include/linux/vfio.h b/include/linux/vfio.h
> index e80a8ac86e46..183e620009e7 100644
> --- a/include/linux/vfio.h
> +++ b/include/linux/vfio.h
> @@ -67,6 +67,7 @@ struct vfio_device {
>  	bool iommufd_attached;
>  #endif
>  	bool cdev_opened:1;
> +	bool noiommu:1;
>  };
>  
>  /**

