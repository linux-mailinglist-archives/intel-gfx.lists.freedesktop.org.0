Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7167A0B3C
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 19:06:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4151E10E0BE;
	Thu, 14 Sep 2023 17:06:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com
 [IPv6:2607:f8b0:4864:20::c35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6C2310E0BE
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 17:05:59 +0000 (UTC)
Received: by mail-oo1-xc35.google.com with SMTP id
 006d021491bc7-575f45e255dso664521eaf.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 10:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1694711158; x=1695315958;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sV3XlYKrRdiAuwRD4p1j4PM9aGCnNxVnCeH1408OWGQ=;
 b=cNkKxSW+CH1QJAb3MuORpoYK6Tv0VnZlMtmXDsLFRW5QXDXgUq8KSM1KqKtrTdwFsV
 7iLnK5KEqFKw8P1zBLdaEFlPmDQS72HKayzAvrXTST6OLqo/YXsvFJGtQL188FzBv55O
 cR+0GiB2Soz43SJWF7nakd8W9yHGr3vPcYvDU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694711158; x=1695315958;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sV3XlYKrRdiAuwRD4p1j4PM9aGCnNxVnCeH1408OWGQ=;
 b=inRRm4lyJ+KiaB3OkW2wAZaMuu64xPHqvIYZnTFqMqs/L2FfHkgC9v4qAvaE6THWpz
 CJcVcb4rnqMMf2HpIjnDnKUh3PFMuULfGOWBwH2QmLxamVE8l5w5IPw5OReoXmpt0lBV
 zxii4UmuAjB/FBholNxzuW9IAcC/TXkavq6WlJWgB3DdfccPs4RUjQ/3s49P/ns9D2sM
 76TLNBoSTuFEo4Vl9PV19//E0mNP2wrLMRZdx2CLiFQQVuokoPcO/UhfH5qdPTFHcyUM
 ailpvBEp4z+cAaQtfjixGYoAXNEGgyrONnPrGCp8EsmbLrxVfjOkp4a/BkIBiXwddXuO
 HDYQ==
X-Gm-Message-State: AOJu0YykkS3dSa+btU16+DVKZ+Bf0KK+awN5kGE4GMitt265aDiq50d4
 Tj4GQAkCXQSGy9OO+AQoYQfoo8BZorW4fDiegHU=
X-Google-Smtp-Source: AGHT+IGGg0OTRWwkVjkh8B0EU+kO5f1hk67XQ8XCgf607PNr6Wu8q4cL6XoHvojgOnv1UEq/9lq7hA==
X-Received: by 2002:a05:6820:52:b0:573:2312:b3 with SMTP id
 v18-20020a056820005200b00573231200b3mr7554525oob.4.1694711157877; 
 Thu, 14 Sep 2023 10:05:57 -0700 (PDT)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com.
 [209.85.160.41]) by smtp.gmail.com with ESMTPSA id
 f139-20020a4a5891000000b00563155bd360sm865880oob.17.2023.09.14.10.05.56
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 Sep 2023 10:05:56 -0700 (PDT)
Received: by mail-oa1-f41.google.com with SMTP id
 586e51a60fabf-1bba7717d3bso659739fac.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 10:05:56 -0700 (PDT)
X-Received: by 2002:a05:6870:d354:b0:1bf:7b3:5116 with SMTP id
 h20-20020a056870d35400b001bf07b35116mr6536342oag.47.1694711155947; Thu, 14
 Sep 2023 10:05:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-11-ville.syrjala@linux.intel.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Thu, 14 Sep 2023 13:05:18 -0400
X-Gmail-Original-Message-ID: <CAOw6vb+T0FL+xeo8+psav6_C4VFY=M0PeSe0y8nUy5-4wPzmVg@mail.gmail.com>
Message-ID: <CAOw6vb+T0FL+xeo8+psav6_C4VFY=M0PeSe0y8nUy5-4wPzmVg@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 10/12] drm/i915: Update VRR parameters in
 fastset
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

