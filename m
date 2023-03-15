Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 053576BC032
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 23:53:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E7DB10E056;
	Wed, 15 Mar 2023 22:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39C7B10E04C
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 22:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1678920796;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PmBI1DpvKaVXYXtA6gtpu5ckoov61ccQSRAX+aljBe0=;
 b=hTBUVfCMBpBbLbkKNsPlUf+SlgvoxdN2KqI2VKFZekyMpi1mmhwWEihPbpXZ+cH8KabzL8
 fU9oWILqTLnBvTg1r0xn/lJxFd3aJXjZwfKe/S3eW5qaxA5cOYXGh0ZBk7ZAViRCLY0Vis
 mozLeSXICj4Jz58Rq+j9Dz7Xq8WPlUM=
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-369-XHuy5GokNZaPUoLvFgq3hw-1; Wed, 15 Mar 2023 18:53:14 -0400
X-MC-Unique: XHuy5GokNZaPUoLvFgq3hw-1
Received: by mail-il1-f199.google.com with SMTP id
 d5-20020a923605000000b003232594207dso21276ila.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 15:53:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678920794;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PmBI1DpvKaVXYXtA6gtpu5ckoov61ccQSRAX+aljBe0=;
 b=5IBckNjRmDzLv7SoHgB9WUyLKMncNYO6nHnZDyVQQYQdTBWsYPLy8JAXFVWMDf+PqX
 TEbbKJsOekhJL/BsJlBKVpY0kH5EsVqI3qDxaGW50RI/cAyp2OUejOTedV0jv6zpzW1y
 wKx5CTZskiPq+heWQSwwdMik7ksR9CsFmXxqsorYtyC0MsHiqGLEYLdtQUoIFLR9yxnx
 PWdHqNbejjbnkVZL+0GtZ67uxdknFa3selxfRdZXTkeksd3RA5McZlgxyxT7tF5PPzfn
 KxzKZKTF/6HhByQKskDS4NeZynxa0bxxTkE4rzmMMu5IOMkNCJxgm2PpUsoFfSX75bUB
 /SbQ==
X-Gm-Message-State: AO0yUKUsqrtUgJteql5vY9sRHfmIozKRJ1GKlTPmvOMzLzTzFqvhy2Fk
 8cZAYQTuvIUv+CDeWOOFnNJagbr63xVoelZXdpzPdMnEy4ZhgpW41WRYMDrG8Re5G0BOwJxl9uH
 /3spiPPRujkhEgGrVfMqQblXIXS0X
X-Received: by 2002:a92:da05:0:b0:323:70c:ba7a with SMTP id
 z5-20020a92da05000000b00323070cba7amr6320946ilm.0.1678920794193; 
 Wed, 15 Mar 2023 15:53:14 -0700 (PDT)
X-Google-Smtp-Source: AK7set+yni0unT0KaphMd3Dk9lb2xPshPnISgvaAGSRatSEhctfH2YsA/aYF25RNbXHTAq4r4BmLNg==
X-Received: by 2002:a92:da05:0:b0:323:70c:ba7a with SMTP id
 z5-20020a92da05000000b00323070cba7amr6320918ilm.0.1678920793895; 
 Wed, 15 Mar 2023 15:53:13 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 x1-20020a0566380ca100b003c5157c8b2csm209087jad.47.2023.03.15.15.53.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Mar 2023 15:53:12 -0700 (PDT)
Date: Wed, 15 Mar 2023 16:53:11 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Yi Liu <yi.l.liu@intel.com>
Message-ID: <20230315165311.01f32bfe.alex.williamson@redhat.com>
In-Reply-To: <20230308132903.465159-13-yi.l.liu@intel.com>
References: <20230308132903.465159-1-yi.l.liu@intel.com>
 <20230308132903.465159-13-yi.l.liu@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v6 12/24] vfio/pci: Allow passing
 zero-length fd array in VFIO_DEVICE_PCI_HOT_RESET
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
 joro@8bytes.org, nicolinc@nvidia.com, jgg@nvidia.com, yan.y.zhao@intel.com,
 intel-gfx@lists.freedesktop.org, eric.auger@redhat.com,
 intel-gvt-dev@lists.freedesktop.org, yi.y.sun@linux.intel.com,
 cohuck@redhat.com, shameerali.kolothum.thodi@huawei.com,
 suravee.suthikulpanit@amd.com, robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed,  8 Mar 2023 05:28:51 -0800
Yi Liu <yi.l.liu@intel.com> wrote:

> This is another method to issue PCI hot reset for the users that bounds
> device to a positive iommufd value. In such case, iommufd is a proof of
> device ownership. By passing a zero-length fd array, user indicates kernel
> to do ownership check with the bound iommufd. All the opened devices within
> the affected dev_set should have been bound to the same iommufd. This is
> simpler and faster as user does not need to pass a set of fds and kernel
> no need to search the device within the given fds.

Couldn't this same idea apply to containers?

I'm afraid this proposal reduces or eliminates the handshake we have
with userspace between VFIO_DEVICE_GET_PCI_HOT_RESET_INFO and
VFIO_DEVICE_PCI_HOT_RESET, which could promote userspace to ignore the
_INFO ioctl altogether, resulting in drivers that don't understand the
scope of the reset.  Is it worth it?  What do we really gain?

> diff --git a/include/uapi/linux/vfio.h b/include/uapi/linux/vfio.h
> index d80141969cd1..382d95455f89 100644
> --- a/include/uapi/linux/vfio.h
> +++ b/include/uapi/linux/vfio.h
> @@ -682,6 +682,11 @@ struct vfio_pci_hot_reset_info {
>   * The ownership can be proved by:
>   *   - An array of group fds
>   *   - An array of device fds
> + *   - A zero-length array
> + *
> + * In the last case all affected devices which are opened by this user
> + * must have been bound to a same iommufd_ctx.  This approach is only
> + * available for devices bound to positive iommufd.
>   *
>   * Return: 0 on success, -errno on failure.
>   */

There's no introspection that this feature is supported, is that why
containers are not considered?  ie. if the host supports vfio cdevs, it
necessarily must support vfio-pci hot reset w/ a zero-length array?
Thanks,

Alex

