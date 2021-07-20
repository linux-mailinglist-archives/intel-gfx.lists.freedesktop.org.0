Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E61683CFAF7
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 15:44:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6817089DBC;
	Tue, 20 Jul 2021 13:44:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB1E689DA3
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 13:44:52 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id f9so26055581wrq.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 06:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Be4HZXEp40HUXvq7QmzTRqYXQphz7ay/OwQix79gbbA=;
 b=izhhlKN6HpBuFS+OJ0XVF3bPGkfIu1LANouXgWkEWOhcTzORgKEwnUEEZGt79Ni/bh
 0aSKd4v4ZNCHu+iAfw+APT+oU+VMB4tRKGuW/vGdbJVxs/cv2JlTU2xonEfODF9tKamh
 ifr/J8tMQL90Hna0ZrYvb2X2bVE8usHH073MQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Be4HZXEp40HUXvq7QmzTRqYXQphz7ay/OwQix79gbbA=;
 b=X95+Zfs3lI++rmKQw+Kva2Ag8IB/yuTowCCCqQmg05qIlfzCW92SZZmY6kRjBIv5Bx
 3TEuCVFr1WKpF+AQvqXdMfaelWQ3p6nhSwf39osGmVi4G07y4CXr02pLIoh5olPHX1N2
 L66F/YN738hz0TlymFKXk2rDps7/YKhlcsUs65/qXBaC+/Vjr1lUlIV9GPNUgRo4/zwh
 w4UgYNueFN9uIEHRoXyRI/nUPPXHVs0IWR1S+7DyE6VH/gdAWcxMSZQA67mQUqrgdoFV
 B0Tu2SPIWejqypZcsPxQuwjnDcISBdY0obT/gt+5saeGz+xFzsWIWbKTV9Wp4pkfAGk5
 6isQ==
X-Gm-Message-State: AOAM531Nw3Kw1x8XZX3dds/vigvXdaZKELnkgUrOPnu9rn0mLPDpzMBk
 pR8nWoJSFyLMQO79slDEzeftOQ==
X-Google-Smtp-Source: ABdhPJz73QdlbsoKOLRzeUOJVVMHCbFPUwoAnf+Y5YRWRGf4t1PlZRgsgJRcHXbZN3/yYVbsTA4Nvw==
X-Received: by 2002:a5d:4c8c:: with SMTP id z12mr37428582wrs.97.1626788691601; 
 Tue, 20 Jul 2021 06:44:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v2sm23989555wro.48.2021.07.20.06.44.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jul 2021 06:44:50 -0700 (PDT)
Date: Tue, 20 Jul 2021 15:44:49 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YPbTUf9KfiZ5GnFz@phenom.ffwll.local>
References: <20210715184954.7794-1-ville.syrjala@linux.intel.com>
 <20210715184954.7794-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210715184954.7794-2-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/4] drm: Introduce
 drm_modeset_lock_ctx_retry()
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
Cc: intel-gfx@lists.freedesktop.org, Sean Paul <seanpaul@chromium.org>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 15, 2021 at 09:49:51PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Quite a few places are hand rolling the modeset lock backoff dance.
> Let's suck that into a helper macro that is easier to use without
> forgetting some steps.
> =

> The main downside is probably that the implementation of
> drm_with_modeset_lock_ctx() is a bit harder to read than a hand
> rolled version on account of being split across three functions,
> but the actual code using it ends up being much simpler.
> =

> Cc: Sean Paul <seanpaul@chromium.org>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/drm_modeset_lock.c | 44 ++++++++++++++++++++++++++++++
>  include/drm/drm_modeset_lock.h     | 20 ++++++++++++++
>  2 files changed, 64 insertions(+)
> =

