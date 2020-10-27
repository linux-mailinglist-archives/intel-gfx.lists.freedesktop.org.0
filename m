Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4985929A7FC
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 10:36:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3534289CA0;
	Tue, 27 Oct 2020 09:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67D3B6E1A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 09:36:35 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id e17so1037190wru.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 02:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oKyhhlggIzQZEALt6LDXbEGeExFCJKLngSO4q056TRw=;
 b=SgiGfHua4PGRBgKddAU9OCyQ6gEct1idFssRqSbWwjGRJqXG169x46PTmvdjQceWZf
 fk5dAtJxunjnhbD4rbCsNxxDzknml/sX2Srv0TepflP0Th4ndJ/+cwJxg9Nb54onNn7a
 SioLMZC7T1foebo0tvNh9MYDlsSqwMmR1SUDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oKyhhlggIzQZEALt6LDXbEGeExFCJKLngSO4q056TRw=;
 b=Zyl7lIiUBkhZw5SSQqFcrn5JikxW699FJClM6h0tB2Of/wZ9Yz4YI/0LDMdLchw4Wq
 PSVU2x7e/2Rn9mBgWOklBsK/h/9i+EtvBz3BF03YANYHYJz71URiKiytpKmDMi3YG9yA
 M1SNB6YXD6X9NZWb5myGRxST4dFDChDxxL52zvvQCQRc4d+Z5O19+w2+fG2/n+cDCdfk
 j+pDGz4VRldnT1TU0k3nG9ba426nrRlxf3NWbtCcdjxeW+W3VPdEFqvygTtiNnMU/AIL
 cUbjmdc9gsk+t2IqbnK7gc5Gr53ghJnXyrbKFyhDCJBcPeQ4MGayLb9MLOaIFCFTIsM9
 4GwQ==
X-Gm-Message-State: AOAM531HoSG1rLJMXzSGLF3XKQuU0WbYbCFKG6p0v1Psf54cY1anEPEQ
 cu/o6nQrZclMmpb3iVx7CjQiLQ==
X-Google-Smtp-Source: ABdhPJzHD8U/7HI5c4wsPD1H08r/8tFlxpBIJaaJcDdq1QoqLSTpEsPUJ2pxSZrV6BQcS2YaZr5g8A==
X-Received: by 2002:adf:c3c6:: with SMTP id d6mr1782755wrg.206.1603791394082; 
 Tue, 27 Oct 2020 02:36:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u15sm1268718wrm.77.2020.10.27.02.36.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 02:36:33 -0700 (PDT)
Date: Tue, 27 Oct 2020 10:36:31 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20201027093631.GJ401619@phenom.ffwll.local>
References: <20201023123925.2374863-1-daniel.vetter@ffwll.ch>
 <20201023123925.2374863-3-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023123925.2374863-3-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/doc: Document legacy_cursor_update
 better
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 23, 2020 at 02:39:25PM +0200, Daniel Vetter wrote:
> It's the horror and shouldn't be used. Realized we're not clear on
> this in a discussion with Rob about what msm is doing to better
> support async commits.
> 
> v2: Refine existing todo item to include this (Thomas)
> 
> Cc: Sean Paul <sean@poorly.run>
> Cc: Rob Clark <robdclark@gmail.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>

Pushed this one with Rob's irc-ack, since the functional changes will take
a bit longer to figure out.
-Daniel

> ---
>  Documentation/gpu/todo.rst |  4 ++++
>  include/drm/drm_atomic.h   | 12 +++++++++++-
>  2 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
> index 700637e25ecd..6b224ef14455 100644
> --- a/Documentation/gpu/todo.rst
> +++ b/Documentation/gpu/todo.rst
> @@ -105,6 +105,10 @@ converted over to the new infrastructure.
>  One issue with the helpers is that they require that drivers handle completion
>  events for atomic commits correctly. But fixing these bugs is good anyway.
>  
> +Somewhat related is the legacy_cursor_update hack, which should be replaced with
> +the new atomic_async_check/commit functionality in the helpers in drivers that
> +still look at that flag.
> +
>  Contact: Daniel Vetter, respective driver maintainers
>  
>  Level: Advanced
> diff --git a/include/drm/drm_atomic.h b/include/drm/drm_atomic.h
> index d07c851d255b..413fd0ca56a8 100644
> --- a/include/drm/drm_atomic.h
> +++ b/include/drm/drm_atomic.h
> @@ -308,7 +308,6 @@ struct __drm_private_objs_state {
>   * struct drm_atomic_state - the global state object for atomic updates
>   * @ref: count of all references to this state (will not be freed until zero)
>   * @dev: parent DRM device
> - * @legacy_cursor_update: hint to enforce legacy cursor IOCTL semantics
>   * @async_update: hint for asynchronous plane update
>   * @planes: pointer to array of structures with per-plane data
>   * @crtcs: pointer to array of CRTC pointers
> @@ -336,6 +335,17 @@ struct drm_atomic_state {
>  	 * drm_atomic_crtc_needs_modeset().
>  	 */
>  	bool allow_modeset : 1;
> +	/**
> +	 * @legacy_cursor_update:
> +	 *
> +	 * Hint to enforce legacy cursor IOCTL semantics.
> +	 *
> +	 * WARNING: This is thoroughly broken and pretty much impossible to
> +	 * implement correctly. Drivers must ignore this and should instead
> +	 * implement &drm_plane_helper_funcs.atomic_async_check and
> +	 * &drm_plane_helper_funcs.atomic_async_commit hooks. New users of this
> +	 * flag are not allowed.
> +	 */
>  	bool legacy_cursor_update : 1;
>  	bool async_update : 1;
>  	/**
> -- 
> 2.28.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
