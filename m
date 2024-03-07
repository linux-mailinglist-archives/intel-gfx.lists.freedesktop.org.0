Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C54528756DA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 20:15:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 022A010EBAF;
	Thu,  7 Mar 2024 19:15:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="jh45LAhA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E73D411385E
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Mar 2024 19:15:17 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id
 4fb4d7f45d1cf-565ef8af2f5so1508368a12.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Mar 2024 11:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1709838916; x=1710443716;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OVOvX665i185oyZmSRvtlJmory7LcIItgmrawjZQCLo=;
 b=jh45LAhAjVqQeXFpof56aaiIlYotBRWn7+H8jflzPlhsmBniz74bLJftiMApG+L/wv
 eiz6hSBVKOOWSBz+QOQ+xY6/3Ls2jg2Y3JYUHKl2N6y8/wmY9J/8BStpb633amHrG/gI
 VbCtlW2uBDX/pqqWdds2hI6tA8OvnLDCUVyEs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709838916; x=1710443716;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OVOvX665i185oyZmSRvtlJmory7LcIItgmrawjZQCLo=;
 b=pBeCnbr2Dq2xsYnj0mNjNBYrsL7GTvsOnJqtJm7BxSMq4INeBc8GyqYj/5ZeMpBgzg
 yfm8Irg4mIiSUMafsX/BW4Qcp6AiyAzMFf22H+4P/2vhR4+UUOMzqz0Felh8Afhg08UD
 RrsriWH+bZc4JGWyArN2vXL4DUXDYylX+eu9648rJ01QbTAC1CpEubK62lhfhmyigwU2
 ZPsm1rRRkYxCZh6HqmhD3nPI1wQR6nESL+6Wb0IoYZ+87d2IVR4C6UgKG4dvNr92LxhT
 plUNyMzwhCHd/xRJHRi3LKJ2lFemS9bp/Pg8CqLTZpVEEevTGt7aoJixUZEq+4BgJE6b
 t1Fg==
X-Gm-Message-State: AOJu0YyHF1VhpPzhmfC+eWbpqiFngyLj5YZWX54wsLHEkPUQ1lkZqZo9
 Yf1NrJLWbHenmYc/PDoesbn9/zqHIsflgQ5EwKYkD7HFT8gMJCDmLhSCtINHI+WO4Hx8f2bWVmt
 qgqeMPs6+1gMFMe88hfXbYEUKAQmmtGhu8hBrKSI2MAUIHsA=
X-Google-Smtp-Source: AGHT+IH/V3UO8VttdCme4BBKf1HK0PdiwRlO4ZAeJE4RrfxzGkRHcWWMasqFM76PJhOiQtBtaBUPo+Vx/Mex+WURlXg=
X-Received: by 2002:a50:8a8d:0:b0:565:b4ca:72f3 with SMTP id
 j13-20020a508a8d000000b00565b4ca72f3mr470798edj.35.1709838915873; Thu, 07 Mar
 2024 11:15:15 -0800 (PST)
MIME-Version: 1.0
References: <20240307051343.26155-1-vidya.srinivas@intel.com>
 <20240307051343.26155-2-vidya.srinivas@intel.com>
In-Reply-To: <20240307051343.26155-2-vidya.srinivas@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Thu, 7 Mar 2024 11:15:04 -0800
Message-ID: <CAE72mN=OGcz=mP_LM=-R3yUpWOrkyiD-LXPSP1cwdBkKFH1r4g@mail.gmail.com>
Subject: Re: [PATCH 1/1] drm/i915: Allow bigjoiner for MST
To: Vidya Srinivas <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, khaled.almahallawy@intel.com, 
 stanislav.lisovskiy@intel.com, uma.shankar@intel.com, shawn.c.lee@intel.com
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

Thanks Vidya for the v3,
this LGTM,

Reviewed-by: Manasi Navare <navaremanasi@chromium.org>

Manasi

On Wed, Mar 6, 2024 at 9:31=E2=80=AFPM Vidya Srinivas <vidya.srinivas@intel=
.com> wrote:
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
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    |  6 ++++--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 17 +++++++++--------
>  2 files changed, 13 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index c587a8efeafc..41998022ed07 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3902,9 +3902,11 @@ static void intel_ddi_read_func_ctl(struct intel_e=
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
