Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2148170FED1
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 21:56:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E84F10E60A;
	Wed, 24 May 2023 19:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87A1410E60A
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 19:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1684958178;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=77aRHVOjxxzrEPrNZ5aBBuwqoTrOdL50WaOnvMmOw1I=;
 b=CoH0Q/+bVoUtHAZRXqdSijCo/VVaBbsOhJRvZUBs/Chxj6JRoEArJ4cfwQUtjPT6ozUn7r
 LEx5mJ/9dvPef4LbZduTTWt0DfiLr0/kXrk2u4f2Ze7TWw0aU66TIPxBQL8wyJKwNp0aBN
 TK2RZMzaWJeXFjOjEruJGjinoDhMdII=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-13-CDT-5PvkMK-RYELB38HXYw-1; Wed, 24 May 2023 15:56:17 -0400
X-MC-Unique: CDT-5PvkMK-RYELB38HXYw-1
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-7749b49ce95so40333339f.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 12:56:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684958176; x=1687550176;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=77aRHVOjxxzrEPrNZ5aBBuwqoTrOdL50WaOnvMmOw1I=;
 b=LeWhBsxFDzWmXEvxFUjL5ue81wah+pMrKs8iXz5BUqv3HsxfDvarCQqCm9glZvOp1E
 vYLZ7NTCOojRHjS3wGez1t1myaZpP3pyR40CKvdwtHma1LUQW9i1uGafbPKzVv4jkgt3
 NRhcqY97Xgo0l+HcFqBQBntL6IiO50s8RSWjg7EadiTml/P3l2jZSWzfHrOtk+U3S3D+
 FGPwb7HZpRRyAplN+xu/s3MOQeQODb2kzUneWY3Z9YeaAnaDMeLVjiJsey5SDuCMcGZe
 FdXPdTqc2lun+WkATWzbdtc0vzFtsf300lzjRi5ghLzVj7Vf6ZIp+/orW/yJallXflUY
 CnJw==
X-Gm-Message-State: AC+VfDzqTArJnYAiHV/ALzpzRzP6woNkQW7D0OHnVJBd4hadypPA2tzf
 jgWMjTQ+uh2oDwlySDZ3rQDDdzfMwXiBjohnpNW39Y4v1x4E9sxNYmsGXKrifkJeVrRAJZl/vBf
 pfe6OOVY4RwQhPw2B+H66sITVyp+H
X-Received: by 2002:a6b:d818:0:b0:774:9994:d321 with SMTP id
 y24-20020a6bd818000000b007749994d321mr1187104iob.16.1684958176310; 
 Wed, 24 May 2023 12:56:16 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5qv3g6oPbRgTR57grGdr8r+O8x/shxqA7XTBpTMaXSC0ZRjS8C2qfoVIoQDH8o1AsrXXB1XQ==
X-Received: by 2002:a6b:d818:0:b0:774:9994:d321 with SMTP id
 y24-20020a6bd818000000b007749994d321mr1187077iob.16.1684958175914; 
 Wed, 24 May 2023 12:56:15 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 i18-20020a02ca52000000b0041a9dc8a96asm3336228jal.172.2023.05.24.12.56.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 May 2023 12:56:05 -0700 (PDT)
Date: Wed, 24 May 2023 13:56:03 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Yi Liu <yi.l.liu@intel.com>
Message-ID: <20230524135603.33ee3d91.alex.williamson@redhat.com>
In-Reply-To: <20230522115751.326947-10-yi.l.liu@intel.com>
References: <20230522115751.326947-1-yi.l.liu@intel.com>
 <20230522115751.326947-10-yi.l.liu@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v6 09/10] vfio/pci: Extend
 VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device cdev
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

On Mon, 22 May 2023 04:57:50 -0700
Yi Liu <yi.l.liu@intel.com> wrote:

