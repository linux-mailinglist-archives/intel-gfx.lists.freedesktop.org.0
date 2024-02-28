Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F8986B8F1
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 21:19:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D9DD10E2D8;
	Wed, 28 Feb 2024 20:19:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="nVqVLcIa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1149810E2D8
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 20:19:18 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id
 a640c23a62f3a-a43f922b2c5so26502066b.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 12:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1709151557; x=1709756357;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=h0UXBjOyk9UzmKqAw8hMiXClRHfSJceceCaN2eLSNb4=;
 b=nVqVLcIayk80hbw+3XNFi8nWywMVsBc9LV2/2qk3tc1FQAWWqXRxqsx82aELHtHm7y
 AJA6OoaC1iMp6fzMShRWxiBd0PbYQVFzBEu8KJXLzzJ9YyBx3Uv+JdrJDieVo5kJswD4
 dx1MCZaTsRiVEIYsPwF6MHdG101P8riIq7x1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709151557; x=1709756357;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=h0UXBjOyk9UzmKqAw8hMiXClRHfSJceceCaN2eLSNb4=;
 b=Fg8QeW4ABjTN0onYcnCDV4lM6n66+lJmDfZyXmRzmBQRiNttD2a/FNn3FowDBNSJOu
 B/Dm+zJW0Aotno/IQa4S3nl7VoA4M36Y2mRUEkyJaUjEGSPKzCuIYShi/vt2t6OrjUuG
 pZfP0x+v0lrnxuFWs20p954FMU56sRzQMMkf/cSuptqBN89ZknDUU+OIVB8UAD0FtG18
 h6tOn3cyk+yJJn1xfcutsFZgKv2MA3FeoeHd9jjtuC4/Yhlr397EB73vFmLXqCG+fNyn
 Zd8xUVJTbpBByPfERV3uQBh6+wa0j0MukyNIA4CS8iUrIZQpzES2IQ3erBJTDiLzrzMO
 w3qQ==
X-Gm-Message-State: AOJu0YwQu6zjrcUvqczshF12f8PZavuqxgkZcPcL/N10KasxF+wNfAJP
 svN8n1o7EiSwbLz89UWO1dDgEqqr4Fbg/rsaYiVyabahgD2Pg6F0KtsEKAMl4jXP1jp4WX40Mjh
 lmiTvBIDESiQ236WtHoeyhC5kd+ndrGF8XslrZHWVAweenpk=
X-Google-Smtp-Source: AGHT+IHy8u9wTxMYTqCBVE2CTkUknxYDIKwoeT5HkjL+H7VQ6yZAj+OfotOEym8a2eCeT/5kIFTw4gBjK7LseTQv6Qo=
X-Received: by 2002:a17:906:48b:b0:a40:46f1:7263 with SMTP id
 f11-20020a170906048b00b00a4046f17263mr33188eja.22.1709151557160; Wed, 28 Feb
 2024 12:19:17 -0800 (PST)
MIME-Version: 1.0
References: <20240228150436.6957-1-vidya.srinivas@intel.com>
 <20240228150436.6957-2-vidya.srinivas@intel.com>
In-Reply-To: <20240228150436.6957-2-vidya.srinivas@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Wed, 28 Feb 2024 12:19:06 -0800
Message-ID: <CAE72mNm=CHSzezK4yvh2bLkHY=WAFLSwwD66SG2QUBD2=-G2bg@mail.gmail.com>
Subject: Re: [PATCH 1/1] drm/i915: Allow bigjoiner for MST
To: Vidya Srinivas <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, khaled.almahallawy@intel.com
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

With v2, this looks good to me,

Acked-by: Manasi Navare <navaremanasi@chromium.org)

Regards
Manasi

On Wed, Feb 28, 2024 at 7:22=E2=80=AFAM Vidya Srinivas <vidya.srinivas@inte=
l.com> wrote:
>
> We need bigjoiner support with MST functionality
> for MST monitor resolutions > 5K to work.
> Adding support for the same.
>
> v2: Addressed review comments from Jani.
> Revert rejection of MST bigjoiner modes and add
> functionality
>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index db1254b036f1..c5e7293c13eb 100644
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
> 2.33.0
>
