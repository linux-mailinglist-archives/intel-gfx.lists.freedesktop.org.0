Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 905A06F0C19
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 20:43:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D1CB10EBA7;
	Thu, 27 Apr 2023 18:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBD5010EBA7
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 18:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1682621010;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+PdhbKN3Hq6ATKU2FwFReGd5PqSlgE93t3FlWgzR0mA=;
 b=WZJ+tfAy/9Miccwu+LctYqsHJZZYJgXFZRI5CJ5a63mu5MbJTz2wZUeoOCjZqwJnuemGLt
 Y2x/SOqMPQcNlanEV9VfvOjqpR6GLaES4pca3jKSjgr1pOE/Giu6Zy82Nrp268CV3bLLaw
 ys0u6hOK8BkbWY7KsRSZRUAI0UAhEXc=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-191-wpOfsqn4Nw-hP3lcI4eogQ-1; Thu, 27 Apr 2023 14:43:29 -0400
X-MC-Unique: wpOfsqn4Nw-hP3lcI4eogQ-1
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-32a9dcff43bso137991785ab.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 11:43:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682621008; x=1685213008;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+PdhbKN3Hq6ATKU2FwFReGd5PqSlgE93t3FlWgzR0mA=;
 b=G9NfF9hlhgTlDILt6U9xZDqpBRlm9Rf4WEHxRPwmCa0uSouQ/Iq6re01ErGc+ol0dU
 EY7r3yY0a3HL6oSOTc+ezFOVbjvPPl1xNAJGusf25RyrVtEAuVZ/N1FkkHZNQpzuJNl9
 ZQTeVB+Z88eV5rVKC5gu2NIhs7i9ithJSgvOhrgjvRqbpqSjala1dHqIai8GVcvCtzC8
 IdAmPjqwDE4iuOLRoLQeYKNSZvgAqvxjYv6IyLs4DQftVJMNXczWFnwb4pZcF9tUbfAx
 NnO5O5/u34x3CGb/v00qSte81PFP2Qop+9j67VGv7Yg1xnV8i43WXtbMpgJn1Xy2zG3s
 kLuA==
X-Gm-Message-State: AC+VfDxed0Y5+eft/U86nBUvmD4kvgj7Ed/82PD//ObALoQgGomZGCnK
 T7dSh/yKKrf3+P/0MwqeRZk7WwfErkry/F1jvDt6ySVLGPG6LgVGiKpZ6/IisK8Gulf6SFAvNy5
 Z7H7B7BYk4ff383rOVjzO3gy28O0m
X-Received: by 2002:a92:2807:0:b0:32a:b78f:e7d5 with SMTP id
 l7-20020a922807000000b0032ab78fe7d5mr1938807ilf.27.1682621008595; 
 Thu, 27 Apr 2023 11:43:28 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7UUI5T89n2E0LlOJtzG6NmTPZsvmV0AM+vihZgbau2Vo7OjUcOrWffld+4o1Eu4YBc56YFUA==
X-Received: by 2002:a92:2807:0:b0:32a:b78f:e7d5 with SMTP id
 l7-20020a922807000000b0032ab78fe7d5mr1938791ilf.27.1682621008333; 
 Thu, 27 Apr 2023 11:43:28 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 j8-20020a056638148800b0040fa726ff04sm5845305jak.45.2023.04.27.11.43.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Apr 2023 11:43:27 -0700 (PDT)
Date: Thu, 27 Apr 2023 12:43:26 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Yi Liu <yi.l.liu@intel.com>
Message-ID: <20230427124326.20621b3a.alex.williamson@redhat.com>
In-Reply-To: <20230426145419.450922-6-yi.l.liu@intel.com>
References: <20230426145419.450922-1-yi.l.liu@intel.com>
 <20230426145419.450922-6-yi.l.liu@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 5/9] vfio: Mark cdev usage in vfio_device
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
 zhenzhong.duan@intel.com, peterx@redhat.com, terrence.xu@intel.com,
 chao.p.peng@linux.intel.com, linux-s390@vger.kernel.org, kvm@vger.kernel.org,
 lulu@redhat.com, yanting.jiang@intel.com, joro@8bytes.org, nicolinc@nvidia.com,
 jgg@nvidia.com, yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org,
 eric.auger@redhat.com, intel-gvt-dev@lists.freedesktop.org,
 yi.y.sun@linux.intel.com, cohuck@redhat.com,
 shameerali.kolothum.thodi@huawei.com, suravee.suthikulpanit@amd.com,
 robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 26 Apr 2023 07:54:15 -0700
Yi Liu <yi.l.liu@intel.com> wrote:

> Use it to differentiate whether to report group_id or dev_id in revised
> VFIO_DEVICE_GET_PCI_HOT_RESET_INFO ioctl. Though it is not set at this
> moment introducing it now allows us to get hot reset ready for cdev.
> 
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  include/linux/vfio.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/include/linux/vfio.h b/include/linux/vfio.h
> index 4ee613924435..298f4ef16be7 100644
> --- a/include/linux/vfio.h
> +++ b/include/linux/vfio.h
> @@ -63,6 +63,7 @@ struct vfio_device {
>  	bool iommufd_attached;
>  #endif
>  	bool noiommu;
> +	bool cdev_opened;
>  };
>  
>  /**
> @@ -140,6 +141,12 @@ int vfio_iommufd_emulated_attach_ioas(struct vfio_device *vdev, u32 *pt_id);
>  	((int (*)(struct vfio_device *vdev, u32 *pt_id)) NULL)
>  #endif
>  
> +static inline bool vfio_device_cdev_opened(struct vfio_device *device)
> +{
> +	lockdep_assert_held(&device->dev_set->lock);
> +	return device->cdev_opened;
> +}

The lockdep test doesn't make much sense here, the method of opening
the device can't change from an ioctl called on the device, which is
the only path using this.  If there needs to be a placeholder for
future code, it should probably statically return false here and we can
save adding the structure field and locking checks based on the
semantics of how the field is actually used later.  Thanks,

Alex

