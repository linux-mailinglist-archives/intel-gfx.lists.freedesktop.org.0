Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFA05B0D3B
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 21:28:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 340E910E854;
	Wed,  7 Sep 2022 19:28:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD9210E846
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 19:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1662578898;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KiJVkaahK7g7HgrZ8gR0FHcI33I8x0V7/8v5kVW14w0=;
 b=DmOLQs6wdCgXtO/sipU/15v59DMvSzj3hWK2B1mwNwNvAm0FsZSe0wlViFX6QXwJD+AmTy
 sKV7WYmFLZzhqBxKUfyxeX9NO04QrOxPmMVWlh8ZbbSEEeBjXnda2k/yVPwqls6Jp8jg0N
 QjiXrf3jPZkfT51W5LvzAgoHeQ4ry68=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-205-4bV9pitnM_atIA8YX60Gag-1; Wed, 07 Sep 2022 15:28:16 -0400
X-MC-Unique: 4bV9pitnM_atIA8YX60Gag-1
Received: by mail-wr1-f69.google.com with SMTP id
 h2-20020adfa4c2000000b00228db7822cbso2135818wrb.19
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Sep 2022 12:28:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date;
 bh=KiJVkaahK7g7HgrZ8gR0FHcI33I8x0V7/8v5kVW14w0=;
 b=PZM+r6AEkKzt+ioOeSKyE0b6pb5S+NLDW4NdNieQ7g40BfyNOh0SRE+EiGh8ul0xlj
 ovluBzybKy6rQL01wiXxHhUfc1ws5RosR8Pdyy2asS4sm5j+V+CULKsU28REufucXN7X
 CvmVC3gOzKsJcaoLCEbnx/JhBcWAcTKmqUeGHVoDJB5ahZUsb73NgjXLSKO6qtrlgbtf
 JGNhC7e1aqM9PVoGYRxC+jF2QV3LX9NE6RLeG9/kLJkOUuOQOR7AI6qtFCBZDkZkQLU/
 F+vcC9/7VEL+QEBsk5q8pJpcJCyRMNc64uA5mud4h+wyTeqMqtH9eBPN0ZnG1MdeuoQy
 54oA==
X-Gm-Message-State: ACgBeo3kofc0wYEOnOZQUTcs4LNdpi2mScw9aUZhVDfsYRESU1aEMZZc
 +iVCgn00MoXgu3MpdlVUfEJFIq6BFkclc53csa5Ld8gq6FVeug+pva10JJ0Uss0FVtOGRBipowC
 gpw67lrAVmGjQIBwvBBSOajArCAi9
X-Received: by 2002:a05:6000:4005:b0:225:8b27:e6d5 with SMTP id
 cy5-20020a056000400500b002258b27e6d5mr3027498wrb.603.1662578894328; 
 Wed, 07 Sep 2022 12:28:14 -0700 (PDT)
X-Google-Smtp-Source: AA6agR6HnMG0su63qjN0vVs/wzDR8Clqf5VRge5H/UHJDLWwX+4NBqFlm+JtOSTu2HRbCJtNmGOTeQ==
X-Received: by 2002:a05:6000:4005:b0:225:8b27:e6d5 with SMTP id
 cy5-20020a056000400500b002258b27e6d5mr3027489wrb.603.1662578894088; 
 Wed, 07 Sep 2022 12:28:14 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:59e:9d80:527b:9dff:feef:3874?
 ([2a01:e0a:59e:9d80:527b:9dff:feef:3874])
 by smtp.gmail.com with ESMTPSA id
 l5-20020a5d5265000000b00228cbac7a25sm10806298wrc.64.2022.09.07.12.28.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 Sep 2022 12:28:13 -0700 (PDT)
Message-ID: <18e95f82-e59b-fa18-4c21-13498fee5733@redhat.com>
Date: Wed, 7 Sep 2022 21:28:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
To: Kevin Tian <kevin.tian@intel.com>, Zhenyu Wang <zhenyuw@linux.intel.com>, 
 Zhi Wang <zhi.a.wang@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Eric Farman <farman@linux.ibm.com>, Matthew Rosato <mjrosato@linux.ibm.com>,
 Halil Pasic <pasic@linux.ibm.com>, Vineeth Vijayan <vneethv@linux.ibm.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>, Tony Krowiak <akrowiak@linux.ibm.com>,
 Jason Herne <jjherne@linux.ibm.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Cornelia Huck <cohuck@redhat.com>, Longfang Liu <liulongfang@huawei.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Yishai Hadas <yishaih@nvidia.com>,
 Kirti Wankhede <kwankhede@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Abhishek Sahu <abhsahu@nvidia.com>, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org, kvm@vger.kernel.org
