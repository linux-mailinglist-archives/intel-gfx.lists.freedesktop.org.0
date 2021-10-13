Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A727A42C32E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 16:29:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E74E66EA62;
	Wed, 13 Oct 2021 14:29:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 899CD6EA4E
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 14:29:47 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id r18so9086548wrg.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 07:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=57KdpWjM6FQj1/ZWMB9uRAMFCr8+sc1UKZVxLCrKqQA=;
 b=fuUKOCG6VKrPu+jFf/OspZpPDw9h7as1LUinC2Id+eX3+6EfH1KxoH8pGPh/zChA4b
 Nz4LNmIua30JsScEBiilD8mppPkM0Lc4IrZvN4bniJaijXGMcQNP5WkabQW2YagFugWI
 Qfln8O6zRTkNHiT6wsElGKTzoV/rv+ML9PSVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=57KdpWjM6FQj1/ZWMB9uRAMFCr8+sc1UKZVxLCrKqQA=;
 b=mKSP4BvJSacAcPwSIJbhCxY/7od3tmWoWdxajgv7CMdFHs9GPAOoWrehkEaUuCS1Ha
 l9Rz/8SNDVAtD4xxpHUPNENdeRO/5OcVG2KSIRMbjHLFbMDJGz7LhlHxW3UkOlpgOkbk
 vGlE+F1TFUFcGTZjI08dOLVKJX/X0YNPx5lsWDlCV4XpSGexf/yv6h6fEr56B+aw1MhE
 TcASKFOx8AXZTSQSx33Gm0NhXzcFPb5CEVnQz0vP8Z3tvzLeX4aqPTrkcwkIiKk1cgHh
 ImuYwsWOeB8K+IOvxaVZejkA7ipcoVL1nqnTIy6g1i1548UUiNYXL2wGjt+NGUk4AgaY
 GlTQ==
X-Gm-Message-State: AOAM533MuU+V38sQ1tkrFIy/R0uhtgiABbvFCRSuXLD+ZTAvMYAk5C7x
 k+a0b7XT2EonUf60VpnnCbXwFw==
X-Google-Smtp-Source: ABdhPJwZvEFu8uN46XH+qqDJB9CUkoPNMzMIIZQcakbI7uBahduwwJFhFv/Vfy0iH9bKYacrjDePVg==
X-Received: by 2002:adf:b1c7:: with SMTP id r7mr40626710wra.392.1634135386079; 
 Wed, 13 Oct 2021 07:29:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p25sm5369066wma.2.2021.10.13.07.29.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:29:45 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:29:43 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch, tvrtko.ursulin@linux.intel.com
Message-ID: <YWbtV2ZVHg7n1xpm@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-27-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211005113742.1101-27-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 26/28] drm/nouveau: use the new interator in
 nv50_wndw_prepare_fb
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

On Tue, Oct 05, 2021 at 01:37:40PM +0200, Christian König wrote:
> Makes the handling a bit more complex, but avoids the use of
> dma_resv_get_excl_unlocked().
> 
> Signed-off-by: Christian König <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/nouveau/dispnv50/wndw.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/nouveau/dispnv50/wndw.c b/drivers/gpu/drm/nouveau/dispnv50/wndw.c
> index 8d048bacd6f0..30712a681e2a 100644
> --- a/drivers/gpu/drm/nouveau/dispnv50/wndw.c
> +++ b/drivers/gpu/drm/nouveau/dispnv50/wndw.c
> @@ -539,6 +539,8 @@ nv50_wndw_prepare_fb(struct drm_plane *plane, struct drm_plane_state *state)
>  	struct nouveau_bo *nvbo;
>  	struct nv50_head_atom *asyh;
>  	struct nv50_wndw_ctxdma *ctxdma;
> +	struct dma_resv_iter cursor;
> +	struct dma_fence *fence;
>  	int ret;
>  
>  	NV_ATOMIC(drm, "%s prepare: %p\n", plane->name, fb);
> @@ -561,7 +563,13 @@ nv50_wndw_prepare_fb(struct drm_plane *plane, struct drm_plane_state *state)
>  			asyw->image.handle[0] = ctxdma->object.handle;
>  	}
>  
> -	asyw->state.fence = dma_resv_get_excl_unlocked(nvbo->bo.base.resv);
> +	dma_resv_iter_begin(&cursor, nvbo->bo.base.resv, false);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> +		/* TODO: We only use the first writer here */

Same thing as with the atomic core helper. This is actually broken,
because for atomic we really do _not_ want to wait for any shared fences.
Which this will do, if there's no exclusive fence attached.

So upgrading my general concern on this and the atomic helper patch to a
reject, since I think it's broken.
-Daniel

> +		asyw->state.fence = dma_fence_get(fence);
> +		break;
> +	}
> +	dma_resv_iter_end(&cursor);
>  	asyw->image.offset[0] = nvbo->offset;
>  
>  	if (wndw->func->prepare) {
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
