Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E83C70C8CB
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 21:42:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65BB210E252;
	Mon, 22 May 2023 19:42:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CF9110E252
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 19:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1684784543;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0QiUgfZ27vhUH7T2elAP8wbYahUEm4EAd/4gdNYB9FQ=;
 b=KtjYDQWvqwym82mkoEi4Xfdnaarql4BChznUOqI/tm6kkTwW8oO4z23cEDg0rjPoAW2+xL
 CmMlH+X9x/V4pNswg+AUQWST2ipG7vDEgOMcudUWtibhLn4OmXwxLFaNBocNAW4bFBO6WO
 SGyqn6Ve6MszCh6VA+whboR4le+IEsw=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-372-4Vsfu8JiOQyMj6vaeExgDQ-1; Mon, 22 May 2023 15:42:22 -0400
X-MC-Unique: 4Vsfu8JiOQyMj6vaeExgDQ-1
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-33826fb9d0fso145515ab.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 12:42:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684784541; x=1687376541;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0QiUgfZ27vhUH7T2elAP8wbYahUEm4EAd/4gdNYB9FQ=;
 b=K1a3Lia+joBCQcfr42uAGVbKlWowso8QUZx391D9Mtwa/a/xDoElWxyGkD8YJtH0+a
 eupGip2sjrl+G4cpMnBzP6lBKcxkS+JSV1Ujmydki+ooam5W02vXTmADSV1BzSx4kh1M
 7ZRFaHICGHHlR0rP/TOrkVHnEXHxmKoe10AZNKKuKO5mY4HjGqJNWKsdVjBdwthEYFYE
 Qagx9J3tto4lw1fqJ9svpgzGBoD3zDUl7EGoi7rpVsMGvmsSy2yn86zqZOHax5yHffxi
 TkKuqy3Unn4hcCGGwanBknqL1ABBZtotfbAnQ40vnQ5QqYd6MSjzIZ8htuZK+XCkBhcy
 dulA==
X-Gm-Message-State: AC+VfDwEqtfdWrCM9++tYPkw4FGFepJHVzdgUBaNBTf+zP+Ks0YO5eYD
 lFP2ilnVE6k5zvTDtMzvqNQBOYr9G4SBtMwsefS9eRMVpvGY1awdYMXLpjw0DGkqgH894/NAsR0
 5YK2sSlhgrVAU+i8bak6gr7vb7Yg9
X-Received: by 2002:a92:dc08:0:b0:331:8bd6:a9c7 with SMTP id
 t8-20020a92dc08000000b003318bd6a9c7mr6931261iln.27.1684784541444; 
 Mon, 22 May 2023 12:42:21 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ74I8TmnoMbnFuK4lYPwPfhgU2U8XhGn4fHHsmYoBIUUfG0w6LSBTxJ3UBS4ue64IU7QDvPPg==
X-Received: by 2002:a92:dc08:0:b0:331:8bd6:a9c7 with SMTP id
 t8-20020a92dc08000000b003318bd6a9c7mr6931241iln.27.1684784541168; 
 Mon, 22 May 2023 12:42:21 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 t1-20020a92cc41000000b0032b3a49d5fdsm1900813ilq.75.2023.05.22.12.42.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 May 2023 12:42:20 -0700 (PDT)
Date: Mon, 22 May 2023 13:42:19 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Yi Liu <yi.l.liu@intel.com>
Message-ID: <20230522134219.4a462b09.alex.williamson@redhat.com>
In-Reply-To: <20230513132827.39066-4-yi.l.liu@intel.com>
References: <20230513132827.39066-1-yi.l.liu@intel.com>
 <20230513132827.39066-4-yi.l.liu@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v11 03/23] vfio: Accept vfio device file in
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

