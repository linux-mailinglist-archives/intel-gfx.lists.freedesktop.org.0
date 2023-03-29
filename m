Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 584356CF599
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 23:51:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 661C410E1A4;
	Wed, 29 Mar 2023 21:51:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 124E810E199
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 21:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680126683;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f7fdb2lIS2KjIQ9p1rbtT2eeSIyvzFeLaaTe3ePivv8=;
 b=FpH9di6BR8t1Uk1T8tpTEkmrBw5H8mgAa5+OAHnHAd3R3qk7rB6hfMm0u4MAwVK8ViyKNe
 5ahNSvnZrHF+XAl9JgDKmRXPzXJTMB3SpPAy2dR03Sm5szjc2z5M6ROdfRN96fWwMQI52M
 tANQgANrqUClWmnrIE9jqAmoAToSpO8=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-54-6aNwdqgUOZCRCLCdzxMLLQ-1; Wed, 29 Mar 2023 17:51:21 -0400
X-MC-Unique: 6aNwdqgUOZCRCLCdzxMLLQ-1
Received: by mail-il1-f197.google.com with SMTP id
 h19-20020a056e021d9300b00318f6b50475so10845069ila.21
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 14:51:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680126680;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=f7fdb2lIS2KjIQ9p1rbtT2eeSIyvzFeLaaTe3ePivv8=;
 b=S5+yVyLTICzdADxEIjcKebwZoMb+86FkyaPoQlSF2kNccKsX9e14MN0AxTPLMasVT4
 4GORwmjJH/l/7XjogSGaaJuf4HASt3p1QnSUaqEMtJEEg+HniWLpjUs8Cq0sB2DEhvoJ
 nmaTg5hmhx0CwM/rJMRxyFx4jd6KgvUzn+uDuvsjbfd1cjtPHwjaGgmrCslpXcKYm1lT
 tbQAYx8lekR62ONE7bemP3kZaHfZENB7t6qoEX4BUly83MnPaxiq8q1HGUSSy9sEbToO
 wCbmn9kQvr9/H0L379tTWNqzK35YyvRdI47R1ihkotC1ERKbW2bHtV8sA8FzcAYKAjS0
 OFkw==
X-Gm-Message-State: AAQBX9fh2uSmXem6gigej14iNnVQ6IGDeywVRSfIml5fKFQjdftVHgT1
 5xpc4/m4he9uLeJDUIVM1vd61smPLG3u4i59OQnxtlzg48sv+QP32SEGmNt/NTJR0Lv2vCM0JL5
 XrwQjLPRlygTgG0JkNDYx5foiL6UBFPyYMC2/
X-Received: by 2002:a92:cb03:0:b0:315:2d37:993 with SMTP id
 s3-20020a92cb03000000b003152d370993mr15902239ilo.3.1680126680585; 
 Wed, 29 Mar 2023 14:51:20 -0700 (PDT)
X-Google-Smtp-Source: AKy350Z8WHT2+aIk9qYCFsmp6Q+RrftR7LZhmlkT1nbJJSNbTlXYeYIveZOi+LlOLD+9+E0vKyAayw==
X-Received: by 2002:a92:cb03:0:b0:315:2d37:993 with SMTP id
 s3-20020a92cb03000000b003152d370993mr15902210ilo.3.1680126680272; 
 Wed, 29 Mar 2023 14:51:20 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 z2-20020a056638240200b003b331f0bbdfsm10680897jat.97.2023.03.29.14.51.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Mar 2023 14:51:19 -0700 (PDT)
