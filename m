Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4A785EBDF
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 23:35:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2C1210E3AC;
	Wed, 21 Feb 2024 22:35:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="KmZEPmlk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5473D10E3AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 22:35:15 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id
 a640c23a62f3a-a3eafbcb1c5so433091366b.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 14:35:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1708554913; x=1709159713;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QfEfRsigTzM29x+N4/Hz9iF+GZsAIH9IkfFLUcKXKx0=;
 b=KmZEPmlkxlSojTpDIKP07RmgsRwpdjrASQEXSFgl/fp4iOSCSloqypEpR0O/UGzImA
 Iq8ybrLSqL2Aue8JThYjvp6mvqvYH/5c7+Gbf2lPzpl5c3FH+/osyft/FMmrQ1CD/K1x
 LcwPpJjG4Ax5j8ySQSzJNoUNUwLvgHAFw5oJc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708554913; x=1709159713;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=QfEfRsigTzM29x+N4/Hz9iF+GZsAIH9IkfFLUcKXKx0=;
 b=umxmzuKtZhaQEAv9YuGjOfOBUndTuZIpgf56gbmbAaBiN7EVhGIfufYOKeuHW5C0c7
 MIhwCoEQxTTfoNsDBacwMgmqoP9YPkUZD8JD6kCBMPMt7lf3Cd47IHLdNFYIJ8wLPbvv
 bYZlZgnTgJDVky6ifEfNjViBKKaD4AhPXijY+Nke9DbYrF/2pAwB6Jga2fdF0uU6OBji
 w5O0Z6AZoqVIO9A1sXa9cma5hJPx4CBZOixT99Oo0C8PJjqRa5KPROdJNjE4/e9vraX2
 Sj6oaSqjOrezXjAEJxd1AzWGsp/+P9NazwOSAypVe07ueTu8AY/hh8V0GXYug6Cw0bg5
 qfbg==
X-Gm-Message-State: AOJu0Yz3y3W3acPvrCyW47PMWYHqJicGsfYbybXt69rYzgvT0LBJ7HeV
 mTIGgdY6eXIyYXD18XZ8WciOM7mGZFaLj+/uE0shLQ12oz9aeNyc4oy0KJiNf8zEUmfD76Lloyu
 3Oo75GIlAwaFis6qe54N9ELmUabGv9yR2WAUz
X-Google-Smtp-Source: AGHT+IForblxxIO09WHm4O3TM6NJbmWj6M5+qNwBK3QCgTamiYe+AKsoB4dbyVOZK+Erqi7yOV6WZwNCmU+bHovnxVQ=
X-Received: by 2002:a17:906:4f0c:b0:a3f:7138:f837 with SMTP id
 t12-20020a1709064f0c00b00a3f7138f837mr442918eju.12.1708554913053; Wed, 21 Feb
 2024 14:35:13 -0800 (PST)
MIME-Version: 1.0
References: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
 <20240221192010.25413-4-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240221192010.25413-4-stanislav.lisovskiy@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Wed, 21 Feb 2024 14:35:01 -0800
Message-ID: <CAE72mNn_-1yEM_1OTqwaEAwb_ka0Ay_h+zJ687RHE-6TQ_hOiw@mail.gmail.com>
Subject: Re: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
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

Thanks Stan and Vidya for this patch.
ACK for the bigjoiner pipes calc and plane max size validation changes.

@Ville Syrj=C3=A4l=C3=A4 : Do you see any gaps now with MST bigjoiner enabl=
ing
in crtc_enable hooks () ? Or just these changes would suffice?

Regards
Manasi

On Wed, Feb 21, 2024 at 11:20=E2=80=AFAM Stanislav Lisovskiy
<stanislav.lisovskiy@intel.com> wrote:
>
> Patch calculates bigjoiner pipes in mst compute.
> Patch also passes bigjoiner bool to validate plane
> max size.
>
> Signed-off-by: vsrini4 <vidya.srinivas@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 5307ddd4edcf5..fd27d9976c050 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -523,6 +523,7 @@ static int intel_dp_mst_compute_config(struct intel_e=
ncoder *encoder,
>                                        struct drm_connector_state *conn_s=
tate)
>  {
>         struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +       struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc)=
;
>         struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(encoder);
>         struct intel_dp *intel_dp =3D &intel_mst->primary->dp;
>         const struct intel_connector *connector =3D
> @@ -540,6 +541,10 @@ static int intel_dp_mst_compute_config(struct intel_=
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
> @@ -1318,12 +1323,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *=
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
> @@ -1343,6 +1342,12 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *=
connector,
>                 return 0;
>         }
>
> +       if (mode_rate > max_rate || mode->clock > max_dotclk ||
> +           drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_=
pbn) {
> +               *status =3D MODE_CLOCK_HIGH;
> +               return 0;
> +       }
> +
>         if (DISPLAY_VER(dev_priv) >=3D 10 &&
>             drm_dp_sink_supports_dsc(intel_connector->dp.dsc_dpcd)) {
>                 /*
> @@ -1385,7 +1390,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *c=
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
