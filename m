Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AE826C22D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 13:35:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 114A46E9B0;
	Wed, 16 Sep 2020 11:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4450B6E9AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 11:35:20 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id q9so2438716wmj.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 04:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DdTA+P9lRhC68qI4dpVtWpzlyCIniGzxdHE1O+Q7zUU=;
 b=VZm53vKzP2cW6qF7XV0KSRt5PPELHpk07zG//Mxa2CBTIBDdZdST/S+s0rdEQKVsZW
 gTZ1OWjoGqV/1N91UgOzFqec1vf3PElY/ngrFrKXGmjuOOcYrYiRpj5tf2Kdv9HG27Xk
 tCQbqYKzbNGq1n8DixVR/dUuMsm1DSxiACKH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DdTA+P9lRhC68qI4dpVtWpzlyCIniGzxdHE1O+Q7zUU=;
 b=hYaUCO6Y75/7FCJEykzqsFe+rTe0cdA6tJkNPLYYCJIZJoBy9s66IE13L/wTdoIHRl
 EQmTVBgvQVMhoMwlgz9aw10v5nhOqG0czx8ksF26v7ggYkzyKI0UBO9/qcVxquCN1/qP
 s7HGan7kut9LQuWgRQVXAs/aDxu3VRZ2BOu9pnG/uzzraN6RGmLK1a3Lp5kOzUhWf77J
 Dmzl8vo/CSzuYxuvStjL8aX2CzftWxGld4hvQnYjQxIg0dJWySuBC9lL29G2+7bp+lsL
 4iQu/KKVfGAyroC1f4k5ED362gKaoSEV4cxGxdrK8pVwtDcteZXW7OL3+kvFl1yUyPbr
 V7Rw==
X-Gm-Message-State: AOAM531EC+Ng6BOjfzhpyBVr6k4V+ro6OTQ8ptfyD18NuUQZSWtFJlKW
 SUeXEl5AIQ97sSktAFm6pWYj6A==
X-Google-Smtp-Source: ABdhPJylkcOBbGgEGGZKZhaBAwyH9kqk9RFSGhRv17hk61GEhNulx96NJ9Vhx8cdjXcbwhCg7LMEDQ==
X-Received: by 2002:a05:600c:2109:: with SMTP id
 u9mr3990398wml.147.1600256118887; 
 Wed, 16 Sep 2020 04:35:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g14sm4163583wrv.25.2020.09.16.04.35.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Sep 2020 04:35:18 -0700 (PDT)
Date: Wed, 16 Sep 2020 13:35:14 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20200916113514.GK438822@phenom.ffwll.local>
References: <20200915145958.19993-1-tzimmermann@suse.de>
 <20200915145958.19993-8-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200915145958.19993-8-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH v2 07/21] drm/mediatek: Introduce GEM object
 functions
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
Cc: hamohammed.sa@gmail.com, heiko@sntech.de, andrey.grodzovsky@amd.com,
 airlied@linux.ie, nouveau@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, michal.simek@xilinx.com, eric@anholt.net,
 krzk@kernel.org, sam@ravnborg.org, sumit.semwal@linaro.org,
 emil.velikov@collabora.com, linux-samsung-soc@vger.kernel.org,
 jy0922.shim@samsung.com, oleksandr_andrushchenko@epam.com,
 tomi.valkeinen@ti.com, linux-tegra@vger.kernel.org, linux@armlinux.org.uk,
 jonathanh@nvidia.com, linux-rockchip@lists.infradead.org, kgene@kernel.org,
 bskeggs@redhat.com, xen-devel@lists.xenproject.org, miaoqinglang@huawei.com,
 intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 chunkuang.hu@kernel.org, linux-arm-msm@vger.kernel.org, marek.olsak@amd.com,
 tianci.yin@amd.com, etnaviv@lists.freedesktop.org, inki.dae@samsung.com,
 christian.gmeiner@gmail.com, linux-mediatek@lists.infradead.org,
 mripard@kernel.org, matthias.bgg@gmail.com, evan.quan@amd.com,
 linux-arm-kernel@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 laurent.pinchart@ideasonboard.com, hyun.kwon@xilinx.com,
 rodrigosiqueiramelo@gmail.com, aaron.liu@amd.com, Felix.Kuehling@amd.com,
 xinhui.pan@amd.com, sw0312.kim@samsung.com, hjc@rock-chips.com,
 chris@chris-wilson.co.uk, kyungmin.park@samsung.com, nirmoy.das@amd.com,
 p.zabel@pengutronix.de, alexander.deucher@amd.com, Hawking.Zhang@amd.com,
 freedreno@lists.freedesktop.org, christian.koenig@amd.com,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 15, 2020 at 04:59:44PM +0200, Thomas Zimmermann wrote:
