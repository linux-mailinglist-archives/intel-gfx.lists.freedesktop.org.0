Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B3978B73B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 20:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E69D10E0A1;
	Mon, 28 Aug 2023 18:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 707C710E0A1
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 18:32:03 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-9a1de3417acso947755166b.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 11:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1693247522; x=1693852322;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZdK6nYA9XcvPqqx8rm+4jzMG4/o0F3DXqEzR8I74MtQ=;
 b=eda4h6xQDNNcCAiptjK7gKvucYhcYKCvDHr6Xvlf9+GHUWaGmprhkdvzdrxhf5r/xK
 GyrwJJ9Ao6F5S44bH65ZFpRSkJe57o81ZQ2OpF0ha0e9xjl42IV8a9WvDKaAZ5FKTmit
 FZuYj2PNApGskl3QwDrjkoXkeqj8xAh1zqLS4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693247522; x=1693852322;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZdK6nYA9XcvPqqx8rm+4jzMG4/o0F3DXqEzR8I74MtQ=;
 b=jvI2eIiXRyNhvlUknWF3zBUSPhDzI6pjCEw8eUuPDZyzn5vB8vm/MO3D60fLgYpHCO
 Pbo9Qt+5T7D6nhnsyoVhhEUdjsXlwgvGz7fzCPAqDng0FVSQY9rjM9dRi8dvAjAwmpJb
 vbM3LDYnqXbGBIUmf+VEtMZwBwfdDVOq+zw99GIWQnAeaL9GSnfIEenbqdmqjnQLfzNT
 YQDjL6thbKjfvX5GzrTBkVDni4ihl1KJ8AsgkfU67xV1Mb6XSH8ZVOe7x+7zKbLtADOW
 b96E6yI/Jy970n2A9Kh0V92u6FBZ/p7ZffrrmGRTYVTBdsz//1F7L3qYnp8VeUe1zNoy
 U7rA==
X-Gm-Message-State: AOJu0YxiJPVp+erY3XRITJU9/DbzfavNkyrfZjB94Lk/cRtWCoN1nJAR
 FuE3S8I5WbCJ9qX9gg1x/tng7BGlGSpBkm3jgL8o9IKS70Aa1ntH
X-Google-Smtp-Source: AGHT+IHmT/KwTGgXDcIbjwyYPnm2l1OcnrWZx8zHQE4ldcLWe843taULQR6fwiM7FPtn4srUErCjBXFK05bBHk6VrWU=
X-Received: by 2002:a17:907:2cc2:b0:9a1:e5bf:c907 with SMTP id
 hg2-20020a1709072cc200b009a1e5bfc907mr405471ejc.2.1693247521697; Mon, 28 Aug
 2023 11:32:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
 <20230828054140.28054-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20230828054140.28054-4-ville.syrjala@linux.intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Mon, 28 Aug 2023 11:31:50 -0700
Message-ID: <CAE72mNk+nC5R_B8ShQX0UrwOE=pOkT8NCpxR6BukQCESfpz13w@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Extract
 intel_crtc_vblank_evade_scanlines()
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

This looks good to me,

Reviewed-by: Manasi Navare <navaremanasi@chromium.org>

Manasi

On Sun, Aug 27, 2023 at 10:41=E2=80=AFPM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pull the vblank evasion scanline calculations into their own helper
> to declutter intel_pipe_update_start() a bit.
>
> Cc: Manasi Navare <navaremanasi@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 53 +++++++++++++----------
>  1 file changed, 31 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index 461949b48411..e46a15d59d79 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -468,6 +468,36 @@ static int intel_mode_vblank_start(const struct drm_=
display_mode *mode)
>         return vblank_start;
>  }
>
> +static void intel_crtc_vblank_evade_scanlines(struct intel_atomic_state =
*state,
> +                                             struct intel_crtc *crtc,
> +                                             int *min, int *max, int *vb=
lank_start)
> +{
> +       const struct intel_crtc_state *new_crtc_state =3D
> +               intel_atomic_get_new_crtc_state(state, crtc);
> +       const struct drm_display_mode *adjusted_mode =3D &new_crtc_state-=
>hw.adjusted_mode;
> +
> +       if (new_crtc_state->vrr.enable) {
> +               if (intel_vrr_is_push_sent(new_crtc_state))
> +                       *vblank_start =3D intel_vrr_vmin_vblank_start(new=
_crtc_state);
> +               else
> +                       *vblank_start =3D intel_vrr_vmax_vblank_start(new=
_crtc_state);
> +       } else {
> +               *vblank_start =3D intel_mode_vblank_start(adjusted_mode);
> +       }
> +
> +       /* FIXME needs to be calibrated sensibly */
> +       *min =3D *vblank_start - intel_usecs_to_scanlines(adjusted_mode,
> +                                                       VBLANK_EVASION_TI=
ME_US);
> +       *max =3D *vblank_start - 1;
> +
> +       /*
> +        * M/N is double buffered on the transcoder's undelayed vblank,
> +        * so with seamless M/N we must evade both vblanks.
> +        */
> +       if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_=
crtc_state))
> +               *min -=3D adjusted_mode->crtc_vblank_start - adjusted_mod=
e->crtc_vdisplay;
> +}
> +
>  /**
>   * intel_pipe_update_start() - start update of a set of display register=
s
>   * @state: the atomic state
> @@ -487,7 +517,6 @@ void intel_pipe_update_start(struct intel_atomic_stat=
e *state,
>         struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>         struct intel_crtc_state *new_crtc_state =3D
>                 intel_atomic_get_new_crtc_state(state, crtc);
> -       const struct drm_display_mode *adjusted_mode =3D &new_crtc_state-=
>hw.adjusted_mode;
>         long timeout =3D msecs_to_jiffies_timeout(1);
>         int scanline, min, max, vblank_start;
>         wait_queue_head_t *wq =3D drm_crtc_vblank_waitqueue(&crtc->base);
> @@ -503,27 +532,7 @@ void intel_pipe_update_start(struct intel_atomic_sta=
te *state,
>         if (intel_crtc_needs_vblank_work(new_crtc_state))
>                 intel_crtc_vblank_work_init(new_crtc_state);
>
> -       if (new_crtc_state->vrr.enable) {
> -               if (intel_vrr_is_push_sent(new_crtc_state))
> -                       vblank_start =3D intel_vrr_vmin_vblank_start(new_=
crtc_state);
> -               else
> -                       vblank_start =3D intel_vrr_vmax_vblank_start(new_=
crtc_state);
> -       } else {
> -               vblank_start =3D intel_mode_vblank_start(adjusted_mode);
> -       }
> -
> -       /* FIXME needs to be calibrated sensibly */
> -       min =3D vblank_start - intel_usecs_to_scanlines(adjusted_mode,
> -                                                     VBLANK_EVASION_TIME=
_US);
> -       max =3D vblank_start - 1;
> -
> -       /*
> -        * M/N is double buffered on the transcoder's undelayed vblank,
> -        * so with seamless M/N we must evade both vblanks.
> -        */
> -       if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_=
crtc_state))
> -               min -=3D adjusted_mode->crtc_vblank_start - adjusted_mode=
->crtc_vdisplay;
> -
> +       intel_crtc_vblank_evade_scanlines(state, crtc, &min, &max, &vblan=
k_start);
>         if (min <=3D 0 || max <=3D 0)
>                 goto irq_disable;
>
> --
> 2.41.0
>
