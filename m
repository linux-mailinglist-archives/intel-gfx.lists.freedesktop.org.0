Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F00243C5E67
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 16:34:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40C1289ABE;
	Mon, 12 Jul 2021 14:34:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F81489ABE
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 14:34:17 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 a5-20020a7bc1c50000b02901e3bbe0939bso174763wmj.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 07:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=F6Lqro/VmaC5bpPEEZt2OJdm8+CajguaQspToRgf39s=;
 b=hjhS3J0OOEUBw7/N2acW3bwqc8OsvZDQqcYkK3E2/CJnIJnlamQecks0mlHDhywR5i
 Plmur+xkuw0qrzTQ6hDvV8F+KKRooLLNB4RTOyTi6AUey+r/ZPIiCi3/Mbq4EXvCij5p
 xdiGO98rlYvlNvT+j65tCTwC0phq+8tdvd+Mk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=F6Lqro/VmaC5bpPEEZt2OJdm8+CajguaQspToRgf39s=;
 b=EInphOdn58+DZ5dABCnrIUuYCNOMmYLb7/cZ2qktZGQbFR+XTXfKUcGGuz2qkxtgyT
 6G3VBww6o2rs2b8syKPRZAuH1o9DOCJK+g5qPKBZ04LOW8LGC0mWPRrwjiJdnKEGr4EF
 UWwAIdXomHq9KB84R+v/fdO3gCTBF/EplTwYkzcN1mm+7/H1rioSRdD9VxHJw300m5mM
 3FjaV3Qoy6RqmTyoReiwavKkYfIGVtefhtghzs7zyuNwdeY/jdL2avYS6D1/N6dDh2Dp
 XbNVWevjyJ5vVyFEjLM2XK+OxEkJOysn3azyehHXQCWvqo5qmLLNyr7njbDvDiHxZpbQ
 fw2w==
X-Gm-Message-State: AOAM530BV91N3GDEzXGMqUCeXPeFJR/PEzvAfv1E3Ss7cRrzfoj/Af+D
 yah5y1DHoDFfli8o6eEKgVyFmb10vrxxtA==
X-Google-Smtp-Source: ABdhPJw4aDfGm1VpjlClPRzuZJwQBgCbalXapxn2nNE/iqEqh7/j+6U0cotXuSTh1WTBEYxOlVFBRQ==
X-Received: by 2002:a1c:f016:: with SMTP id a22mr57143869wmb.65.1626100455955; 
 Mon, 12 Jul 2021 07:34:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x9sm9573362wrm.82.2021.07.12.07.34.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 07:34:15 -0700 (PDT)
Date: Mon, 12 Jul 2021 16:34:13 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YOxS5cidWjsKKcT8@phenom.ffwll.local>
References: <20210710212447.785288-1-jason@jlekstrand.net>
 <20210710212447.785288-3-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210710212447.785288-3-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/uapi: Add docs about
 immutability of engine sets and VMs
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

On Sat, Jul 10, 2021 at 04:24:47PM -0500, Jason Ekstrand wrote:
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> ---
>  include/uapi/drm/i915_drm.h | 39 ++++++++++++++++++++++++++-----------
>  1 file changed, 28 insertions(+), 11 deletions(-)
> 
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index e334a8b14ef2d..b6bfbda1258c8 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1676,15 +1676,25 @@ struct drm_i915_gem_context_param {
>   */
>  #define I915_CONTEXT_PARAM_RECOVERABLE	0x8
>  
> -	/*
> -	 * The id of the associated virtual memory address space (ppGTT) of
> -	 * this context. Can be retrieved and passed to another context
> -	 * (on the same fd) for both to use the same ppGTT and so share
> -	 * address layouts, and avoid reloading the page tables on context
> -	 * switches between themselves.
> -	 *
> -	 * See DRM_I915_GEM_VM_CREATE and DRM_I915_GEM_VM_DESTROY.
> -	 */
> +/*

So the annoying thing here is that this way it's not picked up by the
kerneldoc machinery.

I think what Matt has done is included parameters as an item list in the
relevant struct kerneldoc, which seems like the most reasonable thing to
do with them.

That means some mild duplication for get/set parts, but since we've made
the uapi very asymmetric in that, that's probably a feature.

> + * The id of the associated virtual memory address space (ppGTT) of
> + * this context. Can be retrieved and passed to another context
> + * (on the same fd) for both to use the same ppGTT and so share
> + * address layouts, and avoid reloading the page tables on context
> + * switches between themselves.
> + *
> + * The VM id should only be set via I915_CONTEXT_CREATE_EXT_SETPARAM.
> + *
> + * On GPUs with graphics version 12 and earlier, it may also be set via
> + * DRM_IOCTL_I915_GEM_CONTEXT_SETPARAM.  However, this is only for
> + * backwards compatibility with old userspace and should be considered
> + * deprecated.  Starting with graphics version 13, it can only be set via
> + * I915_CONTEXT_CREATE_EXT_SETPARAM.  When using setparam, it may only be
> + * set once for each context and, once the context has been used with any
> + * ioctl other than I915_CONTEXT_CREATE_EXT_SETPARAM, it may not be set.
> + *
> + * See DRM_I915_GEM_VM_CREATE and DRM_I915_GEM_VM_DESTROY.

Again for kerneldoc linking to the struct of the ioctl is probably better,
since then you get a link.

> + */
>  #define I915_CONTEXT_PARAM_VM		0x9
>  
>  /*
> @@ -1700,8 +1710,15 @@ struct drm_i915_gem_context_param {
>   * to specify a gap in the array that can be filled in later, e.g. by a
>   * virtual engine used for load balancing.
>   *
> - * Setting the number of engines bound to the context to 0, by passing a zero
> - * sized argument, will revert back to default settings.
> + * The engine set should only be set via I915_CONTEXT_CREATE_EXT_SETPARAM.
> + *
> + * On GPUs with graphics version 12 and earlier, it may also be set via
> + * DRM_IOCTL_I915_GEM_CONTEXT_SETPARAM.  However, this is only for
> + * backwards compatibility with old userspace and should be considered
> + * deprecated.  Starting with graphics version 13, it can only be set via
> + * I915_CONTEXT_CREATE_EXT_SETPARAM.  When using setparam, it may only be
> + * set once for each context and, once the context has been used with any
> + * ioctl other than I915_CONTEXT_CREATE_EXT_SETPARAM, it may not be set.
>   *
>   * See struct i915_context_param_engines.

Maybe we should push most of the docs for params with structs into the
struct's kerneldoc?
-Daniel

>   *
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
