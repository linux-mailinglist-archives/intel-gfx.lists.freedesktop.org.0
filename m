Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A2C42C2E9
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 16:23:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 665F86EA48;
	Wed, 13 Oct 2021 14:23:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3138B6EA37
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 14:23:19 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id k7so8889563wrd.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 07:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=aYg90o+vAlenz3v9nyvq6NbxIIAcYGj0FssSPUnAiFg=;
 b=AmfY+aim06wD3tQeVQ4yrNHsj6eRmGtBactGGzWNX03gCUGx7AKpu61USFaKTqN/q7
 FOjHZy9ZNWAvsNrvKsOkQrqW9vvIch+28PVCJfzqwDRug261C3wnd9aSFnrfzHGt/Ezm
 etYh27NJj9ZQuobiw9uGHoonUagrntoYUPFig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=aYg90o+vAlenz3v9nyvq6NbxIIAcYGj0FssSPUnAiFg=;
 b=d3dGqgP4m0oCSkf5Ic/bbOC7uNF2GCgoKZB33C5zeGZlprR5wgwYZ4WHIhQoAkrsI9
 /qz/GOmMkftebOB4HMOP0lFelVj6dnUMeOUOwirZshnI7nObGiA3LVnLvVqSYYNVFZRq
 AjVQPrvHwlenupRxqc9OlJqia/L1/irJBLo0B0rkduyipXQjdBYSkuLyge/mA5jIRMF0
 TYuJDR9N0N/vd6PqqaVQRISTnGBBgkt9zRtknxRq63acCiBHgC5N8ezXpNTtLMEMx58v
 suli7ExGCKVm05VTmtxUMfm+3S4UVLFP60XzvYSVYARJBa23kiIrr+pA/GzhrCt3KNPT
 88MA==
X-Gm-Message-State: AOAM531fp8042ODRmvcTTaTYvAHWWJ6jg0ESYap6zzzxOoGJ1jto0YV8
 FN1ivinJvR+y5n1Wlbc3LPRLMQ==
X-Google-Smtp-Source: ABdhPJxKy6Zj/ZXE+R74iOcucsIyIDxW/UMZ54YPO5tLJBzyQCV95JIsV7M6L+rta31Bylb41EG/pg==
X-Received: by 2002:a5d:6da5:: with SMTP id u5mr39299569wrs.436.1634134997373; 
 Wed, 13 Oct 2021 07:23:17 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i24sm5170720wml.26.2021.10.13.07.23.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:23:16 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:23:15 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch, tvrtko.ursulin@linux.intel.com
Message-ID: <YWbr0/ey1rCbb0Yi@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-25-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211005113742.1101-25-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 24/28] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb v2
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

On Tue, Oct 05, 2021 at 01:37:38PM +0200, Christian K�nig wrote:
> Makes the handling a bit more complex, but avoids the use of
> dma_resv_get_excl_unlocked().
> 
> v2: improve coding and documentation
> 
> Signed-off-by: Christian K�nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/drm_gem_atomic_helper.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_gem_atomic_helper.c b/drivers/gpu/drm/drm_gem_atomic_helper.c
> index e570398abd78..8534f78d4d6d 100644
> --- a/drivers/gpu/drm/drm_gem_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_gem_atomic_helper.c
> @@ -143,6 +143,7 @@
>   */
>  int drm_gem_plane_helper_prepare_fb(struct drm_plane *plane, struct drm_plane_state *state)
>  {
> +	struct dma_resv_iter cursor;
>  	struct drm_gem_object *obj;
>  	struct dma_fence *fence;
>  
> @@ -150,9 +151,17 @@ int drm_gem_plane_helper_prepare_fb(struct drm_plane *plane, struct drm_plane_st
>  		return 0;
>  
>  	obj = drm_gem_fb_get_obj(state->fb, 0);
> -	fence = dma_resv_get_excl_unlocked(obj->resv);
> -	drm_atomic_set_fence_for_plane(state, fence);
> +	dma_resv_iter_begin(&cursor, obj->resv, false);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> +		/* TODO: We only use the first write fence here and need to fix
> +		 * the drm_atomic_set_fence_for_plane() API to accept more than
> +		 * one. */

I'm confused, right now there is only one write fence. So no need to
iterate, and also no need to add a TODO. If/when we add more write fences
then I think this needs to be revisited, and ofc then we do need to update
the set_fence helpers to carry an entire array of fences.
-Daniel

> +		dma_fence_get(fence);
> +		break;
> +	}
> +	dma_resv_iter_end(&cursor);
>  
> +	drm_atomic_set_fence_for_plane(state, fence);
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(drm_gem_plane_helper_prepare_fb);
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
