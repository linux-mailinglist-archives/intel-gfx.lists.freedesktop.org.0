Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 812CD63D78D
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 15:06:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DE5410E46A;
	Wed, 30 Nov 2022 14:06:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C79410E46B
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 14:06:15 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 q17-20020a17090aa01100b002194cba32e9so2063842pjp.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 06:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=c+w1CB5xGwRz+sGqhDvoeBpotJLJv3AvOhdkFgNyxWw=;
 b=MD5v08Ibj5XNOKlKXscF8lS0TL4Amkkm0ESrPONzMB7T7EefzMF8nPzvfw10V8JfHL
 0CtMsriBCkR4v6Qult+ueTCvoBGhmw+xEBqjOqTaPht1S9JrQ8XYAWWMIlqe8UooRrYJ
 Z1nwazl7vUaqagUTf2w90722cXkh3p83UyiZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=c+w1CB5xGwRz+sGqhDvoeBpotJLJv3AvOhdkFgNyxWw=;
 b=QYN9lRKO1T6Uk4d0IMU/woNLCY18YOpEzvHnKwqu9CCf9RaY+UvV+yOxexUEHaSRtU
 oy374MnCqWOp68nXqYZbLi/X0oXuQSPBRfWMWctSyRUK+YHsLaz8tDy997GW0A10Trs+
 gJm/1iiQVCbkzpqOwyXNrB9q7+Kjvz56RR8t3shRUdYmW0rC3FI6r3vYYUtNo8nRCKF4
 JuBhwgzzTe8lhN6PHA0Taw77ayegr2vzQfbP2ME2cLP6wVxcaZ131sL7lTrltgdSNJNN
 oFjqok5bcsKC2i+m4DJnRdGBltuQEQnKYLgUtQZwmuDhDmow39zdyNFDH55F1hlIRbap
 LsQg==
X-Gm-Message-State: ANoB5plgYCJCNYC8R4zHZTdxq3dnsDU5bWfThi6ivc++tHh9qkRQnTqv
 SUB32QBguzncvo9Q6qRSHUJ5/lLD4zLGBRHLfCRBCBH71l4=
X-Google-Smtp-Source: AA0mqf6Cge/4u+9gze2KtWfVZZyLFzbW2NVD+mbREm2cL/+UzrqplcEE41lrFeXbYJn9cZjDjnXT/j+9vxjPiXW1DwQ=
X-Received: by 2002:a17:902:820c:b0:189:505b:73dd with SMTP id
 x12-20020a170902820c00b00189505b73ddmr35150355pln.143.1669817175110; Wed, 30
 Nov 2022 06:06:15 -0800 (PST)
MIME-Version: 1.0
References: <20221125102137.1801-1-christian.koenig@amd.com>
 <20221125102137.1801-7-christian.koenig@amd.com>
 <d92312af-3c84-8bd9-108b-719fb1ec3a6b@linux.intel.com>
 <CAM0jSHMKBb3orp8Ez4sC8TNcjPZF9y-4e12Jy6SPqbJonhYVhw@mail.gmail.com>
 <d03545c9-d0cb-5bdb-24e8-9eadcda51b83@linux.intel.com>
In-Reply-To: <d03545c9-d0cb-5bdb-24e8-9eadcda51b83@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 30 Nov 2022 15:06:03 +0100
Message-ID: <CAKMK7uHf1yvpS5JWzF2JASkXuZwyvpzWw66w9sYe19_+VqMHeA@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915: stop using ttm_bo_wait
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
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 30 Nov 2022 at 14:03, Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
> On 29/11/2022 18:05, Matthew Auld wrote:
> > On Fri, 25 Nov 2022 at 11:14, Tvrtko Ursulin
> > <tvrtko.ursulin@linux.intel.com> wrote:
> >>
> >>
> >> + Matt
> >>
> >> On 25/11/2022 10:21, Christian K=C3=B6nig wrote:
> >>> TTM is just wrapping core DMA functionality here, remove the mid-laye=
r.
> >>> No functional change.
> >>>
> >>> Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> >>> ---
> >>>    drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 9 ++++++---
> >>>    1 file changed, 6 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/dr=
m/i915/gem/i915_gem_ttm.c
> >>> index 5247d88b3c13..d409a77449a3 100644
> >>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> >>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> >>> @@ -599,13 +599,16 @@ i915_ttm_resource_get_st(struct drm_i915_gem_ob=
ject *obj,
> >>>    static int i915_ttm_truncate(struct drm_i915_gem_object *obj)
> >>>    {
> >>>        struct ttm_buffer_object *bo =3D i915_gem_to_ttm(obj);
> >>> -     int err;
> >>> +     long err;
> >>>
> >>>        WARN_ON_ONCE(obj->mm.madv =3D=3D I915_MADV_WILLNEED);
> >>>
> >>> -     err =3D ttm_bo_wait(bo, true, false);
> >>> -     if (err)
> >>> +     err =3D dma_resv_wait_timeout(bo->base.resv, DMA_RESV_USAGE_BOO=
KKEEP,
> >>> +                                 true, 15 * HZ);
> >>
> >> This 15 second stuck out a bit for me and then on a slightly deeper lo=
ok
> >> it seems this timeout will "leak" into a few of i915 code paths. If we
> >> look at the difference between the legacy shmem and ttm backend I am n=
ot
> >> sure if the legacy one is blocking or not - but if it can block I don'=
t
> >> think it would have an arbitrary timeout like this. Matt your thoughts=
?
> >
> > Not sure what is meant by leak here, but the legacy shmem must also
> > wait/block when unbinding each VMA, before calling truncate. It's the
>
> By "leak" I meant if 15s timeout propagates into some code paths visible
> from userspace which with a legacy backend instead have an indefinite
> wait. If we have that it's probably not very good to have this
> inconsistency, or to apply an arbitrary timeout to those path to start wi=
th.
>
> > same story for the ttm backend, except slightly more complicated in
> > that there might be no currently bound VMA, and yet the GPU could
> > still be accessing the pages due to async unbinds, kernel moves etc,
> > which the wait here (and in i915_ttm_shrink) is meant to protect
> > against. If the wait times out it should just fail gracefully. I guess
> > we could just use MAX_SCHEDULE_TIMEOUT here? Not sure if it really
> > matters though.
>
> Right, depends if it can leak or not to userspace and diverge between
> backends.

Generally lock_timeout() is a design bug. It's either
lock_interruptible (or maybe lock_killable) or try_lock, but
lock_timeout is just duct-tape. I haven't dug in to figure out what
should be here, but it smells fishy.
-Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
