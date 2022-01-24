Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E38A49842E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 17:03:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36D0810E2E0;
	Mon, 24 Jan 2022 16:03:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C57F410E2E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 16:03:53 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id j2so22509592ejk.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 08:03:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=hHD1I6HBwWXdmu99NOtKXptCdvMp508sRo/7M3HfYGs=;
 b=Z+EuI9Pi5ZDJTsvU0GJbe6u9iQbz09QiMO9lztGoX794vCmEhRU6hlhU9YSGbtQE5j
 NSUsu2eCWgf+isH6LuoPiSSQlDOGV9ZfIbVVkpO+elQEUlHtqHS1E0OFBq7QUfQ0Nz6s
 Qy0ENSro1a5UtnAQAsHkl/PgskYfs0fK29Dis=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=hHD1I6HBwWXdmu99NOtKXptCdvMp508sRo/7M3HfYGs=;
 b=aqVomyQouMXkazznVAfF9GbOv1fuKcuDKxEVhB50nMPeENKQZSYZxXmryqd/tqtH1h
 Ix2GXKPz5EK3UlASqwQbsG4UgsZwGLL4K4+Wrj0Yyzo63KSR12Y7Pt5IXGXQmMzOTSbG
 pLZQRbz9i9BEPWbp8iozHLhXu68tON8x/B7jzas1NQZk3ReedLtrIR2yzsf5d5xQmGae
 zuMScvJbjdcCrDQg5hXLPt3gSHAEX1GDznvvdnu+M7vmL/z7XHqsEKRvGY9QCFgDTBKm
 DyU2hbLaj9lOHRhfQoPAdtVt7bXyhd3Y/QCLyVW21VvYXRpXFIgzA4lGphTbRDg8SuMr
 1urA==
X-Gm-Message-State: AOAM533rbHe0U0m+b+p6nbe8aIBWhQIUF/P3AlXNfHvVnQpypWQ4QHY0
 25TGNIFMB2kfF0yFeBbfB8qlMg==
X-Google-Smtp-Source: ABdhPJxdVfkKMEYbXujqgWUpyR3+7qh2oP6uKoyQ37sTd705e0vRoEIcpmauPwpBhopTpK2j9FowlQ==
X-Received: by 2002:a17:906:3089:: with SMTP id
 9mr12877415ejv.97.1643040232290; 
 Mon, 24 Jan 2022 08:03:52 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p21sm5051250ejj.156.2022.01.24.08.03.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Jan 2022 08:03:51 -0800 (PST)
Date: Mon, 24 Jan 2022 17:03:50 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: ira.weiny@intel.com
Message-ID: <Ye7N5ZrmVjOBo1RG@phenom.ffwll.local>
Mail-Followup-To: ira.weiny@intel.com, David Airlie <airlied@linux.ie>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org
References: <20220124015409.807587-1-ira.weiny@intel.com>
 <20220124015409.807587-4-ira.weiny@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220124015409.807587-4-ira.weiny@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH V2 3/7] drm/gma: Remove calls to kmap()
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
Cc: David Airlie <airlied@linux.ie>, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Jan 23, 2022 at 05:54:05PM -0800, ira.weiny@intel.com wrote:
> From: Ira Weiny <ira.weiny@intel.com>
> 
> kmap() is being deprecated and these instances are easy to convert to
> kmap_local_page().
> 
> Furthermore, in gma_crtc_cursor_set() use the memcpy_from_page() helper
> instead of an open coded use of kmap_local_page().
> 
> Signed-off-by: Ira Weiny <ira.weiny@intel.com>

Applied to drm-misc-next, the others should all have full time maintainers
to make sure the patches land. Pls holler if not.

Thanks, Daniel

> ---
>  drivers/gpu/drm/gma500/gma_display.c | 6 ++----
>  drivers/gpu/drm/gma500/mmu.c         | 8 ++++----
>  2 files changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/gma500/gma_display.c b/drivers/gpu/drm/gma500/gma_display.c
> index 99da3118131a..60ba7de59139 100644
> --- a/drivers/gpu/drm/gma500/gma_display.c
> +++ b/drivers/gpu/drm/gma500/gma_display.c
> @@ -335,7 +335,7 @@ int gma_crtc_cursor_set(struct drm_crtc *crtc,
>  	struct psb_gem_object *pobj;
>  	struct psb_gem_object *cursor_pobj = gma_crtc->cursor_pobj;
>  	struct drm_gem_object *obj;
> -	void *tmp_dst, *tmp_src;
> +	void *tmp_dst;
>  	int ret = 0, i, cursor_pages;
>  
>  	/* If we didn't get a handle then turn the cursor off */
> @@ -400,9 +400,7 @@ int gma_crtc_cursor_set(struct drm_crtc *crtc,
>  		/* Copy the cursor to cursor mem */
>  		tmp_dst = dev_priv->vram_addr + cursor_pobj->offset;
>  		for (i = 0; i < cursor_pages; i++) {
> -			tmp_src = kmap(pobj->pages[i]);
> -			memcpy(tmp_dst, tmp_src, PAGE_SIZE);
> -			kunmap(pobj->pages[i]);
> +			memcpy_from_page(tmp_dst, pobj->pages[i], 0, PAGE_SIZE);
>  			tmp_dst += PAGE_SIZE;
>  		}
>  
> diff --git a/drivers/gpu/drm/gma500/mmu.c b/drivers/gpu/drm/gma500/mmu.c
> index fe9ace2a7967..a70b01ccdf70 100644
> --- a/drivers/gpu/drm/gma500/mmu.c
> +++ b/drivers/gpu/drm/gma500/mmu.c
> @@ -184,17 +184,17 @@ struct psb_mmu_pd *psb_mmu_alloc_pd(struct psb_mmu_driver *driver,
>  		pd->invalid_pte = 0;
>  	}
>  
> -	v = kmap(pd->dummy_pt);
> +	v = kmap_local_page(pd->dummy_pt);
>  	for (i = 0; i < (PAGE_SIZE / sizeof(uint32_t)); ++i)
>  		v[i] = pd->invalid_pte;
>  
> -	kunmap(pd->dummy_pt);
> +	kunmap_local(v);
>  
> -	v = kmap(pd->p);
> +	v = kmap_local_page(pd->p);
>  	for (i = 0; i < (PAGE_SIZE / sizeof(uint32_t)); ++i)
>  		v[i] = pd->invalid_pde;
>  
> -	kunmap(pd->p);
> +	kunmap_local(v);
>  
>  	clear_page(kmap(pd->dummy_page));
>  	kunmap(pd->dummy_page);
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
