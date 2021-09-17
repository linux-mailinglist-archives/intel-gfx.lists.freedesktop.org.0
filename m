Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C8A40FAD3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 16:53:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C3CA6ED29;
	Fri, 17 Sep 2021 14:53:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE9546ED29
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 14:53:35 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id g21so31110605edw.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 07:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=i7wK8PAy0pTln1Ij7WUju223Tboi1RO9p+q6y08OLdQ=;
 b=UUlDPJH5THY/fyLkI2T7gaCqZRXS3ctAzfWpLsWlez/mGxf+1bKjUyVjIelTu+4raQ
 ie843+Jb4jSnRKKXHBzpaTEKWlrvs5yqOUZk+4FksFw9KMVm2OKu5zCtfIRe2zZ0u7tr
 dxk43ymJdoEHjaFGj9tOPTHm6xUKu+/uGoAQU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=i7wK8PAy0pTln1Ij7WUju223Tboi1RO9p+q6y08OLdQ=;
 b=JNMfnqjIFPTNWBsXDbEA1wilh4foZvTSPnQTlDzPrXsembeMowqM+CK0rkMW9DCfzU
 SHU5zkhFidj6TBK77UZKly61Rm0r+k5eEva6kQPGoFiV/61PyTPolzQ+cUFMQ/4HSr9S
 YbYaryUEM5AD4WelPUHSlUMd6KQDQuaYhl5lEAESYvQJUBaswqy4b2PGJtqwsN6/HAB7
 t9RFn7d0zewW2sfIUPQpGSgbSm/5f+QY+UNOmqYUBy70/tCPtGGOyUZm3F83NigmpotF
 /0vUiSVepd6mJmF85l7oZACTT/cNBZbnCSvIWB1XkmLEAVhHDJIlBcQFuiMDMfbgCTxt
 DBsA==
X-Gm-Message-State: AOAM531C5p8Ver3Hh985wKbj/TnQCQbT0Qkcd1ifbeYlK/qDXtoaMP35
 8i6oydFGhegxKqMAyuv5bwn05Q==
X-Google-Smtp-Source: ABdhPJz8wdHWvCd01v4kCjRcWM6KPrx/VnjgO/KDJQJBvz9h1g3363BbbrSpXMNQj/pYRAh1e1Vezw==
X-Received: by 2002:a17:906:3fd7:: with SMTP id
 k23mr12397223ejj.176.1631890414444; 
 Fri, 17 Sep 2021 07:53:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id ml12sm2429067ejb.29.2021.09.17.07.53.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 07:53:34 -0700 (PDT)
Date: Fri, 17 Sep 2021 16:53:32 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch
Message-ID: <YUSr7AN3vv6kpreo@phenom.ffwll.local>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-21-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210917123513.1106-21-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 20/26] drm: use new iterator in
 drm_gem_fence_array_add_implicit v2
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

On Fri, Sep 17, 2021 at 02:35:07PM +0200, Christian König wrote:
> Simplifying the code a bit.
> 
> v2: add missing rcu_read_lock()/unlock()
> 
> Signed-off-by: Christian König <christian.koenig@amd.com>

This will be gone as soon as I can land the last conversion patches. Plus
it's always called with dma_resv_lock held.

I wouldn't bother tbh.
-Daniel

> ---
>  drivers/gpu/drm/drm_gem.c | 34 ++++++++++++----------------------
>  1 file changed, 12 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index 09c820045859..c2c41b668f40 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -1340,31 +1340,21 @@ int drm_gem_fence_array_add_implicit(struct xarray *fence_array,
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
> -
> -	ret = dma_resv_get_fences(obj->resv, NULL,
> -						&fence_count, &fences);
> -	if (ret || !fence_count)
> -		return ret;
> -
> -	for (i = 0; i < fence_count; i++) {
> -		ret = drm_gem_fence_array_add(fence_array, fences[i]);
> +	struct dma_resv_iter cursor;
> +	struct dma_fence *fence;
> +	int ret = 0;
> +
> +	rcu_read_lock();
> +	dma_resv_iter_begin(&cursor, obj->resv, write);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> +		rcu_read_unlock();
> +		ret = drm_gem_fence_array_add(fence_array, fence);
> +		rcu_read_lock();
>  		if (ret)
>  			break;
>  	}
> -
> -	for (; i < fence_count; i++)
> -		dma_fence_put(fences[i]);
> -	kfree(fences);
> +	dma_resv_iter_end(&cursor);
> +	rcu_read_unlock();
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
