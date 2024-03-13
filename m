Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E59187A27C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 05:48:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D8B10EA2D;
	Wed, 13 Mar 2024 04:48:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="WPxCfQK9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA1BB10EA2D
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 04:48:45 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id
 4fb4d7f45d1cf-5687feeb1feso719219a12.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 21:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1710305324; x=1710910124;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4LiertQGkd7NWWymwpHIRUeK/dhOJ8R1hc5vWmDo/i8=;
 b=WPxCfQK9mJSsB63BFPlmAyu15naH2z+2f1HvL+jSGQLswL1x1dO5nG9C87dYVNo2uJ
 pnlA+TQglj9wj9BokyVakrwe+rIjakO9udWdk0V6aINwK0vjifb6ocx1JMrt0eELYaYN
 FQTjJ65mvHo6+9IJi1FZrECwswGcaHLau2Rw0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710305324; x=1710910124;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4LiertQGkd7NWWymwpHIRUeK/dhOJ8R1hc5vWmDo/i8=;
 b=S7TH/upTONj8DzAzDeR63DzvxlgldkEtNh3Ur6A//B31e+0zq8+deXgdZDR3eByMPW
 8gfdQOuQEfr1CQUVXGWPKghCVQqhZmCCG9glbsWQT3kqsJ4Yupzi42XYV48ljMppqcKj
 ZOKWtb1TOkD7dbVKt/lw3CdsAvFMEOeES2sotSMpMoELOhUH6kqsQfj4no+m0GsoQhyG
 mro2O8ftjVK0v+zrDu3rBhAEpybJWufErsVO9ZHo7UiQE28E9gM52KZH3wPUEUQw4Sxc
 jj4RnBtQJf4/zXHyserXngT/3QwECQiJLbNp3WhCGKqLNciSaZ1w6MvNt8VFjmb2lwHB
 TgIw==
X-Gm-Message-State: AOJu0YyrLez6+jKRy4bLLikJYVp/vd0seBzdEMEFlnSpwSBI7B7YLVQO
 U/qUihsXQc1CWslR5H49G6JNrDgS0R1zP1aRWoDkFeIL2/+OxH+CVktOJbDTpEQG9PVLNCBE0QQ
 8hqve6GjtGIZs+U2ozOHNwRIgX95gZRI3mI2a
X-Google-Smtp-Source: AGHT+IFI2vFULvno/uJTtvQpHKsN0J9J2wIlb+nFd9UJgpRGeDF6PuvwtjyxaqLRwvWPB1NqX5cAi7UUn6Ysb+5LwXI=
X-Received: by 2002:a17:907:6d03:b0:a46:300c:6280 with SMTP id
 sa3-20020a1709076d0300b00a46300c6280mr5639725ejc.48.1710305324128; Tue, 12
 Mar 2024 21:48:44 -0700 (PDT)
MIME-Version: 1.0
References: <20240308131146.32714-1-stanislav.lisovskiy@intel.com>
 <20240308131146.32714-7-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240308131146.32714-7-stanislav.lisovskiy@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 12 Mar 2024 21:48:33 -0700
Message-ID: <CAE72mNmgt3i-KiEOOWhs8uro-3O-85yRN7=MUecRVrPCuhDtcw@mail.gmail.com>
Subject: Re: [PATCH 6/6] drm/i915: Allow bigjoiner for MST
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

Now when we enable bigjoiner for MST, in MST case
intel_ddi_post_disable_hdmi_or_sst() function wont get called,
Do we need similar changes for MST case to loop over the joined pipes
in MST bigjoiner case?

Manasi

On Fri, Mar 8, 2024 at 5:12=E2=80=AFAM Stanislav Lisovskiy
<stanislav.lisovskiy@intel.com> wrote:
>
> From: Vidya Srinivas <vidya.srinivas@intel.com>
>
> We need bigjoiner support with MST functionality
> for MST monitor resolutions > 5K to work.
> Adding support for the same.
>
> v2: Addressed review comments from Jani.
> Revert rejection of MST bigjoiner modes and add
> functionality
>
> v3: Fixed pipe_mismatch WARN for mst_master_transcoder
> Credits-to: Manasi Navare <navaremanasi@chromium.org>
>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> Reviewed-by: Manasi Navare <navaremanasi@chromium.org>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    |  6 ++++--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 17 +++++++++--------
>  2 files changed, 13 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 3756975bd561c..3bf8941107473 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3924,9 +3924,11 @@ static void intel_ddi_read_func_ctl(struct intel_e=
ncoder *encoder,
>                 pipe_config->lane_count =3D
>                         ((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_S=
HIFT) + 1;
>
> -               if (DISPLAY_VER(dev_priv) >=3D 12)
> -                       pipe_config->mst_master_transcoder =3D
> +               if (DISPLAY_VER(dev_priv) >=3D 12) {
> +                       if (!intel_crtc_is_bigjoiner_slave(pipe_config))
> +                               pipe_config->mst_master_transcoder =3D
>                                         REG_FIELD_GET(TRANS_DDI_MST_TRANS=
PORT_SELECT_MASK, temp);
> +               }
>
>                 intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder,
>                                                &pipe_config->dp_m_n);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 53aec023ce92f..3e6e2cd08d3ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -525,6 +525,7 @@ static int intel_dp_mst_compute_config(struct intel_e=
ncoder *encoder,
>  {
>         struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>         struct intel_atomic_state *state =3D to_intel_atomic_state(conn_s=
tate->state);
> +       struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc)=
;
>         struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(encoder);
>         struct intel_dp *intel_dp =3D &intel_mst->primary->dp;
>         const struct intel_connector *connector =3D
> @@ -542,6 +543,10 @@ static int intel_dp_mst_compute_config(struct intel_=
encoder *encoder,
>         if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>                 return -EINVAL;
>
> +       if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdispla=
y,
> +                                   adjusted_mode->crtc_clock))
> +               pipe_config->bigjoiner_pipes =3D GENMASK(crtc->pipe + 1, =
crtc->pipe);
> +
>         pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
>         pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
>         pipe_config->has_pch_encoder =3D false;
> @@ -1330,12 +1335,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *=
connector,
>          *   corresponding link capabilities of the sink) in case the
>          *   stream is uncompressed for it by the last branch device.
>          */
> -       if (mode_rate > max_rate || mode->clock > max_dotclk ||
> -           drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_=
pbn) {
> -               *status =3D MODE_CLOCK_HIGH;
> -               return 0;
> -       }
> -
>         if (mode->clock < 10000) {
>                 *status =3D MODE_CLOCK_LOW;
>                 return 0;
> @@ -1349,8 +1348,10 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *=
connector,
>         if (intel_dp_need_bigjoiner(intel_dp, mode->hdisplay, target_cloc=
k)) {
>                 bigjoiner =3D true;
>                 max_dotclk *=3D 2;
> +       }
>
> -               /* TODO: add support for bigjoiner */
> +       if (mode_rate > max_rate || mode->clock > max_dotclk ||
> +           drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_=
pbn) {
>                 *status =3D MODE_CLOCK_HIGH;
>                 return 0;
>         }
> @@ -1397,7 +1398,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *c=
onnector,
>                 return 0;
>         }
>
> -       *status =3D intel_mode_valid_max_plane_size(dev_priv, mode, false=
);
> +       *status =3D intel_mode_valid_max_plane_size(dev_priv, mode, bigjo=
iner);
>         return 0;
>  }
>
> --
> 2.37.3
>
