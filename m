Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E49826C272
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 14:04:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97B146E9BF;
	Wed, 16 Sep 2020 12:04:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF876E9BD
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 12:04:30 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id t10so6677054wrv.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 05:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=96pn97vudIqUOy40qtVSGKAMicUxOYMMyH8l1R/+468=;
 b=FINC2LpmrXDkMJm5Mgra7waQhpVoOUvOK/XivYRsgqJPi1t7MwreTsEe5qPaJMSnnc
 bGLtUyOPhYe9Fwl6sFIaVos0Od9CqjRDqHzdWl2Mik+v6ih5KJgBn7LXGOWKxnCdsRrY
 i97BOGnSpY1lJ1zlegmw5oCEcpE/Q74wyRPDU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=96pn97vudIqUOy40qtVSGKAMicUxOYMMyH8l1R/+468=;
 b=qXAHBgoOK65pluskOrd6yD3MLXxHznlq/b81Uxp9buoZVVYDlXT9FZAfQAvCdMI+Lu
 0jPMnaEk2KjBPGMiuVwbROdnRI7G/pn8UhkEukVSH6atmpv5V8LkzgH/Es+AgKC6PqRr
 e03UQB1YHgS7O+J3oq8vymNBIELsFDLyoCmF2Y4D2PJtL8tYDdXCOhJBGosfgyBUqsax
 htxuEVTheCFUufodBUjeiUNww8SdXCnP0D9VJhr7q1Hw5wO6KcyYBb6s+yssxW7g/hx0
 X+EdXPJGtrNZ7djCwBRzAOIfpaENw6wBzdFaaXmGbsZeqbt/FvwvH+LthdAEZ45/E8Dt
 yVBA==
X-Gm-Message-State: AOAM531x4NAX9vLruoUOPQZ3KyFzQ4umUz41Ur7fa46NePjuit+3BT65
 /tLjAPAUhBlanpTkqGpEgq1qsQ==
X-Google-Smtp-Source: ABdhPJzFyWPidEyBuJrzSJ1sZ5B58ttVLzyD39jTNflICGMYf35qmzZyXrhAzHarWd23ksw0UuQHDw==
X-Received: by 2002:adf:ef4f:: with SMTP id c15mr3019661wrp.390.1600257868941; 
 Wed, 16 Sep 2020 05:04:28 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z11sm33234891wru.88.2020.09.16.05.04.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Sep 2020 05:04:27 -0700 (PDT)
Date: Wed, 16 Sep 2020 14:04:24 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20200916120424.GM438822@phenom.ffwll.local>
References: <20200915145958.19993-1-tzimmermann@suse.de>
 <20200915145958.19993-10-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200915145958.19993-10-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH v2 09/21] drm/nouveau: Introduce GEM object
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

On Tue, Sep 15, 2020 at 04:59:46PM +0200, Thomas Zimmermann wrote:
> GEM object functions deprecate several similar callback interfaces in
> struct drm_driver. This patch replaces the per-driver callbacks with
> per-instance callbacks in nouveau.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>

