Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB58231EA6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 14:36:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4860D6E4E8;
	Wed, 29 Jul 2020 12:36:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24DEA6E4E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 12:36:13 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id 88so21473553wrh.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 05:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZLcwZPLbP+ZHMlpXtf/e+P4ovvxWowgaoiSfHWx6jSw=;
 b=ZXgYx4CmrxzlLhqBg1dvwVOBBf0lJ1GUoAEAmQpppe/3brpTppeUyVpaCClz1m9bha
 N75KcKsh0EhC60mLyKRnuGR5GGew8S5/AFkpxVE89llGfBbmC/Vcm9mp5nQVUUe5OMFe
 byPzHy7gn8Gs175l2Bqq5UTRz0yBxOucg8WwQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZLcwZPLbP+ZHMlpXtf/e+P4ovvxWowgaoiSfHWx6jSw=;
 b=p/bm1mNwZxeGaMcgcTXbBqRYWnW5tL3MfNPejXclyNjGjYWOXBn9dEPaZfxjQmZEU2
 9PKPINfr0oyWQVTLxxidVYxJ5iohE8biUZHf46Wq2DmS5rWs4pPywIIA8Hv6fmb+6lGq
 L2obGBUUj1W4XE4JPxdRJUPyQtiw+djBO65x1891zuWBWTpg0soFTo3jOImItJcpNAv+
 OG+vLDRFakLeZ8ASVXd0gcH+Z/RYDEJlJdcqqQc3zRd8JHKfz4dlaRaVOdYAYuyMPF+y
 UOKFobxtnorO8LY+/Zc+V2LoHWwxKTivoo9gJ4OO832piB9+vgY4CbPdYf9DN9DhPiiw
 +E1g==
X-Gm-Message-State: AOAM5325BMy4jeGfW4Fx5cJ4K8qeRMdahvcrWzfRz0hnR8cINNisEx4R
 lYaQ8gRDayVrrBWrt9McsdSQc9D9MpE=
X-Google-Smtp-Source: ABdhPJzdzpxb2VBV1UBJcT/Mfo8c9uB8BjT+f8eDNHkvELP95EEz2Y8VFkV4MYJ5E+1zV6v9DvOaqQ==
X-Received: by 2002:adf:f488:: with SMTP id l8mr28789156wro.123.1596026171809; 
 Wed, 29 Jul 2020 05:36:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u186sm4924419wmu.10.2020.07.29.05.36.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jul 2020 05:36:11 -0700 (PDT)
Date: Wed, 29 Jul 2020 14:36:09 +0200
From: daniel@ffwll.ch
To: 
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20200729123609.GL6419@phenom.ffwll.local>
References: <20200708131751.334457-1-lionel.g.landwerlin@intel.com>
 <20200708131751.334457-4-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200708131751.334457-4-lionel.g.landwerlin@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH v12 3/3] drm/i915: peel dma-fence-chains
 wait fences
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 08, 2020 at 04:17:51PM +0300, Lionel Landwerlin wrote:
> To allow faster engine to engine synchronization, peel the layer of
> dma-fence-chain to expose potential i915 fences so that the
> i915-request code can emit HW semaphore wait/signal operations in the
> ring which is faster than waking up the host to submit unblocked
> workloads after interrupt notification.
> 
> v2: Also deal with chains where the last node is not a dma-fence-chain
> 
> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 39 ++++++++++++++++++-
>  1 file changed, 38 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index d8814e637e71..3ffd95d1dc2c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2403,6 +2403,7 @@ await_fence_array(struct i915_execbuffer *eb)
>  
>  	for (n = 0; n < eb->n_fences; n++) {
>  		struct drm_syncobj *syncobj;
> +		struct dma_fence_chain *chain;
>  		struct dma_fence *fence;
>  		unsigned int flags;
>  
> @@ -2423,7 +2424,43 @@ await_fence_array(struct i915_execbuffer *eb)
>  				continue;
>  		}
>  
> -		err = i915_request_await_dma_fence(eb->request, fence);
> +		chain = to_dma_fence_chain(fence);
> +		if (chain) {
> +			struct dma_fence *iter;
> +
> +			/*
> +			 * If we're dealing with a dma-fence-chain, peel the
> +			 * chain by adding all of the unsignaled fences
> +			 * (dma_fence_chain_for_each does that for us) the
> +			 * chain points to.
> +			 *
> +			 * This enables us to identify waits on i915 fences
> +			 * and allows for faster engine-to-engine
> +			 * synchronization using HW semaphores.
> +			 */
> +			dma_fence_chain_for_each(iter, fence) {
> +				struct dma_fence_chain *iter_chain =
> +					to_dma_fence_chain(iter);
> +
> +				/*
> +				 * It is possible that the last item in the
> +				 * chain is not a dma_fence_chain.
> +				 */
> +				if (iter_chain) {
> +					err = i915_request_await_dma_fence(eb->request,
> +									   iter_chain->fence);
> +				} else {
> +					err = i915_request_await_dma_fence(eb->request, iter);

I'm kinda wondering whether there should be a limit to how deep we go
before we just give up and wait on the chain, since all we're doing here
(in the worst case at least) is rebuilding the chain.

But hey we can figure this out later on when it actually hurts ...

On the series:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +				}
> +				if (err < 0) {
> +					dma_fence_put(iter);
> +					break;
> +				}
> +			}
> +		} else {
> +			err = i915_request_await_dma_fence(eb->request, fence);
> +		}
> +
>  		dma_fence_put(fence);
>  		if (err < 0)
>  			return err;
> -- 
> 2.27.0
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
