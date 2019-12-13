Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9103F11EB89
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 21:08:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C237B6ECEE;
	Fri, 13 Dec 2019 20:08:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B0E56ECEE
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 20:08:31 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id g17so69033wro.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 12:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s0hmHEcvCC0qbSC/De866WAvWdTYGdzpFwLiouqM3/8=;
 b=AD+itFb7W/67DJ3guxnxujbhlSqpK2mXyfTsoHLo+9mMka7qtiXe7Z/9b51ulGmp05
 FJMRmPpqc2IW/DYXz1aymPEIfNLmbrn7xJdelUUJNxQUdOQFlplzBrli0sSphxsT+Iq+
 YirfloHSpCwLWnJn88Amk4syJUwn2fnj7TjUA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s0hmHEcvCC0qbSC/De866WAvWdTYGdzpFwLiouqM3/8=;
 b=CAfsGPy1EJkfbQ2saftFaUMciLWQP4SlbDlaaxnhW+CT8umOkV9/p8Ir/W/LuIq2Ee
 9f810ur257S05XAkwsIFvTPE+REzdwadQdZSBBBF/N3N1RHUUNunEFYmtagtWErb/Lof
 1ZiNHxHUiPVG/r3LqieY0Id3HaZ1dNhSWC+GWiqPIKyGUbW60aVmLUjs4WIpUl4BQekx
 +MwPEZZ7xBdgy2gv6vEiuDjRUsPzpb1EmZQYpnnO+RnaAPdGm5UK0Rdgtz4bwo6AKoJO
 ToSfmRbSyUqRs7xOfY2ntRKYzxcO3dCq5yKx+JldKqJTMY8nJf0ubO3FcTZne2H1OH6+
 ahpw==
X-Gm-Message-State: APjAAAUWltmNignlkuAoejEIRC39aqi0x2ayOIixDY4hd8b1/e+V+m8O
 w+zkAUp5Nbuomwmzs5uM6BHmtA==
X-Google-Smtp-Source: APXvYqzvIiH858jendvGHuzJsone3U5RVzvk+l+K36SXi8Vi3S6teGKauM2zP38jKomfUVBIohq7aQ==
X-Received: by 2002:a5d:50ce:: with SMTP id f14mr14553651wrt.254.1576267709713; 
 Fri, 13 Dec 2019 12:08:29 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:564b:0:7567:bb67:3d7f:f863])
 by smtp.gmail.com with ESMTPSA id j12sm11721163wrw.54.2019.12.13.12.08.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 12:08:28 -0800 (PST)
Date: Fri, 13 Dec 2019 21:08:26 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20191213200826.GK624164@phenom.ffwll.local>
References: <20191125094356.161941-1-daniel.vetter@ffwll.ch>
 <20191125094356.161941-2-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125094356.161941-2-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/etnaviv: Use dma_resv locking
 wrappers
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 etnaviv@lists.freedesktop.org, Russell King <linux+etnaviv@armlinux.org.uk>,
 Daniel Vetter <daniel.vetter@intel.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 25, 2019 at 10:43:53AM +0100, Daniel Vetter wrote:
> I'll add more fancy logic to them soon, so everyone really has to use
> them. Plus they already provide some nice additional debug
> infrastructure on top of direct ww_mutex usage for the fences tracked
> by dma_resv.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Russell King <linux+etnaviv@armlinux.org.uk>
> Cc: Christian Gmeiner <christian.gmeiner@gmail.com>
> Cc: etnaviv@lists.freedesktop.org

Ping for some review/acks.

Thanks, Daniel

> ---
>  drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
> index aa3e4c3b063a..947b21868e72 100644
> --- a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
> @@ -113,7 +113,7 @@ static void submit_unlock_object(struct etnaviv_gem_submit *submit, int i)
>  	if (submit->bos[i].flags & BO_LOCKED) {
>  		struct drm_gem_object *obj = &submit->bos[i].obj->base;
>  
> -		ww_mutex_unlock(&obj->resv->lock);
> +		dma_resv_unlock(obj->resv);
>  		submit->bos[i].flags &= ~BO_LOCKED;
>  	}
>  }
> @@ -133,8 +133,7 @@ static int submit_lock_objects(struct etnaviv_gem_submit *submit,
>  		contended = i;
>  
>  		if (!(submit->bos[i].flags & BO_LOCKED)) {
> -			ret = ww_mutex_lock_interruptible(&obj->resv->lock,
> -							  ticket);
> +			ret = dma_resv_lock(obj->resv, ticket);
>  			if (ret == -EALREADY)
>  				DRM_ERROR("BO at index %u already on submit list\n",
>  					  i);
> @@ -161,8 +160,7 @@ static int submit_lock_objects(struct etnaviv_gem_submit *submit,
>  		obj = &submit->bos[contended].obj->base;
>  
>  		/* we lost out in a seqno race, lock and retry.. */
> -		ret = ww_mutex_lock_slow_interruptible(&obj->resv->lock,
> -						       ticket);
> +		ret = dma_resv_lock_slow_interruptible(obj->resv, ticket);
>  		if (!ret) {
>  			submit->bos[contended].flags |= BO_LOCKED;
>  			slow_locked = contended;
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
