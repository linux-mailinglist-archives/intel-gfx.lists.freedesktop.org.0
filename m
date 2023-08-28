Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C3F78B786
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 20:48:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4235410E33B;
	Mon, 28 Aug 2023 18:48:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01DC510E33B
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 18:48:01 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-99cdb0fd093so462216366b.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 11:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1693248480; x=1693853280;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UZz2BrVOOULNNXJCEWo90iwpIONoUCSr0DPspkQoXwY=;
 b=Ip3sTwm7b4P5Fz4e7kT4EOe2i+4rb+tbO6vyOBEPB/RQ7WR3tJVptykatJBuDE3zFm
 2ZwIqj25235k85fyBmbAr3evB8b/Qu/L0N4g6q6455INBEXbNoZByBHdvfbx89HvVarW
 a4rB34CEcp/Deby9oAw4v6qiQI/MZU2wuO76k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693248480; x=1693853280;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UZz2BrVOOULNNXJCEWo90iwpIONoUCSr0DPspkQoXwY=;
 b=UyTiCN+LyJK0Oez8nkiCA4/x6UaDbf43adjfGfnawwJPpd74XgiHlYrXHP8Wu7Acdt
 NhTO5EC4rHw3SeQgT9awcpB/ozKCYbK8AQO8ndou24wobLejTCyK73TvOgl14Te8vT5t
 y1idDrM8BI/gP1YHeKJqooHPgZ8Nfr0cENXJr78NWvVM6kZ5yHQ1+oXDNCxlmVIeJzf9
 kTkWYx9ldQl6jgqJEp6xpMzeDRwlCsOTu73J7gUZNeQ/hLtyMcGrXyQdfqDzNBfAqILk
 D9Id3v+yndLIwVpBJv1W+vbKuUADaOK9BGsOoAXzXAm7T2ARe6ouNBSK8cy3igrhWZ5Z
 BGeA==
X-Gm-Message-State: AOJu0Yy7r5T9hEC6RpH/X01AcMOiqM9qEkM7Sk4E6pJLY8NEkRmdmZd6
 QhvNRtPr9cjteparOfrpzHgAruaBZXuPlXuw0LSq48KA5ghTFmJLk50=
X-Google-Smtp-Source: AGHT+IG7pe9nGkN45F0cUTWdotQn6P13z90nbcJWm20tEhgYHVRpVYOHaf7w+jFhmg1HBKsvVRautPLDMt/CExIIDP4=
X-Received: by 2002:a17:907:7f87:b0:9a1:fe9c:eee5 with SMTP id
 qk7-20020a1709077f8700b009a1fe9ceee5mr12697465ejc.63.1693248480321; Mon, 28
 Aug 2023 11:48:00 -0700 (PDT)
MIME-Version: 1.0
References: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
 <20230828054140.28054-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20230828054140.28054-5-ville.syrjala@linux.intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Mon, 28 Aug 2023 11:47:49 -0700
Message-ID: <CAE72mNk6VHHnUgOxHboCVB=X=UZ+jQLObB_12orHnMjJWm62jw@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
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

