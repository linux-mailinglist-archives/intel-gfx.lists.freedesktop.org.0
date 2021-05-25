Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D058390554
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 17:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 545AD6EA55;
	Tue, 25 May 2021 15:25:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B8FE6E409
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 15:25:30 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id z12so46520941ejw.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 08:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Kv1JKEwJMpD/ktaa1RvWp55Y6pSuI1Hfl+M+GZ6TnYk=;
 b=X2df5fhXqWht0VX88M/pXzEEIcHJbb8ic0CtFEIVNGHrHdU7ggnnxBKAAh5BtYPMjc
 rpuWclRy7AEt0X9VrdFUmrTryrzkJdVR5aO/fpzARGMhwZBN0WqqSEZGUcj1I6w5axwu
 RhiXFw3qV8/vsNW6+i1W2vt2FcfWnrwXm0fS0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Kv1JKEwJMpD/ktaa1RvWp55Y6pSuI1Hfl+M+GZ6TnYk=;
 b=F7qVbMyXwMHR20ZAA+No+tDlhLN8Xu0l+j9Nk68BGE8WEnhA9uFFbr7Imc/9muCSsI
 dWhXNOFVpbosRGFID7MkOGK4eAMJ2nRaA/1wQlrpqxmw/PeIxxXy6Z5NbZIU8SF0nIM7
 8TVWZTiTumX8otZpLlnX9z82Nq0vmF4Qw2wAb3ItAUQWECLS/cN38j5236hKQwnWd0Ue
 nQpTkRJOVQRE6Zly0Mky/cnvDSmkE9VKbQPoFczl1gVyiBDFX9XXPiXrN6Czq4W6xk8S
 VkeecdwogyoUWveNh2GKgMcGpGRljGp1S7JhvPyo6h2AxsMZ10DvETrx3ErGIhL/VoNP
 ZURA==
X-Gm-Message-State: AOAM530gC7oJNABhAoHe0QfaQLEdZNPjKw69zPZ7GF4vNkQMIAnUOUl2
 jxONefhYf1jRKba0xTZKK2i22UqtyHQxcw==
X-Google-Smtp-Source: ABdhPJzZlrShDm1qRjz73SXYdID185KeRvQyHEzqxLE65qfbRp0L3cMzg1uCERYKwexfir/2uRAz0A==
X-Received: by 2002:a17:906:7f06:: with SMTP id
 d6mr29371062ejr.189.1621956328682; 
 Tue, 25 May 2021 08:25:28 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n25sm9402901ejz.28.2021.05.25.08.25.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 08:25:28 -0700 (PDT)
Date: Tue, 25 May 2021 17:25:26 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YK0W5nI0UQVVeynT@phenom.ffwll.local>
References: <20210524205954.872814-1-jason@jlekstrand.net>
 <20210524205954.872814-6-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210524205954.872814-6-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 5/6] RFC: dma-buf: Add an extra fence to
 dma_resv_get_singleton_unlocked
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

On Mon, May 24, 2021 at 03:59:53PM -0500, Jason Ekstrand wrote:
> For dma-buf sync_file import, we want to get all the fences on a
> dma_resv plus one more.  We could wrap the fence we get back in an array
> fence or we could make dma_resv_get_singleton_unlocked take "one more"
> to make this case easier.
> 
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>

Ah now it makes very obviously sense.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/dma-buf/dma-buf.c  |  2 +-
>  drivers/dma-buf/dma-resv.c | 23 +++++++++++++++++++++--
>  include/linux/dma-resv.h   |  3 ++-
>  3 files changed, 24 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index 86efe71c0db96..f23d939e0e833 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -386,7 +386,7 @@ static long dma_buf_export_sync_file(struct dma_buf *dmabuf,
>  		return fd;
>  
>  	if (arg.flags & DMA_BUF_SYNC_WRITE) {
> -		fence = dma_resv_get_singleton_unlocked(dmabuf->resv);
> +		fence = dma_resv_get_singleton_unlocked(dmabuf->resv, NULL);
>  		if (IS_ERR(fence)) {
>  			ret = PTR_ERR(fence);
>  			goto err_put_fd;
> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index 312a3a59dac6a..3c0ef8d0f599b 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -527,6 +527,7 @@ EXPORT_SYMBOL_GPL(dma_resv_get_fences_unlocked);
>  /**
>   * dma_resv_get_singleton_unlocked - get a single fence for the dma_resv object
>   * @obj: the reservation object
> + * @extra: extra fence to add to the resulting array
>   * @result: resulting dma_fence
>   *
>   * Get a single fence representing all unsignaled fences in the dma_resv object
> @@ -536,7 +537,8 @@ EXPORT_SYMBOL_GPL(dma_resv_get_fences_unlocked);
>   * RETURNS
>   * Returns -NOMEM if allocations fail, zero otherwise.
>   */
> -struct dma_fence *dma_resv_get_singleton_unlocked(struct dma_resv *obj)
> +struct dma_fence *dma_resv_get_singleton_unlocked(struct dma_resv *obj,
> +						  struct dma_fence *extra)
>  {
>  	struct dma_fence *result, **resv_fences, *fence, *chain, **fences;
>  	struct dma_fence_array *array;
> @@ -547,7 +549,7 @@ struct dma_fence *dma_resv_get_singleton_unlocked(struct dma_resv *obj)
>  	if (err)
>  		return ERR_PTR(err);
>  
> -	if (num_resv_fences == 0)
> +	if (num_resv_fences == 0 && !extra)
>  		return NULL;
>  
>  	num_fences = 0;
> @@ -563,6 +565,16 @@ struct dma_fence *dma_resv_get_singleton_unlocked(struct dma_resv *obj)
>  		}
>  	}
>  
> +	if (extra) {
> +		dma_fence_deep_dive_for_each(fence, chain, j, extra) {
> +			if (dma_fence_is_signaled(fence))
> +				continue;
> +
> +			result = fence;
> +			++num_fences;
> +		}
> +	}
> +
>  	if (num_fences <= 1) {
>  		result = dma_fence_get(result);
>  		goto put_resv_fences;
> @@ -583,6 +595,13 @@ struct dma_fence *dma_resv_get_singleton_unlocked(struct dma_resv *obj)
>  		}
>  	}
>  
> +	if (extra) {
> +		dma_fence_deep_dive_for_each(fence, chain, j, extra) {
> +			if (dma_fence_is_signaled(fence))
> +				fences[num_fences++] = dma_fence_get(fence);
> +		}
> +	}
> +
>  	if (num_fences <= 1) {
>  		result = num_fences ? fences[0] : NULL;
>  		kfree(fences);
> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index c529ccee94bc5..156d989e95ab4 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -285,7 +285,8 @@ int dma_resv_get_fences_unlocked(struct dma_resv *obj,
>  
>  int dma_resv_copy_fences(struct dma_resv *dst, struct dma_resv *src);
>  
> -struct dma_fence *dma_resv_get_singleton_unlocked(struct dma_resv *obj);
> +struct dma_fence *dma_resv_get_singleton_unlocked(struct dma_resv *obj,
> +						  struct dma_fence *extra);
>  
>  long dma_resv_wait_timeout_unlocked(struct dma_resv *obj, bool wait_all, bool intr,
>  				    unsigned long timeout);
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
