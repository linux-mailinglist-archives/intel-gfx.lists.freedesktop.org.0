Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C18B3ABC6F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 21:13:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 059546E983;
	Thu, 17 Jun 2021 19:13:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B2646E25B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 19:13:46 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id e22so4371575wrc.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 12:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=YJbKmlvWf4NhCvnJSCLMTpvoMWnm+Ap9HocEZxA+clo=;
 b=Hly9ul7kmsczgAeS6+B8D8eRJ9SRMAz/ciNqRqzLXBWHbQCbfi+M1QXms4osL6vC2S
 mZ5Pt+f9lZ7ztthAlC1SYwNKb3mTX3xgwNz0u3pXKZGMEQU0uXIig/v6aq7r3EvXod56
 aTtOmmiZWGSiJ1CaonNLvlU8YgGtQpetDW3Jc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=YJbKmlvWf4NhCvnJSCLMTpvoMWnm+Ap9HocEZxA+clo=;
 b=q+WYF4F+5mIbkuHa478kGPZiXUlvgfWKwE226abVuXUW/oVxHkezsDgg6burvcQVAb
 X/cEhsAj+V5iDrhOqxPGDZuzCsJ/jW9c+N7uKEwpfef+1UEAcPjlIDgAJOmi4oGYZ3TF
 SwJMHkBD00jrJLhBx9MYQxAzz2++0u4l+tXrj7RO6syGaXwUsviHr99O64B2aOT5tVvH
 90sLegljz4iRqQzOe5wmae9x2V6/ZXwxXh3xPCmtW5ULpHxJgEOcRrYwOqBOg4oXzvx0
 ePAuRLfNzr3CDL/aYFv12kvIAQnJyZwcXgbawoFCUHWHwYBAB/7owgW2sYciFO8+fKAm
 pzqQ==
X-Gm-Message-State: AOAM532Swg/Yc4TyNUe3wgaC22VrYnOLZvnprmYAt6T5udgBRocCMZWv
 Wo4PepiqckdlxqeMBogLr2Ewug==
X-Google-Smtp-Source: ABdhPJxvnLGl4zoTiXc075/FIedgzII8j7wsAd/q+P0XgapcrH50XEgDF/2IDKIPl3zGPe8IQkmvgQ==
X-Received: by 2002:adf:cd10:: with SMTP id w16mr7919871wrm.200.1623957224923; 
 Thu, 17 Jun 2021 12:13:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p187sm5344676wmp.28.2021.06.17.12.13.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 12:13:44 -0700 (PDT)
Date: Thu, 17 Jun 2021 21:13:42 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <YMue5i1Gqoo4ERru@phenom.ffwll.local>
References: <20210617063018.92802-1-thomas.hellstrom@linux.intel.com>
 <20210617063018.92802-2-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210617063018.92802-2-thomas.hellstrom@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v5 01/12] drm/i915: Reference objects on the
 ww object list
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 17, 2021 at 08:30:07AM +0200, Thomas Hellstr=F6m wrote:
> Since the ww transaction endpoint easily end up far out-of-scope of
> the objects on the ww object list, particularly for contending lock
> objects, make sure we reference objects on the list so they don't
> disappear under us.
> =

> This comes with a performance penalty so it's been debated whether this
> is really needed. But I think this is motivated by the fact that locking
> is typically difficult to get right, and whatever we can do to make it
> simpler for developers moving forward should be done, unless the
> performance impact is far too high.
> =

> Signed-off-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I've looked the past 2-3 weeks in-depth at our execbuf code. That has
definitely gone way too far into "very clevery" territory, and safe is so
much better than clever.

If there's a fundamental performance issue, we need to fix this in a
fundamental way. E.g. for this one here a possible solution could be
VM_BIND, at least in the fastpath, where we don't need to look-up any
objects, nor refcount them, nor anything else (at least that's the goal).
Only some per vm/request book-keeping and done.

Also I think we can easily claw this back once we get to the cleanup part
of this work: i915_vma_pin has a bunch of atomics (and lots of locks in
slow-paths) of its own, which are largely redundant now that object state
is protected by dma_resv_lock. Once that's cleaned up we can pay our
atomic inc/dec here with the removed atomic ops from the vma side I think.

Anyway just figured I drop some thoughts and my ack on the direction
you're pushing here.
-Daniel

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.h | 8 ++++++--
>  drivers/gpu/drm/i915/i915_gem.c            | 4 ++++
>  2 files changed, 10 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm=
/i915/gem/i915_gem_object.h
> index d66aa00d023a..241666931945 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -169,13 +169,17 @@ static inline int __i915_gem_object_lock(struct drm=
_i915_gem_object *obj,
>  	else
>  		ret =3D dma_resv_lock(obj->base.resv, ww ? &ww->ctx : NULL);
>  =

> -	if (!ret && ww)
> +	if (!ret && ww) {
> +		i915_gem_object_get(obj);
>  		list_add_tail(&obj->obj_link, &ww->obj_list);
> +	}
>  	if (ret =3D=3D -EALREADY)
>  		ret =3D 0;
>  =

> -	if (ret =3D=3D -EDEADLK)
> +	if (ret =3D=3D -EDEADLK) {
> +		i915_gem_object_get(obj);
>  		ww->contended =3D obj;
> +	}
>  =

>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_=
gem.c
> index 6a0a3f0e36e1..c62dcd0e341a 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1222,6 +1222,7 @@ static void i915_gem_ww_ctx_unlock_all(struct i915_=
gem_ww_ctx *ww)
>  	while ((obj =3D list_first_entry_or_null(&ww->obj_list, struct drm_i915=
_gem_object, obj_link))) {
>  		list_del(&obj->obj_link);
>  		i915_gem_object_unlock(obj);
> +		i915_gem_object_put(obj);
>  	}
>  }
>  =

> @@ -1229,6 +1230,7 @@ void i915_gem_ww_unlock_single(struct drm_i915_gem_=
object *obj)
>  {
>  	list_del(&obj->obj_link);
>  	i915_gem_object_unlock(obj);
> +	i915_gem_object_put(obj);
>  }
>  =

>  void i915_gem_ww_ctx_fini(struct i915_gem_ww_ctx *ww)
> @@ -1253,6 +1255,8 @@ int __must_check i915_gem_ww_ctx_backoff(struct i91=
5_gem_ww_ctx *ww)
>  =

>  	if (!ret)
>  		list_add_tail(&ww->contended->obj_link, &ww->obj_list);
> +	else
> +		i915_gem_object_put(ww->contended);
>  =

>  	ww->contended =3D NULL;
>  =

> -- =

> 2.31.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
