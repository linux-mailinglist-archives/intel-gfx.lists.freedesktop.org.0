Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8A242C226
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 16:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D71A6EA0C;
	Wed, 13 Oct 2021 14:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FBFB6E0C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 14:07:49 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id r18so8856483wrg.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 07:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=MKxaZc1pgApmzpCUtsxcB625bqKcDpcD1a7kgFDuO2c=;
 b=L+k3W2pOKne4quT1JwDLgoYvBTDNcQO7CjmuZjq7JfRe+vfeIKBrKVplAhVpXWwuUa
 m50PhxWJ3zjFv8h5BW7Pe5vIfesh4gLNQbXQK1J+KKywDFrwP3zogV7U0QcHa2smoOZh
 bXCL/2qqYIwY+IrEwP/CBh9IGsi0ka4uPf54A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=MKxaZc1pgApmzpCUtsxcB625bqKcDpcD1a7kgFDuO2c=;
 b=5bfl/UuzIZnrW5Oa177dJk2OMYaCwtvPup5yb5OadpqpOOb/i33qyEsalcFT0xlwWH
 sU8Bi4V8WXAL6DX91RQfX+FoDNRdsIU8s69SJ95hkld6qXiwPXeP6u2vbAgmIP8CBw2d
 EVPZis/sNV6HuEss8OBbw3HKQE/VORzd1ahrKvGyBOzck6snN9BVt8FKwDNFoEVWGMlA
 eABG0vEX8P2YNSJ5Nc5N9Sk2KGd3wOsbADvNpGnSTk40I7BxM8HTPmmHo5c6jLLHIbaj
 KLNqZFFuLGbI5EwcNNWmnV+U2iQ3OegOga3c1vX+IeQfsP/IvpoCJE8vm+KkpTtTey3W
 +mHg==
X-Gm-Message-State: AOAM533nhEttN7+br8HMlUdIcrzO7fNSKONH/H0leAouxmF4shjn1ja/
 7B6RDHgPUTacYB32+TSy65Rvjw==
X-Google-Smtp-Source: ABdhPJwpY3GMpSXEeLezpKBdLRdIlDqC60mIwmphTOUCOalzhlFSIcORR+wr7zU2kxe9TM1Th2J1mg==
X-Received: by 2002:a1c:f302:: with SMTP id q2mr13407345wmq.56.1634134068132; 
 Wed, 13 Oct 2021 07:07:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r27sm13404433wrr.70.2021.10.13.07.07.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:07:47 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:07:45 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch, tvrtko.ursulin@linux.intel.com
Message-ID: <YWboMfLOIjl1l7tF@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-13-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211005113742.1101-13-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 12/28] drm/amdgpu: use new iterator in
 amdgpu_ttm_bo_eviction_valuable
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

On Tue, Oct 05, 2021 at 01:37:26PM +0200, Christian König wrote:
> Simplifying the code a bit.
> 
> Signed-off-by: Christian König <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> index e8d70b6e6737..722e3c9e8882 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> @@ -1345,10 +1345,9 @@ static bool amdgpu_ttm_bo_eviction_valuable(struct ttm_buffer_object *bo,
>  					    const struct ttm_place *place)
>  {
>  	unsigned long num_pages = bo->resource->num_pages;
> +	struct dma_resv_iter resv_cursor;
>  	struct amdgpu_res_cursor cursor;
> -	struct dma_resv_list *flist;
>  	struct dma_fence *f;
> -	int i;
>  
>  	/* Swapout? */
>  	if (bo->resource->mem_type == TTM_PL_SYSTEM)
> @@ -1362,14 +1361,9 @@ static bool amdgpu_ttm_bo_eviction_valuable(struct ttm_buffer_object *bo,
>  	 * If true, then return false as any KFD process needs all its BOs to
>  	 * be resident to run successfully
>  	 */
> -	flist = dma_resv_shared_list(bo->base.resv);
> -	if (flist) {
> -		for (i = 0; i < flist->shared_count; ++i) {
> -			f = rcu_dereference_protected(flist->shared[i],
> -				dma_resv_held(bo->base.resv));
> -			if (amdkfd_fence_check_mm(f, current->mm))
> -				return false;
> -		}
> +	dma_resv_for_each_fence(&resv_cursor, bo->base.resv, true, f) {

							    ^false?

At least I'm not seeing the code look at the exclusive fence here.
-Daniel

> +		if (amdkfd_fence_check_mm(f, current->mm))
> +			return false;
>  	}
>  
>  	switch (bo->resource->mem_type) {
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
