Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DDD11EF04
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 01:10:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A26F46E03C;
	Sat, 14 Dec 2019 00:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 251816E03C
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Dec 2019 00:10:22 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id y11so566431wrt.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 16:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8QA93E86Fd5/SNtUhg6z1385N12mNPAjE27/8RO9foM=;
 b=e1XYtXuQpPL89ZNtvJHcKGgrThSfgD2qpHTmKZYLXBeispsj2kY5zqMaPcQ4K4u1VG
 tLEvovjlvn3cfgbuT/LBP0QxBVdQzBcoBfGPgCLZsv9otURmGgod74oe1pK8mYqbfsvO
 MI+RhyU9FFSgWtu56PBoy9XmOBnoCIRAyo/Qo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8QA93E86Fd5/SNtUhg6z1385N12mNPAjE27/8RO9foM=;
 b=pwxp1cQy2PlSaLmBX9a4uYPaqw0/DIlTI+1DlhBUseJzmZalxdBcdCjTujV33N2AtT
 Oz9905916fOqfuJsn4ov0qWfVPFQZ0aZ2H1L6dm1tsY9EMKEEi7ozAD82zyzfHrwvVl9
 Eu9trS6GieM4rcmXCOSOiEL/SdR05t8vQ+8HTYjx5vaKpcUQ1M8N7Vfiy4xxnua4H2g9
 Pw3KYd3pS3QZR//Nzbd0i4jtJvzU96VuPvz8Brzy/UgX0McxwXqOvqmiXLASXc+9mQ5v
 cV21VKGIPb5k2uOBMUP6HR0CHVsS8+q6E+fZLZnfyFkyS/VJDPI5zCcU7BiDpbgTV8+T
 xeYA==
X-Gm-Message-State: APjAAAWeU0m3TsQUJB2cB1IXJoeId23ClX4Zz9qlz9C6HUUvygBaesL6
 OuJEBgmtqEiMBqSksmnxWqWQuA==
X-Google-Smtp-Source: APXvYqzkJilEP+k/UY4kR35AcCnEdzAYcGQziJNIqAEI/smOrJplTFVLC66GhXwZSH6633of3GMl4Q==
X-Received: by 2002:adf:dc06:: with SMTP id t6mr15884562wri.378.1576282220803; 
 Fri, 13 Dec 2019 16:10:20 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:564b:0:7567:bb67:3d7f:f863])
 by smtp.gmail.com with ESMTPSA id k16sm12343423wru.0.2019.12.13.16.10.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 16:10:20 -0800 (PST)
Date: Sat, 14 Dec 2019 01:10:18 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20191214001018.GQ624164@phenom.ffwll.local>
References: <20191125094356.161941-1-daniel.vetter@ffwll.ch>
 <20191125094356.161941-3-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125094356.161941-3-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Use dma_resv locking wrappers
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
Cc: Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 25, 2019 at 10:43:54AM +0100, Daniel Vetter wrote:
> I'll add more fancy logic to them soon, so everyone really has to use
> them. Plus they already provide some nice additional debug
> infrastructure on top of direct ww_mutex usage for the fences tracked
> by dma_resv.
> 
> Aside: We might want to create wrappers for i915_vma locking of the
> ->resv like we have for the i915_gem_bo itself already.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> ---

Maarten/Chris, should I drop this one or keep? I guess this will all
change anyway rsn ...
-Daniel

>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 7a87e8270460..7b8f4ebd9986 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1848,7 +1848,7 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
>  	for (i = 0; i < count; i++) {
>  		struct i915_vma *vma = eb->vma[i];
>  
> -		err = ww_mutex_lock_interruptible(&vma->resv->lock, &acquire);
> +		err = dma_resv_lock_interruptible(vma->resv, &acquire);
>  		if (!err)
>  			continue;
>  
> @@ -1859,7 +1859,7 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
>  			do {
>  				int j = i - 1;
>  
> -				ww_mutex_unlock(&eb->vma[j]->resv->lock);
> +				dma_resv_unlock(eb->vma[j]->resv);
>  
>  				swap(eb->flags[i], eb->flags[j]);
>  				swap(eb->vma[i],  eb->vma[j]);
> @@ -1868,7 +1868,7 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
>  			GEM_BUG_ON(vma != eb->vma[0]);
>  			vma->exec_flags = &eb->flags[0];
>  
> -			err = ww_mutex_lock_slow_interruptible(&vma->resv->lock,
> +			err = dma_resv_lock_slow_interruptible(vma->resv,
>  							       &acquire);
>  		}
>  		if (err)
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
