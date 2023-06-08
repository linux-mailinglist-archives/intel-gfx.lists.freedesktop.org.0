Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C07B9728A58
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 23:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F0810E0EA;
	Thu,  8 Jun 2023 21:40:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A4C010E0EA
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 21:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1686260456;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=th2bvhX62hzxRrLB1ybsAs0POe7Ojvtoj9i9GhxJpv4=;
 b=MNeICA5NpSs/CJVXIw4cZw/kuqN1A0cW88ic4bAMkWIRmsBGcLaElJ0sGzVKBLYJkbU0Z+
 UgipIXRVOoPcI90nL3AgJumN/AHvI6LYFVr02FF1f700DYWe7ueoNuRGGsfgVvUkNJsalB
 GyKSgb8FG+SH7hS8acW9vBOrpd1R5xw=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-650-zRvdI2HJNU6kg3BeANbjvA-1; Thu, 08 Jun 2023 17:40:54 -0400
X-MC-Unique: zRvdI2HJNU6kg3BeANbjvA-1
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-77a0fd9d2eeso97583739f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jun 2023 14:40:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686260454; x=1688852454;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=th2bvhX62hzxRrLB1ybsAs0POe7Ojvtoj9i9GhxJpv4=;
 b=WKOCDbgFWGWb2OzV0iW15yRALZs3j24zrqLrq9Agt0u/hlzOX6a4oOPv+1rb5JBLjm
 erIIRsiDZfp3TD2wVhzeTbrWzukRDt6hgX4FFn44UMoUnaOi5uJveFAPE0J7nIA9r5eU
 x0QuWqqqfuHDwRBqjcLZz0PoUV7B3Iz+NjtWzU3ZD2aQlY+ojbMms8HvGcE2BpcNjaC9
 6APVJQ55OHdaEsqdATseYfQY8yj+JiOWxIOQeVVWGNMMt756d6tThF2PGnXVEHfXgYMz
 GAz5uRLkByBlB9ljK2IHLY3yZNe2s2b2TTzJELPJivVC8TS14mIhd5tA6fP0ttLyMIkn
 lYFw==
X-Gm-Message-State: AC+VfDw7vZ3kfXdKbXzi3fTtvTI2tIpg/109CDyd837JvNC9yji/3rcH
 94q++c6ZGemAMv7JyBtKz5mr3EefzR/Y1vdIOEalGjvZ6IygQmF2rITyWN6ADAVjwe4Ep1WNJgJ
 CA2t7KQPUC2/8cQoIYkQaAi2guZux
X-Received: by 2002:a5e:8345:0:b0:777:ab8e:7039 with SMTP id
 y5-20020a5e8345000000b00777ab8e7039mr7756619iom.15.1686260454145; 
 Thu, 08 Jun 2023 14:40:54 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6UUVLC5rbROJu7mWqoujxWOhqO8BOzy7CP85v3updJvqBKZ/ov8Q2c1LG3o15l/VOOm831qQ==
X-Received: by 2002:a5e:8345:0:b0:777:ab8e:7039 with SMTP id
 y5-20020a5e8345000000b00777ab8e7039mr7756585iom.15.1686260453798; 
 Thu, 08 Jun 2023 14:40:53 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 h2-20020a02cd22000000b00420cda3fd2esm510972jaq.155.2023.06.08.14.40.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jun 2023 14:40:53 -0700 (PDT)
Date: Thu, 8 Jun 2023 15:40:51 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Yi Liu <yi.l.liu@intel.com>
Message-ID: <20230608154051.0f0e4449.alex.williamson@redhat.com>
In-Reply-To: <20230602121515.79374-5-yi.l.liu@intel.com>
References: <20230602121515.79374-1-yi.l.liu@intel.com>
 <20230602121515.79374-5-yi.l.liu@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v7 4/9] iommufd: Add iommufd_ctx_has_group()
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

On Fri,  2 Jun 2023 05:15:10 -0700
Yi Liu <yi.l.liu@intel.com> wrote:

