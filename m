Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 349E76D9329
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 11:47:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D9DF10E235;
	Thu,  6 Apr 2023 09:47:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AEDC10E235
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 09:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680774425;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ubZ2JzXstcYYWjhCEeQFtNRDD3tFpVKl7gFtGSUvl0Q=;
 b=A0IMv60ffi/pkD0KvJSvXYRrW6yRUdLabINJocPMTda9vpTZrQxicHHvqanicFIbCGf5xZ
 flpwty2wpMv6bp8w9Gh1QKJffps/j3nfed5a6iDVziJooRtbbpYTjzsi/0qgnYumngvV3z
 bhfBzID40AyZDT5cQLH3KtSno17brBc=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-620-sjNv9sO_Mg6z6ie3bmwjIQ-1; Thu, 06 Apr 2023 05:47:02 -0400
X-MC-Unique: sjNv9sO_Mg6z6ie3bmwjIQ-1
Received: by mail-qv1-f72.google.com with SMTP id
 m3-20020a0cbf03000000b005de7233ca79so15348008qvi.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Apr 2023 02:47:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680774422;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ubZ2JzXstcYYWjhCEeQFtNRDD3tFpVKl7gFtGSUvl0Q=;
 b=IWV6ZiGTVEYfmFhUxh5hOuBGc7UdzKpAip5mweyhl6ptHbM5/fp35lHeLyf+MzAZ5w
 Lm7taH6h4D68W3AEbgKJiNe0/2MtWIGzAklWvqutk7lliZq5Gx6yh3ZiRsRMr1HcVheB
 PSlMJYIpZtbtDcxawaFzoRnA2as2CBC2UhO42RqndOjyednrL6iqtmpAd+3vXLyvV0nJ
 HWM2akaT4QiwvztsZYjb1sVElf13GHIF4k9uLYpTc8y88zLByku6nMp517NcOAbnyu9V
 0RPE+eDMK+wI2fAg7Co4YnykLDMeCpkOLQ8FbTpWciK1zEpKte1BWYvtdiEp3jmpP3eK
 QEkg==
X-Gm-Message-State: AAQBX9fV3FmS6nJqyK9ea5WqQzQ+fzPjieThyEqFMsR/oM29Mf4OikOw
 cmvmySvO3TfdG30lNgo29AYjmMlGOB3SJJkQSv2f/LCoExniGIqUCRPX2+2n9lIfmhrBgTmbbm6
 6Qfi4ukvXilUBK2qiAHku++bPzYxd
X-Received: by 2002:a05:622a:1a26:b0:3e4:e278:a6a0 with SMTP id
 f38-20020a05622a1a2600b003e4e278a6a0mr8803687qtb.16.1680774422451; 
 Thu, 06 Apr 2023 02:47:02 -0700 (PDT)
X-Google-Smtp-Source: AKy350YEgMGP8GAn7n4YcijbFIRNMgvaQm6mo428J8UICAlyeo3suNHp6zMZxLZAuiTHETScoEhmHQ==
X-Received: by 2002:a05:622a:1a26:b0:3e4:e278:a6a0 with SMTP id
 f38-20020a05622a1a2600b003e4e278a6a0mr8803662qtb.16.1680774422140; 
 Thu, 06 Apr 2023 02:47:02 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:59e:9d80:527b:9dff:feef:3874?
 ([2a01:e0a:59e:9d80:527b:9dff:feef:3874])
 by smtp.gmail.com with ESMTPSA id
 x85-20020a376358000000b0074a28c33df7sm343465qkb.84.2023.04.06.02.46.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 Apr 2023 02:47:00 -0700 (PDT)
Message-ID: <8fb5a0b3-39c6-e924-847d-6545fcc44c08@redhat.com>
Date: Thu, 6 Apr 2023 11:46:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Yi Liu <yi.l.liu@intel.com>, alex.williamson@redhat.com, jgg@nvidia.com,
 kevin.tian@intel.com
References: <20230401151833.124749-1-yi.l.liu@intel.com>
 <20230401151833.124749-7-yi.l.liu@intel.com>