> This allows VFIO_DEVICE_GET_PCI_HOT_RESET_INFO ioctl use the iommufd_ctx
> of the cdev device to check the ownership of the other affected devices.
> 
> When VFIO_DEVICE_GET_PCI_HOT_RESET_INFO is called on an IOMMUFD managed
> device, the new flag VFIO_PCI_HOT_RESET_FLAG_DEV_ID is reported to indicate
> the values returned are IOMMUFD devids rather than group IDs as used when
> accessing vfio devices through the conventional vfio group interface.
> Additionally the flag VFIO_PCI_HOT_RESET_FLAG_DEV_ID_OWNED will be reported
> in this mode if all of the devices affected by the hot-reset are owned by
> either virtue of being directly bound to the same iommufd context as the
> calling device, or implicitly owned via a shared IOMMU group.
> 
> Suggested-by: Jason Gunthorpe <jgg@nvidia.com>
> Suggested-by: Alex Williamson <alex.williamson@redhat.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  drivers/vfio/iommufd.c           | 57 ++++++++++++++++++++++++++++++++
>  drivers/vfio/pci/vfio_pci_core.c | 40 ++++++++++++++++++----
>  include/linux/vfio.h             | 16 +++++++++
>  include/uapi/linux/vfio.h        | 46 +++++++++++++++++++++++++-
>  4 files changed, 151 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/vfio/iommufd.c b/drivers/vfio/iommufd.c
> index 356dd215a8d5..4dae9ab94eed 100644
> --- a/drivers/vfio/iommufd.c
> +++ b/drivers/vfio/iommufd.c
> @@ -106,6 +106,63 @@ void vfio_iommufd_unbind(struct vfio_device *vdev)
>  		vdev->ops->unbind_iommufd(vdev);
>  }
>  
> +struct iommufd_ctx *vfio_iommufd_device_ictx(struct vfio_device *vdev)
> +{
> +	if (vdev->iommufd_device)
> +		return iommufd_device_to_ictx(vdev->iommufd_device);
> +	if (vdev->iommufd_access)
> +		return iommufd_access_to_ictx(vdev->iommufd_access);
> +	return NULL;
> +}
> +EXPORT_SYMBOL_GPL(vfio_iommufd_device_ictx);
> +
> +static int vfio_iommufd_device_id(struct vfio_device *vdev)
> +{
> +	if (vdev->iommufd_device)
> +		return iommufd_device_to_id(vdev->iommufd_device);
> +	if (vdev->iommufd_access)
> +		return iommufd_access_to_id(vdev->iommufd_access);
> +	return -EINVAL;
> +}
> +
> +/*
> + * Return devid for vfio_device if the device is owned by the input
> + * ictx.
> + * - valid devid > 0 for the device that are bound to the input
> + *   iommufd_ctx.
> + * - devid == VFIO_PCI_DEVID_OWNED for the devices that have not
> + *   been opened but but other device within its group has been

"but but"

> + *   bound to the input iommufd_ctx.
> + * - devid == VFIO_PCI_DEVID_NOT_OWNED for others. e.g. vdev is
> + *   NULL.
> + */
> +int vfio_iommufd_device_hot_reset_devid(struct vfio_device *vdev,
> +					struct iommufd_ctx *ictx)
> +{
> +	struct iommu_group *group;
> +	int devid;
> +
> +	if (!vdev)
> +		return VFIO_PCI_DEVID_NOT_OWNED;
> +
> +	if (vfio_iommufd_device_ictx(vdev) == ictx)
> +		return vfio_iommufd_device_id(vdev);
> +
> +	group = iommu_group_get(vdev->dev);
> +	if (!group)
> +		return VFIO_PCI_DEVID_NOT_OWNED;
> +
> +	if (iommufd_ctx_has_group(ictx, group))
> +		devid = VFIO_PCI_DEVID_OWNED;
> +	else
> +		devid = VFIO_PCI_DEVID_NOT_OWNED;
> +
> +	iommu_group_put(group);
> +
> +	return devid;
> +}
> +EXPORT_SYMBOL_GPL(vfio_iommufd_device_hot_reset_devid);
> +
>  /*
>   * The physical standard ops mean that the iommufd_device is bound to the
>   * physical device vdev->dev that was provided to vfio_init_group_dev(). Drivers
> diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
> index 3a2f67675036..890065f846e4 100644
> --- a/drivers/vfio/pci/vfio_pci_core.c
> +++ b/drivers/vfio/pci/vfio_pci_core.c
> @@ -27,6 +27,7 @@
>  #include <linux/vgaarb.h>
>  #include <linux/nospec.h>
>  #include <linux/sched/mm.h>
> +#include <linux/iommufd.h>
>  #if IS_ENABLED(CONFIG_EEH)
>  #include <asm/eeh.h>
>  #endif
> @@ -776,26 +777,42 @@ struct vfio_pci_fill_info {
>  	int max;
>  	int cur;
>  	struct vfio_pci_dependent_device *devices;
> +	struct vfio_device *vdev;
> +	u32 flags;
>  };
>  
>  static int vfio_pci_fill_devs(struct pci_dev *pdev, void *data)
>  {
>  	struct vfio_pci_fill_info *fill = data;
> -	struct iommu_group *iommu_group;
>  
>  	if (fill->cur == fill->max)
>  		return -EAGAIN; /* Something changed, try again */
>  
> -	iommu_group = iommu_group_get(&pdev->dev);
> -	if (!iommu_group)
> -		return -EPERM; /* Cannot reset non-isolated devices */
> +	if (fill->flags & VFIO_PCI_HOT_RESET_FLAG_DEV_ID) {
> +		struct iommufd_ctx *iommufd = vfio_iommufd_device_ictx(fill->vdev);
> +		struct vfio_device_set *dev_set = fill->vdev->dev_set;
> +		struct vfio_device *vdev;
> +
> +		vdev = vfio_find_device_in_devset(dev_set, &pdev->dev);
> +		fill->devices[fill->cur].devid =
> +			vfio_iommufd_device_hot_reset_devid(vdev, iommufd);
> +		/* If devid is VFIO_PCI_DEVID_NOT_OWNED, clear owned flag. */
> +		if (fill->devices[fill->cur].devid == VFIO_PCI_DEVID_NOT_OWNED)
> +			fill->flags &= ~VFIO_PCI_HOT_RESET_FLAG_DEV_ID_OWNED;
> +	} else {
> +		struct iommu_group *iommu_group;
> +
> +		iommu_group = iommu_group_get(&pdev->dev);
> +		if (!iommu_group)
> +			return -EPERM; /* Cannot reset non-isolated devices */
>  
> -	fill->devices[fill->cur].group_id = iommu_group_id(iommu_group);
> +		fill->devices[fill->cur].group_id = iommu_group_id(iommu_group);
> +		iommu_group_put(iommu_group);
> +	}
>  	fill->devices[fill->cur].segment = pci_domain_nr(pdev->bus);
>  	fill->devices[fill->cur].bus = pdev->bus->number;
>  	fill->devices[fill->cur].devfn = pdev->devfn;
>  	fill->cur++;
> -	iommu_group_put(iommu_group);
>  	return 0;
>  }
>  
> @@ -1229,17 +1246,26 @@ static int vfio_pci_ioctl_get_pci_hot_reset_info(
>  		return -ENOMEM;
>  
>  	fill.devices = devices;
> +	fill.vdev = &vdev->vdev;
>  
> +	if (vfio_device_cdev_opened(&vdev->vdev))
> +		fill.flags |= VFIO_PCI_HOT_RESET_FLAG_DEV_ID |
> +			     VFIO_PCI_HOT_RESET_FLAG_DEV_ID_OWNED;
> +
> +	mutex_lock(&vdev->vdev.dev_set->lock);
>  	ret = vfio_pci_for_each_slot_or_bus(vdev->pdev, vfio_pci_fill_devs,
>  					    &fill, slot);
> +	mutex_unlock(&vdev->vdev.dev_set->lock);
>  
>  	/*
>  	 * If a device was removed between counting and filling, we may come up
>  	 * short of fill.max.  If a device was added, we'll have a return of
>  	 * -EAGAIN above.
>  	 */
> -	if (!ret)
> +	if (!ret) {
>  		hdr.count = fill.cur;
> +		hdr.flags = fill.flags;
> +	}
>  
>  reset_info_exit:
>  	if (copy_to_user(arg, &hdr, minsz))
> diff --git a/include/linux/vfio.h b/include/linux/vfio.h
> index ee120d2d530b..382a7b119c7c 100644
> --- a/include/linux/vfio.h
> +++ b/include/linux/vfio.h
> @@ -114,6 +114,9 @@ struct vfio_device_ops {
>  };
>  
>  #if IS_ENABLED(CONFIG_IOMMUFD)
> +struct iommufd_ctx *vfio_iommufd_device_ictx(struct vfio_device *vdev);
> +int vfio_iommufd_device_hot_reset_devid(struct vfio_device *vdev,
> +					struct iommufd_ctx *ictx);
>  int vfio_iommufd_physical_bind(struct vfio_device *vdev,
>  			       struct iommufd_ctx *ictx, u32 *out_device_id);
>  void vfio_iommufd_physical_unbind(struct vfio_device *vdev);
> @@ -123,6 +126,19 @@ int vfio_iommufd_emulated_bind(struct vfio_device *vdev,
>  void vfio_iommufd_emulated_unbind(struct vfio_device *vdev);
>  int vfio_iommufd_emulated_attach_ioas(struct vfio_device *vdev, u32 *pt_id);
>  #else
> +static inline struct iommufd_ctx *
> +vfio_iommufd_device_ictx(struct vfio_device *vdev)
> +{
> +	return NULL;
> +}
> +
> +static inline int
> +vfio_iommufd_device_hot_reset_devid(struct vfio_device *vdev,
> +				    struct iommufd_ctx *ictx)
> +{
> +	return VFIO_PCI_DEVID_NOT_OWNED;
> +}
> +
>  #define vfio_iommufd_physical_bind                                      \
>  	((int (*)(struct vfio_device *vdev, struct iommufd_ctx *ictx,   \
>  		  u32 *out_device_id)) NULL)
> diff --git a/include/uapi/linux/vfio.h b/include/uapi/linux/vfio.h
> index 0552e8dcf0cb..01203215251a 100644
> --- a/include/uapi/linux/vfio.h
> +++ b/include/uapi/linux/vfio.h
> @@ -650,11 +650,53 @@ enum {
>   * VFIO_DEVICE_GET_PCI_HOT_RESET_INFO - _IOWR(VFIO_TYPE, VFIO_BASE + 12,
>   *					      struct vfio_pci_hot_reset_info)
>   *
> + * This command is used to query the affected devices in the hot reset for
> + * a given device.
> + *
> + * This command always reports the segment, bus, and devfn information for
> + * each affected device, and selectively reports the group_id or devid per
> + * the way how the calling device is opened.
> + *
> + *	- If the calling device is opened via the traditional group/container
> + *	  API, group_id is reported.  User should check if it has owned all
> + *	  the affected devices and provides a set of group fds to prove the
> + *	  ownership in VFIO_DEVICE_PCI_HOT_RESET ioctl.
> + *
> + *	- If the calling device is opened as a cdev, devid is reported.
> + *	  Flag VFIO_PCI_HOT_RESET_FLAG_DEV_ID is set to indicate this
> + *	  data type.  For a given affected device, it is considered owned by
> + *	  this interface if it meets the following conditions:
> + *	  1) Has a valid devid within the iommufd_ctx of the calling device.
> + *	     Ownership cannot be determined across separate iommufd_ctx and the
> + *	     cdev calling conventions do not support a proof-of-ownership model
> + *	     as provided in the legacy group interface.  In this case a valid
> + *	     devid with value greater than zero is provided in the return
> + *	     structure.
> + *	  2) Does not have a valid devid within the iommufd_ctx of the calling
> + *	     device, but belongs to the same IOMMU group as the calling device
> + *	     or another opened device that has a valid devid within the
> + *	     iommufd_ctx of the calling device.  This provides implicit ownership
> + *	     for devices within the same DMA isolation context.  In this case
> + *	     the invalid devid value of zero is provided in the return structure.
> + *
> + *	  A devid value of -1 is provided in the return structure for devices

s/zero/VFIO_PCI_DEVID_OWNED/

s/-1/VFIO_PCI_DEVID_NOT_OWNED/

2) above and previously in the code comment where I noted the repeated
"but" still doesn't actually describe the requirement as I noted in the
last review.  The user implicitly owns a device if they own another
device within the IOMMU group, but we also impose a dev_set requirement
in the hot reset path.  All affected devices need to be represented in
the dev_set, ex. bound to a vfio driver.  It's possible that requirement
might be relaxed in the new DMA ownership model, but as it is right
now, the code enforces that requirement and any new discussion about
what makes hot-reset available should note both the ownership and
dev_set requirement.  Thanks,

