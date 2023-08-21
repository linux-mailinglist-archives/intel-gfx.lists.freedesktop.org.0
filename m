Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D90C278300F
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 20:15:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1C3410E151;
	Mon, 21 Aug 2023 18:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB9DD10E151
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 18:15:00 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id
 38308e7fff4ca-2b703a0453fso62794661fa.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 11:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692641698; x=1693246498;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2bYA2fWPzg4wUUeKXDA2ZUKl7EQuuGyYeekYXItvDak=;
 b=d7Q7VkuApxSXmhAUHkhiAvyJlE70cdS13rr4vyrgKi+zeuVMif3/JxC4bbVLn6QVU4
 1KcdeTS1l4Oio90nxqgAqX5oeKoUB1h51yd2sPeWavgMHVCjdEBPmz49ia5RjuUursIV
 eyJtoRzz9ihKybKg4em2fqNdpuqlK0PB6d6TA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692641698; x=1693246498;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2bYA2fWPzg4wUUeKXDA2ZUKl7EQuuGyYeekYXItvDak=;
 b=jFXmQ3JaDvoNIJwXYDnW+/uKo0PNSQRg3r8px70Mb9wz5ymQykcqRY8AJXC+9DtIzq
 qDXRKPJlxm0ip6SXHHUgMZfliyhFllCRcD6RFyuOUsrSHjD8AkPKqn+Jm+HmOymaxiRy
 wvYt5gcnjRLvfOOWCaMpUwmjjypERUoYsgVUU2xukbgp7MCfn+vOYLlZRFeh+Sr8d05j
 0276rMDrr/6WrrJoRUOqgaA+ObrFRcA5RAvkbJrQAWRUANoR7SbVE/wzFoO3P3YpJSRb
 vtZCM5gJEHkx1dvRSdZWwdVEZfJLux2bP1EqGmV5b+0E3Bv5SsAiwzp9ngOgcUN63ibM
 +wbA==
X-Gm-Message-State: AOJu0YyAJJFGcX17APAzt9I55Td4IWm6qAXGNzncBuBnRCqSqFIYN4cm
 kpekslN6swtYPUa+rtSjceNyp+HAT8wi9fdvx++W7vtyKC2+dDz7
X-Google-Smtp-Source: AGHT+IHiaxdJzOPgTmBuKMaT6GJu8wL7a/s/kHxkjjqE0xySwrdVrGZ7cwWLm94OEJXHkbhPqkzK+vL/ukoXgL1WLVE=
X-Received: by 2002:a2e:8890:0:b0:2b9:bbf5:7c6 with SMTP id
 k16-20020a2e8890000000b002b9bbf507c6mr5930860lji.43.1692641698406; Mon, 21
 Aug 2023 11:14:58 -0700 (PDT)
MIME-Version: 1.0
References: <20230818190501.241062-1-navaremanasi@chromium.org>
In-Reply-To: <20230818190501.241062-1-navaremanasi@chromium.org>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Mon, 21 Aug 2023 11:14:47 -0700
Message-ID: <CAE72mNnnSLeKN-pBGy=bZsNV+S2+vY0FVmprvG78EdhixS-yxg@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/display: Dual refresh rate
 fastset fixes with VRR fastset
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
Cc: Drew Davenport <ddavenport@chromium.org>, Sean Paul <seanpaul@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

I have added the Fixes tag as well as the gitlab issue that this patch
fixes as per your feedback on prev rev (Rev3).
Could you please review this version and provide your feedback so we
can get this upstream fix merged.

Thanks for your time and consideration.

Regards
Manasi

On Fri, Aug 18, 2023 at 12:05=E2=80=AFPM Manasi Navare
<navaremanasi@chromium.org> wrote:
>
> Dual refresh rate (DRR) fastset seamlessly lets refresh rate
> throttle without needing a full modeset.
> However with the recent VRR fastset patches that got merged this
> logic was broken. This is broken because now with VRR fastset
> VRR parameters are calculated by default at the nominal refresh rate say =
120Hz.
> Now when DRR throttle happens to switch refresh rate to 60Hz, crtc clock
> changes and this throws a mismatch in VRR parameters and fastset logic
> for DRR gets thrown off and full modeset is indicated.
>
> This patch fixes this by ignoring the pipe mismatch for VRR parameters
> in the case of DRR and when VRR is not enabled. With this fix, DRR
> will still throttle seamlessly as long as VRR is not enabled.
>
> This will still need a full modeset for both DRR and VRR operating togeth=
er
> during the refresh rate throttle and then enabling VRR since now VRR
> parameters need to be recomputed with new crtc clock and written to HW.
>
> This DRR + VRR fastset in conjunction needs more work in the driver and
> will be fixed in later patches.
>
> v3:
> Compute new VRR params whenever there is fastset and its non DRRS.
> This will ensure it computes while switching to a fixed RR (Mitul)
>
> v2:
> Check for pipe config mismatch in crtc clock whenever VRR is enabled
>
> Fixes: 1af1d18825d3 ("drm/i915/vrr: Allow VRR to be toggled during fastse=
ts")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9154
> Cc: Drew Davenport <ddavenport@chromium.org>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Sean Paul <seanpaul@chromium.org>
> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 763ab569d8f3..2cf3b22adaf7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5352,7 +5352,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>         if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >=3D 5)
>                 PIPE_CONF_CHECK_I(pipe_bpp);
>
> -       if (!fastset || !pipe_config->seamless_m_n) {
> +       if (!fastset || !pipe_config->seamless_m_n || pipe_config->vrr.en=
able) {
>                 PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
>                 PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
>         }
> @@ -5387,11 +5387,13 @@ intel_pipe_config_compare(const struct intel_crtc=
_state *current_config,
>
>         if (!fastset)
>                 PIPE_CONF_CHECK_BOOL(vrr.enable);
> -       PIPE_CONF_CHECK_I(vrr.vmin);
> -       PIPE_CONF_CHECK_I(vrr.vmax);
> -       PIPE_CONF_CHECK_I(vrr.flipline);
> -       PIPE_CONF_CHECK_I(vrr.pipeline_full);
> -       PIPE_CONF_CHECK_I(vrr.guardband);
> +       if ((fastset && !pipe_config->seamless_m_n) || pipe_config->vrr.e=
nable) {
> +               PIPE_CONF_CHECK_I(vrr.vmin);
> +               PIPE_CONF_CHECK_I(vrr.vmax);
> +               PIPE_CONF_CHECK_I(vrr.flipline);
> +               PIPE_CONF_CHECK_I(vrr.pipeline_full);
> +               PIPE_CONF_CHECK_I(vrr.guardband);
> +       }
>
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I
> --
> 2.42.0.rc1.204.g551eb34607-goog
>
