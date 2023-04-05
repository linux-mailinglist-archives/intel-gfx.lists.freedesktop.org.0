Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 418046D7881
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 11:36:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77BD410E31B;
	Wed,  5 Apr 2023 09:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E35E10E8AC
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 09:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680687395;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iNBqhrj+XTm9KfkuETQ/F4AN0Uqhaaw5G/lVJC6MyqE=;
 b=TDahx3M2YO/U9+U5tOpD/F+CWNUs5nEIlYIEVTrkBVNWQ7mKu65bGDwfDI8w/7tNXZt2Po
 pAPFhpxYilvlrc7YWdcp9lR8pF9+05gMkSbj2CZbXFLEwEShXgSPx/VFIJw8TuiBqj+748
 0qeDWGtCnhWfHsKg6+xSOhg64NAJOWU=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-79-4MUVlzrNMpyAh1bRxoqy1A-1; Wed, 05 Apr 2023 05:36:34 -0400
X-MC-Unique: 4MUVlzrNMpyAh1bRxoqy1A-1
Received: by mail-qv1-f70.google.com with SMTP id
 h7-20020a0cd807000000b005dd254e7babso15879219qvj.14
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 02:36:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680687389;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=iNBqhrj+XTm9KfkuETQ/F4AN0Uqhaaw5G/lVJC6MyqE=;
 b=GQc6Fm/YyfmcjY2tCdBXFtWKiyeVZgGyLkRXpJYfEzAyN3zWqunOjL7RiUe6inln7h
 YlVDVP8bqYw84ovdNabfi+630efJcqjZyHere8Cl60D+L5WOUbvTu8UYn5IVtIe507DA
 XvcDdTkcMk1H0HPU5IkfwUanN5U+J0gY4ZZSjoetS7BNwaac6pYXQNcqezUyHfUi0QWV
 qQotbdrvSPg2ZZoyqFywSA6E0lbcfVv+4Jvhbge14Hu8xID/UFz3wNEL6yAnoQ/x2esJ
 p46I1ezgLiKMWHwwRWzjP0RZxzP7kqk5MbYeKV7lovgVq/h9uw7J+eCPE+j2i+TfhD/L
 Oj2A==
X-Gm-Message-State: AAQBX9fRo6OcR1SGBwg631sZqFfFwm1g6OdJAMRRZQVR02U9FDkZf9po
 Jw+2QtEWdSspA7FMpVF3aZNfFUz3hbzuOIjLP8hpRCocWhRhXth4yQ3oqxOWfi8b6AIExJRi2Bv
 mCxGgZHbyQDico+pzIEdwtZUZhCU+
X-Received: by 2002:a05:6214:2588:b0:579:5dbc:ab8c with SMTP id
 fq8-20020a056214258800b005795dbcab8cmr8061819qvb.30.1680687389404; 
 Wed, 05 Apr 2023 02:36:29 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZmW7jHQa6DlupuWctFYcymxjC6ipeuyihMvEZoDZgJpFRcRiiHDYRJnqb2qNZSPOB4Sijfqw==
X-Received: by 2002:a05:6214:2588:b0:579:5dbc:ab8c with SMTP id
 fq8-20020a056214258800b005795dbcab8cmr8061789qvb.30.1680687388936; 
 Wed, 05 Apr 2023 02:36:28 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:59e:9d80:527b:9dff:feef:3874?
 ([2a01:e0a:59e:9d80:527b:9dff:feef:3874])
 by smtp.gmail.com with ESMTPSA id
 mm17-20020a0562145e9100b005dd8b9345f4sm3996945qvb.140.2023.04.05.02.36.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Apr 2023 02:36:26 -0700 (PDT)
Message-ID: <5aaaf93e-f000-7f6c-b315-cf9550a237e8@redhat.com>
Date: Wed, 5 Apr 2023 11:36:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Yi Liu <yi.l.liu@intel.com>, alex.williamson@redhat.com, jgg@nvidia.com,
 kevin.tian@intel.com
References: <20230401144429.88673-1-yi.l.liu@intel.com>
 <20230401144429.88673-10-yi.l.liu@intel.com>
From: Eric Auger <eric.auger@redhat.com>
In-Reply-To: <20230401144429.88673-10-yi.l.liu@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 09/12] vfio/pci: Accept device fd in
 VFIO_DEVICE_PCI_HOT_RESET ioctl
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



On 4/1/23 16:44, Yi Liu wrote:
> Now user can also provide an array of device fds as a 3rd method to verify
> the reset ownership. It's not useful at this point when the device fds are
> acquired via group fds. But it's necessary when moving to device cdev which
> allows the user to directly acquire device fds by skipping group. In that
> case this method can be used as a last resort when the preferred iommufd
> verification doesn't work, e.g. in noiommu usages.
>
> Clarify it in uAPI.
>
> Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> Tested-by: Yanting Jiang <yanting.jiang@intel.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Eric
> ---
>  drivers/vfio/pci/vfio_pci_core.c | 9 +++++----
>  include/uapi/linux/vfio.h        | 3 ++-
>  2 files changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
> index da6325008872..19f5b075d70a 100644
> --- a/drivers/vfio/pci/vfio_pci_core.c
> +++ b/drivers/vfio/pci/vfio_pci_core.c
> @@ -1289,7 +1289,7 @@ vfio_pci_ioctl_pci_hot_reset_files(struct vfio_pci_core_device *vdev,
>  		return -ENOMEM;
>  	}
>  
> -	if (copy_from_user(fds, arg->group_fds,
> +	if (copy_from_user(fds, arg->fds,
>  			   hdr->count * sizeof(*fds))) {
>  		kfree(fds);
>  		kfree(files);
> @@ -1297,8 +1297,8 @@ vfio_pci_ioctl_pci_hot_reset_files(struct vfio_pci_core_device *vdev,
>  	}
>  
>  	/*
> -	 * Get the group file for each fd to ensure the group held across
> -	 * the reset
> +	 * Get the file for each fd to ensure the group/device file
> +	 * is held across the reset
>  	 */
>  	for (file_idx = 0; file_idx < hdr->count; file_idx++) {
>  		struct file *file = fget(fds[file_idx]);
> @@ -2469,7 +2469,8 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>  		 * cannot race being opened by another user simultaneously.
>  		 *
>  		 * Otherwise all opened devices in the dev_set must be
> -		 * contained by the set of groups provided by the user.
> +		 * contained by the set of groups/devices provided by
> +		 * the user.
>  		 *
>  		 * If user provides a zero-length array, then all the
>  		 * opened devices must be bound to a same iommufd_ctx.
> diff --git a/include/uapi/linux/vfio.h b/include/uapi/linux/vfio.h
> index 17aa5d09db41..25432ef213ee 100644
> --- a/include/uapi/linux/vfio.h
> +++ b/include/uapi/linux/vfio.h
> @@ -681,6 +681,7 @@ struct vfio_pci_hot_reset_info {
>   *
>   * The ownership can be proved by:
>   *   - An array of group fds
> + *   - An array of device fds
>   *   - A zero-length array
>   *
>   * In the last case all affected devices which are opened by this user
> @@ -694,7 +695,7 @@ struct vfio_pci_hot_reset {
>  	__u32	argsz;
>  	__u32	flags;
>  	__u32	count;
> -	__s32	group_fds[];
> +	__s32	fds[];
>  };
>  
>  #define VFIO_DEVICE_PCI_HOT_RESET	_IO(VFIO_TYPE, VFIO_BASE + 13)

