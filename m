Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5813C83AF
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 13:19:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E34A16E216;
	Wed, 14 Jul 2021 11:19:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09CAC6E216
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 11:19:33 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id f17so2756260wrt.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 04:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/8wXMWxgzh+XHEjD5JlBSCU6YbRAQfHtMhN5YBUlBNk=;
 b=fGfsu/TQpwmSQsuxJkFzKjqTz9ClAzhSzoI7tQIg+yMuOicjgjCX7iXGEAXUkTYTPv
 m1G+WkQ2mUQisHtyvN81AFqarPVwODRmi4jplexxBOZZNvPzoNNFrIQ3xva3qk0O87zj
 6SSq7UGs/2SaTZ8e+xxfjjN3AJyzMcroEw4JY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/8wXMWxgzh+XHEjD5JlBSCU6YbRAQfHtMhN5YBUlBNk=;
 b=NnT7q9A0FoA/CfZ9wtQh3lZIhOu8RtUUZkyOM2Lnii4tqi1LwukbmFd7ntHjE3kVLb
 stus9qlWuRWJOiDjdi9q5iMZMnREv4qx6M81Ni38NfLi1cSW8XnU8OCEtm0GVDygnjP3
 +Er6+f1XLgX9ThFpdfF/ob6nelP/qx/EMCUNHdP9NHpky1Jqj6v81v2uZEox1DxG5N4V
 goqJNtuApD7t91/pX+Wp35s55ztM47moXjN3F1yO+SusTff4bUyBbfe0RZSZKKafZKvT
 2XKJKA2X7s6g7VvqLA1UOSKguX37GBMTnNeLiHRTcZrKDIiPDs2q32wY6zJH2oNvq6+L
 FQVQ==
X-Gm-Message-State: AOAM533RJVqPBfXjYjM7kQkITkgO7J6x5DY95lqBajarLx3YK2UlqqH1
 pgr2uW4eudEpTvmNoAFLjOcx9g==
X-Google-Smtp-Source: ABdhPJzx88NIjYOyrII356NlWnW9br3k01LXmpOFzbXY6xaIn5CEMJUsOqRIhewAdIcdv8R276LAnQ==
X-Received: by 2002:a5d:6a4d:: with SMTP id t13mr12209294wrw.412.1626261571764; 
 Wed, 14 Jul 2021 04:19:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 12sm5173529wme.28.2021.07.14.04.19.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 04:19:31 -0700 (PDT)
Date: Wed, 14 Jul 2021 13:19:29 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YO7IQXMS3NAmJHhk@phenom.ffwll.local>
References: <20210713104554.2381406-1-matthew.auld@intel.com>
 <20210713104554.2381406-5-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210713104554.2381406-5-matthew.auld@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/ehl: unconditionally flush the
 pages on acquire
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 Francisco Jerez <francisco.jerez.plata@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 13, 2021 at 11:45:54AM +0100, Matthew Auld wrote:
> EHL and JSL add the 'Bypass LLC' MOCS entry, which should make it
> possible for userspace to bypass the GTT caching bits set by the kernel,
> as per the given object cache_level. This is troublesome since the heavy
> flush we apply when first acquiring the pages is skipped if the kernel
> thinks the object is coherent with the GPU. As a result it might be
> possible to bypass the cache and read the contents of the page directly,
> which could be stale data. If it's just a case of userspace shooting
> themselves in the foot then so be it, but since i915 takes the stance of
> always zeroing memory before handing it to userspace, we need to prevent
> this.
> 
> v2: this time actually set cache_dirty in put_pages()
> v3: move to get_pages() which looks simpler
> 
> BSpec: 34007
> References: 046091758b50 ("Revert "drm/i915/ehl: Update MOCS table for EHL"")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc: Francisco Jerez <francisco.jerez.plata@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I was pondering whether we can have a solid testcase for this, but:
- igt lacks the visibility, since we can't check easily whether stuff
  leaks.
- selftests don't have rendercopy, where we could select the nasty
  mocs entry

So it's a bit awkward. Is there something, or is this pure hw workaround
stuff on theoretical grounds?
-Daniel
> ---
>  .../gpu/drm/i915/gem/i915_gem_object_types.h   |  6 ++++++
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c      | 18 ++++++++++++++++++
>  2 files changed, 24 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index da2194290436..7089d1b222c5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -522,6 +522,12 @@ struct drm_i915_gem_object {
>  	 * I915_BO_CACHE_COHERENT_FOR_WRITE, i.e that the GPU will be coherent
>  	 * for both reads and writes though the CPU cache. So pretty much this
>  	 * should only be needed for I915_CACHE_NONE objects.
> +	 *
> +	 * Update: Some bonkers hardware decided to add the 'Bypass LLC' MOCS
> +	 * entry, which defeats our @cache_coherent tracking, since userspace
> +	 * can freely bypass the CPU cache when touching the pages with the GPU,
> +	 * where the kernel is completely unaware. On such platform we need
> +	 * apply the sledgehammer-on-acquire regardless of the @cache_coherent.
>  	 */
>  	unsigned int cache_dirty:1;
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index 6a04cce188fc..11f072193f3b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -182,6 +182,24 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
>  	if (i915_gem_object_needs_bit17_swizzle(obj))
>  		i915_gem_object_do_bit_17_swizzle(obj, st);
>  
> +	/*
> +	 * EHL and JSL add the 'Bypass LLC' MOCS entry, which should make it
> +	 * possible for userspace to bypass the GTT caching bits set by the
> +	 * kernel, as per the given object cache_level. This is troublesome
> +	 * since the heavy flush we apply when first gathering the pages is
> +	 * skipped if the kernel thinks the object is coherent with the GPU. As
> +	 * a result it might be possible to bypass the cache and read the
> +	 * contents of the page directly, which could be stale data. If it's
> +	 * just a case of userspace shooting themselves in the foot then so be
> +	 * it, but since i915 takes the stance of always zeroing memory before
> +	 * handing it to userspace, we need to prevent this.
> +	 *
> +	 * By setting cache_dirty here we make the clflush in set_pages
> +	 * unconditional on such platforms.
> +	 */
> +	if (IS_JSL_EHL(i915) && obj->flags & I915_BO_ALLOC_USER)
> +		obj->cache_dirty = true;
> +
>  	__i915_gem_object_set_pages(obj, st, sg_page_sizes);
>  
>  	return 0;
> -- 
> 2.26.3
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
