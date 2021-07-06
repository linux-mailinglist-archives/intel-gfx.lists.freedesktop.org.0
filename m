Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 165F13BC85F
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 11:14:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEDE689D4B;
	Tue,  6 Jul 2021 09:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D9389D40
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jul 2021 09:14:43 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id u8so25162969wrq.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Jul 2021 02:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=75TAy6lIhq9+7ZgnRMGd81syk1JNSvPfm9pffj8Q8NE=;
 b=W/oZKNuWYvwdqLSGJmCjf2UW6jBfH8vd+gthlYuS4Bl1b12+0rVA8/iVOnsmENkqVn
 LzU6wWjsOcRv2MgEqbV1DWwBoaasMpYy3yopzzggmuEA8M53zdm+1xVcXpmjnJjuowcX
 Axun3lmdtvEEDmbn+xT4db3cbt/GgcmbS45NM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=75TAy6lIhq9+7ZgnRMGd81syk1JNSvPfm9pffj8Q8NE=;
 b=qrAtH6kgRaH0msg7FkC+c9OGhXj+H38B0+I3OTM39e7YXXOyh6elFdGJchIpBdz7L3
 NjaMKrKQmCQ/WF5wmLCBI2VTbIZwypZVwLMGnLLzfGINgItlPlbcushbFzuYd4MLz7Dn
 hJhGsGScrw2sE3MDc2kfXkkARc2RPLdoYXU8B3NQpf4IVj3x/X4V9IdwCt8c7iU79oxl
 vK0WcSdneFQmMMwzuILo14w7wt+T5nkmIZ1lANqJMCl94ffEEiQ3E2G6fDqSqNgp4e9X
 iUm0SyvaUpVHARx0MdwWSdVSV+bLrP/ZPQ3cTUMJ5Uqh6ajuTuW6u/rZf3fWScE7z/Xx
 26jQ==
X-Gm-Message-State: AOAM532oA6R0KFijGtUY32CmezfKxvIx+VxIPUug+/CzxFK4vbTNakny
 b5CjvpEtJlqONBa3sQUHI14QXZFvj/bbXg==
X-Google-Smtp-Source: ABdhPJyPJfD73lelLZCupcv2lSpGGamPRdcRZdZfHXLJ3m/DM2VFxA+/jlvKYAhz6hfJbDh58WJksg==
X-Received: by 2002:a5d:5687:: with SMTP id f7mr21048115wrv.115.1625562882601; 
 Tue, 06 Jul 2021 02:14:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u9sm16665971wmq.41.2021.07.06.02.14.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 02:14:42 -0700 (PDT)
Date: Tue, 6 Jul 2021 11:14:39 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YOQe/yzj02p92U+R@phenom.ffwll.local>
References: <20210706090559.1589544-1-matthew.auld@intel.com>
 <20210706090559.1589544-2-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210706090559.1589544-2-matthew.auld@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: prefer dma_fence_might_wait
 in wait_migration
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
 dri-devel@lists.freedesktop.org,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 06, 2021 at 10:05:59AM +0100, Matthew Auld wrote:
> dma_fence_might_wait is more interesting here, since it also teaches
> lockdep about the fence critical section and wait_migration dependency.
> =

> Suggested-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Ofc assuming nothing goes boom with lockdep :-)
-Daniel

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_wait.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i=
915/gem/i915_gem_wait.c
> index f909aaa09d9c..190e221eaf81 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> @@ -305,7 +305,7 @@ i915_gem_wait_ioctl(struct drm_device *dev, void *dat=
a, struct drm_file *file)
>  int i915_gem_object_wait_migration(struct drm_i915_gem_object *obj,
>  				   unsigned int flags)
>  {
> -	might_sleep();
> +	dma_fence_might_wait();
>  	/* NOP for now. */
>  	return 0;
>  }
> -- =

> 2.26.3
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
