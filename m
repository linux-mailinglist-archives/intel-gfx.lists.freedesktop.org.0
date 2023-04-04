Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D39756D6467
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 16:00:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C57D10E6B4;
	Tue,  4 Apr 2023 14:00:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D70610E6B4
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 14:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680616805;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ykhmPw67VbhDtXPSpfVmWbPSuu2IMuu2dxGXXWfzz7E=;
 b=LmlEpgNFPABf50j8cNjqQ6xt4UMvLArr5aWJnoZF6JyHeceuqJ1U1M2yRBD1NUmaAwwZWI
 2xJOFf5cefUkYJnedqxDpJMepSnEWQmpQmVRQd21fmsAIOiYj1rj+36uOja/JjiiryQToa
 ynrc0gLGhhk4wso/XaVf4X0tdokTs38=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-261-5HnIjKHXOtWHfsTBtqwdHA-1; Tue, 04 Apr 2023 10:00:03 -0400
X-MC-Unique: 5HnIjKHXOtWHfsTBtqwdHA-1
Received: by mail-qk1-f200.google.com with SMTP id
 198-20020a370bcf000000b007468cffa4e2so14744928qkl.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Apr 2023 07:00:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680616802;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ykhmPw67VbhDtXPSpfVmWbPSuu2IMuu2dxGXXWfzz7E=;
 b=7frmzhibrL1/WWjcHl7Vn+J+K743LxaC32WnIdJG+Rm636QC/j5IcPFSuifHTe9cpb
 ZTzOr2kE/7VGKmKVGevIvqBnWXeXlDJZ2YZGcQv6cY9fFolVvZyolT0zEhFD32+I2B0I
 otS7BGinO1u3MsaYaVoDntpxvTEKlEmBOFuv22nw1ATLfGDMB8XCdNiBM8PAjb4nbhvV
 Dw9lQ5HkR2PjAsQlTsjbY6L6S4GdcLrw+WjnOM0uT9hFRBU7QdRbqGYg5GRqoDjoAizU
 OcrROsfY1XFhnBe4B3VdOac0wAmi5f5QhdULQs7VkVnTSfFIUv+32C4mEMWOQ3pGE+Yp
 Y1dQ==
X-Gm-Message-State: AAQBX9dxTB6f1tionQXvJhiz1i12a7+wqC8HH+dTYQOKhoFsDi0ghK7D
 P57IWAs1zzhSjENAgcnrL6qFmOeTCF3XhZR8/PQM/OMBQ4N0rRO0VVN0Qphuwc8kMQd7AW/SB53
 FucR4Mmntm9j0EUIfJdPP1IC5resq
X-Received: by 2002:ad4:5b87:0:b0:5e2:1381:6105 with SMTP id
 7-20020ad45b87000000b005e213816105mr3459189qvp.18.1680616802059; 
 Tue, 04 Apr 2023 07:00:02 -0700 (PDT)
X-Google-Smtp-Source: AKy350bJCynXCOrEKhxb44G8d+k4Dr+19c9yImUsR/GZAakKp2zi913dOKWU2dCtLWnBy7YVL0UkpQ==
X-Received: by 2002:ad4:5b87:0:b0:5e2:1381:6105 with SMTP id
 7-20020ad45b87000000b005e213816105mr3459060qvp.18.1680616801354; 
 Tue, 04 Apr 2023 07:00:01 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:59e:9d80:527b:9dff:feef:3874?
 ([2a01:e0a:59e:9d80:527b:9dff:feef:3874])
 by smtp.gmail.com with ESMTPSA id
 jy1-20020a0562142b4100b005dd8b9345ebsm3412112qvb.131.2023.04.04.06.59.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Apr 2023 07:00:00 -0700 (PDT)
Message-ID: <1f8ddafd-6fad-aff6-5dc7-9d67f89eea73@redhat.com>
Date: Tue, 4 Apr 2023 15:59:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Yi Liu <yi.l.liu@intel.com>, alex.williamson@redhat.com, jgg@nvidia.com,
 kevin.tian@intel.com
References: <20230401144429.88673-1-yi.l.liu@intel.com>
 <20230401144429.88673-2-yi.l.liu@intel.com>
From: Eric Auger <eric.auger@redhat.com>
In-Reply-To: <20230401144429.88673-2-yi.l.liu@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 01/12] vfio/pci: Update comment around
 group_fd get in vfio_pci_ioctl_pci_hot_reset()
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

On 4/1/23 16:44, Yi Liu wrote:
> this suits more on what the code does.
>
> Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> Tested-by: Yanting Jiang <yanting.jiang@intel.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  drivers/vfio/pci/vfio_pci_core.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
> index a5ab416cf476..65bbef562268 100644
> --- a/drivers/vfio/pci/vfio_pci_core.c
> +++ b/drivers/vfio/pci/vfio_pci_core.c
> @@ -1308,9 +1308,8 @@ static int vfio_pci_ioctl_pci_hot_reset(struct vfio_pci_core_device *vdev,
>  	}
>  
>  	/*
> -	 * For each group_fd, get the group through the vfio external user
> -	 * interface and store the group and iommu ID.  This ensures the group
> -	 * is held across the reset.
> +	 * Get the group file for each fd to ensure the group held across
to ensure the group is held

Besides

Reviewed-by: Eric Auger <eric.auger@redhat.com>

Eric


> +	 * the reset
>  	 */
>  	for (file_idx = 0; file_idx < hdr.count; file_idx++) {
>  		struct file *file = fget(group_fds[file_idx]);

