Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E433D392A65
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 11:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A58C6EE46;
	Thu, 27 May 2021 09:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B91DC6EE48
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 09:15:35 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id z130so2284780wmg.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 02:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=dHJ2DN72xUTQDPxpcj8j0n11zc7QwcD3RlDZYRkrsYo=;
 b=km+HQJjix2J27FxVaozzQgLhuEEkswIZOlwkF2isNcNtdcD2BGUzruYCe2W98+M7BI
 hjbP/UXrM9Xcqj8fAH5ktCKGKRB+tSFsfhrVnZDnMexqfZCzQklWk3WviW3noqpUye0Z
 oW3Dqs9e8tHKR+jOi+AzGhYZqvR1hosT/rW3w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=dHJ2DN72xUTQDPxpcj8j0n11zc7QwcD3RlDZYRkrsYo=;
 b=i6Frp4O/kD59hZUaYJohFTWGYfRbVbJV6UJe8uBw+fuq0nUHBXAq4baJA+F1wiBIuG
 Cc9cH7wH1GBsfa0W3JTbQRRXD5ddbK8ESaqQrhotky+AJG+VnJS4LHlI0PfT1mSdhHkq
 4ZaTKPF1X96tXLuo0FCo6OXAtR0X1gJbCCaBq9qh7sYSyIYmxLVW/LyN+ky7qvd8Xcwt
 6IxkBOpr2E+SARj0R+rqU6kYnW6pMpR/s6KvOXLUxoJrhFv07cNPnE1pV3txJZp4+q8h
 JsJ+oZaSUNaaJ1Qq5fxYBMBO8LdPUMTBmSNdRFQZKszjK7vZvhars7+UaxILREZHONpZ
 S/7Q==
X-Gm-Message-State: AOAM532PShVgKnGaAbTciUP+u4k9K9JW936jg0W23D41XmizS1Pfv7vM
 41AvZR3TfUMx3RB/GQna/bIOw48w+dCPUQ==
X-Google-Smtp-Source: ABdhPJyTp/K2Ifr0v9Oya3ioUh9seQg9atVM6O1R5QG0xnqVNYAgBtjkK8y1kZUMD3wnh3r9TglyUg==
X-Received: by 2002:a05:600c:414c:: with SMTP id
 h12mr2397946wmm.53.1622106934319; 
 Thu, 27 May 2021 02:15:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z131sm10366076wmb.30.2021.05.27.02.15.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 02:15:33 -0700 (PDT)
Date: Thu, 27 May 2021 11:15:31 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Message-ID: <YK9jM74zAkEoSBZ3@phenom.ffwll.local>
References: <20210526151106.3390006-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210526151106.3390006-1-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use generic_access_phys
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Michel Lespinasse <walken@google.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 26, 2021 at 05:11:06PM +0200, Daniel Vetter wrote:
> Since
> =

> commit 96667f8a4382db9ed042332ca6ee165ae9b91307
> Author: Daniel Vetter <daniel.vetter@ffwll.ch>
> Date:   Fri Nov 27 17:41:21 2020 +0100
> =

>     mm: Close race in generic_access_phys
> =

> it is race-free and can therefore be safely used for dynamic mappings
> like we have too.
> =

> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: "Thomas Hellstr=F6m" <thomas.hellstrom@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> Cc: "Ville Syrj=E4l=E4" <ville.syrjala@linux.intel.com>
> Cc: Michel Lespinasse <walken@google.com>

This turned out to be a bad idea, because we stuff normal memory into our
io mappings (how well does that work on other archs, no idea). That would
be fixable, but then again we have our issue with using multiple
inconsistent mmaps, and at that point it's probably a lost cause :-(
-Daniel

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c | 60 +++---------------------
>  1 file changed, 6 insertions(+), 54 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i=
915/gem/i915_gem_mman.c
> index f6fe5cb01438..717798293044 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -414,58 +414,6 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
>  	return i915_error_to_vmf_fault(ret);
>  }
>  =

> -static int
> -vm_access(struct vm_area_struct *area, unsigned long addr,
> -	  void *buf, int len, int write)
> -{
> -	struct i915_mmap_offset *mmo =3D area->vm_private_data;
> -	struct drm_i915_gem_object *obj =3D mmo->obj;
> -	struct i915_gem_ww_ctx ww;
> -	void *vaddr;
> -	int err =3D 0;
> -
> -	if (i915_gem_object_is_readonly(obj) && write)
> -		return -EACCES;
> -
> -	addr -=3D area->vm_start;
> -	if (addr >=3D obj->base.size)
> -		return -EINVAL;
> -
> -	i915_gem_ww_ctx_init(&ww, true);
> -retry:
> -	err =3D i915_gem_object_lock(obj, &ww);
> -	if (err)
> -		goto out;
> -
> -	/* As this is primarily for debugging, let's focus on simplicity */
> -	vaddr =3D i915_gem_object_pin_map(obj, I915_MAP_FORCE_WC);
> -	if (IS_ERR(vaddr)) {
> -		err =3D PTR_ERR(vaddr);
> -		goto out;
> -	}
> -
> -	if (write) {
> -		memcpy(vaddr + addr, buf, len);
> -		__i915_gem_object_flush_map(obj, addr, len);
> -	} else {
> -		memcpy(buf, vaddr + addr, len);
> -	}
> -
> -	i915_gem_object_unpin_map(obj);
> -out:
> -	if (err =3D=3D -EDEADLK) {
> -		err =3D i915_gem_ww_ctx_backoff(&ww);
> -		if (!err)
> -			goto retry;
> -	}
> -	i915_gem_ww_ctx_fini(&ww);
> -
> -	if (err)
> -		return err;
> -
> -	return len;
> -}
> -
>  void __i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
>  {
>  	struct i915_vma *vma;
> @@ -801,14 +749,18 @@ static void vm_close(struct vm_area_struct *vma)
>  =

>  static const struct vm_operations_struct vm_ops_gtt =3D {
>  	.fault =3D vm_fault_gtt,
> -	.access =3D vm_access,
> +#ifdef CONFIG_HAVE_IOREMAP_PROT
> +	.access =3D generic_access_phys
> +#endif
>  	.open =3D vm_open,
>  	.close =3D vm_close,
>  };
>  =

>  static const struct vm_operations_struct vm_ops_cpu =3D {
>  	.fault =3D vm_fault_cpu,
> -	.access =3D vm_access,
> +#ifdef CONFIG_HAVE_IOREMAP_PROT
> +	.access =3D generic_access_phys
> +#endif
>  	.open =3D vm_open,
>  	.close =3D vm_close,
>  };
> -- =

> 2.31.0
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