On Sat, 13 May 2023 06:28:07 -0700
Yi Liu <yi.l.liu@intel.com> wrote:

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
> Tested-by: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  drivers/vfio/vfio.h      |  2 ++
>  drivers/vfio/vfio_main.c | 36 +++++++++++++++++++++++++++++++++++-
>  2 files changed, 37 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/vfio/vfio.h b/drivers/vfio/vfio.h
> index b1e327a85a32..69e1a0692b06 100644
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
> index 4665791aa2eb..8ef9210ad2aa 100644
> --- a/drivers/vfio/vfio_main.c
> +++ b/drivers/vfio/vfio_main.c
> @@ -429,6 +429,7 @@ vfio_allocate_device_file(struct vfio_device *device)
>  		return ERR_PTR(-ENOMEM);
>  
>  	df->device = device;
> +	spin_lock_init(&df->kvm_ref_lock);
>  
>  	return df;
>  }
> @@ -1190,13 +1191,23 @@ const struct file_operations vfio_device_fops = {
>  	.mmap		= vfio_device_fops_mmap,
>  };
>  
> +static struct vfio_device *vfio_device_from_file(struct file *file)
> +{
> +	struct vfio_device_file *df = file->private_data;
> +
> +	if (file->f_op != &vfio_device_fops)
> +		return NULL;
> +	return df->device;
> +}
> +
>  /**
>   * vfio_file_is_valid - True if the file is valid vfio file
>   * @file: VFIO group file or VFIO device file
>   */
>  bool vfio_file_is_valid(struct file *file)
>  {
> -	return vfio_group_from_file(file);
> +	return vfio_group_from_file(file) ||
> +	       vfio_device_from_file(file);
>  }
>  EXPORT_SYMBOL_GPL(vfio_file_is_valid);
>  
> @@ -1211,16 +1222,36 @@ EXPORT_SYMBOL_GPL(vfio_file_is_valid);
>   */
>  bool vfio_file_enforced_coherent(struct file *file)
>  {
> +	struct vfio_device *device;
>  	struct vfio_group *group;
>  
>  	group = vfio_group_from_file(file);
>  	if (group)
>  		return vfio_group_enforced_coherent(group);
>  
> +	device = vfio_device_from_file(file);
> +	if (device)
> +		return device_iommu_capable(device->dev,
> +					    IOMMU_CAP_ENFORCE_CACHE_COHERENCY);
> +
>  	return true;
>  }
>  EXPORT_SYMBOL_GPL(vfio_file_enforced_coherent);
>  
> +static void vfio_device_file_set_kvm(struct file *file, struct kvm *kvm)

A general nit, we've been trying to maintain function naming based on
the object it operates on in vfio, for example vfio_group_set_kvm()
clearly operates on the struct vfio_group object.  Here we have
vfio_device_file_set_kvm(), which would suggest it works on a
struct vfio_device_file, but we're passing a struct file.
vfio_file_set_kvm() is already taken below, so should this be:

static void vfio_df_set_kvm(struct vfio_device_file *df,
			    struct kvm *kvm)

After this series We end up with a number of functions where the object
doesn't really match, ex:

	vfio_device_open -> vfio_df_open
	vfio_device_close -> vfio_df_close
	vfio_device_group_close -> vfio_df_group_close
	vfio_iommufd_bind -> vfio_df_iommufd_bind
	vfio_iommufd_unbind -> vfio_df_iommufd_unbind
	vfio_device_cdev_close -> vfio_df_cdev_close
	vfio_device_ioctl_bind_iommufd -> vfio_df_ioctl_bind_iommufd
	vfio_ioctl_device_attach -> vfio_df_ioctl_attach_pt
	vfio_ioctl_device_detach -> vfio_df_ioctl_detach_pt

"df" is just a suggestion, maybe someone has a better one.  Thanks,

Alex

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
> @@ -1236,6 +1267,9 @@ void vfio_file_set_kvm(struct file *file, struct kvm *kvm)
>  	group = vfio_group_from_file(file);
>  	if (group)
>  		vfio_group_set_kvm(group, kvm);
> +
> +	if (vfio_device_from_file(file))
> +		vfio_device_file_set_kvm(file, kvm);
>  }
>  EXPORT_SYMBOL_GPL(vfio_file_set_kvm);
>  

