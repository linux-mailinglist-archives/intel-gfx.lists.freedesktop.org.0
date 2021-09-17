Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD2540FA41
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 16:35:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B17EE6ED1E;
	Fri, 17 Sep 2021 14:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E61FE6ED1E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 14:35:25 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id t18so15616470wrb.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 07:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=qUsEEoXzY2X8rmoz2snm6FddyjyVftZB08rOLj8eGPk=;
 b=V69LD8XNFIK2pA5BGDgFz22fu1vZAC6dxuDh0z+ZAwT/+011bsa2C4OfgYKtSznaZy
 sQoc/4fK9UNRReXachSizIL7ICC3VLi5NxOqzeKTx0sAPQoLqWhHUCk+9sZwgsCjEFs0
 zUhCfZc+JsS7rwUGMQw6BqhIYA3l4rqZADzcA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=qUsEEoXzY2X8rmoz2snm6FddyjyVftZB08rOLj8eGPk=;
 b=K5jxigxkK8Z8mWA3hL7x0AccYYuVUrw4smWcVb9QhfGwb14TFxmQ4mro9ypkDZrmvh
 kzbqC+CtYB7wJqceQZYxn48ximB83cecDtBIABjBOREkUGh/JtjflT2Z13ouZvYasAiZ
 w9Z5QusSTUE6swkREgbI/Y7F0GXGSw1b2nNvRhcIZnNv1ahNXslz+yUULTpfpjltNV4Y
 KSovcYFWnuORS/6iycAyi9J4E9bJgdJmuiCUhXyHTLkw+nMkkaBBUmuuHTSFcyWqHxS/
 muhHLBV2q2ojAoAy4GEAGpjY7MdxgRHiAgJl+n5+MF65AF9MF23KAR0WcJgdHQgcvimP
 IK9A==
X-Gm-Message-State: AOAM532S3k4VYoNaviVjxqOqQS7RWkepFI0zqdLurVxlfO74EAJgJWuf
 Gne8QHkUycMfqQPcC0rOGWwTOQ==
X-Google-Smtp-Source: ABdhPJwsHUAz1Ud7ieLF8h6emjPzljHMSSKQjwl95CP1FZbeae+6NCR/kaILhhfvihuz8brhiisDzQ==
X-Received: by 2002:a5d:554e:: with SMTP id g14mr12646627wrw.48.1631889324502; 
 Fri, 17 Sep 2021 07:35:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v17sm6813802wrr.69.2021.09.17.07.35.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 07:35:23 -0700 (PDT)
Date: Fri, 17 Sep 2021 16:35:22 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch
Message-ID: <YUSnqqsMjXOPNB6W@phenom.ffwll.local>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-4-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210917123513.1106-4-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 03/26] dma-buf: use new iterator in
 dma_resv_copy_fences
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

On Fri, Sep 17, 2021 at 02:34:50PM +0200, Christian K�nig wrote:
> This makes the function much simpler since the complex
> retry logic is now handled else where.
> 
> Signed-off-by: Christian K�nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-resv.c | 86 ++++++++++++++++----------------------
>  1 file changed, 35 insertions(+), 51 deletions(-)
> 
> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index a3c79a99fb44..406150dea5e4 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -426,74 +426,58 @@ EXPORT_SYMBOL_GPL(dma_resv_iter_walk);
>   */
>  int dma_resv_copy_fences(struct dma_resv *dst, struct dma_resv *src)
>  {
> -	struct dma_resv_list *src_list, *dst_list;
> -	struct dma_fence *old, *new;
> -	unsigned int i;
> +	struct dma_resv_iter cursor;
> +	struct dma_resv_list *list;
> +	struct dma_fence *f, *excl;
>  
>  	dma_resv_assert_held(dst);
>  
> -	rcu_read_lock();
> -	src_list = dma_resv_shared_list(src);
> -
> -retry:
> -	if (src_list) {
> -		unsigned int shared_count = src_list->shared_count;
> -
> -		rcu_read_unlock();
> +	list = NULL;
> +	excl = NULL;
>  
> -		dst_list = dma_resv_list_alloc(shared_count);
> -		if (!dst_list)
> -			return -ENOMEM;
> +	rcu_read_lock();
> +	dma_resv_iter_begin(&cursor, src, true);
> +	dma_resv_for_each_fence_unlocked(&cursor, f) {
>  
> -		rcu_read_lock();
> -		src_list = dma_resv_shared_list(src);
> -		if (!src_list || src_list->shared_count > shared_count) {
> -			kfree(dst_list);
> -			goto retry;
> -		}
> +		if (cursor.is_first) {

Maybe have a wrapper for this, like dma_resv_iter_is_reset or is_first or
is_restart (my preference) with some nice docs that this returns true
everytime we had to restart the sequence?

Otherwise I fully agree, this is so much better with all the hairy
restarting and get_rcu and test_bit shovelled away somewhere.

Either way (but I much prefer a wrapper for is_first):

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +			dma_resv_list_free(list);
> +			dma_fence_put(excl);
>  
> -		dst_list->shared_count = 0;
> -		for (i = 0; i < src_list->shared_count; ++i) {
> -			struct dma_fence __rcu **dst;
> -			struct dma_fence *fence;
> +			if (cursor.fences) {
> +				unsigned int cnt = cursor.fences->shared_count;
>  
> -			fence = rcu_dereference(src_list->shared[i]);
> -			if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
> -				     &fence->flags))
> -				continue;
> +				rcu_read_unlock();
> +				list = dma_resv_list_alloc(cnt);
> +				if (!list) {
> +					dma_resv_iter_end(&cursor);
> +					return -ENOMEM;
> +				}
>  
> -			if (!dma_fence_get_rcu(fence)) {
> -				dma_resv_list_free(dst_list);
> -				src_list = dma_resv_shared_list(src);
> -				goto retry;
> -			}
> +				list->shared_count = 0;
> +				rcu_read_lock();
>  
> -			if (dma_fence_is_signaled(fence)) {
> -				dma_fence_put(fence);
> -				continue;
> +			} else {
> +				list = NULL;
>  			}
> -
> -			dst = &dst_list->shared[dst_list->shared_count++];
> -			rcu_assign_pointer(*dst, fence);
> +			excl = NULL;
>  		}
> -	} else {
> -		dst_list = NULL;
> -	}
>  
> -	new = dma_fence_get_rcu_safe(&src->fence_excl);
> +		dma_fence_get(f);
> +		if (dma_resv_iter_is_exclusive(&cursor))
> +			excl = f;
> +		else
> +			RCU_INIT_POINTER(list->shared[list->shared_count++], f);
> +	}
> +	dma_resv_iter_end(&cursor);
>  	rcu_read_unlock();
>  
> -	src_list = dma_resv_shared_list(dst);
> -	old = dma_resv_excl_fence(dst);
> -
>  	write_seqcount_begin(&dst->seq);
> -	/* write_seqcount_begin provides the necessary memory barrier */
> -	RCU_INIT_POINTER(dst->fence_excl, new);
> -	RCU_INIT_POINTER(dst->fence, dst_list);
> +	excl = rcu_replace_pointer(dst->fence_excl, excl, dma_resv_held(dst));
> +	list = rcu_replace_pointer(dst->fence, list, dma_resv_held(dst));
>  	write_seqcount_end(&dst->seq);
>  
> -	dma_resv_list_free(src_list);
> -	dma_fence_put(old);
> +	dma_resv_list_free(list);
> +	dma_fence_put(excl);
>  
>  	return 0;
>  }
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