On Sun, Aug 27, 2023 at 10:41=E2=80=AFPM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> In order to reconcile seamless M/N updates with VRR we'll
> need to defer the fastset VRR enable to happen after the
> seamless M/N update (which happens during the vblank evade
> critical section). So just push the VRR enable to be the last
> thing during the update.
>
> This will also affect the vblank evasion as the transcoder
> will now still be running with the old VRR state during
> the vblank evasion. So just grab the timings always from the
> old crtc state during any non-modeset commit, and also grab
> the current state of VRR from the active timings (as we disable
> VRR before vblank evasion during fastsets).
>
> This also fixes vblank evasion for seamless M/N updates as
> we now properly account for the fact that the M/N update
> happens after vblank evasion.
>
> Cc: Manasi Navare <navaremanasi@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c    | 35 ++++++++++++--------
>  drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++----
>  2 files changed, 36 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index e46a15d59d79..1992e7060263 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -472,15 +472,31 @@ static void intel_crtc_vblank_evade_scanlines(struc=
t intel_atomic_state *state,
>                                               struct intel_crtc *crtc,
>                                               int *min, int *max, int *vb=
lank_start)
>  {
> +       const struct intel_crtc_state *old_crtc_state =3D
> +               intel_atomic_get_old_crtc_state(state, crtc);
>         const struct intel_crtc_state *new_crtc_state =3D
>                 intel_atomic_get_new_crtc_state(state, crtc);
> -       const struct drm_display_mode *adjusted_mode =3D &new_crtc_state-=
>hw.adjusted_mode;
> +       const struct intel_crtc_state *crtc_state;
> +       const struct drm_display_mode *adjusted_mode;
>
> -       if (new_crtc_state->vrr.enable) {
> -               if (intel_vrr_is_push_sent(new_crtc_state))
> -                       *vblank_start =3D intel_vrr_vmin_vblank_start(new=
_crtc_state);
> +       /*
> +        * During fastsets/etc. the transcoder is still
> +        * running with the old timings at this point.
> +        *
> +        * TODO: maybe just use the active timings here?
> +        */
> +       if (intel_crtc_needs_modeset(new_crtc_state))
> +               crtc_state =3D new_crtc_state;
> +       else
> +               crtc_state =3D old_crtc_state;
> +
> +       adjusted_mode =3D &crtc_state->hw.adjusted_mode;
> +
> +       if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
> +               if (intel_vrr_is_push_sent(crtc_state))
> +                       *vblank_start =3D intel_vrr_vmin_vblank_start(crt=
c_state);
>                 else
> -                       *vblank_start =3D intel_vrr_vmax_vblank_start(new=
_crtc_state);
> +                       *vblank_start =3D intel_vrr_vmax_vblank_start(crt=
c_state);
>         } else {
>                 *vblank_start =3D intel_mode_vblank_start(adjusted_mode);
>         }
> @@ -710,15 +726,6 @@ void intel_pipe_update_end(struct intel_atomic_state=
 *state,
>          */
>         intel_vrr_send_push(new_crtc_state);
>
> -       /*
> -        * Seamless M/N update may need to update frame timings.
> -        *
> -        * FIXME Should be synchronized with the start of vblank somehow.=
..
> -        */
> -       if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_=
crtc_state))
> -               intel_crtc_update_active_timings(new_crtc_state,
> -                                                new_crtc_state->vrr.enab=
le);
> -
>         local_irq_enable();
>
>         if (intel_vgpu_active(dev_priv))
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index cfad967b5684..632f1f58df9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6476,6 +6476,8 @@ static void commit_pipe_post_planes(struct intel_at=
omic_state *state,
>                                     struct intel_crtc *crtc)
>  {
>         struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +       const struct intel_crtc_state *old_crtc_state =3D
> +               intel_atomic_get_old_crtc_state(state, crtc);
>         const struct intel_crtc_state *new_crtc_state =3D
>                 intel_atomic_get_new_crtc_state(state, crtc);
>
> @@ -6487,6 +6489,9 @@ static void commit_pipe_post_planes(struct intel_at=
omic_state *state,
>         if (DISPLAY_VER(dev_priv) >=3D 9 &&
>             !intel_crtc_needs_modeset(new_crtc_state))
>                 skl_detach_scalers(new_crtc_state);
> +
> +       if (vrr_enabling(old_crtc_state, new_crtc_state))
> +               intel_vrr_enable(new_crtc_state);

Wouldnt we also need the condition here:
new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state))

So that we update VRR enable bit in the seamless_m_n fastset case as well.
This will be needed later once we start updating the VRR params regs
in fastset, since
that otherwise ends up resetting VRR enable bit.



>  }
>
>  static void intel_enable_crtc(struct intel_atomic_state *state,
> @@ -6527,12 +6532,6 @@ static void intel_update_crtc(struct intel_atomic_=
state *state,
>                         intel_dpt_configure(crtc);
>         }
>
> -       if (vrr_enabling(old_crtc_state, new_crtc_state)) {
> -               intel_vrr_enable(new_crtc_state);
> -               intel_crtc_update_active_timings(new_crtc_state,
> -                                                new_crtc_state->vrr.enab=
le);
> -       }
> -
>         if (!modeset) {
>                 if (new_crtc_state->preload_luts &&
>                     intel_crtc_needs_color_update(new_crtc_state))
> @@ -6569,6 +6568,16 @@ static void intel_update_crtc(struct intel_atomic_=
state *state,
>
>         intel_pipe_update_end(state, crtc);
>
> +       /*
> +        * VRR/Seamless M/N update may need to update frame timings.
> +        *
> +        * FIXME Should be synchronized with the start of vblank somehow.=
..
> +        */
> +       if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> +           (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new=
_crtc_state)))
> +               intel_crtc_update_active_timings(new_crtc_state,
> +                                                new_crtc_state->vrr.enab=
le);
> +

So would the VRR min/max, flipline values also be updated here
eventually for the fastset in seamless_m_n case?

Manasi


>         /*
>          * We usually enable FIFO underrun interrupts as part of the
>          * CRTC enable sequence during modesets.  But when we inherit a
> --
> 2.41.0
>
