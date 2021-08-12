Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D190F3EAA89
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 21:02:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF13F6E44A;
	Thu, 12 Aug 2021 19:02:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com
 [IPv6:2607:f8b0:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E93CD6E44A
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 19:02:28 +0000 (UTC)
Received: by mail-ot1-x32f.google.com with SMTP id
 r16-20020a0568304190b02904f26cead745so8977354otu.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 12:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=re5FRl0mPZ55+cfEqi4RUFgOJeLv0V+ES58hKZXXSl0=;
 b=A0XmwN7qfAUYfjdPLqTGURaQIEmoEC5ebf1+j6hiIsPEiWTkd+oChPqhUaWv6KLGSk
 XqsTpz3mE2dDTgmo2EjzCrvzE2b3etl7WO7PHbzI/FCo2XaN+ln/g0HQ/F2QD5t3f/TW
 mNsy+MvhZXGtLaX/cAXWhrmceNLPqhkCqvEcc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=re5FRl0mPZ55+cfEqi4RUFgOJeLv0V+ES58hKZXXSl0=;
 b=gXrswo0ELZxbEa94EXRPd4vDA8buXmH7QqrK3YrDqAjAbAv6PYtftsNbbRjn00u2eN
 H2UjcAX3pvSfSAAh387bvUh6dGABdQSXg9y8emJfUr7dmMVBwG+QtKjSbMDhdsIZB+NF
 6QFzePCCvpvlT3UIlWvL8OafMRAe9k1Eu5cxN49aYljTZ3dsWocqC0X2IBstJdAcWfP5
 QJrXwtN2V++aqQpJGCHzJ7Zc8H4HRAaZg4z6a6zKk1aY8QXubf19uLTaxc60Wd0JtELY
 tpAo8fJ6zsQw+d2DZAhejIRbECQRCoBMOxFWkOE6n67GyKFZ/h5T6bHt8QZMbLtuzGu6
 g/JA==
X-Gm-Message-State: AOAM530OH19E6rnmO624j9U5OCq0sijdsDFnpmh/2d5aBncGHNfSBnYF
 SPdEr62wDoKSAlp4l64LsYqeP+Axu9pyC5BUKUtJ3w==
X-Google-Smtp-Source: ABdhPJxo4OR8uiCtZgoaLx+uepNqpP53LiNHXeHlX6UxQ3GfuzNx/52kofBe3+ECLW9+SezWXspIBQVT/pFeoctIWs4=
X-Received: by 2002:a9d:6b85:: with SMTP id b5mr4529753otq.303.1628794948222; 
 Thu, 12 Aug 2021 12:02:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210731001019.150373-1-jose.souza@intel.com>
 <7bb64b5affe28a87f716a03f52c709e5211acb67.camel@intel.com>
In-Reply-To: <7bb64b5affe28a87f716a03f52c709e5211acb67.camel@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 12 Aug 2021 21:02:16 +0200
Message-ID: <CAKMK7uEqXQyt_yvxHBUToS08+gEcBb0wmXVbExAj9Mw7ywnuog@mail.gmail.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>, 
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display/tgl+: Dispatch atomic
 commits instead of front buffer modifications
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

On Thu, Aug 12, 2021 at 7:24 PM Souza, Jose <jose.souza@intel.com> wrote:
>
> On Fri, 2021-07-30 at 17:10 -0700, Jos=C3=A9 Roberto de Souza wrote:
> > PSR2 selective fetch requires plane and transcoder registers to
> > be programed during the vblank to properly update the display and
> > there is no way around it.
> >
> > We could disable PSR2 at every notification of dirty front buffer from
> > user space but that would hurt the power savings and it would still
> > cause some race conditions between PSR2 exit sequence and atomic
> > commits that causes underruns and glitches.
> >
> > So from display 12 and newer we will start to do atomic commits
> > every time user space notify that front buffer is dirty and ignore
> > all frontbuffer flushes and invalidates on the PSR side.

So I filed a JIRA about this a while ago, and:
- This should be done on gen9 (or maybe gen10+), because we stopped
having userspace that was busted. Would be good to check whether we
can't push this down further even.
- We need to disable the entire intel_frontbuffer.c interface/uapi for
_all_ things. It's a horrendous uapi, and it needs to die.

You're already touching intel_user_framebuffer_dirty, so the other
pieces really should be done too. Maybe make a macro or function or
something so that we have a consistent check for which platforms still
have to support frontbuffer tracking.
-Daniel

> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
>
> >
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cursor.c  | 3 ++-
> >  drivers/gpu/drm/i915/display/intel_display.c | 7 ++++++-
> >  drivers/gpu/drm/i915/display/intel_psr.c     | 6 ++++++
> >  3 files changed, 14 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/=
drm/i915/display/intel_cursor.c
> > index c7618fef01439..d44022cb46a65 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > @@ -617,6 +617,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane=
,
> >                          u32 src_w, u32 src_h,
> >                          struct drm_modeset_acquire_ctx *ctx)
> >  {
> > +     struct drm_i915_private *i915 =3D to_i915(_crtc->dev);
> >       struct intel_plane *plane =3D to_intel_plane(_plane);
> >       struct intel_crtc *crtc =3D to_intel_crtc(_crtc);
> >       struct intel_plane_state *old_plane_state =3D
> > @@ -638,7 +639,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane=
,
> >        */
> >       if (!crtc_state->hw.active || intel_crtc_needs_modeset(crtc_state=
) ||
> >           crtc_state->update_pipe || crtc_state->bigjoiner ||
> > -         crtc_state->enable_psr2_sel_fetch)
> > +         DISPLAY_VER(i915) >=3D 12)
> >               goto slow;
> >
> >       /*
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 5ff0a011b28eb..4a936e1e7fa82 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -11720,10 +11720,15 @@ static int intel_user_framebuffer_dirty(struc=
t drm_framebuffer *fb,
> >                                       unsigned num_clips)
> >  {
> >       struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
> > +     struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> >
> >       i915_gem_object_flush_if_display(obj);
> > -     intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB)=
;
> >
> > +     if (DISPLAY_VER(i915) >=3D 12)
> > +             return drm_atomic_helper_dirtyfb(fb, file, flags, color, =
clips,
> > +                                              num_clips);
> > +
> > +     intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB)=
;
> >       return 0;
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm=
/i915/display/intel_psr.c
> > index 1b0daf649e823..caf92f414a6e7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -2039,6 +2039,9 @@ void intel_psr_invalidate(struct drm_i915_private=
 *dev_priv,
> >  {
> >       struct intel_encoder *encoder;
> >
> > +     if (DISPLAY_VER(dev_priv) >=3D 12)
> > +             return;
> > +
> >       if (origin =3D=3D ORIGIN_FLIP)
> >               return;
> >
> > @@ -2123,6 +2126,9 @@ void intel_psr_flush(struct drm_i915_private *dev=
_priv,
> >                       continue;
> >               }
> >
> > +             if (DISPLAY_VER(dev_priv) >=3D 12)
> > +                     continue;
> > +
> >               mutex_lock(&intel_dp->psr.lock);
> >               if (!intel_dp->psr.enabled) {
> >                       mutex_unlock(&intel_dp->psr.lock);
>


--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
