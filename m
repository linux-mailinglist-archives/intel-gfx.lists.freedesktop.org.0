Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A836D6463
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 15:59:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E16710E6AD;
	Tue,  4 Apr 2023 13:59:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89AF610E6B4
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 13:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680616783;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CiA47gAN7qT+ZNDZD32w5M0yj6bHGU0l8msuusUTdoo=;
 b=PIzXbAegx7NKJKIBbKTxlUVhl+vi67eAKvpg/F6amSdverJs1ittWMY82RaL9nlckN26MW
 Rh8zWLq750gH5igtI9CvPeFrn8KRcjph9aTaLdbnWRtTJ1SWIsce1NvWe9Xbk+SaLoIuy/
 2q9kdjc4x9xbVrxECAyXdEYLQLYzuLs=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-467-hrOnEojGOaKhlkUfnG1gsg-1; Tue, 04 Apr 2023 09:59:42 -0400
X-MC-Unique: hrOnEojGOaKhlkUfnG1gsg-1
Received: by mail-qt1-f199.google.com with SMTP id
 w13-20020ac857cd000000b003e37d3e6de2so22218357qta.16
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Apr 2023 06:59:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680616780;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CiA47gAN7qT+ZNDZD32w5M0yj6bHGU0l8msuusUTdoo=;
 b=R20NQJSr+UOdHkfaOX5qECGz4ZOBYCYQkfEjayAePbXs+cFCD5FPYRurG6CLrsbnkz
 OkFjJTyjNk831YQXb2N2+OQB5OJsKV6SzUQPu/i7lN4HoOOqDiKBEYF+UP7DuPwunpuX
 1N78/UA70Qlesc/+PED3YAVjQyUqkHI/iWT9q4C+czjMiAIoyeFzrboVaM7GscyRNBZ8
 LBfNXBQS05wlZgDtH1cmmnQCARWkLqKsenj1Jb96t7Jt1yOhJsE0kPVJlpS6HdyLk1Ul
 FB5FEyUHuF6KH0K092rRfJv5Sf0vRtl1hpF27WAuGM+tlO5lsXRj0/KdJhN/RIcpWQd5
 O9ug==
X-Gm-Message-State: AAQBX9fTDbeLmEFVTEhQ7ox8C4OwC+8DJqn1e2spMUV/xUcBRF8sms1N
 v3Nqeua1lE9iZ/kubfPsp08GJz+DeMHNQLEByZttaMAuMnxeIDCRKgTDyG99pY4NdRAdivWb6Ct
 vUK9IHW1yVmJ7TihM6wSdP8TUoTx0aTmbzYab
X-Received: by 2002:a05:622a:d4:b0:3e6:518e:20d2 with SMTP id
 p20-20020a05622a00d400b003e6518e20d2mr3799506qtw.38.1680616780144; 
 Tue, 04 Apr 2023 06:59:40 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZZL+oXCfUUoM6pdP+baT0sl47qwZv5PYyBbT4M9DCOsE5FKMGPzd9k7TGNiSfdXRQRCW7Zbg==
X-Received: by 2002:a05:622a:d4:b0:3e6:518e:20d2 with SMTP id
 p20-20020a05622a00d400b003e6518e20d2mr3799466qtw.38.1680616779762; 
 Tue, 04 Apr 2023 06:59:39 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:59e:9d80:527b:9dff:feef:3874?
 ([2a01:e0a:59e:9d80:527b:9dff:feef:3874])
 by smtp.gmail.com with ESMTPSA id
 t7-20020a37aa07000000b0074a0a47a1f3sm3647912qke.5.2023.04.04.06.59.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Apr 2023 06:59:38 -0700 (PDT)
Message-ID: <844faa5c-2968-2a4f-8a70-900f359be1a0@redhat.com>
Date: Tue, 4 Apr 2023 15:59:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Yi Liu <yi.l.liu@intel.com>, alex.williamson@redhat.com, jgg@nvidia.com,
 kevin.tian@intel.com
References: <20230401144429.88673-1-yi.l.liu@intel.com>
 <20230401144429.88673-3-yi.l.liu@intel.com>
From: Eric Auger <eric.auger@redhat.com>
In-Reply-To: <20230401144429.88673-3-yi.l.liu@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 02/12] vfio/pci: Only check ownership of
 opened devices in hot reset
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

Hi YI,

On 4/1/23 16:44, Yi Liu wrote:
> If the affected device is not opened by any user, it's safe to reset it
> given it's not in use.
>
> Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> Tested-by: Yanting Jiang <yanting.jiang@intel.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  drivers/vfio/pci/vfio_pci_core.c | 14 +++++++++++---
>  include/uapi/linux/vfio.h        |  8 ++++++++
>  2 files changed, 19 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
> index 65bbef562268..5d745c9abf05 100644
> --- a/drivers/vfio/pci/vfio_pci_core.c
> +++ b/drivers/vfio/pci/vfio_pci_core.c
> @@ -2429,10 +2429,18 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>  
>  	list_for_each_entry(cur_vma, &dev_set->device_list, vdev.dev_set_list) {
>  		/*
> -		 * Test whether all the affected devices are contained by the
> -		 * set of groups provided by the user.
> +		 * Test whether all the affected devices can be reset by the
> +		 * user.
> +		 *
> +		 * Resetting an unused device (not opened) is safe, because
> +		 * dev_set->lock is held in hot reset path so this device
> +		 * cannot race being opened by another user simultaneously.
> +		 *
> +		 * Otherwise all opened devices in the dev_set must be
> +		 * contained by the set of groups provided by the user.
>  		 */
> -		if (!vfio_dev_in_groups(cur_vma, groups)) {
> +		if (cur_vma->vdev.open_count &&
> +		    !vfio_dev_in_groups(cur_vma, groups)) {
>  			ret = -EINVAL;
>  			goto err_undo;
>  		}
> diff --git a/include/uapi/linux/vfio.h b/include/uapi/linux/vfio.h
> index 0552e8dcf0cb..f96e5689cffc 100644
> --- a/include/uapi/linux/vfio.h
> +++ b/include/uapi/linux/vfio.h
> @@ -673,6 +673,14 @@ struct vfio_pci_hot_reset_info {
>   * VFIO_DEVICE_PCI_HOT_RESET - _IOW(VFIO_TYPE, VFIO_BASE + 13,
>   *				    struct vfio_pci_hot_reset)
>   *
> + * Userspace requests hot reset for the devices it uses.  Due to the
> + * underlying topology, multiple devices can be affected in the reset
by the reset
> + * while some might be opened by another user.  To avoid interference
s/interference/hot reset failure?
> + * the calling user must ensure all affected devices, if opened, are
> + * owned by itself.
> + *
> + * The ownership is proved by an array of group fds.
> + *
>   * Return: 0 on success, -errno on failure.
>   */
>  struct vfio_pci_hot_reset {
Thanks

Eric

