Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C96D6684FE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 22:05:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1CF410E929;
	Thu, 12 Jan 2023 21:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3B7C10E929
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 21:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1673557524;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=h6f/xkDFcthJcSJTvgCInVgMfaXKqM0yPFFK06gOaJY=;
 b=RoqJk80Jbv+ucaxjpcQldnDZF833Go+tEB9918jgAf1/IPqO+0foVcbumg4tVepgIrbhsj
 X09hv8wP52Le/k6sfxJ0ZbZrs+6ZdKX2h20PiGf3tYfSCT7wx7Tl7Uv5fWlf4ViRI824Zs
 l44xSjrNldclY0kDK4W+gBqr4NCOEKM=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-512-ag-z9GgTNySWZGfMLPkP3A-1; Thu, 12 Jan 2023 16:05:20 -0500
X-MC-Unique: ag-z9GgTNySWZGfMLPkP3A-1
Received: by mail-il1-f198.google.com with SMTP id
 y5-20020a056e021be500b0030bc4f23f0aso14362744ilv.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 13:05:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=h6f/xkDFcthJcSJTvgCInVgMfaXKqM0yPFFK06gOaJY=;
 b=lam/SOL81yDq4QhP7HIOmFtNo4de7CfgzuSdWIpydDG6QaaEgrVjWyYzR/voI5OLzE
 qrexlwPQhnSt2QpnZPhxDSrt1Q6+VAwME7+TP2O9b70sWX9++7FqZx4vixD+hsoihNeh
 v9HC66hz3xs8tCpz6x423O+qu7y+lXdl5ENBuMUCA7hWOHLjrrOUw4MOlUucC7DlbfpN
 5BJLEmJDlMAaC6VZAF8x193tOk4odme5eY2v8jzSSAaad4HfiBEjiKzAbKAUVmBQiLmq
 hcr4SRWonzD/BRYqx0N87SI+rYOQClJTBOdv7tjUXtO1bYzyMpTMud0PWvCvJTw4r832
 LpGw==
X-Gm-Message-State: AFqh2kphsrcX/EjJoPrmo/K5DBFldVGrLHcpNLb/poJOftYj8U0xfHam
 YWNm2bTpzvl9jhXbLlLMtUtQB/zZ+stquZe95SfHzhwzjUZcUggtVIhn92uFBGK09QOWpOeJ83T
 iVYz4lK+30H2V8RqZJP0pdyI33h2Z
X-Received: by 2002:a05:6e02:1d88:b0:30d:7cf4:5d5c with SMTP id
 h8-20020a056e021d8800b0030d7cf45d5cmr31649891ila.31.1673557519938; 
 Thu, 12 Jan 2023 13:05:19 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvrH5SQuIa+SM0JX2id5B1E3t2j9jN9JvjT6ILFvMMJfCCKm4aTtrr6JdMNkSQtGVDDL9mJbQ==
X-Received: by 2002:a05:6e02:1d88:b0:30d:7cf4:5d5c with SMTP id
 h8-20020a056e021d8800b0030d7cf45d5cmr31649859ila.31.1673557519587; 
 Thu, 12 Jan 2023 13:05:19 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 a17-20020a92d591000000b0030be6c79645sm5428334iln.68.2023.01.12.13.05.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Jan 2023 13:05:19 -0800 (PST)
Date: Thu, 12 Jan 2023 14:05:17 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Matthew Rosato <mjrosato@linux.ibm.com>
Message-ID: <20230112140517.6db5b346.alex.williamson@redhat.com>
In-Reply-To: <20230112203844.41179-1-mjrosato@linux.ibm.com>
References: <20230112203844.41179-1-mjrosato@linux.ibm.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] vfio: fix potential deadlock on vfio
 group lock
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
Cc: akrowiak@linux.ibm.com, jjherne@linux.ibm.com, farman@linux.ibm.com,
 imbrenda@linux.ibm.com, frankja@linux.ibm.com, pmorel@linux.ibm.com,
 david@redhat.com, seanjc@google.com, intel-gfx@lists.freedesktop.org,
 cohuck@redhat.com, linux-kernel@vger.kernel.org, pasic@linux.ibm.com,
 jgg@nvidia.com, kvm@vger.kernel.org, pbonzini@redhat.com,
 linux-s390@vger.kernel.org, borntraeger@linux.ibm.com,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 12 Jan 2023 15:38:44 -0500
Matthew Rosato <mjrosato@linux.ibm.com> wrote:

