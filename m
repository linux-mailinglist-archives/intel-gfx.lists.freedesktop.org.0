Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE1A78B73A
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 20:30:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 782CF10E004;
	Mon, 28 Aug 2023 18:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF3F10E004
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 18:30:38 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id
 38308e7fff4ca-2bd0a5a5abbso23555621fa.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 11:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1693247437; x=1693852237;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VrQn9QvDLqogtGjzgBt4gGrVDmirw1TzuPAqJB5ufig=;
 b=Rk16wvdxwUcCiIGyq6Jg42wFQEkmZiCX3P3AWACWrrEi51SKnW+lGc7yMX7FELJ4pl
 Cx2PPt2hesr0oxWEhRs6EJ1ww77UuVLSxIIghVKhngHJZ+MPJHND1zT+1PKEC9ws7Y8T
 g7XB/EMA4eQBoisSRYdGDBst2RAeylzZnGnf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693247437; x=1693852237;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VrQn9QvDLqogtGjzgBt4gGrVDmirw1TzuPAqJB5ufig=;
 b=CyB3T3CCkAhHtJWYUlTtwCu5uJMhS2vwr677iuFToOIuisSXbo4E/JvoCbw5EeyIaB
 vaSJajnLX3INeQp2IjLD5Ikf4OqlzPKg9ceWNLefifQWsjUZr+n9Cz+g79AVYvd5P55d
 JgbW4AZzeD/oUgCKVyI8idC8VAeglChSIU+2eShceQwuuqasGS1Qj6WbULDOZmMDvNCo
 dHwFpMrcxgLru5IbcLpgHxg9sjRXUvakKBw67eGFPTNrkW4JLHiwHWlvA6hQoI6iM5M4
 1FZS5B0Q7UALqJ/LQMo5mZjVuAHbb/ebeL0FrW5CQ7+BB43QiwjqwKGHn962SbI5S/X/
 Aljw==
X-Gm-Message-State: AOJu0YyzMXVZGqZBehpdh+VlEs8D/85N4XftiESgDh0UJJ+cPsZAqmAt
 oV8YbaGY5ube1If6PFDAsiY9GT3ePNFSLQcobwo9v/wp5IgkKTTd
X-Google-Smtp-Source: AGHT+IFEt9XGAEEoOY+ETF1+1q1vPu3/MPClDzJAnFGzoJGo1KljCSmznyAzoOyoSkdoqxroHJg5ufDlHkm2AlgkfCc=
X-Received: by 2002:a2e:98d2:0:b0:2ba:7b3b:4b7d with SMTP id
 s18-20020a2e98d2000000b002ba7b3b4b7dmr19692098ljj.17.1693247436677; Mon, 28
 Aug 2023 11:30:36 -0700 (PDT)
MIME-Version: 1.0
References: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
 <20230828054140.28054-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20230828054140.28054-3-ville.syrjala@linux.intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Mon, 28 Aug 2023 11:30:25 -0700
Message-ID: <CAE72mNmgn063MVSr_jS7PDKXxPvw5C6xRdKAVd8WJYrAivBDwQ@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Change
 intel_pipe_update_{start, end}() calling convention
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

On Sun, Aug 27, 2023 at 10:41=E2=80=AFPM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We'll need to also look at the old crtc state in
> intel_pipe_update_start() so change the calling convention to
> just plumb in the full atomic state instead.

I am guessing we would need the old crtc state to look at if VRR parameters
were changed?
Could we elaborate why we would need old crtc state so we better understand=
 this
change in the patch?

Manasi

>
> Cc: Manasi Navare <navaremanasi@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c    | 18 ++++++++++++------
>  drivers/gpu/drm/i915/display/intel_crtc.h    |  6 ++++--
>  drivers/gpu/drm/i915/display/intel_display.c |  4 ++--
>  3 files changed, 18 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index 5caa928e5ce9..461949b48411 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -470,7 +470,8 @@ static int intel_mode_vblank_start(const struct drm_d=
isplay_mode *mode)
>
>  /**
>   * intel_pipe_update_start() - start update of a set of display register=
s
> - * @new_crtc_state: the new crtc state
> + * @state: the atomic state
> + * @crtc: the crtc
>   *
>   * Mark the start of an update to pipe registers that should be updated
>   * atomically regarding vblank. If the next vblank will happens within
> @@ -480,10 +481,12 @@ static int intel_mode_vblank_start(const struct drm=
_display_mode *mode)
>   * until a subsequent call to intel_pipe_update_end(). That is done to
>   * avoid random delays.
>   */
> -void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state)
> +void intel_pipe_update_start(struct intel_atomic_state *state,
> +                            struct intel_crtc *crtc)
>  {
> -       struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.cr=
tc);
>         struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +       struct intel_crtc_state *new_crtc_state =3D
> +               intel_atomic_get_new_crtc_state(state, crtc);
>         const struct drm_display_mode *adjusted_mode =3D &new_crtc_state-=
>hw.adjusted_mode;
>         long timeout =3D msecs_to_jiffies_timeout(1);
>         int scanline, min, max, vblank_start;
> @@ -631,15 +634,18 @@ static void dbg_vblank_evade(struct intel_crtc *crt=
c, ktime_t end) {}
>
>  /**
>   * intel_pipe_update_end() - end update of a set of display registers
> - * @new_crtc_state: the new crtc state
> + * @state: the atomic state
> + * @crtc: the crtc
>   *
>   * Mark the end of an update started with intel_pipe_update_start(). Thi=
s
>   * re-enables interrupts and verifies the update was actually completed
>   * before a vblank.
>   */
> -void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
> +void intel_pipe_update_end(struct intel_atomic_state *state,
> +                          struct intel_crtc *crtc)
>  {
> -       struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.cr=
tc);
> +       struct intel_crtc_state *new_crtc_state =3D
> +               intel_atomic_get_new_crtc_state(state, crtc);
>         enum pipe pipe =3D crtc->pipe;
>         int scanline_end =3D intel_get_crtc_scanline(crtc);
>         u32 end_vbl_count =3D intel_crtc_get_vblank_counter(crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/=
i915/display/intel_crtc.h
> index 51a4c8df9e65..22d7993d1f0b 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> @@ -36,8 +36,10 @@ void intel_crtc_state_reset(struct intel_crtc_state *c=
rtc_state,
>  u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc);
>  void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state);
>  void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
> -void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state);
> -void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state);
> +void intel_pipe_update_start(struct intel_atomic_state *state,
> +                            struct intel_crtc *crtc);
> +void intel_pipe_update_end(struct intel_atomic_state *state,
> +                          struct intel_crtc *crtc);
>  void intel_wait_for_vblank_workers(struct intel_atomic_state *state);
>  struct intel_crtc *intel_first_crtc(struct drm_i915_private *i915);
>  struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index f6397462e4c2..cfad967b5684 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6559,7 +6559,7 @@ static void intel_update_crtc(struct intel_atomic_s=
tate *state,
>         intel_crtc_planes_update_noarm(state, crtc);
>
>         /* Perform vblank evasion around commit operation */
> -       intel_pipe_update_start(new_crtc_state);
> +       intel_pipe_update_start(state, crtc);
>
>         commit_pipe_pre_planes(state, crtc);
>
> @@ -6567,7 +6567,7 @@ static void intel_update_crtc(struct intel_atomic_s=
tate *state,
>
>         commit_pipe_post_planes(state, crtc);
>
> -       intel_pipe_update_end(new_crtc_state);
> +       intel_pipe_update_end(state, crtc);
>
>         /*
>          * We usually enable FIFO underrun interrupts as part of the
> --
> 2.41.0
>
