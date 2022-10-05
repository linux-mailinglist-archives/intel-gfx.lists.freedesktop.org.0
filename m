Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1825F5AE1
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 22:18:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D434E10E775;
	Wed,  5 Oct 2022 20:18:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8FCD10E770
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 20:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1665001078;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=g2vLC0/2i+I0uLMhPpq2EA/KZTboH7Z2lCWoTbduUxI=;
 b=fV3Mbm80DLrQw66X7ZF1xwPOR/X9XqhP3f9vM8pe9cA9+4kH/EBeu3cnHmppUQvFvrDozE
 xSyfOOK3cwwU7KpVcO2ayiGI8VohyEWBOnd5XfxQuoMRcz3eLf4pZifKc/loel9b+2dshK
 y2r3b93pmo1medqgGnDkmfiCts5JG5k=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-94-99rPsa6iPq-xO-lBgAkQFw-1; Wed, 05 Oct 2022 16:17:57 -0400
X-MC-Unique: 99rPsa6iPq-xO-lBgAkQFw-1
Received: by mail-io1-f71.google.com with SMTP id
 e19-20020a6b5013000000b006b3d18586c7so3098382iob.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Oct 2022 13:17:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date;
 bh=g2vLC0/2i+I0uLMhPpq2EA/KZTboH7Z2lCWoTbduUxI=;
 b=M8vcnPFrmasCwi8U9lNMPxBNjsLRXzrWFXzSUlg8bD/vNcLuUUShQ6yR46M90fj6BS
 Pnfljdc4x+rpHDmAN8VJKtE/VzNZwaE02YBNSGNVGOJNvQPdBkAV0W1e5I5Fs/7buZ0q
 FdMIPwtlqwqRIpok4tgXtiy47m4wn7W11aYxOHDMIXPHQy8Rc6TEaHy+VHCp+zTFkFyA
 3c+mFTxudfRd4UL7HGONLRy20VWYmirvOC7fV72hy0CSXOpkXNm57Erz3eI0vFM1XBmV
 IWItTAvlAUxGbsRg7cyZMY0/AQn7oRJnpXeeGC285otv8R1iw2ZbfHMV73dAMgfxMvE/
 Y8XQ==
X-Gm-Message-State: ACrzQf3+SkYEyr3NMi7saq1jm2FWOUC0pAncqE7KscwYNKGOalNJ9961
 HGx8g/2cq7CiidH4ceJgMrYcxLZQULXh/xmBzeOf2tQ6L+b2nB8hEVn3D/sJsSvAP4mYv/0NcYY
 L2JThS3JQy6dCISh9hlP4s5JyRgUH
X-Received: by 2002:a05:6e02:c67:b0:2f9:9117:a581 with SMTP id
 f7-20020a056e020c6700b002f99117a581mr669163ilj.107.1665001075297; 
 Wed, 05 Oct 2022 13:17:55 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7TZXdlHRglVXSKK9ZEsjo4JcrcXszFMsFm+6IUYbJ/RhiRJTAFh4/Dq8wK7FNTPN7X1kZaiQ==
X-Received: by 2002:a05:6e02:c67:b0:2f9:9117:a581 with SMTP id
 f7-20020a056e020c6700b002f99117a581mr669141ilj.107.1665001074983; 
 Wed, 05 Oct 2022 13:17:54 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 a14-20020a056602148e00b006a4ab3268f3sm1537915iow.42.2022.10.05.13.17.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Oct 2022 13:17:32 -0700 (PDT)
Date: Wed, 5 Oct 2022 14:17:17 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20221005141717.234c215e.alex.williamson@redhat.com>
In-Reply-To: <0-v1-013609965fe8+9d-vfio_gvt_unregister_jgg@nvidia.com>
References: <0-v1-013609965fe8+9d-vfio_gvt_unregister_jgg@nvidia.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: Add missing
 vfio_unregister_group_dev() call
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, stable@vger.kernel.org,
 intel-gvt-dev@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 29 Sep 2022 14:48:35 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> When converting to directly create the vfio_device the mdev driver has to
> put a vfio_register_emulated_iommu_dev() in the probe() and a pairing
> vfio_unregister_group_dev() in the remove.
> 
> This was missed for gvt, add it.
> 
> Cc: stable@vger.kernel.org
> Fixes: 978cf586ac35 ("drm/i915/gvt: convert to use vfio_register_emulated_iommu_dev")
> Reported-by: Alex Williamson <alex.williamson@redhat.com>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/gpu/drm/i915/gvt/kvmgt.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> Should go through Alex's tree.
> 
> diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
> index 41bba40feef8f4..9003145adb5a93 100644
> --- a/drivers/gpu/drm/i915/gvt/kvmgt.c
> +++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
> @@ -1615,6 +1615,7 @@ static void intel_vgpu_remove(struct mdev_device *mdev)
>  	if (WARN_ON_ONCE(vgpu->attached))
>  		return;
>  
> +	vfio_unregister_group_dev(&vgpu->vfio_device);
>  	vfio_put_device(&vgpu->vfio_device);
>  }
>  
> 
> base-commit: c72e0034e6d4c36322d958b997d11d2627c6056c

This is marked for stable, but I think the stable backport for
existing kernels is actually:

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index e3cd58946477..de89946c4817 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1595,6 +1595,9 @@ static void intel_vgpu_remove(struct mdev_device *mdev)
 
 	if (WARN_ON_ONCE(vgpu->attached))
 		return;
+
+	vfio_unregister_group_dev(&vgpu->vfio_device);
+	vfio_uninit_group_dev(&vgpu->vfio_device);
 	intel_gvt_destroy_vgpu(vgpu);
 }