> diff --git a/drivers/gpu/drm/drm_modeset_lock.c b/drivers/gpu/drm/drm_mod=
eset_lock.c
> index fcfe1a03c4a1..083df96632e8 100644
> --- a/drivers/gpu/drm/drm_modeset_lock.c
> +++ b/drivers/gpu/drm/drm_modeset_lock.c
> @@ -425,3 +425,47 @@ int drm_modeset_lock_all_ctx(struct drm_device *dev,
>  	return 0;
>  }
>  EXPORT_SYMBOL(drm_modeset_lock_all_ctx);
> +
> +void _drm_modeset_lock_begin(struct drm_modeset_acquire_ctx *ctx,
> +			     struct drm_atomic_state *state,
> +			     unsigned int flags, int *ret)
> +{
> +	drm_modeset_acquire_init(ctx, flags);
> +
> +	if (state)
> +		state->acquire_ctx =3D ctx;
> +
> +	*ret =3D -EDEADLK;
> +}
> +EXPORT_SYMBOL(_drm_modeset_lock_begin);
> +
> +bool _drm_modeset_lock_loop(int *ret)
> +{
> +	if (*ret =3D=3D -EDEADLK) {
> +		*ret =3D 0;
> +		return true;
> +	}
> +
> +	return false;
> +}
> +EXPORT_SYMBOL(_drm_modeset_lock_loop);
> +
> +void _drm_modeset_lock_end(struct drm_modeset_acquire_ctx *ctx,
> +			   struct drm_atomic_state *state,
> +			   int *ret)
> +{
> +	if (*ret =3D=3D -EDEADLK) {
> +		if (state)
> +			drm_atomic_state_clear(state);
> +
> +		*ret =3D drm_modeset_backoff(ctx);
> +		if (*ret =3D=3D 0) {
> +			*ret =3D -EDEADLK;
> +			return;
> +		}
> +	}
> +
> +	drm_modeset_drop_locks(ctx);
> +	drm_modeset_acquire_fini(ctx);
> +}
> +EXPORT_SYMBOL(_drm_modeset_lock_end);
> diff --git a/include/drm/drm_modeset_lock.h b/include/drm/drm_modeset_loc=
k.h
> index aafd07388eb7..5eaad2533de5 100644
> --- a/include/drm/drm_modeset_lock.h
> +++ b/include/drm/drm_modeset_lock.h
> @@ -26,6 +26,7 @@
>  =

>  #include <linux/ww_mutex.h>
>  =

> +struct drm_atomic_state;
>  struct drm_modeset_lock;
>  =

>  /**
> @@ -203,4 +204,23 @@ modeset_lock_fail:							\
>  	if (!drm_drv_uses_atomic_modeset(dev))				\
>  		mutex_unlock(&dev->mode_config.mutex);
>  =

> +void _drm_modeset_lock_begin(struct drm_modeset_acquire_ctx *ctx,
> +			     struct drm_atomic_state *state,
> +			     unsigned int flags,
> +			     int *ret);
> +bool _drm_modeset_lock_loop(int *ret);
> +void _drm_modeset_lock_end(struct drm_modeset_acquire_ctx *ctx,
> +			   struct drm_atomic_state *state,
> +			   int *ret);
> +
> +/*
> + * Note that one must always use "continue" rather than
> + * "break" or "return" to handle errors within the
> + * drm_modeset_lock_ctx_retry() block.

I'm not sold on loop macros with these kind of restrictions, C just isn't
a great language for these. That's why e.g. drm_connector_iter doesn't
give you a macro, but only the begin/next/end function calls explicitly.

Yes the macro we have is also not nice, but at least it's a screaming
macro since it's all uppercase, so options are all a bit sucky. Which
leads me to think we have a bit a https://xkcd.com/927/ situation going
on.

I think minimally we should have one way to do this.
-Daniel

> + */
> +#define drm_modeset_lock_ctx_retry(ctx, state, flags, ret) \
> +	for (_drm_modeset_lock_begin((ctx), (state), (flags), &(ret)); \
> +	     _drm_modeset_lock_loop(&(ret)); \
> +	     _drm_modeset_lock_end((ctx), (state), &(ret)))
> +
>  #endif /* DRM_MODESET_LOCK_H_ */
> -- =

> 2.31.1
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
