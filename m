Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9129642C2A7
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 16:15:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55B826EA0F;
	Wed, 13 Oct 2021 14:15:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A3166EA0F
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 14:15:23 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id k7so8806744wrd.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 07:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=WfZtUnTgQXcuUIGw85OC0CUsD42sr1oPRAFFNuvZ6vU=;
 b=ExMubW21+4a97m5mSEFLHC9XE9MQ2rqhKXnFfUtb02KNCJ6frbMJapifImudEV85yE
 ZoSRmocQMD0h+MlCb+wna6t9fVtMP10RYA858x3kZZoI//0nLM9SWPKgo5N+WhoyqGqH
 HoAyDoNdNZagrHVtOf8MKVvQLwookmfLTFgtQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=WfZtUnTgQXcuUIGw85OC0CUsD42sr1oPRAFFNuvZ6vU=;
 b=LYJoREguNsEf2ktMlNxKh03XPctYlDJL9GdaT7PkYrfTlWJnL/8EfahDhByvbeniCu
 d1F3z4h38axuDEBvfoW5hkFHQ+p9PJZfKXuuy0a1jO+ZRRnff2Ru9J2wtwh3q5J2wbHy
 O+s0p2/u5YmKcFk3quDEOvQ3syakbdjgO8CERaDhUWUnxqKw9et5JaDvUkp27w2mVgsm
 CRmR2jW3IHXMQk7aN9AkuuKycFwjVOqpAJxSSA8lVjm9PMv027jCsDa38TO7tBs8/syC
 ic40z09EaUVkDqxquZSvVLvWkXsXUaf0NwCzlTnSHw4QQd/2qArVrzsUTbTLMmsm8pog
 1HVw==
X-Gm-Message-State: AOAM530+8JLES3/B6JkORwUJzif6XXzI++SmswSdt6l2qFbx+olPAwOA
 bhglyP3DYtMiF5COIDYJl70vOQ==
X-Google-Smtp-Source: ABdhPJxEdOAPir5NiPEsWYJ0b0z5FbQiLYs1r5nFHyg+GaXVx1ytCUeEH/1VyYHA7NvIhI+FT3AUsg==
X-Received: by 2002:adf:a78a:: with SMTP id j10mr40605280wrc.231.1634134519349; 
 Wed, 13 Oct 2021 07:15:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b190sm5491879wmd.25.2021.10.13.07.15.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:15:18 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:15:17 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch, tvrtko.ursulin@linux.intel.com
Message-ID: <YWbp9ewEovFMgsR+@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-16-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211005113742.1101-16-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 15/28] drm/radeon: use new iterator in
 radeon_sync_resv
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

On Tue, Oct 05, 2021 at 01:37:29PM +0200, Christian König wrote:
> Simplifying the code a bit.
> 
> Signed-off-by: Christian König <christian.koenig@amd.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/radeon/radeon_sync.c | 22 +++-------------------
>  1 file changed, 3 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/radeon/radeon_sync.c b/drivers/gpu/drm/radeon/radeon_sync.c
> index 9257b60144c4..b991ba1bcd51 100644
> --- a/drivers/gpu/drm/radeon/radeon_sync.c
> +++ b/drivers/gpu/drm/radeon/radeon_sync.c
> @@ -91,33 +91,17 @@ int radeon_sync_resv(struct radeon_device *rdev,
>  		     struct dma_resv *resv,
>  		     bool shared)
>  {
> -	struct dma_resv_list *flist;
> -	struct dma_fence *f;
> +	struct dma_resv_iter cursor;
>  	struct radeon_fence *fence;
> -	unsigned i;
> +	struct dma_fence *f;
>  	int r = 0;
>  
> -	/* always sync to the exclusive fence */
> -	f = dma_resv_excl_fence(resv);
> -	fence = f ? to_radeon_fence(f) : NULL;
> -	if (fence && fence->rdev == rdev)
> -		radeon_sync_fence(sync, fence);
> -	else if (f)
> -		r = dma_fence_wait(f, true);
> -
> -	flist = dma_resv_shared_list(resv);
> -	if (shared || !flist || r)
> -		return r;
> -
> -	for (i = 0; i < flist->shared_count; ++i) {
> -		f = rcu_dereference_protected(flist->shared[i],
> -					      dma_resv_held(resv));
> +	dma_resv_for_each_fence(&cursor, resv, shared, f) {
>  		fence = to_radeon_fence(f);
>  		if (fence && fence->rdev == rdev)
>  			radeon_sync_fence(sync, fence);
>  		else
>  			r = dma_fence_wait(f, true);
> -
>  		if (r)
>  			break;
>  	}
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
