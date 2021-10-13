Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D9842C2DA
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 16:21:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C08486EA0F;
	Wed, 13 Oct 2021 14:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C55B36EA0F
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 14:21:40 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id m22so9168884wrb.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 07:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=KGV5+XgnGGbgyKsBWGvZeJz+/eWLXpcVDfX0Eq6feqQ=;
 b=CDVxwOlatCqAQJ8IC7a7zwRg9FBupYDWMsfWNq6dSGIGWx8SOFh/5Oatw+InCNkBUz
 c81RlmRhS9qtZoUZcmEsSMPAdlgsuta7BhGZ7UsryDpPe5MAUMCPAKQmoXkCXin7aSEQ
 csk1THJ9vzr7MQlqGmrxP6ZpOIYWcJmMrX1o4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=KGV5+XgnGGbgyKsBWGvZeJz+/eWLXpcVDfX0Eq6feqQ=;
 b=Gzjak+c9uVEUxwKRbHUNy1p23JAKuTxRyBAXsyck+aoencM8NDKwyKjOtgTgNabA1d
 IWyRviPxwPkr0pbLxcmpB/OoCCQm+pLOfYyteBA2lAVumKcmLPx51w/Iki83qoiYreXW
 yP9dbHfuMTeKFsLK+QPOu4Y3o+hweshilXFxkTW03Xis0LoQEIeY+7GL/3RDQQZm5qUp
 k5Pa3uKIv+qxlL0X3Oyw2hfkXbUIS4ohVHNHbmLFRfMZ8IA3HCGRmAaIhJ/HTqddJSl/
 yQm26e7ch3YBKO2IYkCP1EuGHxMvjzQ/KOYnYpaBtiXMixLP5KxoZQXsHNPgFT1H6uh3
 YPvw==
X-Gm-Message-State: AOAM532nyNZyLY0lcteqArsZDQMPfeqO4fpsF8H76vf2uCMh6xzh9hA0
 k7ss+x2L0QcBdmsC5/rzux/kIw==
X-Google-Smtp-Source: ABdhPJxMaiINoMOB6u6wWQi7pvYuDM8TL3L0oupZrIcFiKmpMteTsfoTnacdbIv/SDv8AHoif0NupA==
X-Received: by 2002:a1c:21d7:: with SMTP id
 h206mr13058751wmh.163.1634134898166; 
 Wed, 13 Oct 2021 07:21:38 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r3sm7119388wrw.55.2021.10.13.07.21.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:21:37 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:21:35 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch, tvrtko.ursulin@linux.intel.com
Message-ID: <YWbrb7xQfTWU15U1@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-24-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211005113742.1101-24-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 23/28] drm: use new iterator in
 drm_gem_fence_array_add_implicit v3
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 05, 2021 at 01:37:37PM +0200, Christian König wrote:
> Simplifying the code a bit.
> 
> v2: add missing rcu_read_lock()/unlock()
> v3: switch to locked version
> 
> Signed-off-by: Christian König <christian.koenig@amd.com>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Please make sure you also apply this to the new copy of this code in
drm/sched. This one here is up for deletion, once I get all the driver
conversions I have landed ...
-Daniel

> ---
>  drivers/gpu/drm/drm_gem.c | 26 +++++---------------------
>  1 file changed, 5 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index 09c820045859..4dcdec6487bb 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -1340,31 +1340,15 @@ int drm_gem_fence_array_add_implicit(struct xarray *fence_array,
>  				     struct drm_gem_object *obj,
>  				     bool write)
>  {
> -	int ret;
> -	struct dma_fence **fences;
> -	unsigned int i, fence_count;
> -
> -	if (!write) {
> -		struct dma_fence *fence =
> -			dma_resv_get_excl_unlocked(obj->resv);
> -
> -		return drm_gem_fence_array_add(fence_array, fence);
> -	}
> +	struct dma_resv_iter cursor;
> +	struct dma_fence *fence;
> +	int ret = 0;
>  
> -	ret = dma_resv_get_fences(obj->resv, NULL,
> -						&fence_count, &fences);
> -	if (ret || !fence_count)
> -		return ret;
> -
> -	for (i = 0; i < fence_count; i++) {
> -		ret = drm_gem_fence_array_add(fence_array, fences[i]);
> +	dma_resv_for_each_fence(&cursor, obj->resv, write, fence) {
> +		ret = drm_gem_fence_array_add(fence_array, fence);
>  		if (ret)
>  			break;
>  	}
> -
> -	for (; i < fence_count; i++)
> -		dma_fence_put(fences[i]);
> -	kfree(fences);
>  	return ret;
>  }
>  EXPORT_SYMBOL(drm_gem_fence_array_add_implicit);
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
