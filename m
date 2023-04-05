Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA976D856C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 19:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1B1C10E231;
	Wed,  5 Apr 2023 17:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BE0410E087
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 17:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680717515;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bxLaegyvGXsWtWEkMuJq7mzfRVKAvjHLcyr9E0NhVqA=;
 b=NpzX1pQSrnR2Ti9M3wMUQMSEwFnGiEh33waZO8MkwMZhDnkDG1lK9/aR4GKLYG6u1Gs2JY
 8/2N5c+AHilshG+XhYjgRt+ek8hOqYCqRxY1goAMbvGxSps69SC+mYnTdyiCve0A7Rn3yF
 JXviAdUCaJwh5hPj1Ls8hxgDsrh3zVM=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-367-MMOyQq0rOL-ZJoLv1Pywtg-1; Wed, 05 Apr 2023 13:58:33 -0400
X-MC-Unique: MMOyQq0rOL-ZJoLv1Pywtg-1
Received: by mail-qk1-f198.google.com with SMTP id
 c80-20020ae9ed53000000b007468c560e1bso16745973qkg.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 10:58:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680717513;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bxLaegyvGXsWtWEkMuJq7mzfRVKAvjHLcyr9E0NhVqA=;
 b=UYqsGva4aYkaoIguf5her/0FTtosASHH99w6g8UhZsLuL1380lsvjIi+/lp5LIIKr+
 hQYdqALzPfGXpZ2OAlEq2+eJfnZLBIlOi/u2MPn7WhxN8+eMYrCW8B8y9sxnFPmINZmy
 WDnS+b/LjOiTecONWx52bjKvV6oHSQWcqjTixP2WHxG5mBAMiSIa084Zue2wOqM91Xnx
 ipYe59tutlJUr2RJG+SmoxZ8fkENdPaNT2xgohsTIymV8P54Zlb+MjBXp0XkOJ04nr+0
 5cRL/Ur2JTXIshQD9/7y55YnDTw5vcJ5IYqbr8BK74LYmtC0Fr2IpaHY8gRRk+w1wInq
 W9xg==
X-Gm-Message-State: AAQBX9dHGWlLzlaXgLREc1KvA85gWk9aWedPPD2fjnVbX0TEidyPaFbX
 8ddbwguTCDEsBkBd1J1EnKbhrECFNBIQqN9TzLcdZq2NJSFGFQ8hOtnhUO8k5i15zuIZRSKj60f
 GZhNlRjF6E9T7MN3lG0LjnEV1Qi7n
X-Received: by 2002:ad4:5f8b:0:b0:5bd:14f9:650d with SMTP id
 jp11-20020ad45f8b000000b005bd14f9650dmr53896qvb.36.1680717513006; 
 Wed, 05 Apr 2023 10:58:33 -0700 (PDT)
X-Google-Smtp-Source: AKy350aVDJ5I73OXxuM402WPKU9vfhckM20c+fZ/2+Cchx+DMOvKxzeMX7mOqyBFvtiDLu67T1foqg==
X-Received: by 2002:ad4:5f8b:0:b0:5bd:14f9:650d with SMTP id
 jp11-20020ad45f8b000000b005bd14f9650dmr53862qvb.36.1680717512735; 
 Wed, 05 Apr 2023 10:58:32 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:59e:9d80:527b:9dff:feef:3874?
 ([2a01:e0a:59e:9d80:527b:9dff:feef:3874])
 by smtp.gmail.com with ESMTPSA id
 h15-20020ac8548f000000b003e0945575dasm4184864qtq.1.2023.04.05.10.58.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Apr 2023 10:58:31 -0700 (PDT)
Message-ID: <43f6e334-f440-ea85-9e74-c0b700c07399@redhat.com>
Date: Wed, 5 Apr 2023 19:58:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Yi Liu <yi.l.liu@intel.com>, alex.williamson@redhat.com, jgg@nvidia.com,
 kevin.tian@intel.com
References: <20230401151833.124749-1-yi.l.liu@intel.com>
 <20230401151833.124749-5-yi.l.liu@intel.com>
