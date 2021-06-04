Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A9539B4A6
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 10:11:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B1C6F5D0;
	Fri,  4 Jun 2021 08:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 413B86F5CC
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 08:11:07 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 p13-20020a05600c358db029019f44afc845so5080974wmq.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Jun 2021 01:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JbXWfw7rrnkJO0+fk5lbZKzFiOhfx+LiMyaaEdW/mjw=;
 b=lclALgIiYw54A8W7+Ox+5Eh42U4Ays74e35ike/aCCIFEkx0hv6CFw7xjO2L9hIuir
 nzJppMwAuODotlb2Xd6braAJE6iY5LwBYhNakOAZaVCXWkenjqjukYkOGOQVy9dydCBx
 Yrh1qJf7Uy/f8rulc40YO8noDoyouJxE3c4Yc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JbXWfw7rrnkJO0+fk5lbZKzFiOhfx+LiMyaaEdW/mjw=;
 b=XfIDAZaFOpaGPnRH44vMacST05Cjl+I0sqSt4LbIjlQvRbuBBsxBy27gtGX+MB9WQy
 bYl4MtniUIN/QL37+iq3lI8Tsy470jU6/iLzZXnG5Cm8YGVxNHMLnzgmbWi5UGOG5TG/
 ejLDc+f8yGxUOEW5yHefijoAmvk386M5EFOSX8jw3kx3FfLMFmepMFFInicebPJI95nu
 Z4TKE7ipqiMfRBq5quefqDKRRw72cQN8bSigajZtYJoC+tkL5dsK6uUqgduo9EfC5U3Z
 3WKaKIu5dkHa1jS8Qvqk6blOPnVcKyfx/Vc+KU3HS2zQXFEUzPuobuMeq8Jlk+961roj
 s/AA==
X-Gm-Message-State: AOAM531tCA6T8fLZedZbtJ1v2Yzim+ezU763ZJjEQRNGaPdPgWV3SRzF
 VjM0tkJaxGBrazxAvOvPb6eQog==
X-Google-Smtp-Source: ABdhPJwo/rZ2UdOad6ixL+y3zRpZ3JGzpRCVu+1JGIU6Q3hgIw6c/ULqcmX7Q/gJw7Kw7RUkeRMWHw==
X-Received: by 2002:a1c:e343:: with SMTP id a64mr2408669wmh.114.1622794265825; 
 Fri, 04 Jun 2021 01:11:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i2sm4737107wmo.40.2021.06.04.01.11.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jun 2021 01:11:05 -0700 (PDT)
Date: Fri, 4 Jun 2021 10:11:02 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <YLngFj1NhZaoLfV1@phenom.ffwll.local>
References: <20210603051630.2635-1-matthew.brost@intel.com>
 <20210603051630.2635-9-matthew.brost@intel.com>
 <YLlLIG9sBjouIJE2@phenom.ffwll.local>
 <20210604020257.GA7149@sdutt-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210604020257.GA7149@sdutt-i7>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 08/20] drm/i915: Promote ptrdiff() to
 i915_utils.h
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 03, 2021 at 07:02:57PM -0700, Matthew Brost wrote:
> On Thu, Jun 03, 2021 at 11:35:28PM +0200, Daniel Vetter wrote:
> > On Wed, Jun 02, 2021 at 10:16:18PM -0700, Matthew Brost wrote:
> > > From: Michal Wajdeczko <michal.wajdeczko@intel.com>
> > > 
> > > Generic helpers should be placed in i915_utils.h.
> > 
> > Random rant, but we're _way_ too happy to just stuff random things into
> > i915_utils.h without trying to properly upstream it.
> > 
> > For thinks like this the general dumping ground would be kernel.h, there's
> > a few pointer helpers there already. Follow up patch maybe nice.
> > -Daniel
> > 
> 
> Sure. I've added this to a list of follow ups so this comment doesn't
> get lost.

btw I think we probably want to rename it, because it's not just the
well-defined C pointer difference. We convert to void * so we get the
difference in bytes. So maybe ptr_offset or ptrdiff_in_bytes or something
like that which makes it clear.
-Daniel

> 
> Matt
> 
> > > 
> > > Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > > Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_utils.h | 5 +++++
> > >  drivers/gpu/drm/i915/i915_vma.h   | 5 -----
> > >  2 files changed, 5 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> > > index f02f52ab5070..5259edacde38 100644
> > > --- a/drivers/gpu/drm/i915/i915_utils.h
> > > +++ b/drivers/gpu/drm/i915/i915_utils.h
> > > @@ -201,6 +201,11 @@ __check_struct_size(size_t base, size_t arr, size_t count, size_t *size)
> > >  	__T;								\
> > >  })
> > >  
> > > +static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
> > > +{
> > > +	return a - b;
> > > +}
> > > +
> > >  /*
> > >   * container_of_user: Extract the superclass from a pointer to a member.
> > >   *
> > > diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> > > index dc6926d89626..eca452a9851f 100644
> > > --- a/drivers/gpu/drm/i915/i915_vma.h
> > > +++ b/drivers/gpu/drm/i915/i915_vma.h
> > > @@ -151,11 +151,6 @@ static inline void i915_vma_put(struct i915_vma *vma)
> > >  	i915_gem_object_put(vma->obj);
> > >  }
> > >  
> > > -static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
> > > -{
> > > -	return a - b;
> > > -}
> > > -
> > >  static inline long
> > >  i915_vma_compare(struct i915_vma *vma,
> > >  		 struct i915_address_space *vm,
> > > -- 
> > > 2.28.0
> > > 
> > 
> > -- 
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
