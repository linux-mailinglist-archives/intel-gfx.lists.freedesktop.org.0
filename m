Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C2A4EA997
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 10:48:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50BA610E7C4;
	Tue, 29 Mar 2022 08:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B265010E7BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 08:48:13 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id r7so22605457wrc.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 01:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=wV/zkilnqdFrqQKJ4JOwa7kKyc//0tE3STDLU5WF3qc=;
 b=OuYZ6vtK2M4DG2+DY+jnQFbxcz0dEGjyJBrIsInABVbuKV6BbWRnxDKLkJhGe5zpXH
 pKheIMnEHKkyxXVBQqelEiZ84T+5Ca3CBm79FPwSqf+PZS/RGXSCcWAQEku77RIduFES
 oiqkvSp4a8hIY02oPqa0uAhYyFvXdWttnvMdM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=wV/zkilnqdFrqQKJ4JOwa7kKyc//0tE3STDLU5WF3qc=;
 b=I4b7XOo+UmZoNVs22uVnagwmpQEPU2pmr4BytTD5pg7gUGOh1cnuDBg+elMje+myon
 h9kTb6usynCTxwGJCS3x3qwzMHBkAy41gHT3QUipYZvKf/g3Xo08mvySQF8Irjp7LiPE
 aFgoHlgM9Hy6ez6RJeIXW3AYeKcFbyOXs7fiej9d/f9CnHxekUVZ0k4Bv9nMlJYC/KTe
 urxroXXDwbU5dsZa3I2hoNxADkI6OrTVNiz1CvSkHpemkvbwe31l/wKgKYQRkufbivnH
 ZgAxpVtXVR1lHUDieMm2rdIJ/KPjT2r9u74j5jLAUmrs24kXOpdKrmx2DNdiHi0DfQ3V
 UzWw==
X-Gm-Message-State: AOAM532fSaOiOFnvQRCIwSAfctvQXerm4vLPfXDTJ70OviXXohoXLwtu
 2bWi3UPmO0ga3sb7gaUlBDx9Cw==
X-Google-Smtp-Source: ABdhPJzsef3n0+iH0vZE1Z/Q44owreRxus91uDLsKNCtdrlcsyprP/STCZVm2Q3lBDi6MKJ5/4vGyA==
X-Received: by 2002:a5d:59a2:0:b0:204:20d9:a5b9 with SMTP id
 p2-20020a5d59a2000000b0020420d9a5b9mr28725261wrr.560.1648543692293; 
 Tue, 29 Mar 2022 01:48:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 b15-20020a05600018af00b002057c72d45fsm17762974wri.77.2022.03.29.01.48.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 01:48:11 -0700 (PDT)
Date: Tue, 29 Mar 2022 10:48:10 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YkLHypwNnLd+qA4H@phenom.ffwll.local>
References: <20220329070001.134180-1-christian.koenig@amd.com>
 <20220329070001.134180-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220329070001.134180-2-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/2] dma-buf: handle empty dma_fence_arrays
 gracefully
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 29, 2022 at 09:00:01AM +0200, Christian K�nig wrote:
> A bug inside the new sync-file merge code created empty dma_fence_array instances.
> 
> Warn about that and handle those without crashing.
> 
> Signed-off-by: Christian K�nig <christian.koenig@amd.com>

> ---
>  drivers/dma-buf/dma-fence-array.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/dma-buf/dma-fence-array.c b/drivers/dma-buf/dma-fence-array.c
> index 52b85d292383..5c8a7084577b 100644
> --- a/drivers/dma-buf/dma-fence-array.c
> +++ b/drivers/dma-buf/dma-fence-array.c
> @@ -159,6 +159,8 @@ struct dma_fence_array *dma_fence_array_create(int num_fences,
>  	struct dma_fence_array *array;
>  	size_t size = sizeof(*array);
>  
> +	WARN_ON(!num_fences || !fences);

WARN_ON and then dying randomly is kinda not nice, I'd wrap this in an

if (WARN_ON)
	return NULL;

with that: Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +
>  	/* Allocate the callback structures behind the array. */
>  	size += num_fences * sizeof(struct dma_fence_array_cb);
>  	array = kzalloc(size, GFP_KERNEL);
> @@ -231,6 +233,9 @@ struct dma_fence *dma_fence_array_first(struct dma_fence *head)
>  	if (!array)
>  		return head;
>  
> +	if (!array->num_fences)
> +		return NULL;
> +
>  	return array->fences[0];
>  }
>  EXPORT_SYMBOL(dma_fence_array_first);
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
