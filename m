Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C0B40FAA7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 16:45:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1D5D6ED82;
	Fri, 17 Sep 2021 14:45:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E409D6ED7D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 14:45:32 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id v24so30876454eda.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 07:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=wz2r8Rw4gqbVGILBBsKjUR6eLdLizuihefxtloorVPI=;
 b=dGMlVF44MnGWCRZ8L0BQUFARQV3UIV2ckjuP2h0mTeMnC2rx1AQmsBDqh9NUl10eYg
 97kY/fQ7d7vLDu2qysmuF0Y6SRaryxtgQigFFsi0Cs4QDmHbLtNHqjYJL2Gl22iqKKpH
 h4U+lM/8nH6QEKWdzBQVwstmSCRzK2Kbo8i/k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=wz2r8Rw4gqbVGILBBsKjUR6eLdLizuihefxtloorVPI=;
 b=evg4F4TBHtEF0MViEFdudcbfMdWCBuNYThPJfE082XXBXOet3Fad7GMS9GaFWZOdPg
 Hp1zQ7mSbTBqavLZj62XwEWN9cYUbB9k+N5n25CFohsYrSH7SCBvOSDk0tQJJHU7+VRI
 oR9Qoeou/RLnFDfABir/EQVtSg3uVMuSNVAL8kweuLgTN+xQkN4GCmmoSocztIHvuER1
 2Bq3nkRtPTlfyJyS1gYd8M7xl6oUe99E8L0vwkeH6Cq2bS26eDYvGkdRMzPHnpyYiQq5
 9AYchqcuo12RsShj+W0cLFToIhiVkzEV9pjDfdV17/U3T01SigGG/OHpJGmbNGxZRL95
 iajA==
X-Gm-Message-State: AOAM532unBZm1ibWBpE9GdOO3cpxv1bTu5r4aBynG1ocG2MqZBxzdesp
 sPvify132GMrUemxtP8znFaARA==
X-Google-Smtp-Source: ABdhPJyyblJCLjZajzeKpqWDj9X2cRAcImcMI5oX9JtcEMGLvT6fyS0mnqKK2zSi0SFdhRRdLUWHzA==
X-Received: by 2002:a17:906:1856:: with SMTP id
 w22mr13230531eje.393.1631889931009; 
 Fri, 17 Sep 2021 07:45:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b3sm2105487edx.55.2021.09.17.07.45.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 07:45:30 -0700 (PDT)
Date: Fri, 17 Sep 2021 16:45:28 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch
Message-ID: <YUSqCIxUbkk0qCO9@phenom.ffwll.local>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-7-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210917123513.1106-7-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 06/26] dma-buf: use new iterator in
 dma_resv_test_signaled
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

On Fri, Sep 17, 2021 at 02:34:53PM +0200, Christian König wrote:
> This makes the function much simpler since the complex
> retry logic is now handled elsewhere.
> 
> Signed-off-by: Christian König <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-resv.c | 56 ++++++--------------------------------
>  1 file changed, 9 insertions(+), 47 deletions(-)
> 
> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index c7db553ab115..d8f428ddaedd 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -593,22 +593,6 @@ long dma_resv_wait_timeout(struct dma_resv *obj, bool wait_all, bool intr,
>  EXPORT_SYMBOL_GPL(dma_resv_wait_timeout);
>  
>  
> -static inline int dma_resv_test_signaled_single(struct dma_fence *passed_fence)
> -{
> -	struct dma_fence *fence, *lfence = passed_fence;
> -	int ret = 1;
> -
> -	if (!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &lfence->flags)) {
> -		fence = dma_fence_get_rcu(lfence);
> -		if (!fence)
> -			return -1;
> -
> -		ret = !!dma_fence_is_signaled(fence);
> -		dma_fence_put(fence);
> -	}
> -	return ret;
> -}
> -
>  /**
>   * dma_resv_test_signaled - Test if a reservation object's fences have been
>   * signaled.
> @@ -625,43 +609,21 @@ static inline int dma_resv_test_signaled_single(struct dma_fence *passed_fence)
>   */
>  bool dma_resv_test_signaled(struct dma_resv *obj, bool test_all)
>  {
> +	struct dma_resv_iter cursor;
>  	struct dma_fence *fence;
> -	unsigned int seq;
> -	int ret;
>  
>  	rcu_read_lock();
> -retry:
> -	ret = true;
> -	seq = read_seqcount_begin(&obj->seq);
> -
> -	if (test_all) {
> -		struct dma_resv_list *fobj = dma_resv_shared_list(obj);
> -		unsigned int i, shared_count;
> -
> -		shared_count = fobj ? fobj->shared_count : 0;
> -		for (i = 0; i < shared_count; ++i) {
> -			fence = rcu_dereference(fobj->shared[i]);
> -			ret = dma_resv_test_signaled_single(fence);
> -			if (ret < 0)
> -				goto retry;
> -			else if (!ret)
> -				break;
> +	dma_resv_iter_begin(&cursor, obj, test_all);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> +		if (!dma_fence_is_signaled(fence)) {

Should we be extremely clever and document that the iterator already
filters out unsignalled fences? We could rely on that here :-) Otoh we
don't want to make the full is_signalled check in that iterator, so this
makes sense.

Again rcu_read_lock into the iterators pls. With that:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +			dma_resv_iter_end(&cursor);
> +			rcu_read_unlock();
> +			return false;
>  		}
>  	}
> -
> -	fence = dma_resv_excl_fence(obj);
> -	if (ret && fence) {
> -		ret = dma_resv_test_signaled_single(fence);
> -		if (ret < 0)
> -			goto retry;
> -
> -	}
> -
> -	if (read_seqcount_retry(&obj->seq, seq))
> -		goto retry;
> -
> +	dma_resv_iter_end(&cursor);
>  	rcu_read_unlock();
> -	return ret;
> +	return true;
>  }
>  EXPORT_SYMBOL_GPL(dma_resv_test_signaled);
>  
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
