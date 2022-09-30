Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7C55F14E7
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 23:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30D0510EDBA;
	Fri, 30 Sep 2022 21:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A83810EDB0
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 21:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1664573507;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7MZyE4q4pUK9exbRcIZDL/JbobrwIaDD99sfovICQ4I=;
 b=Dy4fDLGrhU4x/HdAFAAywLi8FlRZDm9pK0+cPfdxqqixiGQ0y/ANYJPWg2V5Tud26W/1hI
 kQQHzdazQO61C1GY2vRLi+QPhe3xsSNRGlu1ULTFrUSSX1TEmeKQlZrbyq/+A1NzjrkewD
 n2RqBmQi6vA/ec6m2GJpbWupXBP9gUo=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-498-5I0FCrUcO9yKDKSaF14gqQ-1; Fri, 30 Sep 2022 17:31:44 -0400
X-MC-Unique: 5I0FCrUcO9yKDKSaF14gqQ-1
Received: by mail-il1-f197.google.com with SMTP id
 h9-20020a056e021b8900b002f19c2a1836so4380536ili.23
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 14:31:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date;
 bh=7MZyE4q4pUK9exbRcIZDL/JbobrwIaDD99sfovICQ4I=;
 b=6nAbqglosfGxl3XbLoYmPKfDLy2RW0BYbJZjBkpKfcRPPeBQPw0iySFETQ4k/2Q9XQ
 Dig4Bq4JFALdJksLB1wYt0ZtLJZqfCp6aTu7lDg1+DXVhKnGEnaRasyI56BbKl82rR9A
 L0RK/8Kw1ZzyCwjB9XK/6akeoBeCEBIYs7dg0JYFOA/a2vNjQKxFnSexXFO69aVpBgmq
 zCoNRHJg6rZasQUVXYXwP1aNfpd9kLxc1LRPJ+DFQHt7cNLyLkUrOoROvICG9fFTN5yn
 AiVexvh1UCf2UC6V16XKLX7gRHIigUzIDYoSRg56F3pHUB0Ins7ni2XvifVbfL5SlhVq
 6zJA==
X-Gm-Message-State: ACrzQf1ZwF2mdF+nhl4ai3+m6VqjER+1amz1pkwwPP8nmA1wHQSyxTMP
 WOPMC7SPqJsf/xcQAkmfvffPLL6fUGwk4UP/AkRjXlOUG4yeLselF+4OYMC0S/TZ/aFtp8X3U5C
 9YfmjL9UaeUF8OscviNXki2SdfB34
X-Received: by 2002:a05:6638:4416:b0:35a:3cca:4db3 with SMTP id
 bp22-20020a056638441600b0035a3cca4db3mr5665321jab.0.1664573503687; 
 Fri, 30 Sep 2022 14:31:43 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5cqLb3noeJWS0YhPhgS37XjFCTWP2XxFR9rFh11+Uu4oQtCWPM3VbBWg5g6mGXkpdAVP6H6g==
X-Received: by 2002:a05:6638:4416:b0:35a:3cca:4db3 with SMTP id
 bp22-20020a056638441600b0035a3cca4db3mr5665306jab.0.1664573503392; 
 Fri, 30 Sep 2022 14:31:43 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 l15-20020a02cd8f000000b0034c107ac9bbsm1343303jap.8.2022.09.30.14.31.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Sep 2022 14:31:42 -0700 (PDT)
Date: Fri, 30 Sep 2022 15:31:39 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20220930153139.0d60652b.alex.williamson@redhat.com>
In-Reply-To: <0-v1-013609965fe8+9d-vfio_gvt_unregister_jgg@nvidia.com>
References: <0-v1-013609965fe8+9d-vfio_gvt_unregister_jgg@nvidia.com>
Organization: Red Hat
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

Applied to vfio next branch for v6.1.  Thanks for the quick fix!

Alex
 
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

