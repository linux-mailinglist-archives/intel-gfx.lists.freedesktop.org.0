Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FDC78C81E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 16:58:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506B510E38B;
	Tue, 29 Aug 2023 14:58:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90B3910E36D
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 14:58:31 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id
 a640c23a62f3a-99bf1f632b8so608170466b.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 07:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1693321110; x=1693925910;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=J5wrRNXt/Wr1hqVNpmp8Vz97f2/JhMu++g+nz1EF/tY=;
 b=BcN7zX3q/a5QWHv/yMK5VSIAgKqCU74wOeSEZFpY2LVB74mtc4FhYcHTOUApt+T/TW
 psFw3Jjs3tZsvuffVF7Q7glHSZ7c8wB2cJ5PL41T9+gLpvv3rgRplPDT6XhFP/PKJHcm
 5yTCQcBndTBXzCHW+Yv6G6XNPuyTL0CRwrgXA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693321110; x=1693925910;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=J5wrRNXt/Wr1hqVNpmp8Vz97f2/JhMu++g+nz1EF/tY=;
 b=H8fWErG/TFqK0QbhqB14RnKyqFhXoskrUe/+51kIzprhY+CykYJ2wddekoTm9e7QuW
 rSqbdBtax5wommcNWpR9H8GCB4F089fAr4o16vaxi7tk+SHuhWhQxCDdA2eZeA5Qifxn
 4zhdZ0ZoAxYcf9dLGw5UEVuilMvdP9lR8dPf73cxng02xRzZ5RErGnrl6Ppe1e/JbEKu
 2Use4ZLPSRjZMx4krx4LsplTWz0yol4NEsya2MvGbkotm/ZaLMwMcAR46x1MKggAvGIq
 qQcslkY1fmm/EzKbkiypQ3o29pB7op0fpNpeNE6yg8FVxH4+pW1zCUmqEn9e5nnRtpZT
 7t1w==
X-Gm-Message-State: AOJu0YzDi6GnJjIoPdgy4nD9lAt5eK2k2TX9tOCi44ip9ru3uSHbkLaD
 73EX33tFeysU7/SLcNPMx5geD04mxdgv/L+OxswQBQ==
X-Google-Smtp-Source: AGHT+IFYxk04nycQ7lFK9SMtS/ErkfOYp38qvZKuy3rxtQZmrMGTVlqF8qHlX0h802+7xyJFLwWg2ZroCVb25BvZ57k=
X-Received: by 2002:a17:907:a064:b0:9a2:232f:6f79 with SMTP id
 ia4-20020a170907a06400b009a2232f6f79mr10588573ejc.25.1693321109762; Tue, 29
 Aug 2023 07:58:29 -0700 (PDT)
MIME-Version: 1.0
References: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
 <20230828054140.28054-5-ville.syrjala@linux.intel.com>
 <CAE72mNk6VHHnUgOxHboCVB=X=UZ+jQLObB_12orHnMjJWm62jw@mail.gmail.com>
 <ZO2ryl0WXTa-cZuC@intel.com>
In-Reply-To: <ZO2ryl0WXTa-cZuC@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 29 Aug 2023 07:58:18 -0700
Message-ID: <CAE72mN=6KGiATREgn0gj+5jTuv1XckKP0ymrjkZvb8SKS35JoA@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Enable VRR later during
 fastsets
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 29, 2023 at 1:26=E2=80=AFAM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Mon, Aug 28, 2023 at 11:47:49AM -0700, Manasi Navare wrote:
> > On Sun, Aug 27, 2023 at 10:41=E2=80=AFPM Ville Syrjala
> > <ville.syrjala@linux.intel.com> wrote:
> > >
> > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > >
> > > In order to reconcile seamless M/N updates with VRR we'll
> > > need to defer the fastset VRR enable to happen after the
> > > seamless M/N update (which happens during the vblank evade
> > > critical section). So just push the VRR enable to be the last
> > > thing during the update.
> > >
> > > This will also affect the vblank evasion as the transcoder
> > > will now still be running with the old VRR state during
> > > the vblank evasion. So just grab the timings always from the
> > > old crtc state during any non-modeset commit, and also grab
> > > the current state of VRR from the active timings (as we disable
> > > VRR before vblank evasion during fastsets).
> > >
> > > This also fixes vblank evasion for seamless M/N updates as
> > > we now properly account for the fact that the M/N update
> > > happens after vblank evasion.
> > >
> > > Cc: Manasi Navare <navaremanasi@chromium.org>
> > > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_crtc.c    | 35 ++++++++++++------=
--
> > >  drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++----
> > >  2 files changed, 36 insertions(+), 20 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/=
drm/i915/display/intel_crtc.c
> > > index e46a15d59d79..1992e7060263 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > @@ -472,15 +472,31 @@ static void intel_crtc_vblank_evade_scanlines(s=
truct intel_atomic_state *state,
> > >                                               struct intel_crtc *crtc=
,
> > >                                               int *min, int *max, int=
 *vblank_start)
