Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94537675C51
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 18:58:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0BCA10E126;
	Fri, 20 Jan 2023 17:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF82710E126
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 17:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1674237524;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WmRfpj48RyjRyZDGGPZo2d8kT+rAwJ1anTjm2/PHafk=;
 b=aH7LGIRsHjrmxLBwFpioWp+nflyvhbAJt3l/SKc8Z6+fqOFnTzt4cGdrZf4V79JEYaRKXU
 k2xUaQkHAMt88X+CT3RLw9Hqpq7lOupiFGtIzDrEmpwnQdzuDEuzYGYPdQPps1saB6CvHu
 lm4NIvhhGpQ9QqNSLL7pAES+FpefZzU=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-651-ZqYsXc3XME2m78AgdeRKhw-1; Fri, 20 Jan 2023 12:58:41 -0500
X-MC-Unique: ZqYsXc3XME2m78AgdeRKhw-1
Received: by mail-io1-f72.google.com with SMTP id
 n2-20020a6b7202000000b0070768a0a88bso3307410ioc.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 09:58:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=WmRfpj48RyjRyZDGGPZo2d8kT+rAwJ1anTjm2/PHafk=;
 b=e7qsFDdBj8dJpoNEw41ga5jhFSJEj2HTG7XtiN21KSvyFvc9jUOCFiQ5bv5MFqtvZv
 bIf6E6cUcML9YBjprIuN8n9j/M9uKNz5u0yc9adDQcvRcSo2leVBokwiRpYq6rQkw0Zj
 19fT8TCUFMOCU+keSwzF0D8QuZWc40EEgB4j7zTgECbpvw4+mODW89p1uQ2MTQxC6Yo3
 c0MIRsX+r/FkFOj6zh5KZJLSsZ/gZSt8sQLZ9mV/qpjRDUqCR8dS8n8/muH0RMODcqq/
 2ic79nY2wtFHJ2JXkH9y8KeNct5uUDHYI0ke38n9/4PBl96Fj5Jy8vRkZ2BUpZB2av1N
 vXmA==
X-Gm-Message-State: AFqh2kr2GQ8ueho/JT6gRtsyheI2OWej8IMGVonZgz1XSY/zmAlxnR/u
 Vd5tVhAZgFo483V79DdyKRWe+rxvYH+AeR4/++H0gfYHbjcxecGSmzPrYJqBu/pIUvgjl45fI7F
 T6LB5irAhk5FKK/fBl0MXgZS7vcwM
X-Received: by 2002:a5d:91ce:0:b0:704:ce06:81fd with SMTP id
 k14-20020a5d91ce000000b00704ce0681fdmr10190700ior.12.1674237520797; 
 Fri, 20 Jan 2023 09:58:40 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvWHZw0KBjfw/OOejn5eFckg+3ECBCwnEWHdhh2gOLwwb1mg/roN1/n+BWFUPswaGH+Cbf2rg==
X-Received: by 2002:a5d:91ce:0:b0:704:ce06:81fd with SMTP id
 k14-20020a5d91ce000000b00704ce0681fdmr10190681ior.12.1674237520535; 
 Fri, 20 Jan 2023 09:58:40 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 j2-20020a026302000000b0038a48cfededsm12514918jac.15.2023.01.20.09.58.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Jan 2023 09:58:40 -0800 (PST)
Date: Fri, 20 Jan 2023 10:58:37 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Yi Liu <yi.l.liu@intel.com>
Message-ID: <20230120105837.254a0b0a.alex.williamson@redhat.com>
In-Reply-To: <20230120150528.471752-1-yi.l.liu@intel.com>
References: <20230120150528.471752-1-yi.l.liu@intel.com>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] kvm/vfio: Fix potential deadlock on vfio
 group_lock
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
Cc: mjrosato@linux.ibm.com, david@redhat.com, imbrenda@linux.ibm.com,
 linux-s390@vger.kernel.org, kvm@vger.kernel.org, pasic@linux.ibm.com,
 jgg@nvidia.com, borntraeger@linux.ibm.com, jjherne@linux.ibm.com,
 farman@linux.ibm.com, intel-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org, frankja@linux.ibm.com,
 akrowiak@linux.ibm.com, pmorel@linux.ibm.com, seanjc@google.com,
 cohuck@redhat.com, linux-kernel@vger.kernel.org, pbonzini@redhat.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 20 Jan 2023 07:05:28 -0800
