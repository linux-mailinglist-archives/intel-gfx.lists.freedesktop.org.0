Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3D111EBB4
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 21:10:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB7976E153;
	Fri, 13 Dec 2019 20:10:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0A596E153
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 20:10:17 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id c9so40833wrw.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 12:10:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=myxn8tbrMS5BdPFpgJdtAYzTzarg8MS5aEnjcV6O5Ok=;
 b=PSkk3RLK1sqwh5Wd/+XElUSor7ggR19cJM377Bl9FnGxTZRCcsDroLVWmxd6LpvXFI
 5Aibx4RKXnQgFSqhMsmlNJYEod/d45Uy8bey6Z0YBbM6vCIdqrP58yI//BaUmWTUkInB
 dRKfk/LGEXAXpi/OGFsp5/rFsjKVJwTlkJAtE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=myxn8tbrMS5BdPFpgJdtAYzTzarg8MS5aEnjcV6O5Ok=;
 b=nz2dOs32O2UtgS8vWhGopvBI56p3OCXXS/gzyxA0G3UQhAfZ/MaC92THjyTe/jGYsh
 Uy1MUvWFmsTSv7lgUtQqWLXQLYfZ5KvQ5kVphDso3BH72hbyo8XbZ81f/XLHlxEuqCpX
 Xuat8b4fcGJ4iaoT9Zjm6vRqaYu6U42uHYqRbnbMysTjao6RDd92kTd7edyDwkWkWwEa
 Go4C3Gt7bP8wHt8UNREM/Czo6T3HFAdC1PK3p1ml2yB1FZmUjX+5ntqBoNyxmVlC6X8L
 X9WHkt1hQdYaMV00MpAmPNPIOGKBGwvjuqYm8gzD6CiHb2IFCmChA/naB4NAo8HQ+kRj
 VidQ==
X-Gm-Message-State: APjAAAVZ8KRyoutyABGer0ao8sx+3YfPqdSo6Y0TfaCA4s3j4ObQguwz
 x8Y6+OIbakb74mgH2FNznXs5CbKcg0A=
X-Google-Smtp-Source: APXvYqxh2f1GY1qVvxJeLQwRyrgPvwuCusycQk+cz3fKq9+WYzq1lSewOwpiCX0/S51y8YGR/HEtuQ==
X-Received: by 2002:a5d:480f:: with SMTP id l15mr14711992wrq.305.1576267816414; 
 Fri, 13 Dec 2019 12:10:16 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:564b:0:7567:bb67:3d7f:f863])
 by smtp.gmail.com with ESMTPSA id t81sm11389247wmg.6.2019.12.13.12.10.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 12:10:15 -0800 (PST)
Date: Fri, 13 Dec 2019 21:10:13 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20191213201013.GM624164@phenom.ffwll.local>
References: <20191125094356.161941-1-daniel.vetter@ffwll.ch>
 <20191125094356.161941-5-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125094356.161941-5-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/vc4: Use dma_resv locking wrappers
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
Cc: Eric Anholt <eric@anholt.net>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 25, 2019 at 10:43:56AM +0100, Daniel Vetter wrote:
> I'll add more fancy logic to them soon, so everyone really has to use
> them. Plus they already provide some nice additional debug
> infrastructure on top of direct ww_mutex usage for the fences tracked
> by dma_resv.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>

Ping for some review/acks.

Thanks, Daniel

> ---
>  drivers/gpu/drm/vc4/vc4_gem.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/vc4/vc4_gem.c b/drivers/gpu/drm/vc4/vc4_gem.c
> index 7a06cb6e31c5..e1cfc3ccd05a 100644
> --- a/drivers/gpu/drm/vc4/vc4_gem.c
> +++ b/drivers/gpu/drm/vc4/vc4_gem.c
> @@ -568,7 +568,7 @@ vc4_unlock_bo_reservations(struct drm_device *dev,
>  	for (i = 0; i < exec->bo_count; i++) {
>  		struct drm_gem_object *bo = &exec->bo[i]->base;
>  
> -		ww_mutex_unlock(&bo->resv->lock);
> +		dma_resv_unlock(bo->resv);
>  	}
>  
>  	ww_acquire_fini(acquire_ctx);
> @@ -595,8 +595,7 @@ vc4_lock_bo_reservations(struct drm_device *dev,
>  retry:
>  	if (contended_lock != -1) {
>  		bo = &exec->bo[contended_lock]->base;
> -		ret = ww_mutex_lock_slow_interruptible(&bo->resv->lock,
> -						       acquire_ctx);
> +		ret = dma_resv_lock_slow_interruptible(bo->resv, acquire_ctx);
>  		if (ret) {
>  			ww_acquire_done(acquire_ctx);
>  			return ret;
> @@ -609,19 +608,19 @@ vc4_lock_bo_reservations(struct drm_device *dev,
>  
>  		bo = &exec->bo[i]->base;
>  
> -		ret = ww_mutex_lock_interruptible(&bo->resv->lock, acquire_ctx);
> +		ret = dma_resv_lock_interruptible(bo->resv, acquire_ctx);
>  		if (ret) {
>  			int j;
>  
>  			for (j = 0; j < i; j++) {
>  				bo = &exec->bo[j]->base;
> -				ww_mutex_unlock(&bo->resv->lock);
> +				dma_resv_unlock(bo->resv);
>  			}
>  
>  			if (contended_lock != -1 && contended_lock >= i) {
>  				bo = &exec->bo[contended_lock]->base;
>  
> -				ww_mutex_unlock(&bo->resv->lock);
> +				dma_resv_unlock(bo->resv);
>  			}
>  
>  			if (ret == -EDEADLK) {
> -- 
> 2.24.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