Date: Wed, 29 Mar 2023 15:51:18 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Yi Liu <yi.l.liu@intel.com>
Message-ID: <20230329155118.1a76d937.alex.williamson@redhat.com>
In-Reply-To: <20230327094047.47215-24-yi.l.liu@intel.com>
References: <20230327094047.47215-1-yi.l.liu@intel.com>
 <20230327094047.47215-24-yi.l.liu@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v8 23/24] vfio: Compile group optionally
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
 peterx@redhat.com, terrence.xu@intel.com, chao.p.peng@linux.intel.com,
 linux-s390@vger.kernel.org, kvm@vger.kernel.org, lulu@redhat.com,
 yanting.jiang@intel.com, joro@8bytes.org, nicolinc@nvidia.com, jgg@nvidia.com,
 yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org, eric.auger@redhat.com,
 intel-gvt-dev@lists.freedesktop.org, yi.y.sun@linux.intel.com,
 cohuck@redhat.com, shameerali.kolothum.thodi@huawei.com,
 suravee.suthikulpanit@amd.com, robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 27 Mar 2023 02:40:46 -0700
Yi Liu <yi.l.liu@intel.com> wrote:

> group code is not needed for vfio device cdev, so with vfio device cdev
> introduced, the group infrastructures can be compiled out if only cdev
> is needed.
> 
> Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> Tested-by: Terrence Xu <terrence.xu@intel.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  drivers/iommu/iommufd/Kconfig |   4 +-
>  drivers/vfio/Kconfig          |  16 ++++-
>  drivers/vfio/Makefile         |   2 +-
>  drivers/vfio/vfio.h           | 111 ++++++++++++++++++++++++++++++++--
>  include/linux/vfio.h          |  13 +++-
>  5 files changed, 134 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/iommu/iommufd/Kconfig b/drivers/iommu/iommufd/Kconfig
> index ada693ea51a7..1946eed1826a 100644
> --- a/drivers/iommu/iommufd/Kconfig
> +++ b/drivers/iommu/iommufd/Kconfig
> @@ -14,8 +14,8 @@ config IOMMUFD
>  if IOMMUFD
>  config IOMMUFD_VFIO_CONTAINER
>  	bool "IOMMUFD provides the VFIO container /dev/vfio/vfio"
> -	depends on VFIO && !VFIO_CONTAINER
> -	default VFIO && !VFIO_CONTAINER
> +	depends on VFIO && VFIO_GROUP && !VFIO_CONTAINER
> +	default VFIO && VFIO_GROUP && !VFIO_CONTAINER

Shouldn't these simply replace VFIO with VFIO_GROUP since VFIO_GROUP
necessarily depends on VFIO?

>  	help
>  	  IOMMUFD will provide /dev/vfio/vfio instead of VFIO. This relies on
>  	  IOMMUFD providing compatibility emulation to give the same ioctls.
> diff --git a/drivers/vfio/Kconfig b/drivers/vfio/Kconfig
> index e2105b4dac2d..0942a19601a2 100644
> --- a/drivers/vfio/Kconfig
> +++ b/drivers/vfio/Kconfig
> @@ -4,7 +4,9 @@ menuconfig VFIO
>  	select IOMMU_API
>  	depends on IOMMUFD || !IOMMUFD
>  	select INTERVAL_TREE
> -	select VFIO_CONTAINER if IOMMUFD=n
> +	select VFIO_GROUP if SPAPR_TCE_IOMMU || !IOMMUFD

This needs to be IOMMUFD=n or else VFIO_GROUP cannot be unset when
IOMMUFD=m

> +	select VFIO_DEVICE_CDEV if !VFIO_GROUP
> +	select VFIO_CONTAINER if IOMMUFD=n && VFIO_GROUP

The fact that CONTAINER depends on GROUP seems to be sufficient that we
don't need GROUP here.  Thanks,

Alex