On Fri, Sep 1, 2023 at 9:05=E2=80=AFAM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We should be able to change any of the VRR parameters
> during fastsets as long as we toggle VRR off at the start
> and then back on at the end. The transcoder will be running
> in non-VRR mode during the transition.
>
> Co-developed-by: Manasi Navare <navaremanasi@chromium.org>

Reviewed-by: Sean Paul <seanpaul@chromium.org>


> Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 34 +++++++++++++++-----
>  1 file changed, 26 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index cbbee303cd00..f0bb5c70ebfc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -913,18 +913,32 @@ static bool planes_disabling(const struct intel_crt=
c_state *old_crtc_state,
>         return is_disabling(active_planes, old_crtc_state, new_crtc_state=
);
>  }
>
> +static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_s=
tate,
> +                              const struct intel_crtc_state *new_crtc_st=
ate)
> +{
> +       return old_crtc_state->vrr.flipline !=3D new_crtc_state->vrr.flip=
line ||
> +               old_crtc_state->vrr.vmin !=3D new_crtc_state->vrr.vmin ||
> +               old_crtc_state->vrr.vmax !=3D new_crtc_state->vrr.vmax ||
> +               old_crtc_state->vrr.guardband !=3D new_crtc_state->vrr.gu=
ardband ||
> +               old_crtc_state->vrr.pipeline_full !=3D new_crtc_state->vr=
r.pipeline_full;
> +}
> +
>  static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
>                          const struct intel_crtc_state *new_crtc_state)
>  {
>         return is_enabling(vrr.enable, old_crtc_state, new_crtc_state) ||
> -               (new_crtc_state->vrr.enable && new_crtc_state->update_m_n=
);
> +               (new_crtc_state->vrr.enable &&
> +                (new_crtc_state->update_m_n ||
> +                 vrr_params_changed(old_crtc_state, new_crtc_state)));
>  }
>
>  static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
>                           const struct intel_crtc_state *new_crtc_state)
>  {
>         return is_disabling(vrr.enable, old_crtc_state, new_crtc_state) |=
|
> -               (old_crtc_state->vrr.enable && new_crtc_state->update_m_n=
);
> +               (old_crtc_state->vrr.enable &&
> +                (new_crtc_state->update_m_n ||
> +                 vrr_params_changed(old_crtc_state, new_crtc_state)));
>  }
>
>  #undef is_disabling
> @@ -5342,13 +5356,14 @@ intel_pipe_config_compare(const struct intel_crtc=
_state *current_config,
>         PIPE_CONF_CHECK_I(splitter.link_count);
>         PIPE_CONF_CHECK_I(splitter.pixel_overlap);
>
> -       if (!fastset)
> +       if (!fastset) {
>                 PIPE_CONF_CHECK_BOOL(vrr.enable);
> -       PIPE_CONF_CHECK_I(vrr.vmin);
> -       PIPE_CONF_CHECK_I(vrr.vmax);
> -       PIPE_CONF_CHECK_I(vrr.flipline);
> -       PIPE_CONF_CHECK_I(vrr.pipeline_full);
> -       PIPE_CONF_CHECK_I(vrr.guardband);
> +               PIPE_CONF_CHECK_I(vrr.vmin);
> +               PIPE_CONF_CHECK_I(vrr.vmax);
> +               PIPE_CONF_CHECK_I(vrr.flipline);
> +               PIPE_CONF_CHECK_I(vrr.pipeline_full);
> +               PIPE_CONF_CHECK_I(vrr.guardband);
> +       }
>
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I
> @@ -6554,6 +6569,9 @@ static void intel_update_crtc(struct intel_atomic_s=
tate *state,
>                 if (DISPLAY_VER(i915) >=3D 11 &&
>                     intel_crtc_needs_fastset(new_crtc_state))
>                         icl_set_pipe_chicken(new_crtc_state);
> +
> +               if (vrr_params_changed(old_crtc_state, new_crtc_state))
> +                       intel_vrr_set_transcoder_timings(new_crtc_state);
>         }
>
>         intel_fbc_update(state, crtc);
> --
> 2.41.0
>
