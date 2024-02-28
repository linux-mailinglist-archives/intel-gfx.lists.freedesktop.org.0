Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4173186B8FE
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 21:21:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B734F10E392;
	Wed, 28 Feb 2024 20:21:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="NAbmBHki";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4AB910E33A
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 20:21:27 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id
 a640c23a62f3a-a43488745bcso29921866b.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 12:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1709151685; x=1709756485;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ScN1lQQdRwhiZNzPTJkQRSfc3Y0cZ5MVrNKcLJL07Jo=;
 b=NAbmBHkiaxsFayRb8HJF9C7xl9igqulEYi2Pl5B9/oPHQAegBtaWIYuAF4gfegdiAY
 2VSUuKAx9BVwX2IJP3kOtp42o5HanrKSn+bxqDa4LqUqPF7AaNroDaB3+sLOoarWD7GU
 4q/534m626OMOWl//buYNp06KZkDRjgNnPiU0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709151685; x=1709756485;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ScN1lQQdRwhiZNzPTJkQRSfc3Y0cZ5MVrNKcLJL07Jo=;
 b=asLrK6erUZrQL3IuTxajYXIflTiYQ2SNHOvWOxQB9lmd68bYQLuvqhMz+l/01Aoaxm
 YMrOwz0tAXNF7PfPAdYJ5EQf1OVRFcdvWv0paWI7b/gGFiMElJvopd6BuDp0YmBNHWZk
 H1bYA0VH1xZS82Beu+VqcYp8TRE/4AlajgeAmx2FgBlxVTL+cNQBQvcuilUhDv4I/dLq
 EeRiL8jxGrm64UUqkJz6TtL1A5dFwK2V2UI/orhOuH9iwOKQuzFWiysBmXaP3RzK3CcN
 pKH/WGzniIRBIQkiwAcOT2aoeOFuXqf34nApO9oDiUEm4jsWz/MZfJBcsfRUmc01cyqV
 ePzA==
X-Gm-Message-State: AOJu0Yx1LFJAPi2aPCM5Ukm9Gg8gy9tsB+AcAM6IBJbW2ADhwmLRfloY
 8LvnIPkoE98QKP0ndNLRgzcMBSSvEPoJDN9agUQ3pRzyQNgwnIl0WWC0mXWyZdXsd1qHDHT0U0y
 n1IvixtaaBRaQHunV3vnPyR71PMtInsbDkaed0iW6FwvmKPc=
X-Google-Smtp-Source: AGHT+IGB8UpabYnnZJ3/riMfhYXWMImL7vqHb350uiGKUdFlN0lEvuaOV/iC52xQVUQUaM6l4xQEAX9w40waGvn9LRc=
X-Received: by 2002:a17:906:c456:b0:a43:c3b1:9ed5 with SMTP id
 ck22-20020a170906c45600b00a43c3b19ed5mr23939ejb.71.1709151685413; Wed, 28 Feb
 2024 12:21:25 -0800 (PST)
MIME-Version: 1.0
References: <20240226235302.41510-1-navaremanasi@chromium.org>
In-Reply-To: <20240226235302.41510-1-navaremanasi@chromium.org>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Wed, 28 Feb 2024 12:21:14 -0800
Message-ID: <CAE72mN=AcCCW5wd_BUZmUQp0CTCvw6T8jFpfssfi03y+ioBwZQ@mail.gmail.com>
Subject: Re: [PATCH] drm/i915: Allow for Vsync_start and Vsync_end to change
 in LRR
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Sean Paul <seanpaul@chromium.org>
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

Hi Ville,

Could you take a peek at this patch, as per our offline discussions,
Even if VRR does not look at the Vsync start and Vsync end, we need to
write to those registers to keep the state checker happy.

Regards
Manasi

On Mon, Feb 26, 2024 at 3:53=E2=80=AFPM Manasi Navare <navaremanasi@chromiu=
m.org> wrote:
>
> Since LRR mode requires panel to support VRR, any of the LRR mode
> is achieved by stretching vertical front porch which also pushes
> out Vsync_start and Vsync_end timings of the mode.
> This allows for VSS and VSE timings to be different in case of LRR
> to ensure semaless modeset/fastset to LRR mode.
>
> In case of VRR capable panel, it technically ignores the VSYNC because
> we set Ignore_MSA bit for sink but reprogram the TRANS_VSYNC to keep
> the state checker happy in case of LRR.
>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 00ac65a14029..cd55e8840769 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2685,6 +2685,13 @@ static void intel_set_transcoder_timings_lrr(const=
 struct intel_crtc_state *crtc
>         intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
>                        VBLANK_START(crtc_vblank_start - 1) |
>                        VBLANK_END(crtc_vblank_end - 1));
> +       /*
> +        * HW ignores TRANS_VSYNC in VRR on DP because we set Ignore MSA =
bit.
> +        * But let's write this to keepthe state checker happy.
> +        */
> +       intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
> +                      VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> +                      VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
>         /*
>          * The double buffer latch point for TRANS_VTOTAL
>          * is the transcoder's undelayed vblank.
> @@ -5043,11 +5050,11 @@ intel_pipe_config_compare(const struct intel_crtc=
_state *current_config,
>         PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
>         PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
>         PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
> -       PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
> -       PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
>         if (!fastset || !pipe_config->update_lrr) { \
>                 PIPE_CONF_CHECK_I(name.crtc_vtotal); \
>                 PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
> +               PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
> +               PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
>         } \
>  } while (0)
>
> --
> 2.44.0.rc1.240.g4c46232300-goog
>
