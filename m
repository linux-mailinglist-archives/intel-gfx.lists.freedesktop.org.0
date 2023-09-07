Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77516797C16
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 20:39:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF9010E083;
	Thu,  7 Sep 2023 18:39:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF7D710E083
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 18:39:51 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-52a250aa012so1741787a12.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Sep 2023 11:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1694111990; x=1694716790;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TQDxLqmzjq89sTehG3MDEct9xCR7E9qIHSSusObYhWs=;
 b=SRunmCo1IL4fji+8I/lybZW+WWGPHJP94njK/UeKLpZI+eKZyP0XzGorbF8c3t3EI3
 RaWfnYhsOGGMeYp8HGwhzUOgsGNqhsiO/ThociKNQBi+ynOi5I8TPe9E7I3IU0AKlSaJ
 zr2kf3zFXSPAEqrJsoJbVl1XsHh5UwauN9M8g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694111990; x=1694716790;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TQDxLqmzjq89sTehG3MDEct9xCR7E9qIHSSusObYhWs=;
 b=AtlJ6Eo1SMMxc1jwTX5BuHi2jrDQuJ03jo2VHynaJdsqeCl8b3C23ZB3JZswdSRRpg
 W0ZVp9q8vPNoncyNkVYB7tVltrVAa7aCIQNWgFljerrwf9b+jxH4RdtRGsJ7Y4yAt4k8
 4aF9LOzxLPnC57hCIh7/H3mM1ZR9btII69SNUD8HNHJmAvSXPS6ft6p1kw3GKzP1bqRX
 eDuIl4I4m9MyRrfV3rN0bNIa8Jd+Bpjb9jAus73SJJP2Sv3+j7JQK0DHgC9B+7zy7G92
 +KfbkXgBT9l1NNGudxJzgzH82m6yNDiFnjdNg8r/SsbnmWnVt8hAZ4yRMPUdQNn4uCzr
 4yhA==
X-Gm-Message-State: AOJu0YyPmlj+vwO/0cY0qt1Ecy5cJ3KwMRrEK10OzavbyZjd/XmZPA5B
 LqI7J2xD5xA0CHZXIsnNZIBoJGE9o12846vXBqKYNHWeoL6srq9Gtmw=
X-Google-Smtp-Source: AGHT+IGx1P/RGihOFKKleTn+vOCPVrhDPmparwA7H/YQEauYpDAKNxagoX9utBK0hd3btMpZEWNDZGys5blD2odnvwg=
X-Received: by 2002:aa7:c511:0:b0:521:e502:baf8 with SMTP id
 o17-20020aa7c511000000b00521e502baf8mr142537edq.11.1694111989922; Thu, 07 Sep
 2023 11:39:49 -0700 (PDT)
MIME-Version: 1.0
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-6-ville.syrjala@linux.intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Thu, 7 Sep 2023 11:39:39 -0700
Message-ID: <CAE72mNmfBXhS4E8yPWXcTT9Ro6gtDptf3NXrOkUSXFCYbS-HdA@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/12] drm/i915: Adjust seamless_m_n flag
 behaviour
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

Makes sense to rename the flag to update_m_n

Reviewed-by: Manasi Navare <navaremanasi@chromium.org>

Manasi

