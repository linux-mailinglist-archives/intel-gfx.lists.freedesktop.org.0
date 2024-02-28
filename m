Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8E286B8EF
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 21:18:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE02710E355;
	Wed, 28 Feb 2024 20:18:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="FgXvhLqc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42C3E10E355
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 20:18:20 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id
 a640c23a62f3a-a3f3d0d2787so28447766b.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 12:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1709151498; x=1709756298;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qMf5IpKr3XUSQ6JG/wnRciEDVusL6zh3QzdRepw51cQ=;
 b=FgXvhLqc5KJXpghPtpmmCRPcHEUG2QZYuiA+GV+p5PWoK/kvVvLdTTgk7cfj8zf2Pp
 qVhmD++XCSAWdpcqivCQPFNpr8FK2gIaRQD7PehEVWw7wrT0tKDrAIoOu3G6bAEM3rXN
 GVDnk5BobdQkqWyY1mhOgI4+5pSQ64WD9FBhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709151498; x=1709756298;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qMf5IpKr3XUSQ6JG/wnRciEDVusL6zh3QzdRepw51cQ=;
 b=v6bUaAiJfHlJGxKQfQbPeQW6PpJlGFe7+ghCYp9IZ1tJAiyP7vHut1EnGV4aLz8ktU
 GLYOE2lApIvz6J1oRo4cXdBZWlCXMxuWMXEJtTqS1PGeFHwMHxi5oamCC5PZs0fRy1eS
 lB0uWJaQBMEc6Rfl+JYULGorSZrKTmBLHjXidW+aaze0t0mfBn0dkVOxV0gy4GYoi6u5
 DhIAusc73pYdh45RaePj5XeHWOo/lXZlBu6YdnCn5SHAMLo2G+7FOKrl29UpDBhiAx/Z
 LGuhgyLTtb0YfQWdEBLiyY1TIxZqxr+1DCacaAKBbmHvZJuCEnpsz8NsuK4eTAJ40sN5
 Fg5Q==
X-Gm-Message-State: AOJu0YzmfA5/IRb32Ie7FnzlFC98+5BlBfOjh/aCOZSDZUJGH3oiPqpW
 6HxzO7cqwgkS721Eds/y81pGc/S6SzvXjzmr5aFOfMSTQLI4c2oRLfTuc1iHNZIFOHE5+pYtrYa
 DHVOKhqKX6hx5HLkTaoJUVTIzYDXakJbez056
X-Google-Smtp-Source: AGHT+IGkyStUGjtXGiI91UJyxyV5hHMW3cl+LuTAIZ9UJB9YJugiQrbKT5a7E+ybm5BUfw2rKpiQLWy/BQJT2Zatplc=
X-Received: by 2002:a17:906:5792:b0:a44:64d:93d1 with SMTP id
 k18-20020a170906579200b00a44064d93d1mr27657ejq.18.1709151498248; Wed, 28 Feb
 2024 12:18:18 -0800 (PST)
MIME-Version: 1.0
References: <20240227181849.22614-1-vidya.srinivas@intel.com>
 <20240227181849.22614-3-vidya.srinivas@intel.com>
In-Reply-To: <20240227181849.22614-3-vidya.srinivas@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Wed, 28 Feb 2024 12:18:07 -0800
Message-ID: <CAE72mNnS2C_6EAOykf44yvVp5NCyGjos8dacKDpHvO=TfNO47A@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/i915: Allow bigjoiner for MST
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

I think now Patch 1/1 of this series takes care of squashing the
revert with enabling bigjoiner for MST, so this patch is redundant.


Manasi

On Tue, Feb 27, 2024 at 10:37=E2=80=AFAM Vidya Srinivas
<vidya.srinivas@intel.com> wrote:
>
> We need bigjoiner support with MST functionality
> for MST monitor resolutions > 5K to work.
> Adding support for the same.
>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index b062f4ee6c8b..c5e7293c13eb 100644
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
> @@ -1351,6 +1350,12 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *=
connector,
>                 max_dotclk *=3D 2;
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
> @@ -1393,7 +1398,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *c=
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
