Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E5C88CD63
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 20:43:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B14810E600;
	Tue, 26 Mar 2024 19:43:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="krcysZt9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2D8510E523
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 19:43:06 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id
 ffacd0b85a97d-341b01dbebbso4543756f8f.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 12:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1711482185; x=1712086985;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zy7R3laDkcnQg98HbFy8Q5ElmS8gPffgi+Vgmnv+A4g=;
 b=krcysZt9CyWEGeMlVsUOJLGMYoYyHl/ZF5qFI8CfMqhwW7ofcS3Qd6auTeQRza//2E
 oA5I+AdnXdW6OnQ2T7uhIodXIPZZPYtUe7ItqVxi685rrPV2NnJy4aWEh/unNsvX6QYk
 TxdeoBvdDC9Rk24g4r6QlFIcPpWQ5jmdsCMEo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711482185; x=1712086985;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zy7R3laDkcnQg98HbFy8Q5ElmS8gPffgi+Vgmnv+A4g=;
 b=TI1XeebU2RzrYKf34v6Dm49w2KpvirRMOpF2Rg0sEX4jY5MI8ihis0jcfcjjS1lEeU
 TgAz+5CbLmQngR3H4AixOu0sfR3cU3T9bhGB96qwEjgvuqLfZwHuSvoMT8+730CTjeNO
 PRUQHb+D0E2MPXs4hLY+PrmG0nscoN4/IMpmnNlzXDlC5hFWORnGfbLcBPCLFqOk8HiY
 bchL6JdOJCakSCPuHlPd4cweQpc7c+gpt/nMIjtZWpHRUxBBBCuXcVFvwhvbAv8RAYNO
 1a6x4xM0X/ptTBJuzBVzkqCLtzYp7pJj+Q3gprgawuktJKHJQN+QF1JJ5eZ59yTtXLJz
 4MfA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVe9AXwR9M2KekvXNLNqiPUQOyGDnuZOUokj1j94rIbDitvXs8xK2Mp0Sx6GyCoSJLoq6IzuDZyGGYwxzmTM2tTFPZl9Kszyz2uvf7KcP9O
X-Gm-Message-State: AOJu0YyiN8pkf/QouWQTkd4L7XaZFcuc0mPZzHdUI3aSqvw33rzCKuVj
 y737xh3+dGXsVoHxHrqej2dU538mKuhDXsp6BO9Oi0goh9iF2QUCgxxYXZZrquM/zm/c5x7n7xU
 6XC84ULqNn5zcfB3tdePN4m5YQfam1avOH+vC
X-Google-Smtp-Source: AGHT+IET8n4Ae0ICZ653vKzXaymI1U4EANFj/+/gRqxTACpN2yw/8C7d/ufDs5YKISlbU5NE18dapPSPa7EwA7gwdlU=
X-Received: by 2002:adf:e2d2:0:b0:33d:dcd4:9d8f with SMTP id
 d18-20020adfe2d2000000b0033ddcd49d8fmr545758wrj.65.1711482184967; Tue, 26 Mar
 2024 12:43:04 -0700 (PDT)
MIME-Version: 1.0
References: <20240313095949.6898-6-stanislav.lisovskiy@intel.com>
 <20240320151505.28576-1-stanislav.lisovskiy@intel.com>
 <PH7PR11MB8252E7A3BCFF8770AC7EC41C89362@PH7PR11MB8252.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB8252E7A3BCFF8770AC7EC41C89362@PH7PR11MB8252.namprd11.prod.outlook.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 26 Mar 2024 12:42:54 -0700
Message-ID: <CAE72mNkzSatw88oE2RE-uOKTLksAjH1+UGfjWw-jcU94WFAy7g@mail.gmail.com>
Subject: Re: [PATCH 5/6] drm/i915: Handle joined pipes inside hsw_crtc_enable()
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>
Cc: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "Saarinen, Jani" <jani.saarinen@intel.com>, 
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

The bigjoiner master handling in modset_enables/disables looks good.

Reviewed-by: Manasi Navare <navaremanasi@chromium.org>

