Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6ED34753B
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 11:01:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC1236E9A0;
	Wed, 24 Mar 2021 10:01:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C4726E9A1
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 10:01:47 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id k128so10140980wmk.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 03:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=Rx9Rrt/z2zFgoBGaEEFsYywvK+LMAW4MrtxKYsFOxi8=;
 b=jFre5dwClSH3ihB4O1rKSqw+4vWvAXTVpllJLmcWCS9AgfYt6KOglUjZBQIycdVaEt
 tBt1wuUwWXtozPuxBmfMZpgCLLrCgdwINZBRvlfwlPyocmCJ1DaaSzXk0p3miF6bLb7N
 aA0x6yhgA6Y7KfzxCpdm9tixP/U2cPfInnFfA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=Rx9Rrt/z2zFgoBGaEEFsYywvK+LMAW4MrtxKYsFOxi8=;
 b=g70Rv7g5lzhAuEOeBP70LwenuZEIBPYTNZs/SEe5SigehYFX7A1yaneHvRsSf+yx5E
 OmOocKFq4l3hOfGHFiHKJUGk81acX/XrE3fRLe5WDXwb9CN4MaSewYRpgLQHoFGmbfbM
 9cM4Sg0JJ/HKC7id0tlA6fDGdFHnxHnIPYVdz/J5Z3zIuFZBQlO7okto4gHZJvm/LveU
 eaZKLIODoRdpbVysD3lDj9BJ+iyzhJf7gIkQMzD2QafBpb7NU2eYiNOfHz1qkkqgzXfh
 6E0DnIKXRH6tQIJQkPHQnZKWF2mwk+UBgElnXq2A6++z3qe92eIETeAUp1hVkxHsdrLO
 4F2g==
X-Gm-Message-State: AOAM5322glZ9TVKjmX2T5V3d3HZMDyH0DL7Q+9InrTP3McGCwzu3B0Bd
 bDSp93Jowbmypsu6qbEWRXxSFYhSmSRx3HqK
X-Google-Smtp-Source: ABdhPJzZO9UI2vZj6xofrTq7y71eZw5LhOLy8ME2YPH+gQPzgAUK1BFVHzywoWotW3V4Wde3lxsOXQ==
X-Received: by 2002:a7b:c0d1:: with SMTP id s17mr2074690wmh.153.1616580105822; 
 Wed, 24 Mar 2021 03:01:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e13sm2443665wrg.72.2021.03.24.03.01.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 03:01:45 -0700 (PDT)
Date: Wed, 24 Mar 2021 11:01:43 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Liam Howlett <liam.howlett@oracle.com>
Message-ID: <YFsOB5fWBJSxo03E@phenom.ffwll.local>
Mail-Followup-To: Liam Howlett <liam.howlett@oracle.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
References: <20210323134208.3077275-1-Liam.Howlett@Oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210323134208.3077275-1-Liam.Howlett@Oracle.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] i915_vma: Rename vma_lookup to
 i915_vma_lookup
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
Cc: David Airlie <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 23, 2021 at 01:42:21PM +0000, Liam Howlett wrote:
> Use i915 prefix to avoid name collision with future vma_lookup() in mm.
> 
> Signed-off-by: Liam R. Howlett <Liam.Howlett@Oracle.com>
> Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>

Applied to i915-gem-next branch for 5.13. We have a bit a branch shuffling
going on right now so unusal path, it should show up in linux-next through
drm-next hopefully this week still.
-Daniel

> ---
>  drivers/gpu/drm/i915/i915_vma.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index caa9b041616b..ee0028c697f6 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -230,7 +230,7 @@ vma_create(struct drm_i915_gem_object *obj,
>  }
>  
>  static struct i915_vma *
> -vma_lookup(struct drm_i915_gem_object *obj,
> +i915_vma_lookup(struct drm_i915_gem_object *obj,
>  	   struct i915_address_space *vm,
>  	   const struct i915_ggtt_view *view)
>  {
> @@ -278,7 +278,7 @@ i915_vma_instance(struct drm_i915_gem_object *obj,
>  	GEM_BUG_ON(!atomic_read(&vm->open));
>  
>  	spin_lock(&obj->vma.lock);
> -	vma = vma_lookup(obj, vm, view);
> +	vma = i915_vma_lookup(obj, vm, view);
>  	spin_unlock(&obj->vma.lock);
>  
>  	/* vma_create() will resolve the race if another creates the vma */
> -- 
> 2.30.0

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
