Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4651240FAC0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 16:50:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BF8B6ED29;
	Fri, 17 Sep 2021 14:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B5B86ED29
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 14:50:21 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id v24so30930321eda.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 07:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=5RGQxzmlKwLpLejf7DyioqG8/xNm2Xdb7FS3U66xIrQ=;
 b=KISrc2lSZllL6gBcY+5XK+lD9HLQ+zSIdbbchQVQTKVYPWwYnEjy+hUmPmmIETYGLF
 uHXfp7iHt4eWj5756feNhEgkLI5RnAYOgGkQY6YIHy39zA7xuIHJnrMN1HGGfkOydDXx
 ugowRSHA+WDJH+laAfL4w+ShJz/VT+5qy9Ato=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=5RGQxzmlKwLpLejf7DyioqG8/xNm2Xdb7FS3U66xIrQ=;
 b=u7No5Umt07qa8sXNazYVWqu3lstbvZIWHwkopXAG+JO8DA2/oOc0rqxJwH08Pstekz
 hl57UZDkWzfLLXkeHvU+aKS+2fOBZgKhjEhD9GCQLitt2cyd4Aryhvnu9/P9G1kaU3ZJ
 2jUMVQNHJS26hBd7f/aE2JdgI11GY/Z8BTF2nBOqIbdFZw3KnTCTekv7ibhJpKfnjtvm
 hxFsdjksRGw+4WNjZMxGBv+UbHO05w3E14LPWpmvHN4v9J9ix/g756mDQzmk73tKGVud
 gUY2djkMmHTpNRM4G8iW+CelfIKdRPBuVYC9A6AuCfDcIgv4R90BwSkpqUoEIgbWUJjG
 OEFw==
X-Gm-Message-State: AOAM530iX+011Sy9lAHIlZPKfVBWQ5SEEQEPA/YlTBKgCqxJHouh8szq
 93QTfVysmrR+bGpQFE1+UQ65RA==
X-Google-Smtp-Source: ABdhPJxba/NO0TrkGTviWKbmqvAbMZ4UOj73wmiM3lhAiN+9qVsSuL5PWtv7x1Y8+C+2+v3sFyzyhA==
X-Received: by 2002:a50:fb06:: with SMTP id d6mr12689369edq.31.1631890219229; 
 Fri, 17 Sep 2021 07:50:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z12sm2718687edx.66.2021.09.17.07.50.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 07:50:18 -0700 (PDT)
Date: Fri, 17 Sep 2021 16:50:17 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch
Message-ID: <YUSrKdHwcK+us4XG@phenom.ffwll.local>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-8-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210917123513.1106-8-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 07/26] drm/ttm: use the new iterator in
 ttm_bo_flush_all_fences
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

On Fri, Sep 17, 2021 at 02:34:54PM +0200, Christian König wrote:
> This is probably a fix since we didn't even grabed a reference to the
> fences.

It's rcu protected, and we only care about speeding things up a bit. I
think this wont have any impact on correctness, and I don't think any
driver could blow up?

But yeah maybe we should have a few assert sprinkled into various
dma_fence functions to make sure we never call them when the refcount has
dropped to 0. That would catch stuff like this, and help lock down the
dma-fence api quite a bit.
> 
> Signed-off-by: Christian König <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/ttm/ttm_bo.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
> index 3b22c0013dbf..7d804c0c69b0 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> @@ -269,22 +269,16 @@ static int ttm_bo_individualize_resv(struct ttm_buffer_object *bo)
>  static void ttm_bo_flush_all_fences(struct ttm_buffer_object *bo)
>  {
>  	struct dma_resv *resv = &bo->base._resv;
> -	struct dma_resv_list *fobj;
> +	struct dma_resv_iter cursor;
>  	struct dma_fence *fence;
> -	int i;
>  
>  	rcu_read_lock();
> -	fobj = dma_resv_shared_list(resv);
> -	fence = dma_resv_excl_fence(resv);
> -	if (fence && !fence->ops->signaled)
> -		dma_fence_enable_sw_signaling(fence);
> -
> -	for (i = 0; fobj && i < fobj->shared_count; ++i) {
> -		fence = rcu_dereference(fobj->shared[i]);
> -
> +	dma_resv_iter_begin(&cursor, resv, true);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
>  		if (!fence->ops->signaled)

Imo delete this check here. If that really matters for performance we
should have it in the core dma_fence function, not replicated all over the
place like this. Noodling around in dma_fence internals like this isn't
cool.

With that removal included:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  			dma_fence_enable_sw_signaling(fence);
>  	}
> +	dma_resv_iter_end(&cursor);
>  	rcu_read_unlock();
>  }
>  
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
