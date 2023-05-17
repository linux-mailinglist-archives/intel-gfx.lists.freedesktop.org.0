Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5870370725F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 21:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAFF710E470;
	Wed, 17 May 2023 19:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F212C10E471
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 19:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1684352433;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qaMnAGXuqZ++k7whsMY2S/rOWuBgmGh59N8DJRQDhTs=;
 b=Mb5O1ZnRUGW11LG8nKZLIGf85TEjKNx/GnWpn2tKQlMEupJZvp45LNtrsXybbnZUr/koD6
 RJusjYu0STDH7j08yronRYuyRJJ8B9EwW+/FBJMS/SLEF2FNyXKGsefSFc4iN7KcmzFst2
 wPynH74CMyjN8yRYxv0dWwSsXguZQUs=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-363-SupjLcp7NOizTHGarJScyA-1; Wed, 17 May 2023 15:40:32 -0400
X-MC-Unique: SupjLcp7NOizTHGarJScyA-1
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-33539445684so78286365ab.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 12:40:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684352432; x=1686944432;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qaMnAGXuqZ++k7whsMY2S/rOWuBgmGh59N8DJRQDhTs=;
 b=X/OBwC2L7eWAwB1FdfJ+qR/GK/7jW3eDTU9db4Ya8JIJlVq7gAWDSvMtvckWFoKd5S
 yyv8ZE7smC/a7zgSinqJp0FooIY1Xt1c1Z/npIehlHDsCSf2pARlHco8bH3WUXtCJvn1
 Zw9Q36uK0f6yBxDdUj76E2lBRET+0IndTw1j5lMJthvAZRIBTvjqYSsnFPCPEJ9ZRSaR
 pkvrqAWk/NDo5Uh77LHUcDvf1AK3bQ2+xioHaRfHH7qQAMKamriujLN4sSza8CtByHA1
 TH/cFONeKEOMkU6PzAYpIy1pktnPnbZMq+iVyLrr7PwNMLUuJFYvRiWx5tpleBBKwfUP
 /PHw==
X-Gm-Message-State: AC+VfDy1z04+pmF9wzHS4Q3C5yT5VfwQY1qN5bfMCjMYqbgH8C0PuP0u
 moYntt/Su0LuaPINA290SZvSz9DsOZylGR9ndyZdwWUCm/VcSORBlBz6YaqmTlTAWTuXwPFEeA0
 zBKiK/ZoJoOszdSB9KkrqwKLqISwt
X-Received: by 2002:a92:d98d:0:b0:335:4c33:dd2b with SMTP id
 r13-20020a92d98d000000b003354c33dd2bmr2248075iln.9.1684352431918; 
 Wed, 17 May 2023 12:40:31 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5zPWqyJ1aUUbKlOSg6odEXbgecsB1Z4PYEWsEoMYwkf7RUxzAQTmSNvl+uiWj/tj7xsU7DXg==
X-Received: by 2002:a92:d98d:0:b0:335:4c33:dd2b with SMTP id
 r13-20020a92d98d000000b003354c33dd2bmr2248043iln.9.1684352431641; 
 Wed, 17 May 2023 12:40:31 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 h15-20020a92d84f000000b00328ab01a23fsm3413863ilq.14.2023.05.17.12.40.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 May 2023 12:40:31 -0700 (PDT)
Date: Wed, 17 May 2023 13:40:29 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Yi Liu <yi.l.liu@intel.com>
Message-ID: <20230517134029.7e3da6c6.alex.williamson@redhat.com>
In-Reply-To: <20230513132136.15021-9-yi.l.liu@intel.com>
References: <20230513132136.15021-1-yi.l.liu@intel.com>
 <20230513132136.15021-9-yi.l.liu@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v5 08/10] iommufd: Add
 iommufd_ctx_has_group()
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
 jgg@nvidia.com, yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org,
 eric.auger@redhat.com, intel-gvt-dev@lists.freedesktop.org,
 yi.y.sun@linux.intel.com, clegoate@redhat.com, cohuck@redhat.com,
 shameerali.kolothum.thodi@huawei.com, suravee.suthikulpanit@amd.com,
 robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 13 May 2023 06:21:34 -0700
Yi Liu <yi.l.liu@intel.com> wrote:

> to check if any device within the given iommu_group has been bound with

Nit, I find these commit logs where the subject line is intended to
flow into the commit log to form a complete sentence difficult to read.
I expect complete thoughts within the commit log itself and the subject
should be a separate summary of the log.  Repeating the subject within
the commit log is ok.

> the iommufd_ctx. This helpful for the checking on device ownership for

s/This/This is/

> the devices which have been bound but cannot be bound to any other iommufd

s/have been/have not been/?

> as the iommu_group has been bound.
> 
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  drivers/iommu/iommufd/device.c | 29 +++++++++++++++++++++++++++++
>  include/linux/iommufd.h        |  8 ++++++++
>  2 files changed, 37 insertions(+)
> 
> diff --git a/drivers/iommu/iommufd/device.c b/drivers/iommu/iommufd/device.c
> index 81466b97023f..5e5f7912807b 100644
> --- a/drivers/iommu/iommufd/device.c
> +++ b/drivers/iommu/iommufd/device.c
> @@ -98,6 +98,35 @@ struct iommufd_device *iommufd_device_bind(struct iommufd_ctx *ictx,
>  }
>  EXPORT_SYMBOL_NS_GPL(iommufd_device_bind, IOMMUFD);
>  
> +/**
> + * iommufd_ctx_has_group - True if the struct device is bound to this ictx

What struct device?  Isn't this "True if any device within the group is
bound to the ictx"?

> + * @ictx: iommufd file descriptor
> + * @group: Pointer to a physical iommu_group struct
> + *
> + * True if a iommufd_device_bind() is present for any device within the
> + * group.

How can a function be present for a device?  Maybe "True if any device
within the group has been bound to this ictx, ex. via
iommufd_device_bind(), therefore implying ictx ownership of the group."  Thanks,

Alex

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
> index 68cd65274e28..e49c16cd6831 100644
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
> @@ -56,6 +57,7 @@ void iommufd_ctx_get(struct iommufd_ctx *ictx);
>  #if IS_ENABLED(CONFIG_IOMMUFD)
>  struct iommufd_ctx *iommufd_ctx_from_file(struct file *file);
>  void iommufd_ctx_put(struct iommufd_ctx *ictx);
> +bool iommufd_ctx_has_group(struct iommufd_ctx *ictx, struct iommu_group *group);
>  
>  int iommufd_access_pin_pages(struct iommufd_access *access, unsigned long iova,
>  			     unsigned long length, struct page **out_pages,
> @@ -77,6 +79,12 @@ static inline void iommufd_ctx_put(struct iommufd_ctx *ictx)
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