From: Eric Auger <eric.auger@redhat.com>
In-Reply-To: <20230401151833.124749-7-yi.l.liu@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v9 06/25] kvm/vfio: Accept vfio device file
 from userspace
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
> This defines KVM_DEV_VFIO_FILE* and make alias with KVM_DEV_VFIO_GROUP*.
> Old userspace uses KVM_DEV_VFIO_GROUP* works as well.
>
> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> Tested-by: Terrence Xu <terrence.xu@intel.com>
> Tested-by: Nicolin Chen <nicolinc@nvidia.com>
> Tested-by: Matthew Rosato <mjrosato@linux.ibm.com>
> Tested-by: Yanting Jiang <yanting.jiang@intel.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  Documentation/virt/kvm/devices/vfio.rst | 53 +++++++++++++++++--------
>  include/uapi/linux/kvm.h                | 16 ++++++--
>  virt/kvm/vfio.c                         | 16 ++++----
>  3 files changed, 56 insertions(+), 29 deletions(-)
>
> diff --git a/Documentation/virt/kvm/devices/vfio.rst b/Documentation/virt/kvm/devices/vfio.rst
> index 79b6811bb4f3..277d727ec1a2 100644
> --- a/Documentation/virt/kvm/devices/vfio.rst
> +++ b/Documentation/virt/kvm/devices/vfio.rst
> @@ -9,24 +9,38 @@ Device types supported:
>    - KVM_DEV_TYPE_VFIO
>  
>  Only one VFIO instance may be created per VM.  The created device
> -tracks VFIO groups in use by the VM and features of those groups
> -important to the correctness and acceleration of the VM.  As groups
> -are enabled and disabled for use by the VM, KVM should be updated
> -about their presence.  When registered with KVM, a reference to the
> -VFIO-group is held by KVM.
> +tracks VFIO files (group or device) in use by the VM and features
> +of those groups/devices important to the correctness and acceleration
> +of the VM.  As groups/devices are enabled and disabled for use by the
> +VM, KVM should be updated about their presence.  When registered with
> +KVM, a reference to the VFIO file is held by KVM.
>  
>  Groups:
> -  KVM_DEV_VFIO_GROUP
> -
> -KVM_DEV_VFIO_GROUP attributes:
> -  KVM_DEV_VFIO_GROUP_ADD: Add a VFIO group to VFIO-KVM device tracking
> -	kvm_device_attr.addr points to an int32_t file descriptor
> -	for the VFIO group.
> -  KVM_DEV_VFIO_GROUP_DEL: Remove a VFIO group from VFIO-KVM device tracking
> -	kvm_device_attr.addr points to an int32_t file descriptor
> -	for the VFIO group.
> -  KVM_DEV_VFIO_GROUP_SET_SPAPR_TCE: attaches a guest visible TCE table
> +  KVM_DEV_VFIO_FILE
> +	alias: KVM_DEV_VFIO_GROUP
> +
> +KVM_DEV_VFIO_FILE attributes:
> +  KVM_DEV_VFIO_FILE_ADD: Add a VFIO file (group/device) to VFIO-KVM device
> +	tracking
> +
> +	alias: KVM_DEV_VFIO_GROUP_ADD
> +
> +	kvm_device_attr.addr points to an int32_t file descriptor for the
> +	VFIO file.
> +
> +  KVM_DEV_VFIO_FILE_DEL: Remove a VFIO file (group/device) from VFIO-KVM
> +	device tracking
> +
> +	alias: KVM_DEV_VFIO_GROUP_DEL
> +
> +	kvm_device_attr.addr points to an int32_t file descriptor for the
> +	VFIO file.
> +
> +  KVM_DEV_VFIO_FILE_SET_SPAPR_TCE: attaches a guest visible TCE table
>  	allocated by sPAPR KVM.
> +
> +	alias: KVM_DEV_VFIO_GROUP_SET_SPAPR_TCE
> +
>  	kvm_device_attr.addr points to a struct::
>  
>  		struct kvm_vfio_spapr_tce {
> @@ -40,9 +54,14 @@ KVM_DEV_VFIO_GROUP attributes:
>  	- @tablefd is a file descriptor for a TCE table allocated via
>  	  KVM_CREATE_SPAPR_TCE.
>  
> +	only accepts vfio group file as SPAPR has no iommufd support
So then what is the point of introducing

KVM_DEV_VFIO_FILE_SET_SPAPR_TCE at this stage?

I think would have separated the

Groups:
  KVM_DEV_VFIO_FILE
	alias: KVM_DEV_VFIO_GROUP

KVM_DEV_VFIO_FILE attributes:
  KVM_DEV_VFIO_FILE_ADD: Add a VFIO file (group/device) to VFIO-KVM device
	tracking

	kvm_device_attr.addr points to an int32_t file descriptor for the
	VFIO file.

  KVM_DEV_VFIO_FILE_DEL: Remove a VFIO file (group/device) from VFIO-KVM
	device tracking

	kvm_device_attr.addr points to an int32_t file descriptor for the
	VFIO file.

KVM_DEV_VFIO_GROUP (legacy kvm device group restricted to the handling of VFIO group fd)
  KVM_DEV_VFIO_GROUP_ADD: same as KVM_DEV_VFIO_FILE_ADD for group fd only
  KVM_DEV_VFIO_GROUP_DEL: same as KVM_DEV_VFIO_FILE_DEL for group fd only
  KVM_DEV_VFIO_GROUP_SET_SPAPR_TCE: attaches a guest visible TCE table
	allocated by sPAPR KVM.
	kvm_device_attr.addr points to a struct::

		struct kvm_vfio_spapr_tce {
			__s32	groupfd;
			__s32	tablefd;
		};

	where:

	- @groupfd is a file descriptor for a VFIO group;
	- @tablefd is a file descriptor for a TCE table allocated via
	  KVM_CREATE_SPAPR_TCE.


You don't say anything about potential restriction, ie. what if the user calls KVM_DEV_VFIO_FILE with device fds while it has been using legacy container/group API?

Thanks

Eric

> +
>  ::
>  
> -The GROUP_ADD operation above should be invoked prior to accessing the
> +The FILE/GROUP_ADD operation above should be invoked prior to accessing the
>  device file descriptor via VFIO_GROUP_GET_DEVICE_FD in order to support
>  drivers which require a kvm pointer to be set in their .open_device()
> -callback.
> +callback.  It is the same for device file descriptor via character device
> +open which gets device access via VFIO_DEVICE_BIND_IOMMUFD.  For such file
> +descriptors, FILE_ADD should be invoked before VFIO_DEVICE_BIND_IOMMUFD
> +to support the drivers mentioned in prior sentence as well.
> diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
> index d77aef872a0a..a8eeca70a498 100644
> --- a/include/uapi/linux/kvm.h
> +++ b/include/uapi/linux/kvm.h
> @@ -1410,10 +1410,18 @@ struct kvm_device_attr {
>  	__u64	addr;		/* userspace address of attr data */
>  };
>  
> -#define  KVM_DEV_VFIO_GROUP			1
> -#define   KVM_DEV_VFIO_GROUP_ADD			1
> -#define   KVM_DEV_VFIO_GROUP_DEL			2
> -#define   KVM_DEV_VFIO_GROUP_SET_SPAPR_TCE		3
> +#define  KVM_DEV_VFIO_FILE	1
> +
> +#define   KVM_DEV_VFIO_FILE_ADD			1
> +#define   KVM_DEV_VFIO_FILE_DEL			2
> +#define   KVM_DEV_VFIO_FILE_SET_SPAPR_TCE	3
> +
> +/* KVM_DEV_VFIO_GROUP aliases are for compile time uapi compatibility */
> +#define  KVM_DEV_VFIO_GROUP	KVM_DEV_VFIO_FILE
> +
> +#define   KVM_DEV_VFIO_GROUP_ADD	KVM_DEV_VFIO_FILE_ADD
> +#define   KVM_DEV_VFIO_GROUP_DEL	KVM_DEV_VFIO_FILE_DEL
> +#define   KVM_DEV_VFIO_GROUP_SET_SPAPR_TCE	KVM_DEV_VFIO_FILE_SET_SPAPR_TCE
>  
>  enum kvm_device_type {
>  	KVM_DEV_TYPE_FSL_MPIC_20	= 1,
> diff --git a/virt/kvm/vfio.c b/virt/kvm/vfio.c
> index 857d6ba349e1..d869913baafd 100644
> --- a/virt/kvm/vfio.c
> +++ b/virt/kvm/vfio.c
> @@ -286,18 +286,18 @@ static int kvm_vfio_set_file(struct kvm_device *dev, long attr,
>  	int32_t fd;
>  
>  	switch (attr) {
> -	case KVM_DEV_VFIO_GROUP_ADD:
> +	case KVM_DEV_VFIO_FILE_ADD:
>  		if (get_user(fd, argp))
>  			return -EFAULT;
>  		return kvm_vfio_file_add(dev, fd);
>  
> -	case KVM_DEV_VFIO_GROUP_DEL:
> +	case KVM_DEV_VFIO_FILE_DEL:
>  		if (get_user(fd, argp))
>  			return -EFAULT;
>  		return kvm_vfio_file_del(dev, fd);
>  
>  #ifdef CONFIG_SPAPR_TCE_IOMMU
> -	case KVM_DEV_VFIO_GROUP_SET_SPAPR_TCE:
> +	case KVM_DEV_VFIO_FILE_SET_SPAPR_TCE:
>  		return kvm_vfio_file_set_spapr_tce(dev, arg);
>  #endif
>  	}
> @@ -309,7 +309,7 @@ static int kvm_vfio_set_attr(struct kvm_device *dev,
>  			     struct kvm_device_attr *attr)
>  {
>  	switch (attr->group) {
> -	case KVM_DEV_VFIO_GROUP:
> +	case KVM_DEV_VFIO_FILE:
>  		return kvm_vfio_set_file(dev, attr->attr,
>  					 u64_to_user_ptr(attr->addr));
>  	}
> @@ -321,12 +321,12 @@ static int kvm_vfio_has_attr(struct kvm_device *dev,
>  			     struct kvm_device_attr *attr)
>  {
>  	switch (attr->group) {
> -	case KVM_DEV_VFIO_GROUP:
> +	case KVM_DEV_VFIO_FILE:
>  		switch (attr->attr) {
> -		case KVM_DEV_VFIO_GROUP_ADD:
> -		case KVM_DEV_VFIO_GROUP_DEL:
> +		case KVM_DEV_VFIO_FILE_ADD:
> +		case KVM_DEV_VFIO_FILE_DEL:
>  #ifdef CONFIG_SPAPR_TCE_IOMMU
> -		case KVM_DEV_VFIO_GROUP_SET_SPAPR_TCE:
> +		case KVM_DEV_VFIO_FILE_SET_SPAPR_TCE:
>  #endif
>  			return 0;
>  		}