On Fri, Sep 1, 2023 at 6:05=E2=80=AFAM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make the seamless_m_n flag more like the update_pipe fastset
> flag, ie. the flag will only be set if we need to do the seamless
> M/N update, and in all other cases the flag is cleared. Also
> rename the flag to update_m_n to make it more clear it's similar
> to update_pipe.
>
> I believe special casing seamless_m_n like this makes sense
> as it also affects eg. vblank evasion. We can potentially avoid
> some vblank evasion tricks, simplify some checks, and hopefully
> will help with the VRR vs. M/N mess.
>
> Cc: Manasi Navare <navaremanasi@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 22 +++++++++++--------
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  5 files changed, 17 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 7cf51dd8c056..aaddd8c0cfa0 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -259,6 +259,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
>                 drm_property_blob_get(crtc_state->post_csc_lut);
>
>         crtc_state->update_pipe =3D false;
> +       crtc_state->update_m_n =3D false;
>         crtc_state->disable_lp_wm =3D false;
>         crtc_state->disable_cxsr =3D false;
>         crtc_state->update_wm_pre =3D false;
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index 1992e7060263..a04076064f02 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -510,7 +510,7 @@ static void intel_crtc_vblank_evade_scanlines(struct =
intel_atomic_state *state,
>          * M/N is double buffered on the transcoder's undelayed vblank,
>          * so with seamless M/N we must evade both vblanks.
>          */
> -       if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_=
crtc_state))
> +       if (new_crtc_state->update_m_n)
>                 *min -=3D adjusted_mode->crtc_vblank_start - adjusted_mod=
e->crtc_vdisplay;
>  }
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 632f1f58df9e..6196ef76390b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5170,7 +5170,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>         PIPE_CONF_CHECK_X(lane_lat_optim_mask);
>
>         if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
> -               if (!fastset || !pipe_config->seamless_m_n)
> +               if (!fastset || !pipe_config->update_m_n)
>                         PIPE_CONF_CHECK_M_N(dp_m_n);
>         } else {
>                 PIPE_CONF_CHECK_M_N(dp_m_n);
> @@ -5307,7 +5307,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>         if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >=3D 5)
>                 PIPE_CONF_CHECK_I(pipe_bpp);
>
> -       if (!fastset || !pipe_config->seamless_m_n) {
> +       if (!fastset || !pipe_config->update_m_n) {
>                 PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
>                 PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
>         }
> @@ -5402,6 +5402,7 @@ int intel_modeset_all_pipes(struct intel_atomic_sta=
te *state,
>
>                 crtc_state->uapi.mode_changed =3D true;
>                 crtc_state->update_pipe =3D false;
> +               crtc_state->update_m_n =3D false;
>
>                 ret =3D drm_atomic_add_affected_connectors(&state->base,
>                                                          &crtc->base);
> @@ -5519,13 +5520,14 @@ static void intel_crtc_check_fastset(const struct=
 intel_crtc_state *old_crtc_sta
>  {
>         struct drm_i915_private *i915 =3D to_i915(old_crtc_state->uapi.cr=
tc->dev);
>
> -       if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, tr=
ue)) {
> +       if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, tr=
ue))
>                 drm_dbg_kms(&i915->drm, "fastset requirement not met, for=
cing full modeset\n");
> +       else
> +               new_crtc_state->uapi.mode_changed =3D false;
>
> -               return;
> -       }
> +       if (intel_crtc_needs_modeset(new_crtc_state))
> +               new_crtc_state->update_m_n =3D false;
>
> -       new_crtc_state->uapi.mode_changed =3D false;
>         if (!intel_crtc_needs_modeset(new_crtc_state))
>                 new_crtc_state->update_pipe =3D true;
>  }
> @@ -6240,6 +6242,7 @@ int intel_atomic_check(struct drm_device *dev,
>                         if (intel_cpu_transcoders_need_modeset(state, BIT=
(master))) {
>                                 new_crtc_state->uapi.mode_changed =3D tru=
e;
>                                 new_crtc_state->update_pipe =3D false;
> +                               new_crtc_state->update_m_n =3D false;
>                         }
>                 }
>
> @@ -6252,6 +6255,7 @@ int intel_atomic_check(struct drm_device *dev,
>                         if (intel_cpu_transcoders_need_modeset(state, tra=
ns)) {
>                                 new_crtc_state->uapi.mode_changed =3D tru=
e;
>                                 new_crtc_state->update_pipe =3D false;
> +                               new_crtc_state->update_m_n =3D false;
>                         }
>                 }
>
> @@ -6259,6 +6263,7 @@ int intel_atomic_check(struct drm_device *dev,
>                         if (intel_pipes_need_modeset(state, new_crtc_stat=
e->bigjoiner_pipes)) {
>                                 new_crtc_state->uapi.mode_changed =3D tru=
e;
>                                 new_crtc_state->update_pipe =3D false;
> +                               new_crtc_state->update_m_n =3D false;
>                         }
>                 }
>         }
> @@ -6437,7 +6442,7 @@ static void intel_pipe_fastset(const struct intel_c=
rtc_state *old_crtc_state,
>             IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
>                 hsw_set_linetime_wm(new_crtc_state);
>
> -       if (new_crtc_state->seamless_m_n)
> +       if (new_crtc_state->update_m_n)
>                 intel_cpu_transcoder_set_m1_n1(crtc, new_crtc_state->cpu_=
transcoder,
>                                                &new_crtc_state->dp_m_n);
>  }
> @@ -6573,8 +6578,7 @@ static void intel_update_crtc(struct intel_atomic_s=
tate *state,
>          *
>          * FIXME Should be synchronized with the start of vblank somehow.=
..
>          */
> -       if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> -           (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new=
_crtc_state)))
> +       if (vrr_enabling(old_crtc_state, new_crtc_state) || new_crtc_stat=
e->update_m_n)
>                 intel_crtc_update_active_timings(new_crtc_state,
>                                                  new_crtc_state->vrr.enab=
le);
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index c21064794f32..2f35560d7e4e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1083,6 +1083,7 @@ struct intel_crtc_state {
>
>         unsigned fb_bits; /* framebuffers to flip */
>         bool update_pipe; /* can a fast modeset be performed? */
> +       bool update_m_n; /* update M/N seamlessly during fastset? */
>         bool disable_cxsr;
>         bool update_wm_pre, update_wm_post; /* watermarks are updated */
>         bool fifo_changed; /* FIFO split is changed */
> @@ -1195,7 +1196,6 @@ struct intel_crtc_state {
>         /* m2_n2 for eDP downclock */
>         struct intel_link_m_n dp_m2_n2;
>         bool has_drrs;
> -       bool seamless_m_n;
>
>         /* PSR is supported but might not be enabled due the lack of enab=
led planes */
>         bool has_psr;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 3faa68989d85..d4c259da3a14 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2536,7 +2536,7 @@ intel_dp_drrs_compute_config(struct intel_connector=
 *connector,
>         int pixel_clock;
>
>         if (has_seamless_m_n(connector))
> -               pipe_config->seamless_m_n =3D true;
> +               pipe_config->update_m_n =3D true;
>
>         if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
>                 if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu=
_transcoder))
> --
> 2.41.0
>