> This adds the helper to check if any device within the given iommu_group
> has been bound with the iommufd_ctx. This is helpful for the checking on
> device ownership for the devices which have not been bound but cannot be
> bound to any other iommufd_ctx as the iommu_group has been bound.
> 
> Tested-by: Terrence Xu <terrence.xu@intel.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  drivers/iommu/iommufd/device.c | 30 ++++++++++++++++++++++++++++++
>  include/linux/iommufd.h        |  8 ++++++++
>  2 files changed, 38 insertions(+)
> 
> diff --git a/drivers/iommu/iommufd/device.c b/drivers/iommu/iommufd/device.c
> index 4f9b2142274c..4571344c8508 100644
> --- a/drivers/iommu/iommufd/device.c
> +++ b/drivers/iommu/iommufd/device.c
> @@ -98,6 +98,36 @@ struct iommufd_device *iommufd_device_bind(struct iommufd_ctx *ictx,
>  }
>  EXPORT_SYMBOL_NS_GPL(iommufd_device_bind, IOMMUFD);
>  
> +/**
> + * iommufd_ctx_has_group - True if any device within the group is bound
> + *                         to the ictx
> + * @ictx: iommufd file descriptor
> + * @group: Pointer to a physical iommu_group struct
> + *
> + * True if any device within the group has been bound to this ictx, ex. via
> + * iommufd_device_bind(), therefore implying ictx ownership of the group.
> + */
> +bool iommufd_ctx_has_group(struct iommufd_ctx *ictx, struct iommu_group *group)
> +{
> +	struct iommufd_object *obj;
> +	unsigned long index;
> +
> +	if (!ictx || !group)
> +		return false;
> +
> +	xa_lock(&ictx->objects);
> +	xa_for_each(&ictx->objects, index, obj) {
> +		if (obj->type == IOMMUFD_OBJ_DEVICE &&
> +		    container_of(obj, struct iommufd_device, obj)->group == group) {
> +			xa_unlock(&ictx->objects);
> +			return true;
> +		}
> +	}
> +	xa_unlock(&ictx->objects);
> +	return false;
> +}
> +EXPORT_SYMBOL_NS_GPL(iommufd_ctx_has_group, IOMMUFD);
> +
>  /**
>   * iommufd_device_unbind - Undo iommufd_device_bind()
>   * @idev: Device returned by iommufd_device_bind()
> diff --git a/include/linux/iommufd.h b/include/linux/iommufd.h
> index 1129a36a74c4..33fe57e95e42 100644
> --- a/include/linux/iommufd.h
> +++ b/include/linux/iommufd.h
> @@ -16,6 +16,7 @@ struct page;
>  struct iommufd_ctx;
>  struct iommufd_access;
>  struct file;
> +struct iommu_group;
>  
>  struct iommufd_device *iommufd_device_bind(struct iommufd_ctx *ictx,
>  					   struct device *dev, u32 *id);
> @@ -50,6 +51,7 @@ void iommufd_ctx_get(struct iommufd_ctx *ictx);
>  #if IS_ENABLED(CONFIG_IOMMUFD)
>  struct iommufd_ctx *iommufd_ctx_from_file(struct file *file);
>  void iommufd_ctx_put(struct iommufd_ctx *ictx);
> +bool iommufd_ctx_has_group(struct iommufd_ctx *ictx, struct iommu_group *group);
>  
>  int iommufd_access_pin_pages(struct iommufd_access *access, unsigned long iova,
>  			     unsigned long length, struct page **out_pages,
> @@ -71,6 +73,12 @@ static inline void iommufd_ctx_put(struct iommufd_ctx *ictx)
>  {
>  }
>  
> +static inline bool iommufd_ctx_has_group(struct iommufd_ctx *ictx,
> +					 struct iommu_group *group)
> +{
> +	return false;
> +}
> +
>  static inline int iommufd_access_pin_pages(struct iommufd_access *access,
>  					   unsigned long iova,
>  					   unsigned long length,

It looks like the v12 cdev series no longer requires this stub?  We
haven't used this function except from iommufd specific code since v5.
Thanks,

Alex

