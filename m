Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B822A3FB31C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 11:27:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30C4B89BF5;
	Mon, 30 Aug 2021 09:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8103E89CFA
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 09:27:08 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id u3so29628566ejz.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 02:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=RtnPlVulONVDV+UVg2SvJLd5fmwCNcSi6CcbzmXb3mI=;
 b=h0YdP5UQygOUHK+xPV+NQnU7hnr6OdQxLWLv8zRBLvjd3oViWX0sF5kCGUVSx3UxeC
 78DypP92IzQM9H7dkvcjcPp3qTeN2xpT4WFLfE/l/F+c8Cuo6KkGyC265dZjTVCYw1n0
 nboLRcFVmnJnHWIPM2H8NM0rPGpCwelO2jHLA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=RtnPlVulONVDV+UVg2SvJLd5fmwCNcSi6CcbzmXb3mI=;
 b=B3nqrYBr781PaOjE34O512t26mf3biTcNXNblWcxbqreLTr9yt83D9r0sGxJHBNEMw
 0wQMWbJCwePrlzuKkjLw8WEnjy07Y9ZkjJjBNwTZwWZggNCgh4HHfA8PgEsFyxhlE04b
 cjx1+KnM4bcu1xsE87LwA0SB/XvzcCFKKK6RCctiWKQHfG7EhNgRVX2AC7jxHsZCbP3C
 8aLcEjg3qE8SpYPeoleX5tCgiknEkM4T/xuXc1Nve63p6uBZjIOiHQKBM9QfKfLfA8BP
 hfO03DXrlUUTk9GW2YtJB+MzxlXhhY5F8CWXkP8XKC0QX6pHWVvNZ0UIhE60ZQkce2bR
 KnwQ==
X-Gm-Message-State: AOAM53165015wF5QMHWsUceWtuYCbcP/8XfzWLqk7zC+HtcctygwsDdd
 247J1Tmc1s7j0cXTwwWt38CNOQ==
X-Google-Smtp-Source: ABdhPJxijEVwSk39YCAH+l0dMUtkXSSjtfjMR6J8TUT5yybpBH+fIxATEwRN7sBOmNQHGA1Va44heA==
X-Received: by 2002:a17:906:a18f:: with SMTP id
 s15mr23856566ejy.269.1630315626998; 
 Mon, 30 Aug 2021 02:27:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id se22sm6500335ejb.32.2021.08.30.02.27.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Aug 2021 02:27:06 -0700 (PDT)
Date: Mon, 30 Aug 2021 11:27:04 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Ben Skeggs <skeggsb@gmail.com>, Dave Airlie <airlied@gmail.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YSykaH9cNsV1jel7@phenom.ffwll.local>
References: <20210830074835.16596-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210830074835.16596-1-thomas.hellstrom@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/ttm: Fix ttm_bo_move_memcpy() for
 subclassed struct ttm_resource
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

On Mon, Aug 30, 2021 at 09:48:35AM +0200, Thomas Hellström wrote:
> The code was making a copy of a struct ttm_resource. However,
> recently the struct ttm_resources were allowed to be subclassed and
> also were allowed to be malloced, hence the driver could end up assuming
> the copy we handed it was subclassed and worse, the original could have
> been freed at this point.
> 
> Fix this by using the original struct ttm_resource before it is
> potentially freed in ttm_bo_move_sync_cleanup()
> 
> Reported-by: Ben Skeggs <skeggsb@gmail.com>
> Reported-by: Dave Airlie <airlied@gmail.com>
> Cc: Christian König <christian.koenig@amd.com>
> Fixes: 3bf3710e3718 ("drm/ttm: Add a generic TTM memcpy move for page-based iomem")
> Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>

This doesn't apply cleanly to drm-misc-next-fixes, do we need a backmerge
or something? Can you pls coordinate with Maarten and then also poke for a
pull request so this isn't stuck?

Also since 5.14 is released this needs cc: stable.
-Daniel

> ---
>  drivers/gpu/drm/ttm/ttm_bo_util.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_bo_util.c
> index 5c20d0541cc3..c893c3db2623 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> @@ -139,7 +139,6 @@ int ttm_bo_move_memcpy(struct ttm_buffer_object *bo,
>  	struct ttm_resource *src_mem = bo->resource;
>  	struct ttm_resource_manager *src_man =
>  		ttm_manager_type(bdev, src_mem->mem_type);
> -	struct ttm_resource src_copy = *src_mem;
>  	union {
>  		struct ttm_kmap_iter_tt tt;
>  		struct ttm_kmap_iter_linear_io io;
> @@ -173,11 +172,10 @@ int ttm_bo_move_memcpy(struct ttm_buffer_object *bo,
>  	if (!(clear && ttm && !(ttm->page_flags & TTM_PAGE_FLAG_ZERO_ALLOC)))
>  		ttm_move_memcpy(clear, dst_mem->num_pages, dst_iter, src_iter);
>  
> -	src_copy = *src_mem;
> +	if (!src_iter->ops->maps_tt)
> +		ttm_kmap_iter_linear_io_fini(&_src_iter.io, bdev, src_mem);
>  	ttm_bo_move_sync_cleanup(bo, dst_mem);
>  
> -	if (!src_iter->ops->maps_tt)
> -		ttm_kmap_iter_linear_io_fini(&_src_iter.io, bdev, &src_copy);
>  out_src_iter:
>  	if (!dst_iter->ops->maps_tt)
>  		ttm_kmap_iter_linear_io_fini(&_dst_iter.io, bdev, dst_mem);
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