References: <20220901143747.32858-1-kevin.tian@intel.com>
 <20220901143747.32858-12-kevin.tian@intel.com>
From: Eric Auger <eric.auger@redhat.com>
In-Reply-To: <20220901143747.32858-12-kevin.tian@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 11/15] vfio/platform: Use the new device
 life cycle helpers
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
Cc: Yi Liu <yi.l.liu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi kevin,

On 9/1/22 16:37, Kevin Tian wrote:
> Move vfio_device_ops from platform core to platform drivers so device
> specific init/cleanup can be added.
>
> Introduce two new helpers vfio_platform_init/release_common() for the
> use in driver @init/@release.
>
> vfio_platform_probe/remove_common() will be deprecated.
>
> Signed-off-by: Kevin Tian <kevin.tian@intel.com>
> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/platform/vfio_platform.c         | 66 +++++++++++++++----
>  drivers/vfio/platform/vfio_platform_common.c  | 53 ++++++++++++---
>  drivers/vfio/platform/vfio_platform_private.h | 15 +++++
>  3 files changed, 111 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/vfio/platform/vfio_platform.c b/drivers/vfio/platform/vfio_platform.c
> index 04f40c5acfd6..82cedcebfd90 100644
> --- a/drivers/vfio/platform/vfio_platform.c
> +++ b/drivers/vfio/platform/vfio_platform.c
> @@ -7,6 +7,7 @@
>  #include <linux/module.h>
>  #include <linux/slab.h>
>  #include <linux/vfio.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/platform_device.h>
>  
>  #include "vfio_platform_private.h"
> @@ -36,14 +37,11 @@ static int get_platform_irq(struct vfio_platform_device *vdev, int i)
>  	return platform_get_irq_optional(pdev, i);
>  }
>  
> -static int vfio_platform_probe(struct platform_device *pdev)
> +static int vfio_platform_init_dev(struct vfio_device *core_vdev)
>  {
> -	struct vfio_platform_device *vdev;
> -	int ret;
> -
> -	vdev = kzalloc(sizeof(*vdev), GFP_KERNEL);
> -	if (!vdev)
> -		return -ENOMEM;
> +	struct vfio_platform_device *vdev =
> +		container_of(core_vdev, struct vfio_platform_device, vdev);
> +	struct platform_device *pdev = to_platform_device(core_vdev->dev);
>  
>  	vdev->opaque = (void *) pdev;
>  	vdev->name = pdev->name;
> @@ -52,24 +50,64 @@ static int vfio_platform_probe(struct platform_device *pdev)
>  	vdev->get_irq = get_platform_irq;
>  	vdev->reset_required = reset_required;
>  
> -	ret = vfio_platform_probe_common(vdev, &pdev->dev);
> -	if (ret) {
> -		kfree(vdev);
> -		return ret;
> -	}
> +	return vfio_platform_init_common(vdev);
> +}
> +
> +static const struct vfio_device_ops vfio_platform_ops;
> +static int vfio_platform_probe(struct platform_device *pdev)
> +{
> +	struct vfio_platform_device *vdev;
> +	int ret;
> +
> +	vdev = vfio_alloc_device(vfio_platform_device, vdev, &pdev->dev,
> +				 &vfio_platform_ops);
> +	if (IS_ERR(vdev))
> +		return PTR_ERR(vdev);
> +
> +	ret = vfio_register_group_dev(&vdev->vdev);
> +	if (ret)
> +		goto out_put_vdev;
> +
> +	pm_runtime_enable(&pdev->dev);
>  	dev_set_drvdata(&pdev->dev, vdev);
>  	return 0;
> +
> +out_put_vdev:
> +	vfio_put_device(&vdev->vdev);
> +	return ret;
> +}
> +
> +static void vfio_platform_release_dev(struct vfio_device *core_vdev)
> +{
> +	struct vfio_platform_device *vdev =
> +		container_of(core_vdev, struct vfio_platform_device, vdev);
> +
> +	vfio_platform_release_common(vdev);
> +	vfio_free_device(core_vdev);
>  }
>  
>  static int vfio_platform_remove(struct platform_device *pdev)
>  {
>  	struct vfio_platform_device *vdev = dev_get_drvdata(&pdev->dev);
>  
> -	vfio_platform_remove_common(vdev);
> -	kfree(vdev);
> +	vfio_unregister_group_dev(&vdev->vdev);
> +	pm_runtime_disable(vdev->device);
> +	vfio_put_device(&vdev->vdev);
>  	return 0;
>  }
>  
> +static const struct vfio_device_ops vfio_platform_ops = {
> +	.name		= "vfio-platform",
> +	.init		= vfio_platform_init_dev,
> +	.release	= vfio_platform_release_dev,
> +	.open_device	= vfio_platform_open_device,
> +	.close_device	= vfio_platform_close_device,
> +	.ioctl		= vfio_platform_ioctl,
> +	.read		= vfio_platform_read,
> +	.write		= vfio_platform_write,
> +	.mmap		= vfio_platform_mmap,
> +};
> +
>  static struct platform_driver vfio_platform_driver = {
>  	.probe		= vfio_platform_probe,
>  	.remove		= vfio_platform_remove,
> diff --git a/drivers/vfio/platform/vfio_platform_common.c b/drivers/vfio/platform/vfio_platform_common.c
> index 256f55b84e70..4c01bf0adebb 100644
> --- a/drivers/vfio/platform/vfio_platform_common.c
> +++ b/drivers/vfio/platform/vfio_platform_common.c
> @@ -218,7 +218,7 @@ static int vfio_platform_call_reset(struct vfio_platform_device *vdev,
>  	return -EINVAL;
>  }
>  
> -static void vfio_platform_close_device(struct vfio_device *core_vdev)
> +void vfio_platform_close_device(struct vfio_device *core_vdev)
>  {
>  	struct vfio_platform_device *vdev =
>  		container_of(core_vdev, struct vfio_platform_device, vdev);
> @@ -236,8 +236,9 @@ static void vfio_platform_close_device(struct vfio_device *core_vdev)
>  	vfio_platform_regions_cleanup(vdev);
>  	vfio_platform_irq_cleanup(vdev);
>  }
> +EXPORT_SYMBOL_GPL(vfio_platform_close_device);
>  
> -static int vfio_platform_open_device(struct vfio_device *core_vdev)
> +int vfio_platform_open_device(struct vfio_device *core_vdev)
>  {
>  	struct vfio_platform_device *vdev =
>  		container_of(core_vdev, struct vfio_platform_device, vdev);
> @@ -273,9 +274,10 @@ static int vfio_platform_open_device(struct vfio_device *core_vdev)
>  	vfio_platform_regions_cleanup(vdev);
>  	return ret;
>  }
> +EXPORT_SYMBOL_GPL(vfio_platform_open_device);
>  
> -static long vfio_platform_ioctl(struct vfio_device *core_vdev,
> -				unsigned int cmd, unsigned long arg)
> +long vfio_platform_ioctl(struct vfio_device *core_vdev,
> +			 unsigned int cmd, unsigned long arg)
>  {
>  	struct vfio_platform_device *vdev =
>  		container_of(core_vdev, struct vfio_platform_device, vdev);
> @@ -382,6 +384,7 @@ static long vfio_platform_ioctl(struct vfio_device *core_vdev,
>  
>  	return -ENOTTY;
>  }
> +EXPORT_SYMBOL_GPL(vfio_platform_ioctl);
>  
>  static ssize_t vfio_platform_read_mmio(struct vfio_platform_region *reg,
>  				       char __user *buf, size_t count,
> @@ -438,8 +441,8 @@ static ssize_t vfio_platform_read_mmio(struct vfio_platform_region *reg,
>  	return -EFAULT;
>  }
>  
> -static ssize_t vfio_platform_read(struct vfio_device *core_vdev,
> -				  char __user *buf, size_t count, loff_t *ppos)
> +ssize_t vfio_platform_read(struct vfio_device *core_vdev,
> +			   char __user *buf, size_t count, loff_t *ppos)
>  {
>  	struct vfio_platform_device *vdev =
>  		container_of(core_vdev, struct vfio_platform_device, vdev);
> @@ -460,6 +463,7 @@ static ssize_t vfio_platform_read(struct vfio_device *core_vdev,
>  
>  	return -EINVAL;
>  }
> +EXPORT_SYMBOL_GPL(vfio_platform_read);
>  
>  static ssize_t vfio_platform_write_mmio(struct vfio_platform_region *reg,
>  					const char __user *buf, size_t count,
> @@ -515,8 +519,8 @@ static ssize_t vfio_platform_write_mmio(struct vfio_platform_region *reg,
>  	return -EFAULT;
>  }
>  
> -static ssize_t vfio_platform_write(struct vfio_device *core_vdev, const char __user *buf,
> -				   size_t count, loff_t *ppos)
> +ssize_t vfio_platform_write(struct vfio_device *core_vdev, const char __user *buf,
> +			    size_t count, loff_t *ppos)
>  {
>  	struct vfio_platform_device *vdev =
>  		container_of(core_vdev, struct vfio_platform_device, vdev);
> @@ -537,6 +541,7 @@ static ssize_t vfio_platform_write(struct vfio_device *core_vdev, const char __u
>  
>  	return -EINVAL;
>  }
> +EXPORT_SYMBOL_GPL(vfio_platform_write);
>  
>  static int vfio_platform_mmap_mmio(struct vfio_platform_region region,
>  				   struct vm_area_struct *vma)
> @@ -558,7 +563,7 @@ static int vfio_platform_mmap_mmio(struct vfio_platform_region region,
>  			       req_len, vma->vm_page_prot);
>  }
>  
> -static int vfio_platform_mmap(struct vfio_device *core_vdev, struct vm_area_struct *vma)
> +int vfio_platform_mmap(struct vfio_device *core_vdev, struct vm_area_struct *vma)
>  {
>  	struct vfio_platform_device *vdev =
>  		container_of(core_vdev, struct vfio_platform_device, vdev);
> @@ -598,6 +603,7 @@ static int vfio_platform_mmap(struct vfio_device *core_vdev, struct vm_area_stru
>  
>  	return -EINVAL;
>  }
> +EXPORT_SYMBOL_GPL(vfio_platform_mmap);
>  
>  static const struct vfio_device_ops vfio_platform_ops = {
>  	.name		= "vfio-platform",
> @@ -639,6 +645,35 @@ static int vfio_platform_of_probe(struct vfio_platform_device *vdev,
>   * If the firmware is ACPI type, then acpi_disabled is 0. All other checks are
>   * valid checks. We cannot claim that this system is DT.
>   */
> +int vfio_platform_init_common(struct vfio_platform_device *vdev)
> +{
> +	int ret;
> +	struct device *dev = vdev->vdev.dev;
> +
> +	ret = vfio_platform_acpi_probe(vdev, dev);
> +	if (ret)
> +		ret = vfio_platform_of_probe(vdev, dev);
> +
> +	if (ret)
> +		return ret;
> +
> +	vdev->device = dev;
> +	mutex_init(&vdev->igate);
> +
> +	ret = vfio_platform_get_reset(vdev);
> +	if (ret && vdev->reset_required)
> +		dev_err(dev, "No reset function found for device %s\n",
> +			vdev->name);
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(vfio_platform_init_common);
> +
> +void vfio_platform_release_common(struct vfio_platform_device *vdev)
> +{
> +	vfio_platform_put_reset(vdev);
> +}
> +EXPORT_SYMBOL_GPL(vfio_platform_release_common);
> +
>  int vfio_platform_probe_common(struct vfio_platform_device *vdev,
>  			       struct device *dev)
>  {
> diff --git a/drivers/vfio/platform/vfio_platform_private.h b/drivers/vfio/platform/vfio_platform_private.h
> index 691b43f4b2b2..a769d649fb97 100644
> --- a/drivers/vfio/platform/vfio_platform_private.h
> +++ b/drivers/vfio/platform/vfio_platform_private.h
> @@ -81,6 +81,21 @@ struct vfio_platform_reset_node {
>  int vfio_platform_probe_common(struct vfio_platform_device *vdev,
>  			       struct device *dev);
>  void vfio_platform_remove_common(struct vfio_platform_device *vdev);
> +int vfio_platform_init_common(struct vfio_platform_device *vdev);
> +void vfio_platform_release_common(struct vfio_platform_device *vdev);
> +
> +int vfio_platform_open_device(struct vfio_device *core_vdev);
> +void vfio_platform_close_device(struct vfio_device *core_vdev);
> +long vfio_platform_ioctl(struct vfio_device *core_vdev,
> +			 unsigned int cmd, unsigned long arg);
> +ssize_t vfio_platform_read(struct vfio_device *core_vdev,
> +			   char __user *buf, size_t count,
> +			   loff_t *ppos);
> +ssize_t vfio_platform_write(struct vfio_device *core_vdev,
> +			    const char __user *buf,
> +			    size_t count, loff_t *ppos);
> +int vfio_platform_mmap(struct vfio_device *core_vdev,
> +		       struct vm_area_struct *vma);
>  
>  int vfio_platform_irq_init(struct vfio_platform_device *vdev);
>  void vfio_platform_irq_cleanup(struct vfio_platform_device *vdev);
Looks good to me. I also ran basic non regression testing

Reviewed-by: Eric Auger <eric.auger@redhat.com>
Tested-by: Eric Auger <eric.auger@redhat.com>

Eric