> Currently it is possible that the final put of a KVM reference comes from
> vfio during its device close operation.  This occurs while the vfio group
> lock is held; however, if the vfio device is still in the kvm device list,
> then the following call chain could result in a deadlock:
> 
> kvm_put_kvm
>  -> kvm_destroy_vm
>   -> kvm_destroy_devices
>    -> kvm_vfio_destroy
>     -> kvm_vfio_file_set_kvm
>      -> vfio_file_set_kvm
>       -> group->group_lock/group_rwsem  
> 
> Avoid this scenario by having vfio core code acquire a KVM reference
> the first time a device is opened and hold that reference until the
> device fd is closed, at a point after the group lock has been released.
> 
> Fixes: 421cfe6596f6 ("vfio: remove VFIO_GROUP_NOTIFY_SET_KVM")
> Reported-by: Alex Williamson <alex.williamson@redhat.com>
> Signed-off-by: Matthew Rosato <mjrosato@linux.ibm.com>
> ---
> Changes from v1:
> * Re-write using symbol get logic to get kvm ref during first device
>   open, release the ref during device fd close after group lock is
>   released
> * Drop kvm get/put changes to drivers; now that vfio core holds a
>   kvm ref until sometime after the device_close op is called, it
>   should be fine for drivers to get and put their own references to it.
> ---
>  drivers/vfio/group.c     |  6 ++---
>  drivers/vfio/vfio_main.c | 48 +++++++++++++++++++++++++++++++++++++---
>  include/linux/vfio.h     |  1 -
>  3 files changed, 48 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/vfio/group.c b/drivers/vfio/group.c
> index bb24b2f0271e..2b0da82f82f4 100644
> --- a/drivers/vfio/group.c
> +++ b/drivers/vfio/group.c
> @@ -165,9 +165,9 @@ static int vfio_device_group_open(struct vfio_device *device)
>  	}
>  
>  	/*
> -	 * Here we pass the KVM pointer with the group under the lock.  If the
> -	 * device driver will use it, it must obtain a reference and release it
> -	 * during close_device.
> +	 * Here we pass the KVM pointer with the group under the lock.  A
> +	 * reference will be obtained the first time the device is opened and
> +	 * will be held until the device fd is closed.
>  	 */
>  	ret = vfio_device_open(device, device->group->iommufd,
>  			       device->group->kvm);
> diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> index 5177bb061b17..c969e2a0ecd3 100644
> --- a/drivers/vfio/vfio_main.c
> +++ b/drivers/vfio/vfio_main.c
> @@ -16,6 +16,7 @@
>  #include <linux/fs.h>
>  #include <linux/idr.h>
>  #include <linux/iommu.h>
> +#include <linux/kvm_host.h>
>  #include <linux/list.h>
>  #include <linux/miscdevice.h>
>  #include <linux/module.h>
> @@ -344,6 +345,35 @@ static bool vfio_assert_device_open(struct vfio_device *device)
>  	return !WARN_ON_ONCE(!READ_ONCE(device->open_count));
>  }
>  
> +static bool vfio_kvm_get_kvm_safe(struct kvm *kvm)
> +{
> +	bool (*fn)(struct kvm *kvm);
> +	bool ret;
> +
> +	fn = symbol_get(kvm_get_kvm_safe);
> +	if (WARN_ON(!fn))
> +		return false;
> +
> +	ret = fn(kvm);
> +
> +	symbol_put(kvm_get_kvm_safe);
> +
> +	return ret;
> +}
> +
> +static void vfio_kvm_put_kvm(struct kvm *kvm)
> +{
> +	void (*fn)(struct kvm *kvm);
> +
> +	fn = symbol_get(kvm_put_kvm);
> +	if (WARN_ON(!fn))
> +		return;
> +
> +	fn(kvm);
> +
> +	symbol_put(kvm_put_kvm);
> +}
> +
>  static int vfio_device_first_open(struct vfio_device *device,
>  				  struct iommufd_ctx *iommufd, struct kvm *kvm)
>  {
> @@ -361,16 +391,24 @@ static int vfio_device_first_open(struct vfio_device *device,
>  	if (ret)
>  		goto err_module_put;
>  
> +	if (kvm && !vfio_kvm_get_kvm_safe(kvm)) {
> +		ret = -ENOENT;
> +		goto err_unuse_iommu;
> +	}
>  	device->kvm = kvm;

This could just as easily be:

	if (kvm && vfio_kvm_get_kvm_safe(kvm))
		device->kvm = kvm;

Right?  The error path would test device->kvm and we already use
device->kvm in the release path.

Otherwise, in the off chance userspace hits this error, what's the
value in generating a failure here for a device that may or may not
have a kvm dependency.  A driver with a dependency should fail if
device->kvm is NULL.

>  	if (device->ops->open_device) {
>  		ret = device->ops->open_device(device);
>  		if (ret)
> -			goto err_unuse_iommu;
> +			goto err_put_kvm;
>  	}
>  	return 0;
>  
> +err_put_kvm:
> +	if (kvm) {
> +		vfio_kvm_put_kvm(kvm);
> +		device->kvm = NULL;
> +	}
>  err_unuse_iommu:
> -	device->kvm = NULL;
>  	if (iommufd)
>  		vfio_iommufd_unbind(device);
>  	else
> @@ -387,7 +425,6 @@ static void vfio_device_last_close(struct vfio_device *device,
>  
>  	if (device->ops->close_device)
>  		device->ops->close_device(device);
> -	device->kvm = NULL;
>  	if (iommufd)
>  		vfio_iommufd_unbind(device);
>  	else
> @@ -465,6 +502,11 @@ static int vfio_device_fops_release(struct inode *inode, struct file *filep)
>  
>  	vfio_device_group_close(device);
>  
> +	if (device->open_count == 0 && device->kvm) {
> +		vfio_kvm_put_kvm(device->kvm);
> +		device->kvm = NULL;
> +	}

IIUC, device->open_count is protected by device->dev_set->lock.  Thanks,

Alex

> +
>  	vfio_device_put_registration(device);
>  
>  	return 0;
> diff --git a/include/linux/vfio.h b/include/linux/vfio.h
> index 35be78e9ae57..3ff7e9302cc1 100644
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

