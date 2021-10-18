Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C11430D0E
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 02:19:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CB336E84C;
	Mon, 18 Oct 2021 00:19:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35FD26E84C
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 00:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634516385;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xe6ijtzMzFmKEvRKJ95suBMy0GaAZ3eh8ID8wTKuCps=;
 b=eBx5aFcqAil3+JwlEhtiDsA6gO++1rEVasTT9OoLp6d3KNDDUlHq/wUky3Wgp/43aCMQ/6
 H/xNSy+rVOYXaTA49gBk9d0hYqEXnRvHKSlzmHb6iEDgJjetIT8zAABqzDhnxxuBj0ia2I
 vThPC9U1jyg43zyUFPJUjv7EB2rnGfs=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-458-t7YwdPB7MA6kGRNM5sO9TA-1; Sun, 17 Oct 2021 20:19:43 -0400
X-MC-Unique: t7YwdPB7MA6kGRNM5sO9TA-1
Received: by mail-oo1-f71.google.com with SMTP id
 a27-20020a4ad1db000000b002b72037d144so6630469oos.6
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Oct 2021 17:19:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xe6ijtzMzFmKEvRKJ95suBMy0GaAZ3eh8ID8wTKuCps=;
 b=c5mtayOvHrCbLjC+vq7hYz542s/Z1RBqOOaBK7Mp+fgo+jUCFCKdenjBRZhwBzc/2Z
 xhOYo5eGPPPhtz5R6Rj8EvY9aH3OEGJZjXTjQU2BsBiGMnLB1PsW3BYrBMepCOCMC+4P
 q2hhWd1MdPlKIW8+92f2aiVvpo9TZ+73foExgij4VxgXywI/Ezye9jP2rrlDwPcUr2Nk
 m/VouM1mUoaKat+gCy/Fdn5t1bPuhN8o/JovNlNIyFXIYf5KBxY1y/op6n6/mDYadi3V
 J38U6Q92Hw3eYfSdSA2RNtP3Ku+G9BqSbz5l1vgcTe8aEWlW/GxHirpbtghm5LgVX4pW
 mqBA==
X-Gm-Message-State: AOAM532jQKbmunGhy0I1XQwi0ppwpnQQErxXLrDjkUGlqfCLxUSXfQnq
 dzZOMDtbMr29Kdyj6xRwzeU+7ns7i9qrxnbqn+6HKGi1hXKKC6cl7lOytHH4EMsxFdlI+kSWxCg
 ywaeTnS8qSKYMeGWLf4dXP+7TjkSmaYe9AA3gJmK7k0kk
X-Received: by 2002:a05:6830:1293:: with SMTP id
 z19mr15120599otp.353.1634516383028; 
 Sun, 17 Oct 2021 17:19:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxv5cXzey0jqlfbO2piTAjPro6JLJMUMti3Q7BSe/Pu5i8L/Kt5HLMBOIsJoHxGFXOzgcXFDwrsBv24r1V1iIw=
X-Received: by 2002:a05:6830:1293:: with SMTP id
 z19mr15120587otp.353.1634516382782; 
 Sun, 17 Oct 2021 17:19:42 -0700 (PDT)
MIME-Version: 1.0
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
 <20211015071625.593-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20211015071625.593-5-ville.syrjala@linux.intel.com>
From: David Airlie <airlied@redhat.com>
Date: Mon, 18 Oct 2021 10:19:31 +1000
Message-ID: <CAMwc25onNHuhM0X9z6t+vHHhc-MJu-78RSobPwJSjROPTvO0gQ@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: "Development, Intel" <intel-gfx@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915: Move LPT PCH readout code
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

