Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7A46DD734
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 11:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF22510E1AD;
	Tue, 11 Apr 2023 09:51:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A28D10E0E8
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 09:51:42 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id
 ffacd0b85a97d-2ef2d5c92f5so600979f8f.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 02:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1681206700;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=cO/KbpIpwG39XoaJQMFDB9EcjYRpPuUFygrQZzwo498=;
 b=Ar+3zNTy/YEqp2q2jjaKYUpiRb+GV7+cozuuhAcCv94ectOKmU3rgOrZM1G8lqbgzp
 5TNNcSxBnIMxrpAmW/Q4DOi+ytODvW7TeJ5UDjCOFWNYSC+gWyPC//cCN+s4xWi0EWmw
 rPr1ekpaY05yE6j2cH6VpiIvntkdLJgJv/1VU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681206700;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cO/KbpIpwG39XoaJQMFDB9EcjYRpPuUFygrQZzwo498=;
 b=sOe7dWJhbSCOOGjMK5I9PNDtXv51g7KRR4e7/DeRJ3sHsmdpLwWH2FCE+KOSQMffwG
 8nYtFX7TChCdVAfu714Cj1Za2kFTk0wOFcGMcEdeXI9gj3RqVBYJJKx7zoAMzBKZd9bh
 CslYdJkng8uIlZ0H89brUHmMzSZNloq203xlHu4cSnxIIpLq3VG352WF27NojFLlQ6n1
 hElym48cO0O2D8/p0dghdr3kAq2rv+UWTpQ/Dqml57N56c2nqa6TdR4euUNXthu56yC3
 GPCmA4/GT02TCdi7mGNVU53m+GHf+AVWp+RsrbOCqymScRf51DYeXDMzwvs7VxWAVQhM
 erew==
X-Gm-Message-State: AAQBX9diepVMNy9RzW0T8EdgFu1uuh09YEvytQfWKGsT7yJU2ZtdZhIJ
 8w/czEHob4NwyLmcx+CTqPjHsQ==
X-Google-Smtp-Source: AKy350aK8PKEPDlC/ZHdSCg2DHo8/4t5TJKNYcE9yTq6R4FE18ucIwO3/kSZKC6AqbbDd1syDZ/0aA==
X-Received: by 2002:a5d:54c9:0:b0:2e4:c9ac:c492 with SMTP id
 x9-20020a5d54c9000000b002e4c9acc492mr6345716wrv.1.1681206700577; 
 Tue, 11 Apr 2023 02:51:40 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 y8-20020adfee08000000b002c5a1bd5280sm14047952wrn.95.2023.04.11.02.51.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Apr 2023 02:51:40 -0700 (PDT)
Date: Tue, 11 Apr 2023 11:51:38 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <ZDUtqsNtXcU4W3O6@phenom.ffwll.local>
References: <20230404200650.11043-1-thomas.hellstrom@linux.intel.com>
 <20230404200650.11043-3-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230404200650.11043-3-thomas.hellstrom@linux.intel.com>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH RESEND v3 2/3] drm/ttm: Reduce the number of
 used allocation orders for TTM pages
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 04, 2023 at 10:06:49PM +0200, Thomas Hellström wrote:
> When swapping out, we will split multi-order pages both in order to
> move them to the swap-cache and to be able to return memory to the
> swap cache as soon as possible on a page-by-page basis.
> Reduce the page max order to the system PMD size, as we can then be nicer
> to the system and avoid splitting gigantic pages.
> 
> Looking forward to when we might be able to swap out PMD size folios
> without splitting, this will also be a benefit.
> 
> v2:
> - Include all orders up to the PMD size (Christian König)
> v3:
> - Avoid compilation errors for architectures with special PFN_SHIFTs
> 
> Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Reviewed-by: Christian König <christian.koenig@amd.com>

Apparently this fails on ppc build testing. Please supply build fix asap
(or I guess we need to revert). I'm kinda not clear why this only showed
up when I merged the drm-misc-next pr into drm-next ...
-Daniel

