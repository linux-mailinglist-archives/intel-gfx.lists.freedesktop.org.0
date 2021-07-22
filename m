Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A063D21C5
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 12:10:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 028BE6EA46;
	Thu, 22 Jul 2021 10:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E4D6EA0D
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 10:09:57 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 k14-20020a05600c1c8eb02901f13dd1672aso2228211wms.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 03:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Q5A/uDFgVoGIUlTFtT+lZZ1ls/qr5aVGs4V5lknx+OQ=;
 b=ZCn1+iO8iFsL4votntEVTQdFDEOTXA5XEtfrFFgP2Vh/5Um7b98Yvnz0hRcD3i6NJD
 R35IibtHW/QtIr0Zglo9cYrxhDsADS31exIIg/3aAloF80hvV9VGvblAqiDpb269b0n9
 VS7pVtaaVqZDs1MhNanfWQ8GEMwlJ7Ua4EIws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Q5A/uDFgVoGIUlTFtT+lZZ1ls/qr5aVGs4V5lknx+OQ=;
 b=XCIhZ8bxOney6FYrFphyZgXHIcBbW0dYMexykJuzS14lOMciQzL7COq8JdbUYJc42I
 qnDSyUeY4lJ1fL+NTt4Q4TOAM3I2ZHssh1VO9jvN3aj3AkeNxyHygzmjPn9FDmLKyay5
 y0cWERHqLLymCPOIRF1HBS/drxjwhKdl2WcOIdQETx/P/KPy2ecOCt4RhfFMLvjpi7Kx
 QgNzjL6DvHbOn4pM9ZUyIzOGHY62/4ELmsDK9cGuVm4+hMWObZyIsvHH93R+FJilqt5X
 vTnHZIB3KqHQ6z07dPf/G9C9DXj0xshym0MexyA1oQWaKk7DmHmFbcVpdqZT4eDtOVx5
 f8CQ==
X-Gm-Message-State: AOAM532CPWYZtyI3ORs+M2hFTSKT2KMpJrkkr44XHkq5aEXQg6hClhmr
 2UZXsDM5QDVhbRrrEkbjdTOXwg==
X-Google-Smtp-Source: ABdhPJxPPXRuPu078ZBV+kNBPgBZJ9yticYX0gKWlfY9HRQDAWcjaHxwqPHHmAYhrZsE1/9xOe0AsQ==
X-Received: by 2002:a05:600c:21d7:: with SMTP id
 x23mr41452053wmj.98.1626948595789; 
 Thu, 22 Jul 2021 03:09:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm17771653wrw.9.2021.07.22.03.09.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jul 2021 03:09:55 -0700 (PDT)
Date: Thu, 22 Jul 2021 12:09:53 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YPlD8TFQnkmpVb8A@phenom.ffwll.local>
References: <20210721152358.2893314-1-jason@jlekstrand.net>
 <20210721152358.2893314-6-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210721152358.2893314-6-jason@jlekstrand.net>
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 21, 2021 at 10:23:57AM -0500, Jason Ekstrand wrote:
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
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I've pushed this to drm-misc-fixes since I think this entire slab debugfs
story started with 5.15-rc1, so good to get it sorted there.
-Daniel

> ---
>  drivers/gpu/drm/ttm/ttm_device.c | 12 ++++++++++++
>  drivers/gpu/drm/ttm/ttm_module.c | 16 ----------------
>  2 files changed, 12 insertions(+), 16 deletions(-)
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
> index 997c458f68a9a..7fcdef278c742 100644
> --- a/drivers/gpu/drm/ttm/ttm_module.c
> +++ b/drivers/gpu/drm/ttm/ttm_module.c
> @@ -72,22 +72,6 @@ pgprot_t ttm_prot_from_caching(enum ttm_caching caching, pgprot_t tmp)
>  	return tmp;
>  }
>  
> -struct dentry *ttm_debugfs_root;
> -
> -static int __init ttm_init(void)
> -{
> -	ttm_debugfs_root = debugfs_create_dir("ttm", NULL);
> -	return 0;
> -}
> -
> -static void __exit ttm_exit(void)
> -{
> -	debugfs_remove(ttm_debugfs_root);
> -}
> -
> -module_init(ttm_init);
> -module_exit(ttm_exit);
> -
>  MODULE_AUTHOR("Thomas Hellstrom, Jerome Glisse");
>  MODULE_DESCRIPTION("TTM memory manager subsystem (for DRM device)");
>  MODULE_LICENSE("GPL and additional rights");
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
