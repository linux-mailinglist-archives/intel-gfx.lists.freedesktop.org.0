Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B22556887AB
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 20:42:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9027D10E611;
	Thu,  2 Feb 2023 19:42:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D7C410E60F
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 19:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1675366934;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zIQ2n2zGUlMDLwJgGdQnYP2oRa4LQM1jAFEjIerV0lE=;
 b=WMJqbBVSbTSD2/lAwJ9K/I+TniWewSwsl8NqsxqMdboXQ1UrY7cSHDp/UctxOdD1VosX9z
 osERn8DEcshw6Kfep6ud+8z4qbUcdgyl4QLKtjgLgVbjFPfJ37F2QfLIR52S/A0Gft3uqy
 hy+7/zPJtHNcg7CrifKTZc9n/tHVPjc=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-271-KTchfv7jOVSgnXX9hK1W6w-1; Thu, 02 Feb 2023 14:42:13 -0500
X-MC-Unique: KTchfv7jOVSgnXX9hK1W6w-1
Received: by mail-il1-f200.google.com with SMTP id
 l13-20020a056e0212ed00b00304c6338d79so1871043iln.21
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Feb 2023 11:42:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zIQ2n2zGUlMDLwJgGdQnYP2oRa4LQM1jAFEjIerV0lE=;
 b=gyF4g0pzFrR3Ikx+G3cBLi9klCVRPDVs1q50mOe49vsurbpeKoQrtYKEqLCj1zEuqO
 7+dIQMq3QGbhuDqvkgHxd+FZB0C4B+A3yTwEVyqCIwZHfmYZtdz+RSybvHA9sWy2Syln
 +/ovjhSv72EOQzAxEHIsvkJ5bZk7CfIBycLyI4+noWAKdlwVfLCXUzJ82hxGbkxxRtJZ
 vo6nnlJ1BANGyCGe12rCrBnsECfyDAhdE2AUpDLEUD8JQD29+Nz34Y9hcTIKcm088fa5
 IYbcryrk5SZdBCq2TD8bbohnRwkXWfjK1iO/t2zQvvzjKnBHjYzGxmOmnuTCjtkqq8sf
 sMpA==
X-Gm-Message-State: AO0yUKWyhcKoOu1TH/8WtyOjOSy5bjYo3sRXW15sQksNNldX/3Nwhn6X
 zVuPlRiAZFnBQRZCeCVmeyzLXLAZW2XDwu4OAEisGUE95NCRgr9NkdKHLm22DGBYEHRDqBy5xZF
 HRMb4TO+ORZEvv3hBuKEEeOWhFWGw
X-Received: by 2002:a05:6602:2748:b0:704:c2fe:d923 with SMTP id
 b8-20020a056602274800b00704c2fed923mr2342527ioe.2.1675366932385; 
 Thu, 02 Feb 2023 11:42:12 -0800 (PST)
X-Google-Smtp-Source: AK7set9PGggGE4Bo4rpSKeq/Aj9A5XLLG8vX6Xt+EZGVqW0kSFCktE2df+dH8ShasOGXR2McH3xS5w==
X-Received: by 2002:a05:6602:2748:b0:704:c2fe:d923 with SMTP id
 b8-20020a056602274800b00704c2fed923mr2342492ioe.2.1675366931909; 
 Thu, 02 Feb 2023 11:42:11 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 q207-20020a6b8ed8000000b007204b66dc76sm161556iod.23.2023.02.02.11.42.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Feb 2023 11:42:11 -0800 (PST)
Date: Thu, 2 Feb 2023 12:42:10 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Matthew Rosato <mjrosato@linux.ibm.com>
Message-ID: <20230202124210.476adaf8.alex.williamson@redhat.com>
In-Reply-To: <20230202162442.78216-1-mjrosato@linux.ibm.com>
References: <20230202162442.78216-1-mjrosato@linux.ibm.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3] vfio: fix deadlock between group lock
 and kvm lock
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
Cc: kvm@vger.kernel.org, david@redhat.com, imbrenda@linux.ibm.com,
 linux-s390@vger.kernel.org, yi.l.liu@intel.com, frankja@linux.ibm.com,
 pasic@linux.ibm.com, jgg@nvidia.com, borntraeger@linux.ibm.com,
 jjherne@linux.ibm.com, farman@linux.ibm.com, intel-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org, akrowiak@linux.ibm.com,
 pmorel@linux.ibm.com, seanjc@google.com, cohuck@redhat.com,
 linux-kernel@vger.kernel.org, pbonzini@redhat.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu,  2 Feb 2023 11:24:42 -0500
