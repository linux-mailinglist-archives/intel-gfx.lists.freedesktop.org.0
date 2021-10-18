Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EA8430D11
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 02:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80B0A89E33;
	Mon, 18 Oct 2021 00:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7666E89E33
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 00:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634516587;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jCjnYbk/+iVypftMLIjg8M5o0wtPJR4j2u8fGgJWsi4=;
 b=UShmyv5MaZ+RNSbdmmbIvPKnoyq++n7fbqsZOe0Jk1G4A9YlQEWacSvVg56DWAMCHl6QEC
 EkpNdVXQWfwScOi35MO7yE4mtajNxsyTuFHD1DF9+j1Zrqnbll0l7gpTi5VPaQTyMJTCKZ
 2oZw739BEDL0ZOF0zKjDTUOgu8DkjSg=
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-285-MdP87qvRNxeqQon0_mhN3w-1; Sun, 17 Oct 2021 20:23:06 -0400
X-MC-Unique: MdP87qvRNxeqQon0_mhN3w-1
Received: by mail-ot1-f70.google.com with SMTP id
 13-20020a9d030d000000b00552c8de2e46so5660201otv.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Oct 2021 17:23:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jCjnYbk/+iVypftMLIjg8M5o0wtPJR4j2u8fGgJWsi4=;
 b=Jb0TFKUDU+kEAvIjtcqp5eyX96rTaMW3rnKCeRxKLpHrxXpXxY65NYi8UB7j0K/4ri
 6lIm/tlTnXYLKTBVqkmPV1Ki2CYff8C4CHQjkeh6aZ82D0NJZTK8wI8k8oE23XI4mZ56
 UgHbG4flgxuWegJm3KoXvVOvBXDNIqZE5khX2YzOHAvnOCJHaIfUeI/A66gNdT4W+UNZ
 hWBUQfWR/2ir5e/9jNmXMJtvGixtMLqfBqKdeOTJpz6aW2pUKSszs3+nmNxral9WfVn+
 8a8ag8wKBc5ilXZKado7ImcfZvh90E0fF5456nXNZypvW29qu5e+KTwuH56wZV74ojZK
 Ntcg==
X-Gm-Message-State: AOAM53181H2gUDyKKhG9I9ieh28yr7Twk1Ho0vie+DyrNv1L4SMgYT8c
 gU1RG05fsttNbY5hSUk/q4/XiOb0D3CDfl+6RZ0sSnK7wxyjM0IbZryq8a4Zr9vHJALKdKAhz5l
 jSuzh9CH5tJfu+ZbOrC1LY16n04quAxZ8cJQ2jMl7D+Wk
X-Received: by 2002:aca:32c5:: with SMTP id
 y188mr26334571oiy.163.1634516584942; 
 Sun, 17 Oct 2021 17:23:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz9AP42syRCQ3FxABfAnet5slRMk3UZ+9f67H/qs2wxpQrsUkESDHCTfYu1Uls9Oe327uS16xgHaCjMB4J7Rn0=
X-Received: by 2002:aca:32c5:: with SMTP id
 y188mr26334561oiy.163.1634516584745; 
 Sun, 17 Oct 2021 17:23:04 -0700 (PDT)
MIME-Version: 1.0
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
 <20211015071625.593-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20211015071625.593-6-ville.syrjala@linux.intel.com>
From: David Airlie <airlied@redhat.com>
Date: Mon, 18 Oct 2021 10:22:53 +1000
Message-ID: <CAMwc25oJjzRvM812DGWzK-TcOZAHhAWEghef8bng=vknW69PYg@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: "Development, Intel" <intel-gfx@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915: Extract ilk_pch_get_config()
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
> Pull the ilk+ PCH state readout into its own function and relocate
> to the appropriate file.
>
> The clock readout parts are perhaps a bit iffy since we depend
> on the gmch DPLL readout code. But we can think about the clock
> readout big picture later.

Looks good,

Reviewed-by: Dave Airlie <airlied@redhat.com>