> GEM object functions deprecate several similar callback interfaces in
> struct drm_driver. This patch replaces the per-driver callbacks with
> per-instance callbacks in mediatek. The only exception is gem_prime_mmap,
> which is non-trivial to convert.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c |  5 -----
>  drivers/gpu/drm/mediatek/mtk_drm_gem.c | 11 +++++++++++
>  2 files changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 040a8f393fe2..2f8d0043fca7 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -301,18 +301,13 @@ struct drm_gem_object *mtk_drm_gem_prime_import(struct drm_device *dev,
>  static struct drm_driver mtk_drm_driver = {
>  	.driver_features = DRIVER_MODESET | DRIVER_GEM | DRIVER_ATOMIC,
>  
> -	.gem_free_object_unlocked = mtk_drm_gem_free_object,
> -	.gem_vm_ops = &drm_gem_cma_vm_ops,
>  	.dumb_create = mtk_drm_gem_dumb_create,
>  
>  	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
>  	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
>  	.gem_prime_import = mtk_drm_gem_prime_import,
> -	.gem_prime_get_sg_table = mtk_gem_prime_get_sg_table,
>  	.gem_prime_import_sg_table = mtk_gem_prime_import_sg_table,
>  	.gem_prime_mmap = mtk_drm_gem_mmap_buf,
> -	.gem_prime_vmap = mtk_drm_gem_prime_vmap,
> -	.gem_prime_vunmap = mtk_drm_gem_prime_vunmap,
>  	.fops = &mtk_drm_fops,
>  
>  	.name = DRIVER_NAME,
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> index 6190cc3b7b0d..591b90410e4a 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> @@ -8,11 +8,20 @@
>  #include <drm/drm.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_gem.h>
> +#include <drm/drm_gem_cma_helper.h>
>  #include <drm/drm_prime.h>
>  
>  #include "mtk_drm_drv.h"
>  #include "mtk_drm_gem.h"
>  
> +static const struct drm_gem_object_funcs mtk_drm_gem_object_funcs = {
> +	.free = mtk_drm_gem_free_object,
> +	.get_sg_table = mtk_gem_prime_get_sg_table,
> +	.vmap = mtk_drm_gem_prime_vmap,
> +	.vunmap = mtk_drm_gem_prime_vunmap,
> +	.vm_ops = &drm_gem_cma_vm_ops,
> +};
> +
>  static struct mtk_drm_gem_obj *mtk_drm_gem_init(struct drm_device *dev,
>  						unsigned long size)
>  {
> @@ -25,6 +34,8 @@ static struct mtk_drm_gem_obj *mtk_drm_gem_init(struct drm_device *dev,
>  	if (!mtk_gem_obj)
>  		return ERR_PTR(-ENOMEM);
>  
> +	mtk_gem_obj->base.funcs = &mtk_drm_gem_object_funcs;
> +
>  	ret = drm_gem_object_init(dev, &mtk_gem_obj->base, size);
>  	if (ret < 0) {
>  		DRM_ERROR("failed to initialize gem object\n");
> -- 
> 2.28.0

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