Matthew Rosato <mjrosato@linux.ibm.com> wrote:

> After 51cdc8bc120e, we have another deadlock scenario between the
> kvm->lock and the vfio group_lock with two different codepaths acquiring
> the locks in different order.  Specifically in vfio_open_device, vfio
> holds the vfio group_lock when issuing device->ops->open_device but some
> drivers (like vfio-ap) need to acquire kvm->lock during their open_device
> routine;  Meanwhile, kvm_vfio_release will acquire the kvm->lock first
> before calling vfio_file_set_kvm which will acquire the vfio group_lock.
> 
> To resolve this, let's remove the need for the vfio group_lock from the
> kvm_vfio_release codepath.  This is done by introducing a new spinlock to
> protect modifications to the vfio group kvm pointer, and acquiring a kvm
> ref from within vfio while holding this spinlock, with the reference held
> until the last close for the device in question.
> 
> Fixes: 51cdc8bc120e ("kvm/vfio: Fix potential deadlock on vfio group_lock")
> Reported-by: Anthony Krowiak <akrowiak@linux.ibm.com>
> Suggested-by: Jason Gunthorpe <jgg@nvidia.com>
> Signed-off-by: Matthew Rosato <mjrosato@linux.ibm.com>
> ---
> Changes from v2:
> * Relocate the new functions back to vfio_main and externalize to call
>   from group (Kevin) since cdev will need this too
> * s/vfio_kvm_*_kvm/vfio_device_*_kvm/ and only pass device as input.
>   Handle new kvm_ref_lock directly inside vfio_device_get_kvm (Alex)
> * Add assert_lockdep_held for dev_set lock (Alex)
> * Internalize error paths for vfio_device_get_kvm_safe and now return
>   void - either device->kvm is set with a ref taken or is NULL (Alex)
> * Other flow suggestions to make the call path cleaner - Thanks! (Alex)
> * Can't pass group->kvm to vfio_device_open, as it references the value
>   outside of new lock.  Pass device->kvm to minimize changes in this
>   fix (Alex, Yi)
> Changes from v1:
> * use spin_lock instead of spin_lock_irqsave (Jason)
> * clear device->kvm_put as part of vfio_kvm_put_kvm (Yi)
> * Re-arrange code to avoid referencing the group contents from within
>   vfio_main (Kevin) which meant moving most of the code in this patch 
>   to group.c along with getting/dropping of the dev_set lock
> ---
>  drivers/vfio/group.c     | 32 ++++++++++++++----
>  drivers/vfio/vfio.h      | 14 ++++++++
>  drivers/vfio/vfio_main.c | 70 ++++++++++++++++++++++++++++++++++++----
>  include/linux/vfio.h     |  2 +-
>  4 files changed, 103 insertions(+), 15 deletions(-)

LGTM.  I'm not sure moving the functions to vfio_main really buys us
anything since we're making so much use of group fields.  The cdev
approach will necessarily be different, so the bulk of the get code will
likely need to move back to group.c anyway.

I'll wait for further comments and reviews by others before applying.
Thanks,

Alex