Manasi

On Mon, Mar 25, 2024 at 12:20=E2=80=AFAM Srinivas, Vidya
<vidya.srinivas@intel.com> wrote:
>
> Thank you Stan. Rev 14 works.
> Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
>
> > -----Original Message-----
> > From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> > Sent: Wednesday, March 20, 2024 8:45 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen, Jan=
i
> > <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com; Srinivas, Vid=
ya
> > <vidya.srinivas@intel.com>
> > Subject: [PATCH 5/6] drm/i915: Handle joined pipes inside hsw_crtc_enab=
le()
> >
> > Handle only bigjoiner masters in skl_commit_modeset_enables/disables,
> > slave crtcs should be handled by master hooks. Same for encoders.
> > That way we can also remove a bunch of checks like
> > intel_crtc_is_bigjoiner_slave.
> >
> > v2: - Moved skl_pfit_enable, intel_dsc_enable, intel_crtc_vblank_on to
> > intel_enable_ddi,
> >       so that it is now finally symmetrical with the disable case, beca=
use
> > currently
> >       for some weird reason we are calling those from
> > skl_commit_modeset_enables, while
> >       for the disable case those are called from the ddi disable hooks.
> >
> > v3: - Create intel_ddi_enable_hdmi_or_sst symmetrical to
> >       intel_ddi_post_disable_hdmi_or_sst and move it also under non-mst
> > check.
> >
> > v4: - Fix intel_enable_ddi sequence
> >     - Call intel_crtc_update_active_timings for slave pipes as well
> >
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c     |  45 ++++-
> >  drivers/gpu/drm/i915/display/intel_display.c | 179 ++++++++++---------
> >  drivers/gpu/drm/i915/display/intel_display.h |   7 +
> >  3 files changed, 137 insertions(+), 94 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 290ccab7c9ee8..9128b82a49c31 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3366,15 +3366,28 @@ static void intel_enable_ddi_hdmi(struct
> > intel_atomic_state *state,
> >       intel_wait_ddi_buf_active(dev_priv, port);  }
> >
> > -static void intel_enable_ddi(struct intel_atomic_state *state,
> > -                          struct intel_encoder *encoder,
> > -                          const struct intel_crtc_state *crtc_state,
> > -                          const struct drm_connector_state *conn_state=
)
> > +static void intel_ddi_enable_hdmi_or_sst(struct intel_atomic_state *st=
ate,
> > +                                      struct intel_encoder *encoder,
> > +                                      const struct intel_crtc_state
> > *crtc_state,
> > +                                      const struct drm_connector_state
> > *conn_state)
> >  {
> > -     drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
> > +     struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> > +     u8 pipe_mask =3D intel_crtc_joined_pipe_mask(crtc_state);
> > +     struct intel_crtc *crtc;
> > +
> > +     for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, crtc,
> > pipe_mask) {
> > +             const struct intel_crtc_state *new_crtc_state =3D
> > +                     intel_atomic_get_new_crtc_state(state, crtc);
> > +
> > +             intel_dsc_enable(new_crtc_state);
> > +
> > +             if (DISPLAY_VER(i915) >=3D 9)
> > +                     skl_pfit_enable(new_crtc_state);
> > +             else
> > +                     ilk_pfit_enable(new_crtc_state);
> > +     }
> >
> > -     if (!intel_crtc_is_bigjoiner_slave(crtc_state))
> > -             intel_ddi_enable_transcoder_func(encoder, crtc_state);
> > +     intel_ddi_enable_transcoder_func(encoder, crtc_state);
> >
> >       /* Enable/Disable DP2.0 SDP split config before transcoder */
> >       intel_audio_sdp_split_update(crtc_state);
> > @@ -3383,7 +3396,22 @@ static void intel_enable_ddi(struct
> > intel_atomic_state *state,
> >
> >       intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
> >
> > -     intel_crtc_vblank_on(crtc_state);
> > +     for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, crtc,
> > pipe_mask) {
> > +             const struct intel_crtc_state *new_crtc_state =3D
> > +                     intel_atomic_get_new_crtc_state(state, crtc);
> > +             intel_crtc_vblank_on(new_crtc_state);
> > +     }
> > +}
> > +
> > +static void intel_enable_ddi(struct intel_atomic_state *state,
> > +                          struct intel_encoder *encoder,
> > +                          const struct intel_crtc_state *crtc_state,
> > +                          const struct drm_connector_state *conn_state=
) {
> > +     drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
> > +
> > +     if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> > +             intel_ddi_enable_hdmi_or_sst(state, encoder, crtc_state,
> > conn_state);
> >
> >       if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> >               intel_enable_ddi_hdmi(state, encoder, crtc_state,
> > conn_state); @@ -3391,7 +3419,6 @@ static void intel_enable_ddi(struct
> > intel_atomic_state *state,
> >               intel_enable_ddi_dp(state, encoder, crtc_state, conn_stat=
e);
> >
> >       intel_hdcp_enable(state, encoder, crtc_state, conn_state);
> > -
> >  }
> >
> >  static void intel_disable_ddi_dp(struct intel_atomic_state *state, dif=
f --git
> > a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index a1eccefde9f09..af029577e58bb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -794,7 +794,7 @@ intel_get_crtc_new_encoder(const struct
> > intel_atomic_state *state,
> >       return encoder;
> >  }
> >
> > -static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
> > +void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
> >  {
> >       struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >       struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev); @@=
 -
> > 1593,24 +1593,6 @@ static void hsw_set_frame_start_delay(const struct
> > intel_crtc_state *crtc_state)
> >                    HSW_FRAME_START_DELAY(crtc_state->framestart_delay -
> > 1));  }
> >
> > -static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *st=
ate,
> > -                                      const struct intel_crtc_state
> > *crtc_state)
> > -{
> > -     struct intel_crtc *master_crtc =3D intel_master_crtc(crtc_state);
> > -
> > -     /*
> > -      * Enable sequence steps 1-7 on bigjoiner master
> > -      */
> > -     if (intel_crtc_is_bigjoiner_slave(crtc_state))
> > -             intel_encoders_pre_pll_enable(state, master_crtc);
> > -
> > -     if (crtc_state->shared_dpll)
> > -             intel_enable_shared_dpll(crtc_state);
> > -
> > -     if (intel_crtc_is_bigjoiner_slave(crtc_state))
> > -             intel_encoders_pre_enable(state, master_crtc);
> > -}
> > -
> >  static void hsw_configure_cpu_transcoder(const struct intel_crtc_state
> > *crtc_state)  {
> >       struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > @@ -1646,90 +1628,103 @@ static void hsw_crtc_enable(struct
> > intel_atomic_state *state,
> >       const struct intel_crtc_state *new_crtc_state =3D
> >               intel_atomic_get_new_crtc_state(state, crtc);
> >       struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > -     enum pipe pipe =3D crtc->pipe, hsw_workaround_pipe;
> > +     u8 pipe_mask =3D intel_crtc_joined_pipe_mask(new_crtc_state);
> > +     struct intel_crtc *pipe_mask_crtc;
> >       enum transcoder cpu_transcoder =3D new_crtc_state->cpu_transcoder=
;
> > -     bool psl_clkgate_wa;
> >
> >       if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> >               return;
> >
> > -     intel_dmc_enable_pipe(dev_priv, crtc->pipe);
> > +     for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm,
> > pipe_mask_crtc,
> > +                                              pipe_mask)
> > +             intel_dmc_enable_pipe(dev_priv, pipe_mask_crtc->pipe);
> >
> > -     if (!new_crtc_state->bigjoiner_pipes) {
> > -             intel_encoders_pre_pll_enable(state, crtc);
> > +     intel_encoders_pre_pll_enable(state, crtc);
> >
> > -             if (new_crtc_state->shared_dpll)
> > -                     intel_enable_shared_dpll(new_crtc_state);
> > +     for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm,
> > pipe_mask_crtc,
> > +                                              pipe_mask) {
> > +             const struct intel_crtc_state *pipe_mask_crtc_state =3D
> > +                     intel_atomic_get_new_crtc_state(state,
> > pipe_mask_crtc);
> >
> > -             intel_encoders_pre_enable(state, crtc);
> > -     } else {
> > -             icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
> > -     }
> > +             if (new_crtc_state->shared_dpll)
> > +                     intel_enable_shared_dpll(pipe_mask_crtc_state);
> >
> > -     intel_dsc_enable(new_crtc_state);
> > +             if (DISPLAY_VER(dev_priv) >=3D 13)
> > +
> >       intel_uncompressed_joiner_enable(pipe_mask_crtc_state);
> >
> > -     if (DISPLAY_VER(dev_priv) >=3D 13)
> > -             intel_uncompressed_joiner_enable(new_crtc_state);
> > +             intel_set_pipe_src_size(pipe_mask_crtc_state);
> > +             if (DISPLAY_VER(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv=
))
> > +                     bdw_set_pipe_misc(pipe_mask_crtc_state);
> > +     }
> >
> > -     intel_set_pipe_src_size(new_crtc_state);
> > -     if (DISPLAY_VER(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv))
> > -             bdw_set_pipe_misc(new_crtc_state);
> > +     intel_encoders_pre_enable(state, crtc);
> >
> > -     if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
> > -         !transcoder_is_dsi(cpu_transcoder))
> > +     if (!transcoder_is_dsi(cpu_transcoder))
> >               hsw_configure_cpu_transcoder(new_crtc_state);
> >
> > -     crtc->active =3D true;
> > -
> > -     /* Display WA #1180: WaDisableScalarClockGating: glk */
> > -     psl_clkgate_wa =3D DISPLAY_VER(dev_priv) =3D=3D 10 &&
> > -             new_crtc_state->pch_pfit.enabled;
> > -     if (psl_clkgate_wa)
> > -             glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
> > +     for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm,
> > pipe_mask_crtc,
> > +                                              pipe_mask) {
> > +             const struct intel_crtc_state *pipe_mask_crtc_state =3D
> > +                     intel_atomic_get_new_crtc_state(state,
> > pipe_mask_crtc);
> > +             bool psl_clkgate_wa;
> > +             enum pipe pipe =3D pipe_mask_crtc->pipe;
> >
> > -     if (DISPLAY_VER(dev_priv) >=3D 9)
> > -             skl_pfit_enable(new_crtc_state);
> > -     else
> > -             ilk_pfit_enable(new_crtc_state);
> > +             pipe_mask_crtc->active =3D true;
> >
> > -     /*
> > -      * On ILK+ LUT must be loaded before the pipe is running but with
> > -      * clocks enabled
> > -      */
> > -     intel_color_load_luts(new_crtc_state);
> > -     intel_color_commit_noarm(new_crtc_state);
> > -     intel_color_commit_arm(new_crtc_state);
> > -     /* update DSPCNTR to configure gamma/csc for pipe bottom color */
> > -     if (DISPLAY_VER(dev_priv) < 9)
> > -             intel_disable_primary_plane(new_crtc_state);
> > +             /* Display WA #1180: WaDisableScalarClockGating: glk */
> > +             psl_clkgate_wa =3D DISPLAY_VER(dev_priv) =3D=3D 10 &&
> > +                     pipe_mask_crtc_state->pch_pfit.enabled;
> > +             if (psl_clkgate_wa)
> > +                     glk_pipe_scaler_clock_gating_wa(dev_priv, pipe,
> > true);
> >
> > -     hsw_set_linetime_wm(new_crtc_state);
> > +             /*
> > +              * On ILK+ LUT must be loaded before the pipe is running =
but
> > with
> > +              * clocks enabled
> > +              */
> > +             intel_color_load_luts(pipe_mask_crtc_state);
> > +             intel_color_commit_noarm(pipe_mask_crtc_state);
> > +             intel_color_commit_arm(pipe_mask_crtc_state);
> > +             /* update DSPCNTR to configure gamma/csc for pipe bottom
> > color */
> > +             if (DISPLAY_VER(dev_priv) < 9)
> > +                     intel_disable_primary_plane(pipe_mask_crtc_state)=
;
> >
> > -     if (DISPLAY_VER(dev_priv) >=3D 11)
> > -             icl_set_pipe_chicken(new_crtc_state);
> > +             hsw_set_linetime_wm(pipe_mask_crtc_state);
> >
> > -     intel_initial_watermarks(state, crtc);
> > +             if (DISPLAY_VER(dev_priv) >=3D 11)
> > +                     icl_set_pipe_chicken(pipe_mask_crtc_state);
> >
> > -     if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> > -             intel_crtc_vblank_on(new_crtc_state);
> > +             intel_initial_watermarks(state, pipe_mask_crtc);
> > +     }
> >
> >       intel_encoders_enable(state, crtc);
> >
> > -     if (psl_clkgate_wa) {
> > -             intel_crtc_wait_for_next_vblank(crtc);
> > -             glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
> > -     }
> > +     for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm,
> > pipe_mask_crtc,
> > +                                              pipe_mask) {
> > +             const struct intel_crtc_state *pipe_mask_crtc_state =3D
> > +                     intel_atomic_get_new_crtc_state(state,
> > pipe_mask_crtc);
> > +             bool psl_clkgate_wa;
> > +             enum pipe pipe =3D pipe_mask_crtc->pipe,
> > hsw_workaround_pipe;
> > +
> > +             /* Display WA #1180: WaDisableScalarClockGating: glk */
> > +             psl_clkgate_wa =3D DISPLAY_VER(dev_priv) =3D=3D 10 &&
> > +                     pipe_mask_crtc_state->pch_pfit.enabled;
> > +
> > +             if (psl_clkgate_wa) {
> > +                     intel_crtc_wait_for_next_vblank(pipe_mask_crtc);
> > +                     glk_pipe_scaler_clock_gating_wa(dev_priv, pipe,
> > false);
> > +             }
> >
> > -     /* If we change the relative order between pipe/planes enabling, =
we
> > need
> > -      * to change the workaround. */
> > -     hsw_workaround_pipe =3D new_crtc_state->hsw_workaround_pipe;
> > -     if (IS_HASWELL(dev_priv) && hsw_workaround_pipe !=3D
> > INVALID_PIPE) {
> > -             struct intel_crtc *wa_crtc;
> > +             /* If we change the relative order between pipe/planes
> > enabling, we need
> > +              * to change the workaround. */
> > +             hsw_workaround_pipe =3D pipe_mask_crtc_state-
> > >hsw_workaround_pipe;
> > +             if (IS_HASWELL(dev_priv) && hsw_workaround_pipe !=3D
> > INVALID_PIPE) {
> > +                     struct intel_crtc *wa_crtc;
> >
> > -             wa_crtc =3D intel_crtc_for_pipe(dev_priv,
> > hsw_workaround_pipe);
> > +                     wa_crtc =3D intel_crtc_for_pipe(dev_priv,
> > hsw_workaround_pipe);
> >
> > -             intel_crtc_wait_for_next_vblank(wa_crtc);
> > -             intel_crtc_wait_for_next_vblank(wa_crtc);
> > +                     intel_crtc_wait_for_next_vblank(wa_crtc);
> > +                     intel_crtc_wait_for_next_vblank(wa_crtc);
> > +             }
> >       }
> >  }
> >
> > @@ -6626,12 +6621,20 @@ static void intel_enable_crtc(struct
> > intel_atomic_state *state,
> >       struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> >       const struct intel_crtc_state *new_crtc_state =3D
> >               intel_atomic_get_new_crtc_state(state, crtc);
> > +     u8 pipe_mask =3D intel_crtc_joined_pipe_mask(new_crtc_state);
> > +     struct intel_crtc *pipe_mask_crtc;
> >
> >       if (!intel_crtc_needs_modeset(new_crtc_state))
> >               return;
> >
> > -     /* VRR will be enable later, if required */
> > -     intel_crtc_update_active_timings(new_crtc_state, false);
> > +     for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm,
> > pipe_mask_crtc,
> > +                                              pipe_mask) {
> > +             const struct intel_crtc_state *_new_crtc_state =3D
> > +                     intel_atomic_get_new_crtc_state(state,
> > pipe_mask_crtc);
> > +
> > +             /* VRR will be enable later, if required */
> > +             intel_crtc_update_active_timings(_new_crtc_state, false);
> > +     }
> >
> >       dev_priv->display.funcs.display->crtc_enable(state, crtc);
> >
> > @@ -6711,8 +6714,9 @@ static void intel_update_crtc(struct
> > intel_atomic_state *state,
> >        *
> >        * FIXME Should be synchronized with the start of vblank somehow.=
..
> >        */
> > -     if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> > -         new_crtc_state->update_m_n || new_crtc_state->update_lrr)
> > +     if ((vrr_enabling(old_crtc_state, new_crtc_state) ||
> > +         new_crtc_state->update_m_n || new_crtc_state->update_lrr) &&
> > +         !new_crtc_state->bigjoiner_pipes)
> >               intel_crtc_update_active_timings(new_crtc_state,
> >                                                new_crtc_state->vrr.enab=
le);
> >
> > @@ -6934,11 +6938,13 @@ static void skl_commit_modeset_enables(struct
> > intel_atomic_state *state)
> >                       continue;
> >
> >               if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
> > -                 is_trans_port_sync_master(new_crtc_state) ||
> > -                 intel_crtc_is_bigjoiner_master(new_crtc_state))
> > +                 is_trans_port_sync_master(new_crtc_state))
> >                       continue;
> >
> > -             modeset_pipes &=3D ~BIT(pipe);
> > +             if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> > +                     continue;
> > +
> > +             modeset_pipes &=3D
> > ~intel_crtc_joined_pipe_mask(new_crtc_state);
> >
> >               intel_enable_crtc(state, crtc);
> >       }
> > @@ -6953,7 +6959,10 @@ static void skl_commit_modeset_enables(struct
> > intel_atomic_state *state)
> >               if ((modeset_pipes & BIT(pipe)) =3D=3D 0)
> >                       continue;
> >
> > -             modeset_pipes &=3D ~BIT(pipe);
> > +             if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> > +                     continue;
> > +
> > +             modeset_pipes &=3D
> > ~intel_crtc_joined_pipe_mask(new_crtc_state);
> >
> >               intel_enable_crtc(state, crtc);
> >       }
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> > b/drivers/gpu/drm/i915/display/intel_display.h
> > index 631218c954a47..9ace9b20f3b2a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -312,6 +312,12 @@ enum phy_fia {
> >       list_for_each_entry((intel_encoder), &(dev)-
> > >mode_config.encoder_list, base.head) \
> >               for_each_if((intel_encoder)->base.crtc =3D=3D (__crtc))
> >
> > +#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc,
> > pipe_mask)    \
> > +     list_for_each_entry_reverse(intel_crtc,
> >       \
> > +                                 &(dev)->mode_config.crtc_list,
> >       \
> > +                                 base.head)
> >       \
> > +             for_each_if((pipe_mask) & BIT(intel_crtc->pipe))
> > +
> >  #define for_each_old_intel_plane_in_state(__state, plane, old_plane_st=
ate,
> > __i) \
> >       for ((__i) =3D 0; \
> >            (__i) < (__state)->base.dev->mode_config.num_total_plane && =
\
> > @@ -493,6 +499,7 @@ intel_aux_power_domain(struct intel_digital_port
> > *dig_port);  void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
> >                                 struct intel_crtc_state *crtc_state);  =
void
> > ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
> > +void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
> >
> >  int bdw_get_pipe_misc_bpp(struct intel_crtc *crtc);  unsigned int
> > intel_plane_fence_y_offset(const struct intel_plane_state *plane_state)=
;
> > --
> > 2.37.3
>
