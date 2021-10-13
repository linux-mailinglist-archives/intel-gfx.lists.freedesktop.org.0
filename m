Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB28242C345
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 16:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1345C89F9F;
	Wed, 13 Oct 2021 14:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 860B8883A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 14:32:17 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id o20so9152406wro.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 07:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=iKQ96m1zzkQMuFL3fcXQPzaxnnE4DluBXjRvFkSR5wI=;
 b=ODf6itJ3fnWbDlharuS4Wj+1XeDkgwC8SSXHTy+CeDfYmS8y1a4+OuduJ3MChaifTP
 GgeKZkeLiaUbLvIOiC9S9XqAmkICJYYBhlnJYHE/QKU/OA30SExGMtA3ucg3zDbW//2+
 KcKkk1wVoLLSvWfWDVDOeUNBKIGDSsrz3/GoE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=iKQ96m1zzkQMuFL3fcXQPzaxnnE4DluBXjRvFkSR5wI=;
 b=OTz6+/nnkYyvzU2nfrW4Jm4Bf+ASEjc9rmAIuQG65dV7R/9rnl/XNLkLRLHw2VBxiF
 3A4w/HMBYgC2W46PVhfKX1nfvGzugN2RivBVCd2wTWVMyFBNWmMMnAHgDkanPpjpUwkA
 tQMO1JMiQaUuKjqBfohGT2HKEk1sWe4j92irvnSkcKWrXnRVoRlAyxGhLy/FrJZoDLje
 hkxpAclup2n9McTdsp8zN+VcMDWC8BQt0HwUaWjfFQulSsvrN2avJxQ3lovW84svrGo/
 ewJPVIbUP3o+QUgA6lY7YPnTDOcTp8/n0Wg6dcTI6v8qqxt+YHlsoQYnKRCibJiFkP5P
 QdmQ==
X-Gm-Message-State: AOAM531cphxTwaNuizi5Vvsob5FTmUkAC8yLG8v8IN/vSzNPzMkBnS19
 tQpPUVUAMipigoW9HxbiaQhn5g==
X-Google-Smtp-Source: ABdhPJxOOVUWtj4KaDAa/dBN+HmwBExqoN7dFMBZ9hrJ2SWC4H73/jm3/GoodLipJP6b1uo6WHOAGQ==
X-Received: by 2002:a7b:c114:: with SMTP id w20mr13006075wmi.143.1634135535984; 
 Wed, 13 Oct 2021 07:32:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b19sm5756585wmb.1.2021.10.13.07.32.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:32:15 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:32:13 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch, tvrtko.ursulin@linux.intel.com
Message-ID: <YWbt7cLOLDSQhkOV@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-29-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211005113742.1101-29-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 28/28] drm/etnaviv: replace
 dma_resv_get_excl_unlocked
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

On Tue, Oct 05, 2021 at 01:37:42PM +0200, Christian König wrote:
> We certainly hold the reservation lock here, no need for the RCU dance.
> 
> Signed-off-by: Christian König <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
> index 4dd7d9d541c0..7e17bc2b5df1 100644
> --- a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
> @@ -195,7 +195,7 @@ static int submit_fence_sync(struct etnaviv_gem_submit *submit)
>  			if (ret)
>  				return ret;
>  		} else {
> -			bo->excl = dma_resv_get_excl_unlocked(robj);

Maybe have that in the series to sunset dma_resv_get_excl_unlocked()? Just
so it makes a bit more sense from a motivation pov. Or explain that in the
commit message.

Anyway looks correct.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> +			bo->excl = dma_fence_get(dma_resv_excl_fence(robj));
>  		}
>  
>  	}
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