> diff --git a/drivers/vfio/group.c b/drivers/vfio/group.c
> index bb24b2f0271e..7fed4233ca23 100644
> --- a/drivers/vfio/group.c
> +++ b/drivers/vfio/group.c
> @@ -164,13 +164,23 @@ static int vfio_device_group_open(struct vfio_device *device)
>  		goto out_unlock;
>  	}
>  
> +	mutex_lock(&device->dev_set->lock);
> +
>  	/*
> -	 * Here we pass the KVM pointer with the group under the lock.  If the
> -	 * device driver will use it, it must obtain a reference and release it
> -	 * during close_device.
> +	 * Before the first device open, get the KVM pointer currently
> +	 * associated with the group (if there is one) and obtain a reference
> +	 * now that will be held until the open_count reaches 0 again.  Save
> +	 * the pointer in the device for use by drivers.
>  	 */
> -	ret = vfio_device_open(device, device->group->iommufd,
> -			       device->group->kvm);
> +	if (device->open_count == 0)
> +		vfio_device_get_kvm_safe(device);
> +
> +	ret = vfio_device_open(device, device->group->iommufd, device->kvm);
> +
> +	if (device->open_count == 0)
> +		vfio_device_put_kvm(device);
> +
> +	mutex_unlock(&device->dev_set->lock);
>  
>  out_unlock:
>  	mutex_unlock(&device->group->group_lock);
> @@ -180,7 +190,14 @@ static int vfio_device_group_open(struct vfio_device *device)
>  void vfio_device_group_close(struct vfio_device *device)
>  {
>  	mutex_lock(&device->group->group_lock);
> +	mutex_lock(&device->dev_set->lock);
> +
>  	vfio_device_close(device, device->group->iommufd);
> +
> +	if (device->open_count == 0)
> +		vfio_device_put_kvm(device);
> +
> +	mutex_unlock(&device->dev_set->lock);
>  	mutex_unlock(&device->group->group_lock);
>  }
>  
> @@ -450,6 +467,7 @@ static struct vfio_group *vfio_group_alloc(struct iommu_group *iommu_group,
>  
>  	refcount_set(&group->drivers, 1);
>  	mutex_init(&group->group_lock);
> +	spin_lock_init(&group->kvm_ref_lock);
>  	INIT_LIST_HEAD(&group->device_list);
>  	mutex_init(&group->device_lock);
>  	group->iommu_group = iommu_group;
> @@ -803,9 +821,9 @@ void vfio_file_set_kvm(struct file *file, struct kvm *kvm)
>  	if (!vfio_file_is_group(file))
>  		return;
>  
> -	mutex_lock(&group->group_lock);
> +	spin_lock(&group->kvm_ref_lock);
>  	group->kvm = kvm;
> -	mutex_unlock(&group->group_lock);
> +	spin_unlock(&group->kvm_ref_lock);
>  }
>  EXPORT_SYMBOL_GPL(vfio_file_set_kvm);
>  
> diff --git a/drivers/vfio/vfio.h b/drivers/vfio/vfio.h
> index f8219a438bfb..20d715b0a3a8 100644
> --- a/drivers/vfio/vfio.h
> +++ b/drivers/vfio/vfio.h
> @@ -74,6 +74,7 @@ struct vfio_group {
>  	struct file			*opened_file;
>  	struct blocking_notifier_head	notifier;
>  	struct iommufd_ctx		*iommufd;
> +	spinlock_t			kvm_ref_lock;
>  };
>  
>  int vfio_device_set_group(struct vfio_device *device,
> @@ -251,4 +252,17 @@ extern bool vfio_noiommu __read_mostly;
>  enum { vfio_noiommu = false };
>  #endif
>  
> +#ifdef CONFIG_HAVE_KVM
> +void vfio_device_get_kvm_safe(struct vfio_device *device);
> +void vfio_device_put_kvm(struct vfio_device *device);
> +#else
> +static inline void vfio_device_get_kvm_safe(struct vfio_device *device)
> +{
> +}
> +
> +static inline void vfio_device_put_kvm(struct vfio_device *device)
> +{
> +}
> +#endif
> +
>  #endif
> diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> index 5177bb061b17..4762550e9f42 100644
> --- a/drivers/vfio/vfio_main.c
> +++ b/drivers/vfio/vfio_main.c
> @@ -16,6 +16,9 @@
>  #include <linux/fs.h>
>  #include <linux/idr.h>
>  #include <linux/iommu.h>
> +#ifdef CONFIG_HAVE_KVM
> +#include <linux/kvm_host.h>
> +#endif
>  #include <linux/list.h>
>  #include <linux/miscdevice.h>
>  #include <linux/module.h>
> @@ -338,6 +341,62 @@ void vfio_unregister_group_dev(struct vfio_device *device)
>  }
>  EXPORT_SYMBOL_GPL(vfio_unregister_group_dev);
>  
> +#ifdef CONFIG_HAVE_KVM
> +void vfio_device_get_kvm_safe(struct vfio_device *device)
> +{
> +	void (*pfn)(struct kvm *kvm);
> +	bool (*fn)(struct kvm *kvm);
> +	bool ret;
> +
> +	lockdep_assert_held(&device->dev_set->lock);
> +
> +	spin_lock(&device->group->kvm_ref_lock);
> +	if (!device->group->kvm)
> +		goto unlock;
> +
> +	pfn = symbol_get(kvm_put_kvm);
> +	if (WARN_ON(!pfn))
> +		goto unlock;
> +
> +	fn = symbol_get(kvm_get_kvm_safe);
> +	if (WARN_ON(!fn)) {
> +		symbol_put(kvm_put_kvm);
> +		goto unlock;
> +	}
> +
> +	ret = fn(device->group->kvm);
> +	symbol_put(kvm_get_kvm_safe);
> +	if (!ret) {
> +		symbol_put(kvm_put_kvm);
> +		goto unlock;
> +	}
> +
> +	device->put_kvm = pfn;
> +	device->kvm = device->group->kvm;
> +
> +unlock:
> +	spin_unlock(&device->group->kvm_ref_lock);
> +}
> +
> +void vfio_device_put_kvm(struct vfio_device *device)
> +{
> +	lockdep_assert_held(&device->dev_set->lock);
> +
> +	if (!device->kvm)
> +		return;
> +
> +	if (WARN_ON(!device->put_kvm))
> +		goto clear;
> +
> +	device->put_kvm(device->kvm);
> +	device->put_kvm = NULL;
> +	symbol_put(kvm_put_kvm);
> +
> +clear:
> +	device->kvm = NULL;
> +}
> +#endif
> +
>  /* true if the vfio_device has open_device() called but not close_device() */
>  static bool vfio_assert_device_open(struct vfio_device *device)
>  {
> @@ -361,7 +420,6 @@ static int vfio_device_first_open(struct vfio_device *device,
>  	if (ret)
>  		goto err_module_put;
>  
> -	device->kvm = kvm;
>  	if (device->ops->open_device) {
>  		ret = device->ops->open_device(device);
>  		if (ret)
> @@ -370,7 +428,6 @@ static int vfio_device_first_open(struct vfio_device *device,
>  	return 0;
>  
>  err_unuse_iommu:
> -	device->kvm = NULL;
>  	if (iommufd)
>  		vfio_iommufd_unbind(device);
>  	else
> @@ -387,7 +444,6 @@ static void vfio_device_last_close(struct vfio_device *device,
>  
>  	if (device->ops->close_device)
>  		device->ops->close_device(device);
> -	device->kvm = NULL;
>  	if (iommufd)
>  		vfio_iommufd_unbind(device);
>  	else
> @@ -400,14 +456,14 @@ int vfio_device_open(struct vfio_device *device,
>  {
>  	int ret = 0;
>  
> -	mutex_lock(&device->dev_set->lock);
> +	lockdep_assert_held(&device->dev_set->lock);
> +
>  	device->open_count++;
>  	if (device->open_count == 1) {
>  		ret = vfio_device_first_open(device, iommufd, kvm);
>  		if (ret)
>  			device->open_count--;
>  	}
> -	mutex_unlock(&device->dev_set->lock);
>  
>  	return ret;
>  }
> @@ -415,12 +471,12 @@ int vfio_device_open(struct vfio_device *device,
>  void vfio_device_close(struct vfio_device *device,
>  		       struct iommufd_ctx *iommufd)
>  {
> -	mutex_lock(&device->dev_set->lock);
> +	lockdep_assert_held(&device->dev_set->lock);
> +
>  	vfio_assert_device_open(device);
>  	if (device->open_count == 1)
>  		vfio_device_last_close(device, iommufd);
>  	device->open_count--;
> -	mutex_unlock(&device->dev_set->lock);
>  }
>  
>  /*
> diff --git a/include/linux/vfio.h b/include/linux/vfio.h
> index 35be78e9ae57..87ff862ff555 100644
> --- a/include/linux/vfio.h
> +++ b/include/linux/vfio.h
> @@ -46,7 +46,6 @@ struct vfio_device {
>  	struct vfio_device_set *dev_set;
>  	struct list_head dev_set_list;
>  	unsigned int migration_flags;
> -	/* Driver must reference the kvm during open_device or never touch it */
>  	struct kvm *kvm;
>  
>  	/* Members below here are private, not for driver use */
> @@ -58,6 +57,7 @@ struct vfio_device {
>  	struct list_head group_next;
>  	struct list_head iommu_entry;
>  	struct iommufd_access *iommufd_access;
> +	void (*put_kvm)(struct kvm *kvm);
>  #if IS_ENABLED(CONFIG_IOMMUFD)
>  	struct iommufd_device *iommufd_device;
>  	struct iommufd_ctx *iommufd_ictx;

