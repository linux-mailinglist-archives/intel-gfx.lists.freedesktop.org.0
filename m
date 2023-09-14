Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BCD7A119B
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 01:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BBF110E2BE;
	Thu, 14 Sep 2023 23:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A30E310E154
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 23:21:30 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id
 4fb4d7f45d1cf-52c9be5e6f0so1708710a12.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 16:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1694733689; x=1695338489;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=51EyTCNRDXeSx49c4FQ91aJ02pqOg3krLqpY/xeqslg=;
 b=D30U/2FazFMlOpS/L9oikeRpC/sPbDJ/g+UMSHckEZm9IUXga6rBhbgiXGCms4Z8xL
 t2by1jFZswQxg8P4S8cgjX3oepTRWbRCKn9YGznI4ThON9R1QPmx2WtJvzAFHNDEgRvz
 xGNizHoDVze5eV6J0Bsdau0HplxNFJY4NUM8s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694733689; x=1695338489;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=51EyTCNRDXeSx49c4FQ91aJ02pqOg3krLqpY/xeqslg=;
 b=risJF4h0NXASKItHn+RHUa3hEookBeMGnxE8VM20y8fh83Yd1uLmZpH13ozeirtpSP
 VA93YsfUhlEHkbVwH5DY6Ualr2jWKNBjwccbMI+bvpsFzWttjSXSPnRfSvCkoFCzNwze
 3qoUPxpb0qDOyCaE2YJ2HuJs987x3Xa+tKJCi6RBEIqwLDGjDt+222lbpOr+6VgcrzIe
 GBC+RXLVHtWaDT0EEMpJZDvoh008z1nY70rxAKwHSfM9ncACaB2spu0aZUF8nFv/8WDI
 C8WUWdX+fhcHD9CgPwcCtp4glCVQcD8PdXj0ZZvEagWeXz6U19LxUgzsMztlGCHbzSea
 ni9A==
X-Gm-Message-State: AOJu0Yw6aVQhFmkvJTFZx2J2e0EliFKuzwI8NF7oQyp+2mjnfROBRofW
 Te59ivNtfK46Sq6lu2N8NTAqm3vOTKMAnpo2hV03b+lNiYyyL4ca
X-Google-Smtp-Source: AGHT+IEFf3cXaYvxwyfI8oC2gRj6MzlJRd1AaOEh+t1UVL07kNUhh5blMGZPYav476yD5gjZmHgBpye9oLVjpi378dw=
X-Received: by 2002:a05:6402:713:b0:522:2111:1063 with SMTP id
 w19-20020a056402071300b0052221111063mr5875690edx.18.1694733688961; Thu, 14
 Sep 2023 16:21:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-13-ville.syrjala@linux.intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Thu, 14 Sep 2023 16:21:18 -0700
Message-ID: <CAE72mN=BZEdXMHTDre3fophOFy3rXEj4ptZr-VAgA1h0oTiLxA@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 12/12] drm/i915: Implement transcoder LRR
 for TGL+
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

