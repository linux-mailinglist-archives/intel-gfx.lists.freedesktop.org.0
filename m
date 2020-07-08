Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFC1218476
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 11:56:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A0F56E1D6;
	Wed,  8 Jul 2020 09:56:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24E776E1D6
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 09:56:23 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id o2so2269670wmh.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 02:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=n4YfHIOoOroqGIzUYGzZdyO6gwl8FVlGpkSOTWMCgSc=;
 b=lZI50KmoLRDiK5JhrsRxAgSRRcMGHUdVG3OqkpO1VwIAqUGdWImM7Z0yUuUh2OXdms
 mPZGfZtctcE3z9BMOv+zQBxho7WkxzAbXtHXAGL9OBYKZTKnmdZ2FyPgrVBw0rHQQk0L
 tlyrIQEQQ495MA+g7RX8uB7X692R0iKB1qND0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=n4YfHIOoOroqGIzUYGzZdyO6gwl8FVlGpkSOTWMCgSc=;
 b=nl747PSwl7puA7XPnhw9D3ufoPNqmCbej6rW8UnB0HW+2KChkPm1/mvZw3f7o21C+G
 QCRVl+pe+fgT9Cc5j1O8gKau2CEdKTUDc6h2KBIsrqW6ggvzpxebW55AwoP4qo+jiVj/
 vjEbMn4M7RFVzq8vL9FR6wmv9CcQBvVTR0CX832ZvWIZFP3xvDkIOQYEt3X833ySTOd1
 TeJKE+/J5xcv5vMnYGfQeWsWRFJHPagkYHh5egq4LUmtglFdXLFxDErQMs854gdR+kfq
 h9lmPzf/VUmHGfEcYf0L+x+FXS4Q5JoTlLx1NjMYnQNhiYbpI/VN3KY37z0uNavWyXJT
 rMcg==
X-Gm-Message-State: AOAM532TGihRPkX1KzuSfmzFuh+fpHjnaBINMnPLr3rZAtiC4tHVaTcK
 5PUTE5OWOUIKwnSvIO8rE4YUSw==
X-Google-Smtp-Source: ABdhPJzXi/hmGs7VuUORa0NBbCIx2VM0FJuhJ6CTIY1Ya26x20VGytPqgqe87NwgYtbwsF0vhRqI2g==
X-Received: by 2002:a7b:cd18:: with SMTP id f24mr8896424wmj.40.1594202181864; 
 Wed, 08 Jul 2020 02:56:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x185sm5537614wmg.41.2020.07.08.02.56.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jul 2020 02:56:21 -0700 (PDT)
Date: Wed, 8 Jul 2020 11:56:19 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200708095619.GK3278063@phenom.ffwll.local>
References: <20200707160012.1299338-1-chris@chris-wilson.co.uk>
 <20200707160012.1299338-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200707160012.1299338-2-chris@chris-wilson.co.uk>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/vgem: Replace opencoded version of
 drm_gem_dumb_map_offset()
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 07, 2020 at 05:00:12PM +0100, Chris Wilson wrote:
> drm_gem_dumb_map_offset() now exists and does everything
> vgem_gem_dump_map does and *ought* to do.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/vgem/vgem_drv.c | 28 +---------------------------
>  1 file changed, 1 insertion(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/vgem/vgem_drv.c b/drivers/gpu/drm/vgem/vgem_drv.c
> index eb3b7cdac941..866cff537f28 100644
> --- a/drivers/gpu/drm/vgem/vgem_drv.c
> +++ b/drivers/gpu/drm/vgem/vgem_drv.c
> @@ -236,32 +236,6 @@ static int vgem_gem_dumb_create(struct drm_file *file, struct drm_device *dev,
>  	return 0;
>  }
>  
> -static int vgem_gem_dumb_map(struct drm_file *file, struct drm_device *dev,
> -			     uint32_t handle, uint64_t *offset)
> -{
> -	struct drm_gem_object *obj;
> -	int ret;
> -
> -	obj = drm_gem_object_lookup(file, handle);
> -	if (!obj)
> -		return -ENOENT;
> -
> -	if (!obj->filp) {
> -		ret = -EINVAL;
> -		goto unref;
> -	}
> -
> -	ret = drm_gem_create_mmap_offset(obj);
> -	if (ret)
> -		goto unref;
> -
> -	*offset = drm_vma_node_offset_addr(&obj->vma_node);
> -unref:
> -	drm_gem_object_put_unlocked(obj);
> -
> -	return ret;
> -}
> -
>  static struct drm_ioctl_desc vgem_ioctls[] = {
>  	DRM_IOCTL_DEF_DRV(VGEM_FENCE_ATTACH, vgem_fence_attach_ioctl, DRM_RENDER_ALLOW),
>  	DRM_IOCTL_DEF_DRV(VGEM_FENCE_SIGNAL, vgem_fence_signal_ioctl, DRM_RENDER_ALLOW),
> @@ -455,7 +429,7 @@ static struct drm_driver vgem_driver = {
>  	.fops				= &vgem_driver_fops,
>  
>  	.dumb_create			= vgem_gem_dumb_create,
> -	.dumb_map_offset		= vgem_gem_dumb_map,
> +	.dumb_map_offset		= drm_gem_dumb_map_offset,

Even better: Just delete it, it's the default. With that:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Also maybe cc: stable, since this should stop the mmap attempts on
imported dma-buf? Or will this break stuff ...
-Daniel

>  
>  	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
>  	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
> -- 
> 2.27.0
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