>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 72 ++-----------------
>  drivers/gpu/drm/i915/display/intel_display.h  |  3 +-
>  .../gpu/drm/i915/display/intel_pch_display.c  | 68 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_pch_display.h  |  1 +
>  4 files changed, 75 insertions(+), 69 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 8f65b8b6a306..e8f15fb3ed07 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -113,11 +113,6 @@
>  #include "skl_universal_plane.h"
>  #include "vlv_sideband.h"
>
> -static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
> -                               struct intel_crtc_state *pipe_config);
> -static void ilk_pch_clock_get(struct intel_crtc *crtc,
> -                             struct intel_crtc_state *pipe_config);
> -
>  static void intel_set_transcoder_timings(const struct intel_crtc_state *=
crtc_state);
>  static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_=
state);
>  static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *=
crtc_state,
> @@ -4228,50 +4223,9 @@ static bool ilk_get_pipe_config(struct intel_crtc =
*crtc,
>         i9xx_get_pipe_color_config(pipe_config);
>         intel_color_get_config(pipe_config);
>
> -       if (intel_de_read(dev_priv, PCH_TRANSCONF(crtc->pipe)) & TRANS_EN=
ABLE) {
> -               struct intel_shared_dpll *pll;
> -               enum intel_dpll_id pll_id;
> -               bool pll_active;
> +       pipe_config->pixel_multiplier =3D 1;
>
> -               pipe_config->has_pch_encoder =3D true;
> -
> -               tmp =3D intel_de_read(dev_priv, FDI_RX_CTL(crtc->pipe));
> -               pipe_config->fdi_lanes =3D ((FDI_DP_PORT_WIDTH_MASK & tmp=
) >>
> -                                         FDI_DP_PORT_WIDTH_SHIFT) + 1;
> -
> -               ilk_get_fdi_m_n_config(crtc, pipe_config);
> -
> -               if (HAS_PCH_IBX(dev_priv)) {
> -                       /*
> -                        * The pipe->pch transcoder and pch transcoder->p=
ll
> -                        * mapping is fixed.
> -                        */
> -                       pll_id =3D (enum intel_dpll_id) crtc->pipe;
> -               } else {
> -                       tmp =3D intel_de_read(dev_priv, PCH_DPLL_SEL);
> -                       if (tmp & TRANS_DPLLB_SEL(crtc->pipe))
> -                               pll_id =3D DPLL_ID_PCH_PLL_B;
> -                       else
> -                               pll_id=3D DPLL_ID_PCH_PLL_A;
> -               }
> -
> -               pipe_config->shared_dpll =3D
> -                       intel_get_shared_dpll_by_id(dev_priv, pll_id);
> -               pll =3D pipe_config->shared_dpll;
> -
> -               pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> -                                                    &pipe_config->dpll_h=
w_state);
> -               drm_WARN_ON(dev, !pll_active);
> -
> -               tmp =3D pipe_config->dpll_hw_state.dpll;
> -               pipe_config->pixel_multiplier =3D
> -                       ((tmp & PLL_REF_SDVO_HDMI_MULTIPLIER_MASK)
> -                        >> PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT) + 1;
> -
> -               ilk_pch_clock_get(crtc, pipe_config);
> -       } else {
> -               pipe_config->pixel_multiplier =3D 1;
> -       }
> +       ilk_pch_get_config(pipe_config);
>
>         intel_get_transcoder_timings(crtc, pipe_config);
>         intel_get_pipe_src_size(crtc, pipe_config);
> @@ -4854,8 +4808,8 @@ static int i9xx_pll_refclk(struct drm_device *dev,
>  }
>
>  /* Returns the clock of the currently programmed mode of the given pipe.=
 */