On Fri, Sep 1, 2023 at 6:05=E2=80=AFAM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Implement low refresh rate (LRR) where we change the vblank
> length by hand as requested, but otherwise keep the timing
> generator running in non-VRR mode (ie. fixed refresh rate).
>
> The panel itself must support VRR for this to work, and
> only TGL+ has the double buffred TRANS_VTOTAL.VTOTAL that
> we need to make the switch properly. The double buffer
> latching happens at the start of transcoders undelayed
> vblank. The other thing that we change is
> TRANS_VBLANK.VBLANK_END but the hardware entirely ignores
> that in DP mode. But I decided to keep writing it anyway
> just to avoid more special cases in readout/state check.
>
> v2: Document that TRANS_VBLANK.VBLANK_END is ignored by
>     the hardware
> v3: Reconcile with VRR fastset
>     Adjust update_lrr flag behaviour
>     Make sure timings stay within VRR range
>
> TODO: Hook LRR into the automatic DRRS downclocking stuff?
>
> Cc: Manasi Navare <navaremanasi@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  9 +--
>  drivers/gpu/drm/i915/display/intel_display.c  | 60 +++++++++++++++++--
>  .../drm/i915/display/intel_display_device.h   |  1 +
>  .../drm/i915/display/intel_display_types.h    |  3 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c      |  7 ++-
>  drivers/gpu/drm/i915/i915_reg.h               |  1 +
>  7 files changed, 71 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index aaddd8c0cfa0..5d18145da279 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -260,6 +260,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
>
>         crtc_state->update_pipe =3D false;
>         crtc_state->update_m_n =3D false;
> +       crtc_state->update_lrr =3D false;
>         crtc_state->disable_lp_wm =3D false;
>         crtc_state->disable_cxsr =3D false;
>         crtc_state->update_wm_pre =3D false;
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index a39e31c1ca85..22e85fe7e8aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -495,7 +495,7 @@ static void intel_crtc_vblank_evade_scanlines(struct =
intel_atomic_state *state,
>         if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
>                 /* timing changes should happen with VRR disabled */
>                 drm_WARN_ON(state->base.dev, intel_crtc_needs_modeset(new=
_crtc_state) ||
> -                           new_crtc_state->update_m_n);
> +                           new_crtc_state->update_m_n || new_crtc_state-=
>update_lrr);
>
>                 if (intel_vrr_is_push_sent(crtc_state))
>                         *vblank_start =3D intel_vrr_vmin_vblank_start(crt=
c_state);
> @@ -511,10 +511,11 @@ static void intel_crtc_vblank_evade_scanlines(struc=
t intel_atomic_state *state,
>         *max =3D *vblank_start - 1;
>
>         /*
> -        * M/N is double buffered on the transcoder's undelayed vblank,
> -        * so with seamless M/N we must evade both vblanks.
> +        * M/N and TRANS_VTOTAL are double buffered on the transcoder's
> +        * undelayed vblank, so with seamless M/N and LRR we must evade
> +        * both vblanks.
>          */
> -       if (new_crtc_state->update_m_n)
> +       if (new_crtc_state->update_m_n || new_crtc_state->update_lrr)
>                 *min -=3D adjusted_mode->crtc_vblank_start - adjusted_mod=
e->crtc_vdisplay;
>  }
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index f0bb5c70ebfc..74cca5af8b4e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -928,7 +928,7 @@ static bool vrr_enabling(const struct intel_crtc_stat=
e *old_crtc_state,
>  {
>         return is_enabling(vrr.enable, old_crtc_state, new_crtc_state) ||
>                 (new_crtc_state->vrr.enable &&
> -                (new_crtc_state->update_m_n ||
> +                (new_crtc_state->update_m_n || new_crtc_state->update_m_=
n ||

Did you mean to add new_crtc_state->update_lrr in the condition for
vrr_enabling ?

>                   vrr_params_changed(old_crtc_state, new_crtc_state)));
>  }
>
> @@ -937,7 +937,7 @@ static bool vrr_disabling(const struct intel_crtc_sta=
te *old_crtc_state,
>  {
>         return is_disabling(vrr.enable, old_crtc_state, new_crtc_state) |=
|
>                 (old_crtc_state->vrr.enable &&
> -                (new_crtc_state->update_m_n ||
> +                (new_crtc_state->update_m_n || new_crtc_state->update_m_=
n ||
>                   vrr_params_changed(old_crtc_state, new_crtc_state)));
>  }
>
> @@ -2586,6 +2586,37 @@ static void intel_set_transcoder_timings(const str=
uct intel_crtc_state *crtc_sta
>                                VTOTAL(crtc_vtotal - 1));
>  }
>
> +static void intel_set_transcoder_timings_lrr(const struct intel_crtc_sta=
te *crtc_state)
> +{
> +       struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +       struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +       enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +       const struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.=
adjusted_mode;
> +       u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_en=
d;
> +
> +       crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
> +       crtc_vtotal =3D adjusted_mode->crtc_vtotal;
> +       crtc_vblank_start =3D adjusted_mode->crtc_vblank_start;
> +       crtc_vblank_end =3D adjusted_mode->crtc_vblank_end;
> +
> +       drm_WARN_ON(&dev_priv->drm, adjusted_mode->flags & DRM_MODE_FLAG_=
INTERLACE);
> +
> +       /*
> +        * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP mo=
de.
> +        * But let's write it anyway to keep the state checker happy.
> +        */
> +       intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
> +                      VBLANK_START(crtc_vblank_start - 1) |
> +                      VBLANK_END(crtc_vblank_end - 1));
> +       /*
> +        * The double buffer latch point for TRANS_VTOTAL
> +        * is the transcoder's undelayed vblank.
> +        */
> +       intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
> +                      VACTIVE(crtc_vdisplay - 1) |
> +                      VTOTAL(crtc_vtotal - 1));
> +}
> +
>  static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_=
state)
>  {
>         struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -5082,11 +5113,13 @@ intel_pipe_config_compare(const struct intel_crtc=
_state *current_config,
>         PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
>         PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
>         PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
> -       PIPE_CONF_CHECK_I(name.crtc_vtotal); \
>         PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
> -       PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
>         PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
>         PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
> +       if (!fastset || !pipe_config->update_lrr) { \
> +               PIPE_CONF_CHECK_I(name.crtc_vtotal); \
> +               PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
> +       } \
>  } while (0)
>
>  #define PIPE_CONF_CHECK_RECT(name) do { \
> @@ -5420,6 +5453,7 @@ int intel_modeset_all_pipes(struct intel_atomic_sta=
te *state,
>                 crtc_state->uapi.mode_changed =3D true;
>                 crtc_state->update_pipe =3D false;
>                 crtc_state->update_m_n =3D false;
> +               crtc_state->update_lrr =3D false;
>
>                 ret =3D drm_atomic_add_affected_connectors(&state->base,
>                                                          &crtc->base);
> @@ -5537,6 +5571,10 @@ static void intel_crtc_check_fastset(const struct =
intel_crtc_state *old_crtc_sta
>  {
>         struct drm_i915_private *i915 =3D to_i915(old_crtc_state->uapi.cr=
tc->dev);
>
> +       /* only allow LRR when the timings stay within the VRR range */
> +       if (old_crtc_state->vrr.in_range !=3D new_crtc_state->vrr.in_rang=
e)
> +               new_crtc_state->update_lrr =3D false;
> +
>         if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, tr=
ue))
>                 drm_dbg_kms(&i915->drm, "fastset requirement not met, for=
cing full modeset\n");
>         else
> @@ -5547,6 +5585,11 @@ static void intel_crtc_check_fastset(const struct =
intel_crtc_state *old_crtc_sta
>                                    &new_crtc_state->dp_m_n))
>                 new_crtc_state->update_m_n =3D false;
>
> +       if (intel_crtc_needs_modeset(new_crtc_state) ||
> +           (old_crtc_state->hw.adjusted_mode.crtc_vtotal =3D=3D new_crtc=
_state->hw.adjusted_mode.crtc_vtotal &&
> +            old_crtc_state->hw.adjusted_mode.crtc_vblank_end =3D=3D new_=
crtc_state->hw.adjusted_mode.crtc_vblank_end))
> +               new_crtc_state->update_lrr =3D false;
> +
>         if (!intel_crtc_needs_modeset(new_crtc_state))
>                 new_crtc_state->update_pipe =3D true;
>  }
> @@ -6262,6 +6305,7 @@ int intel_atomic_check(struct drm_device *dev,
>                                 new_crtc_state->uapi.mode_changed =3D tru=
e;
>                                 new_crtc_state->update_pipe =3D false;
>                                 new_crtc_state->update_m_n =3D false;
> +                               new_crtc_state->update_lrr =3D false;
>                         }
>                 }
>
> @@ -6275,6 +6319,7 @@ int intel_atomic_check(struct drm_device *dev,
>                                 new_crtc_state->uapi.mode_changed =3D tru=
e;
>                                 new_crtc_state->update_pipe =3D false;
>                                 new_crtc_state->update_m_n =3D false;
> +                               new_crtc_state->update_lrr =3D false;
>                         }
>                 }
>
> @@ -6283,6 +6328,7 @@ int intel_atomic_check(struct drm_device *dev,
>                                 new_crtc_state->uapi.mode_changed =3D tru=
e;
>                                 new_crtc_state->update_pipe =3D false;
>                                 new_crtc_state->update_m_n =3D false;
> +                               new_crtc_state->update_lrr =3D false;
>                         }
>                 }
>         }
> @@ -6464,6 +6510,9 @@ static void intel_pipe_fastset(const struct intel_c=
rtc_state *old_crtc_state,
>         if (new_crtc_state->update_m_n)
>                 intel_cpu_transcoder_set_m1_n1(crtc, new_crtc_state->cpu_=
transcoder,
>                                                &new_crtc_state->dp_m_n);
> +
> +       if (new_crtc_state->update_lrr)
> +               intel_set_transcoder_timings_lrr(new_crtc_state);
>  }
>
>  static void commit_pipe_pre_planes(struct intel_atomic_state *state,
> @@ -6600,7 +6649,8 @@ static void intel_update_crtc(struct intel_atomic_s=
tate *state,
>          *
>          * FIXME Should be synchronized with the start of vblank somehow.=
..
>          */
> -       if (vrr_enabling(old_crtc_state, new_crtc_state) || new_crtc_stat=
e->update_m_n)
> +       if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> +           new_crtc_state->update_m_n || new_crtc_state->update_lrr)
>                 intel_crtc_update_active_timings(new_crtc_state,
>                                                  new_crtc_state->vrr.enab=
le);
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/driver=
s/gpu/drm/i915/display/intel_display_device.h
> index 8198401aa5be..ee77750af82b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -56,6 +56,7 @@ struct drm_printer;
>  #define HAS_HW_SAGV_WM(i915)           (DISPLAY_VER(i915) >=3D 13 && !IS=
_DGFX(i915))
>  #define HAS_IPC(i915)                  (DISPLAY_INFO(i915)->has_ipc)
>  #define HAS_IPS(i915)                  (IS_HASWELL_ULT(i915) || IS_BROAD=
WELL(i915))
> +#define HAS_LRR(i915)                  (DISPLAY_VER(i915) >=3D 12)
>  #define HAS_LSPCON(i915)               (IS_DISPLAY_VER(i915, 9, 10))
>  #define HAS_MBUS_JOINING(i915)         (IS_ALDERLAKE_P(i915) || DISPLAY_=
VER(i915) >=3D 14)
>  #define HAS_MSO(i915)                  (DISPLAY_VER(i915) >=3D 12)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 2f35560d7e4e..536c642eb562 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1084,6 +1084,7 @@ struct intel_crtc_state {
>         unsigned fb_bits; /* framebuffers to flip */
>         bool update_pipe; /* can a fast modeset be performed? */
>         bool update_m_n; /* update M/N seamlessly during fastset? */
> +       bool update_lrr; /* update TRANS_VTOTAL/etc. during fastset? */
>         bool disable_cxsr;
>         bool update_wm_pre, update_wm_post; /* watermarks are updated */
>         bool fifo_changed; /* FIFO split is changed */
> @@ -1383,7 +1384,7 @@ struct intel_crtc_state {
>
>         /* Variable Refresh Rate state */
>         struct {
> -               bool enable;
> +               bool enable, in_range;
>                 u8 pipeline_full;
>                 u16 flipline, vmin, vmax, guardband;
>         } vrr;
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i=
915/display/intel_vrr.c
> index 12731ad725a8..5d905f932cb4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -120,9 +120,14 @@ intel_vrr_compute_config(struct intel_crtc_state *cr=
tc_state,
>         if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>                 return;
>
> -       if (!intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_=
mode)))
> +       crtc_state->vrr.in_range =3D
> +               intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjust=
ed_mode));
> +       if (!crtc_state->vrr.in_range)
>                 return;
>
> +       if (HAS_LRR(i915))
> +               crtc_state->update_lrr =3D true;
> +
>         vmin =3D DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
>                             adjusted_mode->crtc_htotal * info->monitor_ra=
nge.max_vfreq);
>         vmax =3D adjusted_mode->crtc_clock * 1000 /
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index e00e4d569ba9..26cc03832f73 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5628,6 +5628,7 @@ enum skl_power_gate {
>  #define _TRANS_DDI_FUNC_CTL2_DSI0      0x6b404
>  #define _TRANS_DDI_FUNC_CTL2_DSI1      0x6bc04
>  #define TRANS_DDI_FUNC_CTL2(tran)      _MMIO_TRANS2(tran, _TRANS_DDI_FUN=
C_CTL2_A)
> +#define  DOUBLE_BUFFER_VACTIVE                 REG_BIT(8) /* tgl+ */

This reg bit is not used anywhere in this patch.

Regards
Manasi

>  #define  PORT_SYNC_MODE_ENABLE                 REG_BIT(4)
>  #define  PORT_SYNC_MODE_MASTER_SELECT_MASK     REG_GENMASK(2, 0)
>  #define  PORT_SYNC_MODE_MASTER_SELECT(x)       REG_FIELD_PREP(PORT_SYNC_=
MODE_MASTER_SELECT_MASK, (x))
> --
> 2.41.0
>
