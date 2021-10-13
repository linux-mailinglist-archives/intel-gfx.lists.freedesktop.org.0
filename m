Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A461342C339
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 16:31:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A954F6EA6C;
	Wed, 13 Oct 2021 14:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 023606EA53
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 14:31:07 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id t2so9075122wrb.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 07:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=6tq8Smct1MJoJumDXNBJuUP3GtNG4JxmFE/qpsP7bjw=;
 b=KiU3YeLJZ7sb9UTPffXi6zuNo62/3TTWlotxFoCAMiu0+ROMX9Dl38qmvsoL1azPf1
 IkllaVifg/UKOODiAIbyBDf+Hlxcyeg2oTU7tFcxqjZ041jbPxDy6wV+xnKDQE2y8vAn
 13B7F5k78sP5L8HU6C0lIsUBW2Wkg4vxHi/Kw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=6tq8Smct1MJoJumDXNBJuUP3GtNG4JxmFE/qpsP7bjw=;
 b=m+NS5xRruy1kc5kOSmmvnHG0Lzvh/nphvMv/2yf9aB4p5ZjmzR48J6X1833lZnEW1+
 MwwWREwqEHoFzxRQoDzsWXf02ylfCJaBYiYGpEdM5kJsDWSUl4xNpKw93yUhcSW1wgS+
 riezCgGHsN+nAiXeZE54qeWfY7+EsuXTd4McU0uIIrvTF1VRkl6khmDxYj8EQ1C5v06/
 ipWU+xIY4cIge+A8I3KCfpECqY6jICRhRGx6OyZZNyjhtWiTbnpw/Co2rWhjlhVq5NL4
 7+2G2G7hnFWFn9kPpEiOjAk4dBEKQ6VOnICL5QyzrpLINYIL32yJ9m+O566gzLQk91US
 3K+Q==
X-Gm-Message-State: AOAM530LAZNEaFQgNksmNA54EqRah4B4SpOaneHOJvf6s4/ukzUVttom
 cz0SANPK6gvuHycQFHuvsN9N2Q==
X-Google-Smtp-Source: ABdhPJy3Tc+8RM6gjALdeDYn0+OEHx7+hZmSpzgoaXo+0bD0SJuiR90J8Wo5ZozKTZynXWI53KX1iQ==
X-Received: by 2002:a5d:58ec:: with SMTP id f12mr40034247wrd.24.1634135465534; 
 Wed, 13 Oct 2021 07:31:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l124sm5795580wml.8.2021.10.13.07.31.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:31:05 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:31:03 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch, tvrtko.ursulin@linux.intel.com
Message-ID: <YWbtpxmI1BAtRvey@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-28-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211005113742.1101-28-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 27/28] drm/etnaviv: use new iterator in
 etnaviv_gem_describe
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

On Tue, Oct 05, 2021 at 01:37:41PM +0200, Christian König wrote:
> Instead of hand rolling the logic.
> 
> Signed-off-by: Christian König <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/etnaviv/etnaviv_gem.c | 31 ++++++++++-----------------
>  1 file changed, 11 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem.c b/drivers/gpu/drm/etnaviv/etnaviv_gem.c
> index 8f1b5af47dd6..0eeb33de2ff4 100644
> --- a/drivers/gpu/drm/etnaviv/etnaviv_gem.c
> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gem.c
> @@ -428,19 +428,17 @@ int etnaviv_gem_wait_bo(struct etnaviv_gpu *gpu, struct drm_gem_object *obj,
>  static void etnaviv_gem_describe_fence(struct dma_fence *fence,
>  	const char *type, struct seq_file *m)
>  {
> -	if (!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))

Yay for removing open-coded tests like this. Drivers really should have no
business digging around in fence->flags (i915 is terrible in this regard
unfortunately).

> -		seq_printf(m, "\t%9s: %s %s seq %llu\n",
> -			   type,
> -			   fence->ops->get_driver_name(fence),
> -			   fence->ops->get_timeline_name(fence),
> -			   fence->seqno);
> +	seq_printf(m, "\t%9s: %s %s seq %llu\n", type,
> +		   fence->ops->get_driver_name(fence),
> +		   fence->ops->get_timeline_name(fence),
> +		   fence->seqno);
>  }
>  
>  static void etnaviv_gem_describe(struct drm_gem_object *obj, struct seq_file *m)
>  {
>  	struct etnaviv_gem_object *etnaviv_obj = to_etnaviv_bo(obj);
>  	struct dma_resv *robj = obj->resv;
> -	struct dma_resv_list *fobj;
> +	struct dma_resv_iter cursor;
>  	struct dma_fence *fence;
>  	unsigned long off = drm_vma_node_start(&obj->vma_node);
>  
> @@ -449,21 +447,14 @@ static void etnaviv_gem_describe(struct drm_gem_object *obj, struct seq_file *m)
>  			obj->name, kref_read(&obj->refcount),
>  			off, etnaviv_obj->vaddr, obj->size);
>  
> -	rcu_read_lock();
> -	fobj = dma_resv_shared_list(robj);
> -	if (fobj) {
> -		unsigned int i, shared_count = fobj->shared_count;
> -
> -		for (i = 0; i < shared_count; i++) {
> -			fence = rcu_dereference(fobj->shared[i]);
> +	dma_resv_iter_begin(&cursor, robj, true);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> +		if (dma_resv_iter_is_exclusive(&cursor))
> +			etnaviv_gem_describe_fence(fence, "Exclusive", m);
> +		else
>  			etnaviv_gem_describe_fence(fence, "Shared", m);
> -		}
>  	}
> -
> -	fence = dma_resv_excl_fence(robj);
> -	if (fence)
> -		etnaviv_gem_describe_fence(fence, "Exclusive", m);
> -	rcu_read_unlock();
> +	dma_resv_iter_end(&cursor);

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Please make sure it compiles on arm before pushing :-)

>  }
>  
>  void etnaviv_gem_describe_objects(struct etnaviv_drm_private *priv,
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