Hm ttm and gem mmap world still quite disjoint ... Anyway that's an
entirely different thing.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/nouveau/nouveau_drm.c   |  9 ---------
>  drivers/gpu/drm/nouveau/nouveau_gem.c   | 13 +++++++++++++
>  drivers/gpu/drm/nouveau/nouveau_gem.h   |  2 ++
>  drivers/gpu/drm/nouveau/nouveau_prime.c |  2 ++
>  4 files changed, 17 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/nouveau/nouveau_drm.c b/drivers/gpu/drm/nouveau/nouveau_drm.c
> index 42fc5c813a9b..72640bca1617 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_drm.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_drm.c
> @@ -1207,16 +1207,7 @@ driver_stub = {
>  
>  	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
>  	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
> -	.gem_prime_pin = nouveau_gem_prime_pin,
> -	.gem_prime_unpin = nouveau_gem_prime_unpin,
> -	.gem_prime_get_sg_table = nouveau_gem_prime_get_sg_table,
>  	.gem_prime_import_sg_table = nouveau_gem_prime_import_sg_table,
> -	.gem_prime_vmap = nouveau_gem_prime_vmap,
> -	.gem_prime_vunmap = nouveau_gem_prime_vunmap,
> -
> -	.gem_free_object_unlocked = nouveau_gem_object_del,
> -	.gem_open_object = nouveau_gem_object_open,
> -	.gem_close_object = nouveau_gem_object_close,
>  
>  	.dumb_create = nouveau_display_dumb_create,
>  	.dumb_map_offset = nouveau_display_dumb_map_offset,
> diff --git a/drivers/gpu/drm/nouveau/nouveau_gem.c b/drivers/gpu/drm/nouveau/nouveau_gem.c
> index 89adadf4706b..28e0cbb00876 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_gem.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_gem.c
> @@ -169,6 +169,17 @@ nouveau_gem_object_close(struct drm_gem_object *gem, struct drm_file *file_priv)
>  	ttm_bo_unreserve(&nvbo->bo);
>  }
>  
> +const struct drm_gem_object_funcs nouveau_gem_object_funcs = {
> +	.free = nouveau_gem_object_del,
> +	.open = nouveau_gem_object_open,
> +	.close = nouveau_gem_object_close,
> +	.pin = nouveau_gem_prime_pin,
> +	.unpin = nouveau_gem_prime_unpin,
> +	.get_sg_table = nouveau_gem_prime_get_sg_table,
> +	.vmap = nouveau_gem_prime_vmap,
> +	.vunmap = nouveau_gem_prime_vunmap,
> +};
> +
>  int
>  nouveau_gem_new(struct nouveau_cli *cli, u64 size, int align, uint32_t domain,
>  		uint32_t tile_mode, uint32_t tile_flags,
> @@ -186,6 +197,8 @@ nouveau_gem_new(struct nouveau_cli *cli, u64 size, int align, uint32_t domain,
>  	if (IS_ERR(nvbo))
>  		return PTR_ERR(nvbo);
>  
> +	nvbo->bo.base.funcs = &nouveau_gem_object_funcs;
> +
>  	/* Initialize the embedded gem-object. We return a single gem-reference
>  	 * to the caller, instead of a normal nouveau_bo ttm reference. */
>  	ret = drm_gem_object_init(drm->dev, &nvbo->bo.base, size);
> diff --git a/drivers/gpu/drm/nouveau/nouveau_gem.h b/drivers/gpu/drm/nouveau/nouveau_gem.h
> index 978e07591990..b35c180322e2 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_gem.h
> +++ b/drivers/gpu/drm/nouveau/nouveau_gem.h
> @@ -5,6 +5,8 @@
>  #include "nouveau_drv.h"
>  #include "nouveau_bo.h"
>  
> +extern const struct drm_gem_object_funcs nouveau_gem_object_funcs;
> +
>  static inline struct nouveau_bo *
>  nouveau_gem_object(struct drm_gem_object *gem)
>  {
> diff --git a/drivers/gpu/drm/nouveau/nouveau_prime.c b/drivers/gpu/drm/nouveau/nouveau_prime.c
> index b2ecb91f8ddc..a8264aebf3d4 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_prime.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_prime.c
> @@ -77,6 +77,8 @@ struct drm_gem_object *nouveau_gem_prime_import_sg_table(struct drm_device *dev,
>  
>  	nvbo->valid_domains = NOUVEAU_GEM_DOMAIN_GART;
>  
> +	nvbo->bo.base.funcs = &nouveau_gem_object_funcs;
> +
>  	/* Initialize the embedded gem-object. We return a single gem-reference
>  	 * to the caller, instead of a normal nouveau_bo ttm reference. */
>  	ret = drm_gem_object_init(dev, &nvbo->bo.base, size);
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