>  	help
>  	  VFIO provides a framework for secure userspace device drivers.
>  	  See Documentation/driver-api/vfio.rst for more details.
> @@ -15,6 +17,7 @@ if VFIO
>  config VFIO_DEVICE_CDEV
>  	bool "Support for the VFIO cdev /dev/vfio/devices/vfioX"
>  	depends on IOMMUFD
> +	default !VFIO_GROUP
>  	help
>  	  The VFIO device cdev is another way for userspace to get device
>  	  access. Userspace gets device fd by opening device cdev under
> @@ -23,9 +26,20 @@ config VFIO_DEVICE_CDEV
>  
>  	  If you don't know what to do here, say N.
>  
> +config VFIO_GROUP
> +	bool "Support for the VFIO group /dev/vfio/$group_id"
> +	default y
> +	help
> +	   VFIO group support provides the traditional model for accessing
> +	   devices through VFIO and is used by the majority of userspace
> +	   applications and drivers making use of VFIO.
> +
> +	   If you don't know what to do here, say Y.
> +
>  config VFIO_CONTAINER
>  	bool "Support for the VFIO container /dev/vfio/vfio"
>  	select VFIO_IOMMU_TYPE1 if MMU && (X86 || S390 || ARM || ARM64)
> +	depends on VFIO_GROUP
>  	default y
>  	help
>  	  The VFIO container is the classic interface to VFIO for establishing
> diff --git a/drivers/vfio/Makefile b/drivers/vfio/Makefile
> index 245394aeb94b..57c3515af606 100644
> --- a/drivers/vfio/Makefile
> +++ b/drivers/vfio/Makefile
> @@ -2,9 +2,9 @@
>  obj-$(CONFIG_VFIO) += vfio.o
>  
>  vfio-y += vfio_main.o \
> -	  group.o \
>  	  iova_bitmap.o
>  vfio-$(CONFIG_VFIO_DEVICE_CDEV) += device_cdev.o
> +vfio-$(CONFIG_VFIO_GROUP) += group.o
>  vfio-$(CONFIG_IOMMUFD) += iommufd.o
>  vfio-$(CONFIG_VFIO_CONTAINER) += container.o
>  vfio-$(CONFIG_VFIO_VIRQFD) += virqfd.o
> diff --git a/drivers/vfio/vfio.h b/drivers/vfio/vfio.h
> index c199e410db18..9c7a238ec8dd 100644
> --- a/drivers/vfio/vfio.h
> +++ b/drivers/vfio/vfio.h
> @@ -36,6 +36,12 @@ vfio_allocate_device_file(struct vfio_device *device);
>  
>  extern const struct file_operations vfio_device_fops;
>  
> +#ifdef CONFIG_VFIO_NOIOMMU
> +extern bool vfio_noiommu __read_mostly;
> +#else
> +enum { vfio_noiommu = false };
> +#endif
> +
>  enum vfio_group_type {
>  	/*
>  	 * Physical device with IOMMU backing.
> @@ -60,6 +66,7 @@ enum vfio_group_type {
>  	VFIO_NO_IOMMU,
>  };
>  
> +#if IS_ENABLED(CONFIG_VFIO_GROUP)
>  struct vfio_group {
>  	struct device 			dev;
>  	struct cdev			cdev;
> @@ -113,6 +120,104 @@ static inline void vfio_device_set_noiommu(struct vfio_device *device)
>  	device->noiommu = IS_ENABLED(CONFIG_VFIO_NOIOMMU) &&
>  			  device->group->type == VFIO_NO_IOMMU;
>  }
> +#else
> +struct vfio_group;
> +
> +static inline int vfio_device_block_group(struct vfio_device *device)
> +{
> +	return 0;
> +}
> +
> +static inline void vfio_device_unblock_group(struct vfio_device *device)
> +{
> +}
> +
> +static inline int vfio_device_set_group(struct vfio_device *device,
> +					enum vfio_group_type type)
> +{
> +	return 0;
> +}
> +
> +static inline void vfio_device_remove_group(struct vfio_device *device)
> +{
> +}
> +
> +static inline void vfio_device_group_register(struct vfio_device *device)
> +{
> +}
> +
> +static inline void vfio_device_group_unregister(struct vfio_device *device)
> +{
> +}
> +
> +static inline bool vfio_device_group_uses_container(struct vfio_device_file *df)
> +{
> +	return false;
> +}
> +
> +static inline int vfio_device_group_use_iommu(struct vfio_device *device)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
> +static inline void vfio_device_group_unuse_iommu(struct vfio_device *device)
> +{
> +}
> +
> +static inline void vfio_device_group_close(struct vfio_device_file *df)
> +{
> +}
> +
> +static inline struct vfio_group *vfio_group_from_file(struct file *file)
> +{
> +	return NULL;
> +}
> +
> +static inline bool vfio_group_has_dev(struct vfio_group *group,
> +				      struct vfio_device *device)
> +{
> +	return false;
> +}
> +
> +static inline bool vfio_group_enforced_coherent(struct vfio_group *group)
> +{
> +	return true;
> +}
> +
> +static inline void vfio_group_set_kvm(struct vfio_group *group, struct kvm *kvm)
> +{
> +}
> +
> +static inline bool vfio_device_has_container(struct vfio_device *device)
> +{
> +	return false;
> +}
> +
> +static inline int __init vfio_group_init(void)
> +{
> +	return 0;
> +}
> +
> +static inline void vfio_group_cleanup(void)
> +{
> +}
> +
> +static inline void vfio_device_set_noiommu(struct vfio_device *device)
> +{
> +	struct iommu_group *iommu_group;
> +
> +	device->noiommu = false;
> +
> +	if (!IS_ENABLED(CONFIG_VFIO_NOIOMMU) || !vfio_noiommu)
> +		return;
> +
> +	iommu_group = iommu_group_get(device->dev);
> +	if (iommu_group)
> +		iommu_group_put(iommu_group);
> +	else
> +		device->noiommu = true;
> +}
> +#endif /* CONFIG_VFIO_GROUP */
>  
>  #if IS_ENABLED(CONFIG_VFIO_CONTAINER)
>  /**
> @@ -356,12 +461,6 @@ static inline void vfio_virqfd_exit(void)
>  }
>  #endif
>  
> -#ifdef CONFIG_VFIO_NOIOMMU
> -extern bool vfio_noiommu __read_mostly;
> -#else
> -enum { vfio_noiommu = false };
> -#endif
> -
>  #ifdef CONFIG_HAVE_KVM
>  void _vfio_device_get_kvm_safe(struct vfio_device *device, struct kvm *kvm);
>  void vfio_device_put_kvm(struct vfio_device *device);
> diff --git a/include/linux/vfio.h b/include/linux/vfio.h
> index 8719ec2adbbb..1367605d617c 100644
> --- a/include/linux/vfio.h
> +++ b/include/linux/vfio.h
> @@ -43,7 +43,11 @@ struct vfio_device {
>  	 */
>  	const struct vfio_migration_ops *mig_ops;
>  	const struct vfio_log_ops *log_ops;
> +#if IS_ENABLED(CONFIG_VFIO_GROUP)
>  	struct vfio_group *group;
> +	struct list_head group_next;
> +	struct list_head iommu_entry;
> +#endif
>  	struct vfio_device_set *dev_set;
>  	struct list_head dev_set_list;
>  	unsigned int migration_flags;
> @@ -58,8 +62,6 @@ struct vfio_device {
>  	refcount_t refcount;	/* user count on registered device*/
>  	unsigned int open_count;
>  	struct completion comp;
> -	struct list_head group_next;
> -	struct list_head iommu_entry;
>  	struct iommufd_access *iommufd_access;
>  	void (*put_kvm)(struct kvm *kvm);
>  #if IS_ENABLED(CONFIG_IOMMUFD)
> @@ -270,7 +272,14 @@ int vfio_mig_get_next_state(struct vfio_device *device,
>  /*
>   * External user API
>   */
> +#if IS_ENABLED(CONFIG_VFIO_GROUP)
>  struct iommu_group *vfio_file_iommu_group(struct file *file);
> +#else
> +static inline struct iommu_group *vfio_file_iommu_group(struct file *file)
> +{
> +	return NULL;
> +}
> +#endif
>  bool vfio_file_is_valid(struct file *file);
>  bool vfio_file_enforced_coherent(struct file *file);
>  void vfio_file_set_kvm(struct file *file, struct kvm *kvm);

