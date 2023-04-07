Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECA06DAB11
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Apr 2023 11:48:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9646E10E377;
	Fri,  7 Apr 2023 09:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 236D710E2BF
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Apr 2023 09:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680860894;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o4iRHgbQhPwVpyJmMFVyQJvJ+/Z7zOQeM679Xa5eK6c=;
 b=NwJBw2IK1iKNS2ch5BgiLei+K3b3fJHcxAXtEQm/0716c/vtzNeip1T8D5/O2w/teuTpfK
 Pk7yv5ik6LuqG8anaEYotoYg5ECV320TeM+Sdo2BJvEFkG7ovMHPdY2qu48oDqHAssmuNA
 hZ3D7bonu4Nt9qPyXvGAxHzepvNkVLA=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-594-1zqsGKw8NTiv-_EkkYG8aA-1; Fri, 07 Apr 2023 05:48:11 -0400
X-MC-Unique: 1zqsGKw8NTiv-_EkkYG8aA-1
Received: by mail-wm1-f72.google.com with SMTP id
 bh18-20020a05600c3d1200b003f05a99b571so4942975wmb.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Apr 2023 02:48:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680860890;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=o4iRHgbQhPwVpyJmMFVyQJvJ+/Z7zOQeM679Xa5eK6c=;
 b=hU1GXMjzu0jUn47qAX4G/Rkb01ZXH9d952VRO3Fi/XWDySCdIFvY3BtEcD91LZzL4w
 N/G9Ij6bOReQVj8cq0M6r5J1T1zrn6Xg29q9Ly2F2Lwob7pnwrm4nUuwrqi+uAEFx5hn
 wS1yUadqqTU9IBZB/jBqg1C+84EgVaGf75oQYBMV8VFHzfh0qTB7n9FKNyyDGePcgaZx
 rxmdtOG+HokjuQYlVYbWWSdvkxN5F7Gig9Dp22SfbVrfj1w19qMKiU/mDRDRQYrNR/rC
 VJ4p+09gKmGfed8rCrODLrrJv/yF0pFg5Nyor2bp/IZq+ycPgsrYVnGpCfITRjKuSzDf
 5mNg==
X-Gm-Message-State: AAQBX9c8F+ksdm306apMV+wD2ueyQ0g6FGkT8Ptp8nUKyof7w/3o6tCn
 jacVRbrfEMHoRw62+hFnVP2KV1lCa42oOeV2WdqnOXTsFIeuinIdQtN8n1iKR8kvTg69nSAHNck
 wE0IFP/vu77nzbFdv1J9hbgM9nK1A
X-Received: by 2002:a05:600c:204d:b0:3ea:e4f8:be09 with SMTP id
 p13-20020a05600c204d00b003eae4f8be09mr909023wmg.30.1680860889935; 
 Fri, 07 Apr 2023 02:48:09 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZlpsPfpxKVEL2171G53vaHOkQSd6+4Svqt/X88zEcX4kRYEeQU3ue1qYmeM1kP8/bXxozatA==
X-Received: by 2002:a05:600c:204d:b0:3ea:e4f8:be09 with SMTP id
 p13-20020a05600c204d00b003eae4f8be09mr908998wmg.30.1680860889634; 
 Fri, 07 Apr 2023 02:48:09 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:59e:9d80:527b:9dff:feef:3874?
 ([2a01:e0a:59e:9d80:527b:9dff:feef:3874])
 by smtp.gmail.com with ESMTPSA id
 a2-20020a1cf002000000b003f049a42689sm4103205wmb.25.2023.04.07.02.48.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 07 Apr 2023 02:48:07 -0700 (PDT)
Message-ID: <05d59a7e-fa75-a93e-95a5-a376c00721d5@redhat.com>
Date: Fri, 7 Apr 2023 11:48:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Yi Liu <yi.l.liu@intel.com>, alex.williamson@redhat.com, jgg@nvidia.com,
 kevin.tian@intel.com
References: <20230401151833.124749-1-yi.l.liu@intel.com>
 <20230401151833.124749-11-yi.l.liu@intel.com>
From: Eric Auger <eric.auger@redhat.com>
In-Reply-To: <20230401151833.124749-11-yi.l.liu@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v9 10/25] vfio: Make vfio_device_open()
 single open for device cdev path
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
> VFIO group has historically allowed multi-open of the device FD. This
> was made secure because the "open" was executed via an ioctl to the
> group FD which is itself only single open.
>
> However, no known use of multiple device FDs today. It is kind of a
> strange thing to do because new device FDs can naturally be created
> via dup().
>
> When we implement the new device uAPI (only used in cdev path) there is
> no natural way to allow the device itself from being multi-opened in a
> secure manner. Without the group FD we cannot prove the security context
> of the opener.
>
> Thus, when moving to the new uAPI we block the ability of opening
> a device multiple times. Given old group path still allows it we store
> a vfio_group pointer in struct vfio_device_file to differentiate.
>
> Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> Tested-by: Terrence Xu <terrence.xu@intel.com>
> Tested-by: Nicolin Chen <nicolinc@nvidia.com>
> Tested-by: Yanting Jiang <yanting.jiang@intel.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  drivers/vfio/group.c     | 2 ++
>  drivers/vfio/vfio.h      | 2 ++
>  drivers/vfio/vfio_main.c | 7 +++++++
>  3 files changed, 11 insertions(+)
>
> diff --git a/drivers/vfio/group.c b/drivers/vfio/group.c
> index d55ce3ca44b7..1af4b9e012a7 100644
> --- a/drivers/vfio/group.c
> +++ b/drivers/vfio/group.c
> @@ -245,6 +245,8 @@ static struct file *vfio_device_open_file(struct vfio_device *device)
>  		goto err_out;
>  	}
>  
> +	df->group = device->group;
> +
in previous patches df fields were protected with various locks. I refer
to vfio_device_group_open() implementation. No need here?

By the way since the group is set here, wrt [PATCH v9 06/25] kvm/vfio:
Accept vfio device file from userspace you have a way to determine if a
device was opened in the legacy way, no?
>  	ret = vfio_device_group_open(df);
>  	if (ret)
>  		goto err_free;
> diff --git a/drivers/vfio/vfio.h b/drivers/vfio/vfio.h
> index b2f20b78a707..f1a448f9d067 100644
> --- a/drivers/vfio/vfio.h
> +++ b/drivers/vfio/vfio.h
> @@ -18,6 +18,8 @@ struct vfio_container;
>  
>  struct vfio_device_file {
>  	struct vfio_device *device;
> +	struct vfio_group *group;
> +
>  	bool access_granted;
>  	spinlock_t kvm_ref_lock; /* protect kvm field */
>  	struct kvm *kvm;
> diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> index 6d5d3c2180c8..c8721d5d05fa 100644
> --- a/drivers/vfio/vfio_main.c
> +++ b/drivers/vfio/vfio_main.c
> @@ -477,6 +477,13 @@ int vfio_device_open(struct vfio_device_file *df)
>  
>  	lockdep_assert_held(&device->dev_set->lock);
>  
> +	/*
> +	 * Only the group path allows the device opened multiple times.
allows the device to be opened multiple times
> +	 * The device cdev path doesn't have a secure way for it.
> +	 */
> +	if (device->open_count != 0 && !df->group)
> +		return -EINVAL;
> +
>  	device->open_count++;
>  	if (device->open_count == 1) {
>  		ret = vfio_device_first_open(df);
Thanks

Eric

