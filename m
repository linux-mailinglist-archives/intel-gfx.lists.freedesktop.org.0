Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADDB87A25D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 05:36:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5B2F10ECFD;
	Wed, 13 Mar 2024 04:36:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="jkiglAlr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3936810ECFD
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 04:36:35 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id
 4fb4d7f45d1cf-5686677bda1so895649a12.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 21:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1710304593; x=1710909393;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XDtol6kjGarhunSk4YMKaoCxUWx5FLsm+qsZC5aW98g=;
 b=jkiglAlrYtaHa81qy+Z/DSf+jujORMEp13dzMJYKCOlni0go54JJzcbnjGO2XmiRiV
 NQ2u5sdKh77hlMseEfzHA1y2URMsZBNgh1KmNKcvFLhuZI/ldcckpf8/O4qm1VJff7iH
 BsvDbkr9lYg7KvDX971PqrQGdabiYbveATVeI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710304593; x=1710909393;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XDtol6kjGarhunSk4YMKaoCxUWx5FLsm+qsZC5aW98g=;
 b=WRyDVFNzlnGCXZ5Iyo6aUz+lyrSAQguj1HKoCL0927frMejgRfGQhkRsCZJG8kySWm
 xqXPGzd1v0IuBHEQlDlehQL5zbRZuX+Q3wR+KD7PRU5K3baZRFpQs46IpwwZ3eHUTX/Y
 vMCKeB0+VnK4gM+X8OQZC/uBFk379y+i5FILtmcG/gXOBLvJDAlv1HmqzLjxA7H/ZIud
 Jy4QfhJKVB7DebQ7dCTwT+I8R1hIHHjq1+aOcSHXwdc8DBmPozzXO7IWWewUgxCJM28z
 pwsWUN2Fya/rOCkaKl04MbKtYm2ZVdwPA0zqr/Liicwcmzt3QCWnJRg2uxEROIns/64q
 o9ow==
X-Gm-Message-State: AOJu0YxuiSKGRfkSuKYZvU9Dppkfrnfwejc76Yo7lOl0UbFCqHhLt1Mf
 dg4aDrC+SGQClu3cXyzquHUNixw68spa9QKErSR8seYjiJ84F7l77jDyLG4ua/IAni4SyEeufDx
 Qo7Hj6/WDyEHnbjzTsvkr5fa8D/dsMSrqN9hY
X-Google-Smtp-Source: AGHT+IFJBLF4ao5widXfuyzXSLDFY9/OsV7rkKfzCYpe/GcoTIAvAyzBwIIzZU+A8d3tb3XtuorkBpC6yzB3ArMi9+I=
X-Received: by 2002:a17:907:c310:b0:a45:6d38:60aa with SMTP id
 tl16-20020a170907c31000b00a456d3860aamr1450785ejc.30.1710304593336; Tue, 12
 Mar 2024 21:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <20240308131146.32714-1-stanislav.lisovskiy@intel.com>
 <20240308131146.32714-3-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240308131146.32714-3-stanislav.lisovskiy@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 12 Mar 2024 21:36:22 -0700
Message-ID: <CAE72mNmBWeCNig3p0y3-dAcDjvy_XELCxynYbsqP3yEMGzYkoA@mail.gmail.com>
Subject: Re: [PATCH 2/6] drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com, 
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
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

Thanks Stan for the cleanup around post disable non MST case, one comment b=
elow

On Fri, Mar 8, 2024 at 5:11=E2=80=AFAM Stanislav Lisovskiy
<stanislav.lisovskiy@intel.com> wrote:
>
> Extract the "not-MST" stuff from intel_ddi_post_disable() so that
> the whole thing isn't so cluttered.
>
> The bigjoiner slave handling was outside of the !MST check,
> but it really should have been inside it as its the counterpart
> to the master handling inside the check. So we pull that
> in as well. There is no functional change here as we don't
> currently support bigjoiner+MST anyway.


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Credits-to: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 37 +++++++++++++++---------
>  1 file changed, 23 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index bbce74f011d40..5628a4ab608d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3095,28 +3095,26 @@ static void intel_ddi_post_disable_hdmi(struct in=
tel_atomic_state *state,
>         intel_dp_dual_mode_set_tmds_output(intel_hdmi, false);
>  }
>
> -static void intel_ddi_post_disable(struct intel_atomic_state *state,
> -                                  struct intel_encoder *encoder,
> -                                  const struct intel_crtc_state *old_crt=
c_state,
> -                                  const struct drm_connector_state *old_=
conn_state)
> +static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state=
 *state,
> +                                              struct intel_encoder *enco=
der,
> +                                              const struct intel_crtc_st=
ate *old_master_crtc_state,
> +                                              const struct drm_connector=
_state *old_conn_state)
>  {
>         struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>         struct intel_crtc *slave_crtc;
>
> -       if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
> -               intel_crtc_vblank_off(old_crtc_state);
> +       intel_crtc_vblank_off(old_crtc_state);
>
> -               intel_disable_transcoder(old_crtc_state);
> +       intel_disable_transcoder(old_crtc_state);
>
> -               intel_ddi_disable_transcoder_func(old_crtc_state);
> +       intel_ddi_disable_transcoder_func(old_crtc_state);
>
> -               intel_dsc_disable(old_crtc_state);
> +       intel_dsc_disable(old_crtc_state);
>
> -               if (DISPLAY_VER(dev_priv) >=3D 9)
> -                       skl_scaler_disable(old_crtc_state);
> -               else
> -                       ilk_pfit_disable(old_crtc_state);
> -       }
> +       if (DISPLAY_VER(dev_priv) >=3D 9)
> +               skl_scaler_disable(old_crtc_state);
> +       else
> +               ilk_pfit_disable(old_crtc_state);
>
>         for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
>                                          intel_crtc_bigjoiner_slave_pipes=
(old_crtc_state)) {

This bigjoiner slave handling for MST path will be added later to the
intel_ddi_post_post_disable()
when we enable bigjoiner for MST?

Manasi

> @@ -3128,6 +3126,17 @@ static void intel_ddi_post_disable(struct intel_at=
omic_state *state,
>                 intel_dsc_disable(old_slave_crtc_state);
>                 skl_scaler_disable(old_slave_crtc_state);
>         }
> +}
> +
> +static void intel_ddi_post_disable(struct intel_atomic_state *state,
> +                                  struct intel_encoder *encoder,
> +                                  const struct intel_crtc_state *old_crt=
c_state,
> +                                  const struct drm_connector_state *old_=
conn_state)
> +{
> +
> +       if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
> +               intel_ddi_post_disable_hdmi_or_sst(state, encoder,
> +                                                  old_crtc_state, old_co=
nn_state);
>
>         /*
>          * When called from DP MST code:
> --
> 2.37.3
>