From: Eric Auger <eric.auger@redhat.com>
In-Reply-To: <20230401151833.124749-5-yi.l.liu@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v9 04/25] vfio: Accept vfio device file in
 the KVM facing kAPI
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
Reply-To: eric.auger@redhat.com
Cc: linux-s390@vger.kernel.org, yi.y.sun@linux.intel.com, kvm@vger.kernel.org,
 mjrosato@linux.ibm.com, intel-gvt-dev@lists.freedesktop.org, joro@8bytes.org,
 cohuck@redhat.com, xudong.hao@intel.com, peterx@redhat.com,
 yan.y.zhao@intel.com, terrence.xu@intel.com, nicolinc@nvidia.com,
 shameerali.kolothum.thodi@huawei.com, suravee.suthikulpanit@amd.com,
 intel-gfx@lists.freedesktop.org, chao.p.peng@linux.intel.com, lulu@redhat.com,
 robin.murphy@arm.com, jasowang@redhat.com, yanting.jiang@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Yi,

On 4/1/23 17:18, Yi Liu wrote:
> This makes the vfio file kAPIs to accept vfio device files, also a
> preparation for vfio device cdev support.
>
> For the kvm set with vfio device file, kvm pointer is stored in struct
> vfio_device_file, and use kvm_ref_lock to protect kvm set and kvm
> pointer usage within VFIO. This kvm pointer will be set to vfio_device
> after device file is bound to iommufd in the cdev path.
>
> Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> Tested-by: Terrence Xu <terrence.xu@intel.com>
> Tested-by: Nicolin Chen <nicolinc@nvidia.com>
> Tested-by: Matthew Rosato <mjrosato@linux.ibm.com>
> Tested-by: Yanting Jiang <yanting.jiang@intel.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric
> ---
>  drivers/vfio/vfio.h      |  2 ++
>  drivers/vfio/vfio_main.c | 18 ++++++++++++++++++
>  2 files changed, 20 insertions(+)
>
> diff --git a/drivers/vfio/vfio.h b/drivers/vfio/vfio.h
> index 56ad127ac618..e4672d91a6f7 100644
> --- a/drivers/vfio/vfio.h
> +++ b/drivers/vfio/vfio.h
> @@ -18,6 +18,8 @@ struct vfio_container;
>  
>  struct vfio_device_file {
>  	struct vfio_device *device;
> +	spinlock_t kvm_ref_lock; /* protect kvm field */
> +	struct kvm *kvm;
>  };
>  
>  void vfio_device_put_registration(struct vfio_device *device);
> diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> index 748bde4d74d9..cb543791b28b 100644
> --- a/drivers/vfio/vfio_main.c
> +++ b/drivers/vfio/vfio_main.c
> @@ -414,6 +414,7 @@ vfio_allocate_device_file(struct vfio_device *device)
>  		return ERR_PTR(-ENOMEM);
>  
>  	df->device = device;
> +	spin_lock_init(&df->kvm_ref_lock);
>  
>  	return df;
>  }
> @@ -1246,6 +1247,20 @@ bool vfio_file_enforced_coherent(struct file *file)
>  }
>  EXPORT_SYMBOL_GPL(vfio_file_enforced_coherent);
>  
> +static void vfio_device_file_set_kvm(struct file *file, struct kvm *kvm)
> +{
> +	struct vfio_device_file *df = file->private_data;
> +
> +	/*
> +	 * The kvm is first recorded in the vfio_device_file, and will
> +	 * be propagated to vfio_device::kvm when the file is bound to
> +	 * iommufd successfully in the vfio device cdev path.
> +	 */
> +	spin_lock(&df->kvm_ref_lock);
> +	df->kvm = kvm;
> +	spin_unlock(&df->kvm_ref_lock);
> +}
> +
>  /**
>   * vfio_file_set_kvm - Link a kvm with VFIO drivers
>   * @file: VFIO group file or VFIO device file
> @@ -1259,6 +1274,9 @@ void vfio_file_set_kvm(struct file *file, struct kvm *kvm)
>  	group = vfio_group_from_file(file);
>  	if (group)
>  		vfio_group_set_kvm(group, kvm);
> +
> +	if (vfio_device_from_file(file))
> +		vfio_device_file_set_kvm(file, kvm);
>  }
>  EXPORT_SYMBOL_GPL(vfio_file_set_kvm);
>  