> -static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
> -                               struct intel_crtc_state *pipe_config)
> +void i9xx_crtc_clock_get(struct intel_crtc *crtc,
> +                        struct intel_crtc_state *pipe_config)
>  {
>         struct drm_device *dev =3D crtc->base.dev;
>         struct drm_i915_private *dev_priv =3D to_i915(dev);
> @@ -4965,24 +4919,6 @@ int intel_dotclock_calculate(int link_freq,
>         return div_u64(mul_u32_u32(m_n->link_m, link_freq), m_n->link_n);
>  }
>
> -static void ilk_pch_clock_get(struct intel_crtc *crtc,
> -                             struct intel_crtc_state *pipe_config)
> -{
> -       struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -
> -       /* read out port_clock from the DPLL */
> -       i9xx_crtc_clock_get(crtc, pipe_config);
> -
> -       /*
> -        * In case there is an active pipe without active ports,
> -        * we may need some idea for the dotclock anyway.
> -        * Calculate one based on the FDI configuration.
> -        */
> -       pipe_config->hw.adjusted_mode.crtc_clock =3D
> -               intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, pi=
pe_config),
> -                                        &pipe_config->fdi_m_n);
> -}
> -
>  /* Returns the currently programmed mode of the given encoder. */
>  struct drm_display_mode *
>  intel_encoder_current_mode(struct intel_encoder *encoder)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 5bc8d8913178..c2efba7c6c17 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -586,8 +586,9 @@ void intel_dp_set_m_n(const struct intel_crtc_state *=
crtc_state,
>                       enum link_m_n_set m_n);
>  void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
>                             struct intel_crtc_state *pipe_config);
> +void i9xx_crtc_clock_get(struct intel_crtc *crtc,
> +                        struct intel_crtc_state *pipe_config);
>  int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n =
*m_n);
> -
>  bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_stat=
e);
>  void hsw_enable_ips(const struct intel_crtc_state *crtc_state);
>  void hsw_disable_ips(const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/g=
pu/drm/i915/display/intel_pch_display.c
> index df7195ed1aaa..f3edabdd0a4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -299,6 +299,74 @@ void ilk_pch_enable(struct intel_atomic_state *state=
,
>         ilk_enable_pch_transcoder(crtc_state);
>  }
>
> +static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
> +{
> +       struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +       struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +
> +       /* read out port_clock from the DPLL */
> +       i9xx_crtc_clock_get(crtc, crtc_state);
> +
> +       /*
> +        * In case there is an active pipe without active ports,
> +        * we may need some idea for the dotclock anyway.
> +        * Calculate one based on the FDI configuration.
> +        */
> +       crtc_state->hw.adjusted_mode.crtc_clock =3D
> +               intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, cr=
tc_state),
> +                                        &crtc_state->fdi_m_n);
> +}
> +
> +void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
> +{
> +       struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +       struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +       struct intel_shared_dpll *pll;
> +       enum pipe pipe =3D crtc->pipe;
> +       enum intel_dpll_id pll_id;
> +       bool pll_active;
> +       u32 tmp;
> +
> +       if ((intel_de_read(dev_priv, PCH_TRANSCONF(pipe)) & TRANS_ENABLE)=
 =3D=3D 0)
> +               return;
> +
> +       crtc_state->has_pch_encoder =3D true;
> +
> +       tmp =3D intel_de_read(dev_priv, FDI_RX_CTL(pipe));
> +       crtc_state->fdi_lanes =3D ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
> +                                FDI_DP_PORT_WIDTH_SHIFT) + 1;
> +
> +       ilk_get_fdi_m_n_config(crtc, crtc_state);
> +
> +       if (HAS_PCH_IBX(dev_priv)) {
> +               /*
> +                * The pipe->pch transcoder and pch transcoder->pll
> +                * mapping is fixed.
> +                */
> +               pll_id =3D (enum intel_dpll_id) pipe;
> +       } else {
> +               tmp =3D intel_de_read(dev_priv, PCH_DPLL_SEL);
> +               if (tmp & TRANS_DPLLB_SEL(pipe))
> +                       pll_id =3D DPLL_ID_PCH_PLL_B;
> +               else
> +                       pll_id =3D DPLL_ID_PCH_PLL_A;
> +       }
> +
> +       crtc_state->shared_dpll =3D intel_get_shared_dpll_by_id(dev_priv,=
 pll_id);
> +       pll =3D crtc_state->shared_dpll;
> +
> +       pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> +                                            &crtc_state->dpll_hw_state);
> +       drm_WARN_ON(&dev_priv->drm, !pll_active);
> +
> +       tmp =3D crtc_state->dpll_hw_state.dpll;
> +       crtc_state->pixel_multiplier =3D
> +               ((tmp & PLL_REF_SDVO_HDMI_MULTIPLIER_MASK)
> +                >> PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT) + 1;
> +
> +       ilk_pch_clock_get(crtc_state);
> +}
> +
>  static void lpt_enable_pch_transcoder(struct drm_i915_private *dev_priv,
>                                       enum transcoder cpu_transcoder)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/g=
pu/drm/i915/display/intel_pch_display.h
> index e0ff331c0bc6..6e834fbebd64 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
> @@ -14,6 +14,7 @@ struct intel_crtc_state;
>  void ilk_disable_pch_transcoder(struct intel_crtc *crtc);
>  void ilk_pch_enable(struct intel_atomic_state *state,
>                     struct intel_crtc *crtc);
> +void ilk_pch_get_config(struct intel_crtc_state *crtc_state);
>
>  void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv);
>  void lpt_pch_enable(struct intel_atomic_state *state,
> --
> 2.32.0
>

