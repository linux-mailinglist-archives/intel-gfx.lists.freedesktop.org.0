Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5913E5840
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 12:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9483489FCA;
	Tue, 10 Aug 2021 10:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F4789FCA
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 10:25:28 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 q11-20020a7bce8b0000b02902e6880d0accso1601185wmj.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 03:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=t2rhIW5hSCWuuwQqtLrZM84P4p0HzvFKIZbZyj8ef38=;
 b=NYtaNxewnqA+YBzs/kqpaOtsEJQe6kUBdVc2giv/OzxhZNSCKO2EC10S+py/m7XPhq
 68t7x3IXqWzvLjzVhm7ACDR+ezkCsDrrx1FAGsemMYZSVHyD6C006f+NE7XaIs6d9vPX
 8M2sGypfre91j9FzLyPMPfx/Y0G3b88dpBaNM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=t2rhIW5hSCWuuwQqtLrZM84P4p0HzvFKIZbZyj8ef38=;
 b=LpdJtHvNgg16q7FlfvZ6NWymEYuCfNPcZgU9/eDkOJw2yRhipAVE3Eq6T9g7PcP+me
 ePyH6zIZMiKuNVe1d6pSPjqMAGeR38vTcyNjxpr/hwNymOVU0r+nLMC2LfsjDEgj0mke
 tvD3r0+5ZfbZLgb8EUPsWBQZlLY4BNJy3+GQCirW8KOs5/a45LOjZtE+XhD+swthsm2u
 b0/NxH1sgHEFQr3myEacMqnKIjFkiPDweRPBIReQ+35NVO5FU/0zuSAthY9O82mtMxza
 tbYfKmOzr0tDXlxxfPp8IIGDsSMFeLInd0OscpRaPBmhY2EbjK0/Ot5vQzq3n5/J9BN0
 WWNw==
X-Gm-Message-State: AOAM533+/q5JlQ6dSu7wFce/2MrP/emGPotS8ou0nnio3AavKYGvxCfT
 QHQwR4vi9OreC9VNqCzC7hdaSQ==
X-Google-Smtp-Source: ABdhPJz+4d6DA0xUa7YWShYmZd72njeqFwyqJSzmF+MX54uaBHMkk/GURq7HglnEN7m1ZdRcBD91jQ==
X-Received: by 2002:a1c:4b0a:: with SMTP id y10mr20715363wma.111.1628591127150; 
 Tue, 10 Aug 2021 03:25:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f15sm21981782wrp.12.2021.08.10.03.25.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 03:25:26 -0700 (PDT)
Date: Tue, 10 Aug 2021 12:25:24 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <YRJUFIlXtyxT1m/Q@phenom.ffwll.local>
References: <20210810084128.17242-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210810084128.17242-1-jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem/ttm: prefer kernel types
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

On Tue, Aug 10, 2021 at 11:41:28AM +0300, Jani Nikula wrote:
> Avoid uintXX_t types in the driver.
> 
> Fixes: 213d50927763 ("drm/i915/ttm: Introduce a TTM i915 gem object backend")
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 771eb2963123..ffda88156e32 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -168,7 +168,7 @@ i915_ttm_placement_from_obj(const struct drm_i915_gem_object *obj,
>  }
>  
>  static struct ttm_tt *i915_ttm_tt_create(struct ttm_buffer_object *bo,
> -					 uint32_t page_flags)
> +					 u32 page_flags)

It's for the ttm_device_funcs ops table, I thinhk we should fix it there
and across the board?

Otherwise a bit ocd mismatch :-)
-Daniel

>  {
>  	struct ttm_resource_manager *man =
>  		ttm_manager_type(bo->bdev, bo->resource->mem_type);
> -- 
> 2.20.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
