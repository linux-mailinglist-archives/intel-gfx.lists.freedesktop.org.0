Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9160326C165
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 12:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19CA96E9F2;
	Wed, 16 Sep 2020 10:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 848B06E9F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 10:03:23 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id m6so6284683wrn.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 03:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=e2Znfx8BWkk5aVcx8hHpr3x0pz1zwQZhs1djRV0gcOU=;
 b=YwQFNnZ46y23ilMPtQ+YA1uU56yQbhOv6Wnxz4ZcYBv/64HXgnQIstoy81UuE+BuFc
 RbVimusECAo2qKzk8yvrlLUDfal98le+MXG5s9js8pfohQ+Bnhlzr8odUz3778w+kM1b
 6iP/yC9nMmGqgDJRKWjaW8mpLjM0JRvnAZoXk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=e2Znfx8BWkk5aVcx8hHpr3x0pz1zwQZhs1djRV0gcOU=;
 b=m4HKtirPeLlsAXJZxXvn+EtJHWw9DZGs71Wzn/vcv5hOeAFsD9/LCAfVNbSlBmjaCh
 JQ0ASNTup6l3w0votiKKjY4m/xtV2cyjstJuAnI+SqSJp8scLuEbE0xj58lypYyej/uz
 ea5c/zWWmhHG1kyuPFmmEvLs69k1CVutJ4e/lIKITzO7zL7gDFYBvRCEZdjFuhrn+tNl
 MM7qourJsr2BHEF8OTMD2hNpV1DB3QPCLTslZK0BnoR0dI4rxabG5rLaKjRT8VEmp2YA
 9LUT8a6vmslr32fm+TDo7Qd2Gq8K7Op6bxlpAgVoHcVF/378NiD3okkidHqzxCf8PDIC
 h46Q==
X-Gm-Message-State: AOAM532ZXCU8XkQ8OqnHo9GGcqg8L0RrW44Ix47hrMWuIO4VzjidkedW
 rLgUoEmMPqbYJjbIbJMH2OH8Qw==
X-Google-Smtp-Source: ABdhPJzeuyJCXxonH76Yve4EPaguLB8swVVrVRKLIRv+fjNVrJReD84NaGvyyVb0RMzIohYAQGFSOA==
X-Received: by 2002:adf:81e6:: with SMTP id 93mr25703900wra.412.1600250602103; 
 Wed, 16 Sep 2020 03:03:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s26sm4516179wmh.44.2020.09.16.03.03.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Sep 2020 03:03:21 -0700 (PDT)
Date: Wed, 16 Sep 2020 12:03:18 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20200916100318.GF438822@phenom.ffwll.local>
References: <20200915145958.19993-1-tzimmermann@suse.de>
 <20200915145958.19993-5-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200915145958.19993-5-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH v2 04/21] drm/exynos: Introduce GEM object
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

On Tue, Sep 15, 2020 at 04:59:41PM +0200, Thomas Zimmermann wrote:
> GEM object functions deprecate several similar callback interfaces in
> struct drm_driver. This patch replaces the per-driver callbacks with
> per-instance callbacks in exynos. The only exception is gem_prime_mmap,
> which is non-trivial to convert.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/exynos/exynos_drm_drv.c | 10 ----------
>  drivers/gpu/drm/exynos/exynos_drm_gem.c | 15 +++++++++++++++
>  2 files changed, 15 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/exynos/exynos_drm_drv.c b/drivers/gpu/drm/exynos/exynos_drm_drv.c
> index dbd80f1e4c78..fe46680ca208 100644
> --- a/drivers/gpu/drm/exynos/exynos_drm_drv.c
> +++ b/drivers/gpu/drm/exynos/exynos_drm_drv.c
> @@ -75,11 +75,6 @@ static void exynos_drm_postclose(struct drm_device *dev, struct drm_file *file)
>  	file->driver_priv = NULL;
>  }
>  
> -static const struct vm_operations_struct exynos_drm_gem_vm_ops = {
> -	.open = drm_gem_vm_open,
> -	.close = drm_gem_vm_close,
> -};
> -
>  static const struct drm_ioctl_desc exynos_ioctls[] = {
>  	DRM_IOCTL_DEF_DRV(EXYNOS_GEM_CREATE, exynos_drm_gem_create_ioctl,
>  			DRM_RENDER_ALLOW),
> @@ -124,16 +119,11 @@ static struct drm_driver exynos_drm_driver = {
>  	.open			= exynos_drm_open,
>  	.lastclose		= drm_fb_helper_lastclose,
>  	.postclose		= exynos_drm_postclose,
> -	.gem_free_object_unlocked = exynos_drm_gem_free_object,
> -	.gem_vm_ops		= &exynos_drm_gem_vm_ops,
>  	.dumb_create		= exynos_drm_gem_dumb_create,
>  	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd,
>  	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle,
>  	.gem_prime_import	= exynos_drm_gem_prime_import,
> -	.gem_prime_get_sg_table	= exynos_drm_gem_prime_get_sg_table,
>  	.gem_prime_import_sg_table	= exynos_drm_gem_prime_import_sg_table,
> -	.gem_prime_vmap		= exynos_drm_gem_prime_vmap,
> -	.gem_prime_vunmap	= exynos_drm_gem_prime_vunmap,
>  	.gem_prime_mmap		= exynos_drm_gem_prime_mmap,
>  	.ioctls			= exynos_ioctls,
>  	.num_ioctls		= ARRAY_SIZE(exynos_ioctls),
> diff --git a/drivers/gpu/drm/exynos/exynos_drm_gem.c b/drivers/gpu/drm/exynos/exynos_drm_gem.c
> index efa476858db5..69a5cf28b4ae 100644
> --- a/drivers/gpu/drm/exynos/exynos_drm_gem.c
> +++ b/drivers/gpu/drm/exynos/exynos_drm_gem.c
> @@ -129,6 +129,19 @@ void exynos_drm_gem_destroy(struct exynos_drm_gem *exynos_gem)
>  	kfree(exynos_gem);
>  }
>  
> +static const struct vm_operations_struct exynos_drm_gem_vm_ops = {
> +	.open = drm_gem_vm_open,
> +	.close = drm_gem_vm_close,
> +};

Hm moving the drm_gem_cma_vm_ops into drm_gem.h or so and maybe calling
them drm_gem_simple_ops or so would remove a pile of these. But perhaps a
quick follow up series.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +
> +static const struct drm_gem_object_funcs exynos_drm_gem_object_funcs = {
> +	.free = exynos_drm_gem_free_object,
> +	.get_sg_table = exynos_drm_gem_prime_get_sg_table,
> +	.vmap = exynos_drm_gem_prime_vmap,
> +	.vunmap	= exynos_drm_gem_prime_vunmap,
> +	.vm_ops = &exynos_drm_gem_vm_ops,
> +};
> +
>  static struct exynos_drm_gem *exynos_drm_gem_init(struct drm_device *dev,
>  						  unsigned long size)
>  {
> @@ -143,6 +156,8 @@ static struct exynos_drm_gem *exynos_drm_gem_init(struct drm_device *dev,
>  	exynos_gem->size = size;
>  	obj = &exynos_gem->base;
>  
> +	obj->funcs = &exynos_drm_gem_object_funcs;
> +
>  	ret = drm_gem_object_init(dev, obj, size);
>  	if (ret < 0) {
>  		DRM_DEV_ERROR(dev->dev, "failed to initialize gem object\n");
> -- 
> 2.28.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
