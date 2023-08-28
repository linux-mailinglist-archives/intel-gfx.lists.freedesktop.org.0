Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5373178B718
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 20:16:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AE3B10E098;
	Mon, 28 Aug 2023 18:16:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 885E410E098
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 18:16:26 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id
 2adb3069b0e04-5008faf4456so5495577e87.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 11:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1693246585; x=1693851385;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=i4NMKPE/PNiImYJLrMz5971L0p0+xkRbXFUhJalJ7vU=;
 b=D3S5jqgBmPtQ4eRVP2k7flTboti8W2aVkoJz95i8GuYoXbsesOtWOg/KF2WwiUiA3O
 kZBwsNMrMgIfd9oSjdwKr9xOM3itECXIGGF/l6SYXDLXaxh7jZBZiKbtUB5FqvcfqlN+
 tUjbK9OeEeHyIJiYPPsS3W3zkskuWo8khrr30=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693246585; x=1693851385;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=i4NMKPE/PNiImYJLrMz5971L0p0+xkRbXFUhJalJ7vU=;
 b=Xa6Rgfq2p5prZfAFK4TzFOQokR7WvhgG2j0jw+pasW8nZ1JefvsOZdIqXzPYTQbB9J
 J8wK6kUHHvBfYTx1pAB2HQ/c5dGwbM0pXsq1KrYu2/3eTEbt3iA+ZhJ9rpJQVwZQaOvo
 2GVVNvH7tw8NVAFYNqqDyYo4Ar/7c5Rf2nfyJ0F2x2sIWjeG9QjedkTyqXfrzMuNEaa4
 cD2HSF9EkIPsmWHseMsD523XxxJqFfKyRNqEB95IcWFx3/ZsW9HWM4VoOVqS2uOg8VZR
 rzbJJjV35725+VRDIInvRqdtt8eiryQErkE+cDL7NKZ4K9722kRZV+in4Xqbd280Ld2v
 Uskw==
X-Gm-Message-State: AOJu0YyEoIcxRulb5IBr/qRaLWLAZGTCDQdRv4mCcDRMY9Xt36+w6YzK
 HWLXSYHQuqQu1o4WeM266IOF+0lZUmU2jlFsVl4afv2B9oPF06G9
X-Google-Smtp-Source: AGHT+IEJ2QOkI5RSHr8yuij9SF2dRNRSAzDFGJpxS2v1ZZofyflTpowGeIdxQmlK3XneZNXeaB8UQPvTsE5FecaBfx8=
X-Received: by 2002:a19:4302:0:b0:500:7a21:3e78 with SMTP id
 q2-20020a194302000000b005007a213e78mr14422326lfa.55.1693246584589; Mon, 28
 Aug 2023 11:16:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
 <20230828054140.28054-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20230828054140.28054-2-ville.syrjala@linux.intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Mon, 28 Aug 2023 11:16:13 -0700
Message-ID: <CAE72mNkp72Od5DyOKM0Qw4ekMA4iXOc=2B9Pa8mJonZ0=F5_xg@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Move psr unlock out from the
 pipe update critical section
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

By doing psr_unlock after the vblank evade, are we ensuring that even
when VRR params change during the pipe update, psr unlock will
happen after the actual vblank  based on newly programmed VRR params?

Manasi

On Sun, Aug 27, 2023 at 10:41=E2=80=AFPM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Do the PSR unlock after the vblank evade critcal section is
> fully over, not before.
>
> Cc: Manasi Navare <navaremanasi@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index 182c6dd64f47..5caa928e5ce9 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -646,10 +646,8 @@ void intel_pipe_update_end(struct intel_crtc_state *=
new_crtc_state)
>         ktime_t end_vbl_time =3D ktime_get();
>         struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>
> -       intel_psr_unlock(new_crtc_state);
> -
>         if (new_crtc_state->do_async_flip)
> -               return;
> +               goto out;
>
>         trace_intel_pipe_update_end(crtc, end_vbl_count, scanline_end);
>
> @@ -709,7 +707,7 @@ void intel_pipe_update_end(struct intel_crtc_state *n=
ew_crtc_state)
>         local_irq_enable();
>
>         if (intel_vgpu_active(dev_priv))
> -               return;
> +               goto out;
>
>         if (crtc->debug.start_vbl_count &&
>             crtc->debug.start_vbl_count !=3D end_vbl_count) {
> @@ -724,4 +722,7 @@ void intel_pipe_update_end(struct intel_crtc_state *n=
ew_crtc_state)
>         }
>
>         dbg_vblank_evade(crtc, end_vbl_time);
> +
> +out:
> +       intel_psr_unlock(new_crtc_state);
>  }
> --
> 2.41.0
>