On Fri, Oct 15, 2021 at 5:16 PM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Nuke the hsw_get_ddi_port_state() eyesore by putting the
> readout code into intel_pch_display.c, and calling it directly
> from hsw_crt_get_config().
>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c      |  2 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 46 ++-----------------
>  drivers/gpu/drm/i915/display/intel_display.h  |  2 +
>  .../gpu/drm/i915/display/intel_pch_display.c  | 18 ++++++++
>  .../gpu/drm/i915/display/intel_pch_display.h  |  1 +
>  5 files changed, 26 insertions(+), 43 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 4038ae342ea1..03cfae46f92f 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -147,6 +147,8 @@ static void hsw_crt_get_config(struct intel_encoder *=
encoder,
>  {
>         struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>
> +       lpt_pch_get_config(pipe_config);
> +
>         hsw_ddi_get_config(encoder, pipe_config);
>
>         pipe_config->hw.adjusted_mode.flags &=3D ~(DRM_MODE_FLAG_PHSYNC |
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 2ee02c16bd1c..8f65b8b6a306 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4090,8 +4090,8 @@ void intel_dp_get_m_n(struct intel_crtc *crtc,
>                                              &pipe_config->dp_m2_n2);
>  }
>
> -static void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
> -                                  struct intel_crtc_state *pipe_config)
> +void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
> +                           struct intel_crtc_state *pipe_config)
>  {
>         intel_cpu_transcoder_get_m_n(crtc, pipe_config->cpu_transcoder,
>                                      &pipe_config->fdi_m_n, NULL);
> @@ -4486,45 +4486,6 @@ static bool bxt_get_dsi_transcoder_state(struct in=
tel_crtc *crtc,
>         return transcoder_is_dsi(pipe_config->cpu_transcoder);
>  }
>
> -static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
> -                                  struct intel_crtc_state *pipe_config)
> -{
> -       struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -       enum transcoder cpu_transcoder =3D pipe_config->cpu_transcoder;
> -       enum port port;
> -       u32 tmp;
> -
> -       if (transcoder_is_dsi(cpu_transcoder)) {
> -               port =3D (cpu_transcoder =3D=3D TRANSCODER_DSI_A) ?
> -                                               PORT_A : PORT_B;
> -       } else {
> -               tmp =3D intel_de_read(dev_priv,
> -                                   TRANS_DDI_FUNC_CTL(cpu_transcoder));
> -               if (!(tmp & TRANS_DDI_FUNC_ENABLE))
> -                       return;
> -               if (DISPLAY_VER(dev_priv) >=3D 12)
> -                       port =3D TGL_TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
> -               else
> -                       port =3D TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
> -       }

Where does thie code go? is it necessary, maybe make a precursor patch
showing why this isn't needed?
or just more commentary on why it's not needed anymore, since PORT_E
is hardcoded to the crt?

This is also the only use of those two macros
*DDI_FUNC_CTL_VAL_TO_PORT(tmp), should those  be nuked as well?

Dave.

> -
> -       /*
> -        * Haswell has only FDI/PCH transcoder A. It is which is connecte=
d to
> -        * DDI E. So just check whether this pipe is wired to DDI E and w=
hether
> -        * the PCH transcoder is on.
> -        */
> -       if (DISPLAY_VER(dev_priv) < 9 &&
> -           (port =3D=3D PORT_E) && intel_de_read(dev_priv, LPT_TRANSCONF=
) & TRANS_ENABLE) {
> -               pipe_config->has_pch_encoder =3D true;
> -
> -               tmp =3D intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
> -               pipe_config->fdi_lanes =3D ((FDI_DP_PORT_WIDTH_MASK & tmp=
) >>
> -                                         FDI_DP_PORT_WIDTH_SHIFT) + 1;
> -
> -               ilk_get_fdi_m_n_config(crtc, pipe_config);
> -       }
> -}
> -
>  static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>                                 struct intel_crtc_state *pipe_config)
>  {
> @@ -4562,8 +4523,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *=
crtc,
>                 /* we cannot read out most state, so don't bother.. */
>                 pipe_config->quirks |=3D PIPE_CONFIG_QUIRK_BIGJOINER_SLAV=
E;
>         } else if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
> -           DISPLAY_VER(dev_priv) >=3D 11) {
> -               hsw_get_ddi_port_state(crtc, pipe_config);
> +                  DISPLAY_VER(dev_priv) >=3D 11) {
>                 intel_get_transcoder_timings(crtc, pipe_config);
>         }
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 93c84f2174b5..5bc8d8913178 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -584,6 +584,8 @@ void intel_dp_get_m_n(struct intel_crtc *crtc,
>                       struct intel_crtc_state *pipe_config);
>  void intel_dp_set_m_n(const struct intel_crtc_state *crtc_state,
>                       enum link_m_n_set m_n);
> +void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
> +                           struct intel_crtc_state *pipe_config);
>  int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n =
*m_n);
>
>  bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_stat=
e);
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/g=
pu/drm/i915/display/intel_pch_display.c
> index 50995c4f2aaa..df7195ed1aaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -366,3 +366,21 @@ void lpt_pch_enable(struct intel_atomic_state *state=
,
>
>         lpt_enable_pch_transcoder(dev_priv, cpu_transcoder);
>  }
> +
> +void lpt_pch_get_config(struct intel_crtc_state *crtc_state)
> +{
> +       struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +       struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +       u32 tmp;
> +
> +       if ((intel_de_read(dev_priv, LPT_TRANSCONF) & TRANS_ENABLE) =3D=
=3D 0)
> +               return;
> +
> +       crtc_state->has_pch_encoder =3D true;
> +
> +       tmp =3D intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
> +       crtc_state->fdi_lanes =3D ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
> +                                FDI_DP_PORT_WIDTH_SHIFT) + 1;
> +
> +       ilk_get_fdi_m_n_config(crtc, crtc_state);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/g=
pu/drm/i915/display/intel_pch_display.h
> index 7f9df2c13cf3..e0ff331c0bc6 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
> @@ -18,5 +18,6 @@ void ilk_pch_enable(struct intel_atomic_state *state,
>  void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv);
>  void lpt_pch_enable(struct intel_atomic_state *state,
>                     struct intel_crtc *crtc);
> +void lpt_pch_get_config(struct intel_crtc_state *crtc_state);
>
>  #endif
> --
> 2.32.0
>

