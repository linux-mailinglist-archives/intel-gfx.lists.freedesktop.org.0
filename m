Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFBF3CFBEB
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 16:22:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDDBB6E400;
	Tue, 20 Jul 2021 14:22:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC1216E400
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 14:22:21 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id a13so26180476wrf.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 07:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=jxN9ChWomhzAE38K8djviogfBE8vle1UQBknCPwc6vk=;
 b=eqDRRAxd+gGq7L7yJMxy1lQNkUi9vunl8inblnMLaK+44Po8m6tVXhAyiHSkiD41y5
 7Yz4P02qsuyyiRJonN+bQZ9LN/rTMuB1y8Z4rRNjQF8a+xMUI6TKhVXZ5Qt1e5sjJsOv
 hSR0R75a3CKZlhKrTKufNAhHb8IH9A7B3bmys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jxN9ChWomhzAE38K8djviogfBE8vle1UQBknCPwc6vk=;
 b=smJArLiCiuuIZsnSEVg0sYUt15sadt9xOuKb9+fKSNO+drbqvNb4abuRJZCO7gfoud
 gU8nby5++WrCE4NOSqhWcaNzUyAlPdw0RAIpdbCNL/wuBd6uXVS9+WWi+lNv+U0u4jop
 sEfxqm7nGIJ/s+Uo22U/nqmvwvBOpdEKqHYlMU3cgm/Q52P8WspM+fchmpCkoHMW1Gq/
 sW+dS6YQ3R/G0cL2Vm/Bb2ceTvyFNLPerHS3p+iU5qog/7RyzOwgA10AFHCqwbogPi4c
 QYkmQpUBd5cwlKvhulXvh9cwqdQHPIiMseUexGN7JsGUqiPNQLucgDH7iwulov7Ndkun
 9JZA==
X-Gm-Message-State: AOAM533XCkgLKjKqItlBVGXbpcRDAn8/8bPPJDTB34y/NrRvT7PrQHvE
 6fsRcxSHbpAJq0Ccq3W59I8i1g==
X-Google-Smtp-Source: ABdhPJyu00iDjlcUbTxxP1CoFV7U8k/UA59yVk8R72GcHGQlj7bygEsgGtuHzrvcI6MwESCWyJ8OlA==
X-Received: by 2002:adf:ee05:: with SMTP id y5mr30341263wrn.235.1626790940416; 
 Tue, 20 Jul 2021 07:22:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g3sm24502194wrv.64.2021.07.20.07.22.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jul 2021 07:22:19 -0700 (PDT)
Date: Tue, 20 Jul 2021 16:22:18 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YPbcGrJP3JPIEPDh@phenom.ffwll.local>
References: <20210719183047.2624569-1-jason@jlekstrand.net>
 <20210719183047.2624569-6-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210719183047.2624569-6-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/ttm: Initialize debugfs from
 ttm_global_init()
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 19, 2021 at 01:30:46PM -0500, Jason Ekstrand wrote:
> We create a bunch of debugfs entries as a side-effect of
> ttm_global_init() and then never clean them up.  This isn't usually a
> problem because we free the whole debugfs directory on module unload.
> However, if the global reference count ever goes to zero and then
> ttm_global_init() is called again, we'll re-create those debugfs entries
> and debugfs will complain in dmesg that we're creating entries that
> already exist.  This patch fixes this problem by changing the lifetime
> of the whole TTM debugfs directory to match that of the TTM global
> state.
> 
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> ---
>  drivers/gpu/drm/ttm/ttm_device.c | 12 ++++++++++++
>  drivers/gpu/drm/ttm/ttm_module.c |  4 ----
>  2 files changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/ttm/ttm_device.c b/drivers/gpu/drm/ttm/ttm_device.c
> index 519deea8e39b7..74e3b460132b3 100644
> --- a/drivers/gpu/drm/ttm/ttm_device.c
> +++ b/drivers/gpu/drm/ttm/ttm_device.c
> @@ -44,6 +44,8 @@ static unsigned ttm_glob_use_count;
>  struct ttm_global ttm_glob;
>  EXPORT_SYMBOL(ttm_glob);
>  
> +struct dentry *ttm_debugfs_root;
> +
>  static void ttm_global_release(void)
>  {
>  	struct ttm_global *glob = &ttm_glob;
> @@ -53,6 +55,7 @@ static void ttm_global_release(void)
>  		goto out;
>  
>  	ttm_pool_mgr_fini();
> +	debugfs_remove(ttm_debugfs_root);
>  
>  	__free_page(glob->dummy_read_page);
>  	memset(glob, 0, sizeof(*glob));
> @@ -73,6 +76,13 @@ static int ttm_global_init(void)
>  
>  	si_meminfo(&si);
>  
> +	ttm_debugfs_root = debugfs_create_dir("ttm", NULL);
> +	if (IS_ERR(ttm_debugfs_root)) {
> +		ret = PTR_ERR(ttm_debugfs_root);
> +		ttm_debugfs_root = NULL;
> +		goto out;
> +	}
> +
>  	/* Limit the number of pages in the pool to about 50% of the total
>  	 * system memory.
>  	 */
> @@ -100,6 +110,8 @@ static int ttm_global_init(void)
>  	debugfs_create_atomic_t("buffer_objects", 0444, ttm_debugfs_root,
>  				&glob->bo_count);
>  out:
> +	if (ret && ttm_debugfs_root)
> +		debugfs_remove(ttm_debugfs_root);
>  	if (ret)
>  		--ttm_glob_use_count;
>  	mutex_unlock(&ttm_global_mutex);
> diff --git a/drivers/gpu/drm/ttm/ttm_module.c b/drivers/gpu/drm/ttm/ttm_module.c
> index 997c458f68a9a..88554f2db11fe 100644
> --- a/drivers/gpu/drm/ttm/ttm_module.c
> +++ b/drivers/gpu/drm/ttm/ttm_module.c
> @@ -72,17 +72,13 @@ pgprot_t ttm_prot_from_caching(enum ttm_caching caching, pgprot_t tmp)
>  	return tmp;
>  }
>  
> -struct dentry *ttm_debugfs_root;
> -
>  static int __init ttm_init(void)
>  {
> -	ttm_debugfs_root = debugfs_create_dir("ttm", NULL);
>  	return 0;
>  }
>  
>  static void __exit ttm_exit(void)
>  {
> -	debugfs_remove(ttm_debugfs_root);
>  }

I think you can delete these functions and the lines below too, they
should be optional. With that:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

-Daniel

>  
>  module_init(ttm_init);
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
