Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB18E797C2B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 20:44:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42FA210E24B;
	Thu,  7 Sep 2023 18:44:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA81A10E083
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 18:44:09 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-99bc9e3cbf1so267459666b.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Sep 2023 11:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1694112248; x=1694717048;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NR0+LzZt6ApxULWVduSWp+QfaT8i2+8P/2DWbs7FZ5k=;
 b=V1Cbh3oQzDCMHbU5BTY2Poa7P3HMf4U1jh1xehijstFJSCJz6X/v/sFs1v1GmYM9HM
 DZL9QphLPQXqkxSLiNu9ihTIpAj1zV5/RllX+L0uAcAqobvhYBkAIzzkKtnQHERVukla
 m6D3U4qjLB2QkJ4r6aG7IiL4nuoSPURe0ffDc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694112248; x=1694717048;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NR0+LzZt6ApxULWVduSWp+QfaT8i2+8P/2DWbs7FZ5k=;
 b=I6F83NhVpa5jiWVMah3yHHtYswpcq9k05LAsTqb73qy+NyBRna4/OC3+El+5Jn3lyW
 BoUXS7viLYu1KqY61gsQSeS4XaT9aPQDxZFTM2kqXj9OyufzGVstRLNp8EUemQ8TWyss
 eTepbAaIPd2v4YqLbheQloYh2my9VEidf9fZSRJMtoFm9Bb7SpImKM+nUAuZMonD9b8F
 /PU8RPsm0R59yGrmydPcSjiszVXahii3oKIY7ynW7KS6RNjLg8Bt/HG651LhhgQLkLKW
 lunR2cK9qpH21+tRTxNf0/yy8GpzJv2vVVGan1HV6Q4NaAIxBdYAkI2OvJqhqdkj/FxV
 4Szg==
X-Gm-Message-State: AOJu0Yz6oLoBnG6BRqFqX/xUxcWkuUSf4/k1g8h4jkm2rSsuqd2lGQ+Y
 Xe17G6BwrYn20QrhtXJ6z66WC9f7Sop27mbXnv2opHFrQFmxwsGOdXc=
X-Google-Smtp-Source: AGHT+IHtMgiUo0gOCH1Zu0Neqk2PI6okT56Fr/Xb81DDfLQrMXN0lk3us3O6qcMHRhpuRTjgxML6CEku5MI4FPj9u0Q=
X-Received: by 2002:a17:907:2b24:b0:9a9:e898:db20 with SMTP id
 gc36-20020a1709072b2400b009a9e898db20mr1800577ejc.0.1694112248408; Thu, 07
 Sep 2023 11:44:08 -0700 (PDT)
MIME-Version: 1.0
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-8-ville.syrjala@linux.intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Thu, 7 Sep 2023 11:43:57 -0700
Message-ID: <CAE72mNmmCwH7o_QHAmzrchtWmN+tKxJc6i=VffBnapUTEjZHzw@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 07/12] drm/i915: Relocate is_in_vrr_range()
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

Reviewed-by: Manasi Navare <navaremanasi@chromium.org>

Manasi

On Fri, Sep 1, 2023 at 6:05=E2=80=AFAM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Move is_in_vrr_range() into intel_vrr.c in anticipation of
> more users, and rename it accordingly.
>
> Cc: Manasi Navare <navaremanasi@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 17 ++++-------------
>  drivers/gpu/drm/i915/display/intel_vrr.c   |  9 +++++++++
>  drivers/gpu/drm/i915/display/intel_vrr.h   |  1 +
>  3 files changed, 14 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 9232a305b1e6..086cb8dbe22c 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -59,15 +59,6 @@ intel_panel_preferred_fixed_mode(struct intel_connecto=
r *connector)
>                                         struct drm_display_mode, head);
>  }
>
> -static bool is_in_vrr_range(struct intel_connector *connector, int vrefr=
esh)
> -{
> -       const struct drm_display_info *info =3D &connector->base.display_=
info;
> -
> -       return intel_vrr_is_capable(connector) &&
> -               vrefresh >=3D info->monitor_range.min_vfreq &&
> -               vrefresh <=3D info->monitor_range.max_vfreq;
> -}
> -
>  static bool is_best_fixed_mode(struct intel_connector *connector,
>                                int vrefresh, int fixed_mode_vrefresh,
>                                const struct drm_display_mode *best_mode)
> @@ -81,8 +72,8 @@ static bool is_best_fixed_mode(struct intel_connector *=
connector,
>          * vrefresh, which we can then reduce to match the requested
>          * vrefresh by extending the vblank length.
>          */
> -       if (is_in_vrr_range(connector, vrefresh) &&
> -           is_in_vrr_range(connector, fixed_mode_vrefresh) &&
> +       if (intel_vrr_is_in_range(connector, vrefresh) &&
> +           intel_vrr_is_in_range(connector, fixed_mode_vrefresh) &&
>             fixed_mode_vrefresh < vrefresh)
>                 return false;
>
> @@ -224,8 +215,8 @@ int intel_panel_compute_config(struct intel_connector=
 *connector,
>          * Assume that we shouldn't muck about with the
>          * timings if they don't land in the VRR range.
>          */
> -       is_vrr =3D is_in_vrr_range(connector, vrefresh) &&
> -               is_in_vrr_range(connector, fixed_mode_vrefresh);
> +       is_vrr =3D intel_vrr_is_in_range(connector, vrefresh) &&
> +               intel_vrr_is_in_range(connector, fixed_mode_vrefresh);
>
>         if (!is_vrr) {
>                 /*
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i=
915/display/intel_vrr.c
> index 88e4759b538b..6ef782538337 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -42,6 +42,15 @@ bool intel_vrr_is_capable(struct intel_connector *conn=
ector)
>                 info->monitor_range.max_vfreq - info->monitor_range.min_v=
freq > 10;
>  }
>
> +bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefre=
sh)
> +{
> +       const struct drm_display_info *info =3D &connector->base.display_=
info;
> +
> +       return intel_vrr_is_capable(connector) &&
> +               vrefresh >=3D info->monitor_range.min_vfreq &&
> +               vrefresh <=3D info->monitor_range.max_vfreq;
> +}
> +
>  void
>  intel_vrr_check_modeset(struct intel_atomic_state *state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i=
915/display/intel_vrr.h
> index de16960c4929..89937858200d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -14,6 +14,7 @@ struct intel_connector;
>  struct intel_crtc_state;
>
>  bool intel_vrr_is_capable(struct intel_connector *connector);
> +bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefre=
sh);
>  void intel_vrr_check_modeset(struct intel_atomic_state *state);
>  void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>                               struct drm_connector_state *conn_state);
> --
> 2.41.0
>