> ---
>  drivers/gpu/drm/ttm/ttm_pool.c | 30 +++++++++++++++++++-----------
>  1 file changed, 19 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/ttm/ttm_pool.c b/drivers/gpu/drm/ttm/ttm_pool.c
> index dfce896c4bae..18c342a919a2 100644
> --- a/drivers/gpu/drm/ttm/ttm_pool.c
> +++ b/drivers/gpu/drm/ttm/ttm_pool.c
> @@ -47,6 +47,11 @@
>  
>  #include "ttm_module.h"
>  
> +#define TTM_MAX_ORDER (PMD_SHIFT - PAGE_SHIFT)
> +#define __TTM_DIM_ORDER (TTM_MAX_ORDER + 1)
> +/* Some architectures have a weird PMD_SHIFT */
> +#define TTM_DIM_ORDER (__TTM_DIM_ORDER <= MAX_ORDER ? __TTM_DIM_ORDER : MAX_ORDER)
> +
>  /**
>   * struct ttm_pool_dma - Helper object for coherent DMA mappings
>   *
> @@ -65,11 +70,11 @@ module_param(page_pool_size, ulong, 0644);
>  
>  static atomic_long_t allocated_pages;
>  
> -static struct ttm_pool_type global_write_combined[MAX_ORDER];
> -static struct ttm_pool_type global_uncached[MAX_ORDER];
> +static struct ttm_pool_type global_write_combined[TTM_DIM_ORDER];
> +static struct ttm_pool_type global_uncached[TTM_DIM_ORDER];
>  
> -static struct ttm_pool_type global_dma32_write_combined[MAX_ORDER];
> -static struct ttm_pool_type global_dma32_uncached[MAX_ORDER];
> +static struct ttm_pool_type global_dma32_write_combined[TTM_DIM_ORDER];
> +static struct ttm_pool_type global_dma32_uncached[TTM_DIM_ORDER];
>  
>  static spinlock_t shrinker_lock;
>  static struct list_head shrinker_list;
> @@ -444,7 +449,7 @@ int ttm_pool_alloc(struct ttm_pool *pool, struct ttm_tt *tt,
>  	else
>  		gfp_flags |= GFP_HIGHUSER;
>  
> -	for (order = min_t(unsigned int, MAX_ORDER - 1, __fls(num_pages));
> +	for (order = min_t(unsigned int, TTM_MAX_ORDER, __fls(num_pages));
>  	     num_pages;
>  	     order = min_t(unsigned int, order, __fls(num_pages))) {
>  		struct ttm_pool_type *pt;
> @@ -563,7 +568,7 @@ void ttm_pool_init(struct ttm_pool *pool, struct device *dev,
>  
>  	if (use_dma_alloc) {
>  		for (i = 0; i < TTM_NUM_CACHING_TYPES; ++i)
> -			for (j = 0; j < MAX_ORDER; ++j)
> +			for (j = 0; j < TTM_DIM_ORDER; ++j)
>  				ttm_pool_type_init(&pool->caching[i].orders[j],
>  						   pool, i, j);
>  	}
> @@ -583,7 +588,7 @@ void ttm_pool_fini(struct ttm_pool *pool)
>  
>  	if (pool->use_dma_alloc) {
>  		for (i = 0; i < TTM_NUM_CACHING_TYPES; ++i)
> -			for (j = 0; j < MAX_ORDER; ++j)
> +			for (j = 0; j < TTM_DIM_ORDER; ++j)
>  				ttm_pool_type_fini(&pool->caching[i].orders[j]);
>  	}
>  
> @@ -637,7 +642,7 @@ static void ttm_pool_debugfs_header(struct seq_file *m)
>  	unsigned int i;
>  
>  	seq_puts(m, "\t ");
> -	for (i = 0; i < MAX_ORDER; ++i)
> +	for (i = 0; i < TTM_DIM_ORDER; ++i)
>  		seq_printf(m, " ---%2u---", i);
>  	seq_puts(m, "\n");
>  }
> @@ -648,7 +653,7 @@ static void ttm_pool_debugfs_orders(struct ttm_pool_type *pt,
>  {
>  	unsigned int i;
>  
> -	for (i = 0; i < MAX_ORDER; ++i)
> +	for (i = 0; i < TTM_DIM_ORDER; ++i)
>  		seq_printf(m, " %8u", ttm_pool_type_count(&pt[i]));
>  	seq_puts(m, "\n");
>  }
> @@ -751,13 +756,16 @@ int ttm_pool_mgr_init(unsigned long num_pages)
>  {
>  	unsigned int i;
>  
> +	BUILD_BUG_ON(TTM_DIM_ORDER > MAX_ORDER);
> +	BUILD_BUG_ON(TTM_DIM_ORDER < 1);
> +
>  	if (!page_pool_size)
>  		page_pool_size = num_pages;
>  
>  	spin_lock_init(&shrinker_lock);
>  	INIT_LIST_HEAD(&shrinker_list);
>  
> -	for (i = 0; i < MAX_ORDER; ++i) {
> +	for (i = 0; i < TTM_DIM_ORDER; ++i) {
>  		ttm_pool_type_init(&global_write_combined[i], NULL,
>  				   ttm_write_combined, i);
>  		ttm_pool_type_init(&global_uncached[i], NULL, ttm_uncached, i);
> @@ -790,7 +798,7 @@ void ttm_pool_mgr_fini(void)
>  {
>  	unsigned int i;
>  
> -	for (i = 0; i < MAX_ORDER; ++i) {
> +	for (i = 0; i < TTM_DIM_ORDER; ++i) {
>  		ttm_pool_type_fini(&global_write_combined[i]);
>  		ttm_pool_type_fini(&global_uncached[i]);
>  
> -- 
> 2.39.2
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
