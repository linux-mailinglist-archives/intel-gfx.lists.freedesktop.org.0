Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A879C3E2F81
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Aug 2021 20:55:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330EC6EC16;
	Fri,  6 Aug 2021 18:55:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D21C56EC16
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Aug 2021 18:55:10 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id s13so4118209oie.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Aug 2021 11:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ee0WQeW0oG+HO4+aCd3pDBfOm+0C7p8Uim3sYNB9Dhs=;
 b=V3jMri66tYweKRcATev05VAOWtxQs52p0LGgXR0sUtaP1FY6m8/HLC19V7d4H1O6ZM
 jyII1sPovoHwb8CVgaKlZBhpg8PJqWhhZvNkSWW/JCv44iaxNQdtTJ516fIXtRcnzApW
 ozV7uipbgZnYKu57Yf/noXHkMmfYYCgh9Q0qY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ee0WQeW0oG+HO4+aCd3pDBfOm+0C7p8Uim3sYNB9Dhs=;
 b=PQ31kCGJXPNLHjiBWXbGOWFNR7YKOnDQf5VKLt2sOJnXjkj7ybOLYMbQ8ynmYtx1xi
 nrjTcoAZPqUQ3IhLPqPA+7jR54Ch3FtkBfrsNDdaQeEq9qRduoV0pj2peH8Wg9o2bvg4
 SSl825kST9V29QA1dLWyLMBGpYBoaxuh5akxGvulzmLCkKINBXjgQ4lJnkKH8/zC/230
 RGd4erLpC129avTasc66XY7OW6wU6MY66ogjYoM4ewSKoEDp55yzOhULPGRh2nWgJzKp
 ytNrI1zd+y/hAUmU3m4NfBh9p4/Z0B38wKI1i9YWR2WO6CDj7ZiMO1hOTTaYIYnQQ1ru
 G1bQ==
X-Gm-Message-State: AOAM5334Q7JKXc0Rx1UjCHaoxzJvFnT4XNgTlE5x/ohoTuwizl4bBmbb
 mXOFpS3CX+cdUhbMqsaSwDO/FIbxuk1nhSm2WRRYEw==
X-Google-Smtp-Source: ABdhPJyu5IblimdvK8unLyxQL5go3Wze1QlSxFjYYy0f/NJx+gBzxcskFzLl4GjuAx94IlCDtklhmTIe9pOkdbQUJlk=
X-Received: by 2002:a54:4015:: with SMTP id x21mr6374991oie.128.1628276110210; 
 Fri, 06 Aug 2021 11:55:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210728192100.132425-1-matthew.brost@intel.com>
 <23d6e809-1d6e-ae35-1aee-e6f0c8c90419@intel.com>
In-Reply-To: <23d6e809-1d6e-ae35-1aee-e6f0c8c90419@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 6 Aug 2021 20:54:59 +0200
Message-ID: <CAKMK7uGt3xcquCAkoMNhF4=yVPQpVpWM7zKS8jPQ=wzha-VPfA@mail.gmail.com>
To: John Harrison <john.c.harrison@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable bonding on gen12+
 platforms
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

On Fri, Aug 6, 2021 at 8:25 PM John Harrison <john.c.harrison@intel.com> wrote:
> On 7/28/2021 12:21, Matthew Brost wrote:
> > Disable bonding on gen12+ platforms aside from ones already supported by
> > the i915 - TGL, RKL, and ADL-S.
> >
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_context.c | 7 +++++++
> >   1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > index 05c3ee191710..9c3672bac0e2 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > @@ -446,6 +446,13 @@ set_proto_ctx_engines_bond(struct i915_user_extension __user *base, void *data)
> >       u16 idx, num_bonds;
> >       int err, n;
> >
> > +     if (GRAPHICS_VER(i915) >= 12 && !IS_TIGERLAKE(i915) &&
> > +         !IS_ROCKETLAKE(i915) && !IS_ALDERLAKE_S(i915)) {
> > +             drm_dbg(&i915->drm,
> > +                     "Bonding on gen12+ aside from TGL, RKL, and ADL_S not allowed\n");
> I would have said not supported rather than not allowed. Either way:
> Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

Either is fine with me.

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>
> > +             return -ENODEV;
> > +     }
> > +
> >       if (get_user(idx, &ext->virtual_index))
> >               return -EFAULT;
> >
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