Yi Liu <yi.l.liu@intel.com> wrote:

> Currently it is possible that the final put of a KVM reference comes from
> vfio during its device close operation.  This occurs while the vfio group
> lock is held; however, if the vfio device is still in the kvm device list,
> then the following call chain could result in a deadlock:
> 
> VFIO holds group->group_lock/group_rwsem
>   -> kvm_put_kvm
>    -> kvm_destroy_vm
>     -> kvm_destroy_devices
>      -> kvm_vfio_destroy
>       -> kvm_vfio_file_set_kvm
>        -> vfio_file_set_kvm
>         -> try to hold group->group_lock/group_rwsem  
> 
> The key function is the kvm_destroy_devices() which triggers destroy cb
> of kvm_device_ops. It calls back to vfio and try to hold group_lock. So
> if this path doesn't call back to vfio, this dead lock would be fixed.
> Actually, there is a way for it. KVM provides another point to free the
> kvm-vfio device which is the point when the device file descriptor is
> closed. This can be achieved by providing the release cb instead of the
> destroy cb. Also rename kvm_vfio_destroy() to be kvm_vfio_release().
> 
> 	/*
> 	 * Destroy is responsible for freeing dev.
> 	 *
> 	 * Destroy may be called before or after destructors are called
> 	 * on emulated I/O regions, depending on whether a reference is
> 	 * held by a vcpu or other kvm component that gets destroyed
> 	 * after the emulated I/O.
> 	 */
> 	void (*destroy)(struct kvm_device *dev);
> 
> 	/*
> 	 * Release is an alternative method to free the device. It is
> 	 * called when the device file descriptor is closed. Once
> 	 * release is called, the destroy method will not be called
> 	 * anymore as the device is removed from the device list of
> 	 * the VM. kvm->lock is held.
> 	 */
> 	void (*release)(struct kvm_device *dev);
> 
> Fixes: 421cfe6596f6 ("vfio: remove VFIO_GROUP_NOTIFY_SET_KVM")
> Reported-by: Alex Williamson <alex.williamson@redhat.com>
> Suggested-by: Kevin Tian <kevin.tian@intel.com>
> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  virt/kvm/vfio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/virt/kvm/vfio.c b/virt/kvm/vfio.c
> index 495ceabffe88..e94f3ea718e5 100644
> --- a/virt/kvm/vfio.c
> +++ b/virt/kvm/vfio.c
> @@ -336,7 +336,7 @@ static int kvm_vfio_has_attr(struct kvm_device *dev,
>  	return -ENXIO;
>  }
>  
> -static void kvm_vfio_destroy(struct kvm_device *dev)
> +static void kvm_vfio_release(struct kvm_device *dev)
>  {
>  	struct kvm_vfio *kv = dev->private;
>  	struct kvm_vfio_group *kvg, *tmp;
> @@ -363,7 +363,7 @@ static int kvm_vfio_create(struct kvm_device *dev, u32 type);
>  static struct kvm_device_ops kvm_vfio_ops = {
>  	.name = "kvm-vfio",
>  	.create = kvm_vfio_create,
> -	.destroy = kvm_vfio_destroy,
> +	.release = kvm_vfio_release,
>  	.set_attr = kvm_vfio_set_attr,
>  	.has_attr = kvm_vfio_has_attr,
>  };

Applied to vfio for-linus branch for v6.2, along with Matthew's R-b,
the comment update, and the extra reference link.  Once we get a
linux-next build I'll send a pull request, along with Matthew's
reserved region fix.  Thanks,

Alex