> > >  {
> > > +       const struct intel_crtc_state *old_crtc_state =3D
> > > +               intel_atomic_get_old_crtc_state(state, crtc);
> > >         const struct intel_crtc_state *new_crtc_state =3D
> > >                 intel_atomic_get_new_crtc_state(state, crtc);
> > > -       const struct drm_display_mode *adjusted_mode =3D &new_crtc_st=
ate->hw.adjusted_mode;
> > > +       const struct intel_crtc_state *crtc_state;
> > > +       const struct drm_display_mode *adjusted_mode;
> > >
> > > -       if (new_crtc_state->vrr.enable) {
> > > -               if (intel_vrr_is_push_sent(new_crtc_state))
> > > -                       *vblank_start =3D intel_vrr_vmin_vblank_start=
(new_crtc_state);
> > > +       /*
> > > +        * During fastsets/etc. the transcoder is still
> > > +        * running with the old timings at this point.
> > > +        *
> > > +        * TODO: maybe just use the active timings here?
> > > +        */
> > > +       if (intel_crtc_needs_modeset(new_crtc_state))
> > > +               crtc_state =3D new_crtc_state;
> > > +       else
> > > +               crtc_state =3D old_crtc_state;
> > > +
> > > +       adjusted_mode =3D &crtc_state->hw.adjusted_mode;
> > > +
> > > +       if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
> > > +               if (intel_vrr_is_push_sent(crtc_state))
> > > +                       *vblank_start =3D intel_vrr_vmin_vblank_start=
(crtc_state);
> > >                 else
> > > -                       *vblank_start =3D intel_vrr_vmax_vblank_start=
(new_crtc_state);
> > > +                       *vblank_start =3D intel_vrr_vmax_vblank_start=
(crtc_state);
> > >         } else {
> > >                 *vblank_start =3D intel_mode_vblank_start(adjusted_mo=
de);
> > >         }
> > > @@ -710,15 +726,6 @@ void intel_pipe_update_end(struct intel_atomic_s=
tate *state,
> > >          */
> > >         intel_vrr_send_push(new_crtc_state);
> > >
> > > -       /*
> > > -        * Seamless M/N update may need to update frame timings.
> > > -        *
> > > -        * FIXME Should be synchronized with the start of vblank some=
how...
> > > -        */
> > > -       if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(=
new_crtc_state))
> > > -               intel_crtc_update_active_timings(new_crtc_state,
> > > -                                                new_crtc_state->vrr.=
enable);
> > > -
> > >         local_irq_enable();
> > >
> > >         if (intel_vgpu_active(dev_priv))
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index cfad967b5684..632f1f58df9e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -6476,6 +6476,8 @@ static void commit_pipe_post_planes(struct inte=
l_atomic_state *state,
> > >                                     struct intel_crtc *crtc)
> > >  {
> > >         struct drm_i915_private *dev_priv =3D to_i915(state->base.dev=
);
> > > +       const struct intel_crtc_state *old_crtc_state =3D
> > > +               intel_atomic_get_old_crtc_state(state, crtc);
> > >         const struct intel_crtc_state *new_crtc_state =3D
> > >                 intel_atomic_get_new_crtc_state(state, crtc);
> > >
> > > @@ -6487,6 +6489,9 @@ static void commit_pipe_post_planes(struct inte=
l_atomic_state *state,
> > >         if (DISPLAY_VER(dev_priv) >=3D 9 &&
> > >             !intel_crtc_needs_modeset(new_crtc_state))
> > >                 skl_detach_scalers(new_crtc_state);
> > > +
> > > +       if (vrr_enabling(old_crtc_state, new_crtc_state))
> > > +               intel_vrr_enable(new_crtc_state);
> >
> > Wouldnt we also need the condition here:
> > new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state=
))
>
> That is handled elsewhere already.
>
> >
> > So that we update VRR enable bit in the seamless_m_n fastset case as we=
ll.
> > This will be needed later once we start updating the VRR params regs
> > in fastset, since
> > that otherwise ends up resetting VRR enable bit.
> >
> >
> >
> > >  }
> > >
> > >  static void intel_enable_crtc(struct intel_atomic_state *state,
> > > @@ -6527,12 +6532,6 @@ static void intel_update_crtc(struct intel_ato=
mic_state *state,
> > >                         intel_dpt_configure(crtc);
> > >         }
> > >
> > > -       if (vrr_enabling(old_crtc_state, new_crtc_state)) {
> > > -               intel_vrr_enable(new_crtc_state);
> > > -               intel_crtc_update_active_timings(new_crtc_state,
> > > -                                                new_crtc_state->vrr.=
enable);
> > > -       }
> > > -
> > >         if (!modeset) {
> > >                 if (new_crtc_state->preload_luts &&
> > >                     intel_crtc_needs_color_update(new_crtc_state))
> > > @@ -6569,6 +6568,16 @@ static void intel_update_crtc(struct intel_ato=
mic_state *state,
> > >
> > >         intel_pipe_update_end(state, crtc);
> > >
> > > +       /*
> > > +        * VRR/Seamless M/N update may need to update frame timings.
> > > +        *
> > > +        * FIXME Should be synchronized with the start of vblank some=
how...
> > > +        */
> > > +       if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> > > +           (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset=
(new_crtc_state)))
> > > +               intel_crtc_update_active_timings(new_crtc_state,
> > > +                                                new_crtc_state->vrr.=
enable);
> > > +
> >
> > So would the VRR min/max, flipline values also be updated here
> > eventually for the fastset in seamless_m_n case?
>
> No, it would be done earlier. Should be OK to do anywhere
> between the VRR disable and enable really. Doesn't even need
> to be inside the vblank evade critical section since VRR will
> already have been disabled when we change these.

Thanks Ville for the clarification.
So when you mean by then the VRR would already be disabled in vblank
evade, you are saying
that vblank would have already terminated as per the flipline value?

With fastset we will only call update_crtc(), where do you think we
can update the transcode timings
to update the VRR parameters?
I guess we can update those up right before enabling VRR?
so have a condition like  if (vrr_enabling || (seamless_m_n && fastset
&& vrr_params_changed)) : Update VRR params

Manasi

>
> >
> > Manasi
> >
> >
> > >         /*
> > >          * We usually enable FIFO underrun interrupts as part of the
> > >          * CRTC enable sequence during modesets.  But when we inherit=
 a
> > > --
> > > 2.41.0
> > >
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