Alex


> + *	  where ownership is not available.  Such devices prevent the use of
> + *	  VFIO_DEVICE_PCI_HOT_RESET outside of proof-of-ownership calling
> + *	  conventions (ie. via legacy group accessed devices).
> + *	  Flag VFIO_PCI_HOT_RESET_FLAG_DEV_ID_OWNED would be set when all the
> + *	  affected devices are owned by the user.  This flag is available only
> + *	  when VFIO_PCI_HOT_RESET_FLAG_DEV_ID is set, otherwise reserved.
> + *
>   * Return: 0 on success, -errno on failure:
>   *	-enospc = insufficient buffer, -enodev = unsupported for device.
>   */
>  struct vfio_pci_dependent_device {
> -	__u32	group_id;
> +	union {
> +		__u32   group_id;
> +		__u32	devid;
> +#define VFIO_PCI_DEVID_OWNED		0
> +#define VFIO_PCI_DEVID_NOT_OWNED	-1
> +	};
>  	__u16	segment;
>  	__u8	bus;
>  	__u8	devfn; /* Use PCI_SLOT/PCI_FUNC */
> @@ -663,6 +705,8 @@ struct vfio_pci_dependent_device {
>  struct vfio_pci_hot_reset_info {
>  	__u32	argsz;
>  	__u32	flags;
> +#define VFIO_PCI_HOT_RESET_FLAG_DEV_ID		(1 << 0)
> +#define VFIO_PCI_HOT_RESET_FLAG_DEV_ID_OWNED	(1 << 1)
>  	__u32	count;
>  	struct vfio_pci_dependent_device	devices[];
>  };

