Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4F226C288
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 14:10:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72CDD6E9E2;
	Wed, 16 Sep 2020 12:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8CF66EA01
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 12:09:53 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id c18so6632397wrm.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 05:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+3jvoy/bBV/BNfVwVnfU8KcCZN1nPBtEmgjgdo9EwXk=;
 b=FENeMTOiWrFokQkUzY6vSvMhlCXV7HMJqSDFsMTbLqeNytwJMofYpFGvXfw3GhxJQe
 D9FUrSX8+Brv74I6kUhpyFb/XZioFwNiGTb+QuFgOQkexhfx/xeg364unF1nN8hvk40W
 Hh+h3hsu+pBXFmPF/2PAzcQ04fALpK5XDa9tA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+3jvoy/bBV/BNfVwVnfU8KcCZN1nPBtEmgjgdo9EwXk=;
 b=k+bTuMcyTEwFKhMigJrjz83wO5RDOqeLrXsHHg74S1dX6GtZTot1EBKvDDznqQOpxQ
 gv6aFrwg6wmmg404tUulJgBgeQ34a17RskiXy/gLGTQfVvckXOYmAuiBSHOIGmbCyK8P
 tiEym46bAO5DKl7kyNaoQXQw3B489aBgUTcLqkRMHiPTju/60tnoSzC9KiFNvDYc97HX
 xvvEBC1qjfB7AFtIrujq7gPI81470NlqQJNMpCqaBmD7sQ9sxnADNcfIcUPqv/iFJ8KD
 klTdCQrcJ/CAEDYmlSXG/JiWPd2MiSw/t5o744ubh4o/oFzeWl3qTw1Y0e9OTRom2arw
 QvJw==
X-Gm-Message-State: AOAM533pAVeffCq/fFpePk+aTnfM6ne5KFJcvVUvJ0++00F2U1HEZ87j
 DBCqW0Q5b4CSH46PHqccVC/KNA==
X-Google-Smtp-Source: ABdhPJwcFrpBowFHXDaGWxAmgGA6UC0qLIIbiwK0yYyfwUChHgh/bXrgr93clOHTT0R4i2flV+cOiA==
X-Received: by 2002:a5d:4448:: with SMTP id x8mr28185933wrr.207.1600258192468; 
 Wed, 16 Sep 2020 05:09:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n11sm32655611wrx.91.2020.09.16.05.09.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Sep 2020 05:09:51 -0700 (PDT)
Date: Wed, 16 Sep 2020 14:09:48 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20200916120948.GO438822@phenom.ffwll.local>
References: <20200915145958.19993-1-tzimmermann@suse.de>
 <20200915145958.19993-18-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200915145958.19993-18-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH v2 17/21] drm/virtgpu: Set PRIME export
 function in struct drm_gem_object_funcs
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

On Tue, Sep 15, 2020 at 04:59:54PM +0200, Thomas Zimmermann wrote:
> GEM object functions deprecate several similar callback interfaces in
> struct drm_driver. This patch replaces virtgpu's per-driver PRIME export
> function with a per-object function.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/virtio/virtgpu_drv.c    | 1 -
>  drivers/gpu/drm/virtio/virtgpu_object.c | 1 +
>  2 files changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/virtio/virtgpu_drv.c b/drivers/gpu/drm/virtio/virtgpu_drv.c
> index b039f493bda9..1f8d6ed11d21 100644
> --- a/drivers/gpu/drm/virtio/virtgpu_drv.c
> +++ b/drivers/gpu/drm/virtio/virtgpu_drv.c
> @@ -203,7 +203,6 @@ static struct drm_driver driver = {
>  	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
>  	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
>  	.gem_prime_mmap = drm_gem_prime_mmap,
> -	.gem_prime_export = virtgpu_gem_prime_export,
>  	.gem_prime_import = virtgpu_gem_prime_import,
>  	.gem_prime_import_sg_table = virtgpu_gem_prime_import_sg_table,
>  
> diff --git a/drivers/gpu/drm/virtio/virtgpu_object.c b/drivers/gpu/drm/virtio/virtgpu_object.c
> index 842f8b61aa89..4f7d7ea8194c 100644
> --- a/drivers/gpu/drm/virtio/virtgpu_object.c
> +++ b/drivers/gpu/drm/virtio/virtgpu_object.c
> @@ -108,6 +108,7 @@ static const struct drm_gem_object_funcs virtio_gpu_shmem_funcs = {
>  	.close = virtio_gpu_gem_object_close,
>  
>  	.print_info = drm_gem_shmem_print_info,
> +	.export = virtgpu_gem_prime_export,
>  	.pin = drm_gem_shmem_pin,
>  	.unpin = drm_gem_shmem_unpin,
>  	.get_sg_table = drm_gem_shmem_get_sg_table,
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
