Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 635AC797C07
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 20:36:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C7E910E84C;
	Thu,  7 Sep 2023 18:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F8C110E828
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 18:36:33 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-522dd6b6438so1661246a12.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Sep 2023 11:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1694111792; x=1694716592;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=c8v0AOzkJeMCVMK6oegabsCLUcHFuLtxygsBDAoDD+E=;
 b=IWTlmzFvBn5rb2rNu5SUHW0U5YDwsC38c+yjelFTRUtoDZuxjUvBNILnjWJhhSfoP+
 TBX1cESlU6LSeDJTohgw/LLZoZyZE5B85NaYC0QddYifr4IFlI7JJ8elUdzdYOnz6aQn
 I535Ce6VaK1fNgsRkO315KbZelG1RDlBvn+Jg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694111792; x=1694716592;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=c8v0AOzkJeMCVMK6oegabsCLUcHFuLtxygsBDAoDD+E=;
 b=tgcJuTwa+JYMODlt6YGOWRp3cAEjtLUlbkK3l9BPvmJz1qboahyRxsvL87wcz8ziPH
 6QEuZdmBCacDqWicl3hnPQVd1cSwBtb8yGufVSZbvJvjp907dYR+EG46PxCUCmSlCMXf
 YLGY6IRF4Y/kzLxuwtn09WGhPsbF5aftzXc76tdVgkhkx8sj0p+SgYMhy6TGoW9asUn7
 C3fnfSQeAr51cKCTMyH4kA3sxcRsvcALlP1IMXExswAd8/R405DhWgYgpxTIczPG42Nd
 H+m32GXY9/tyo35RncRHK2y7xfmCz6g9XNjybPxjzGnJMwxjVULJBH5r2n3Grj7e26/I
 DJog==
X-Gm-Message-State: AOJu0YzkZBJm4tw3vBmwsZ/Hzq+YSpjtx3AuQe1Kjx0DvgYrbvKm2OOF
 URV1fpAbJGwlQILE3tYHL4XkTmqNoBIMk2QbWEZPAzlFkct8T8aNMnE=
X-Google-Smtp-Source: AGHT+IHQs1VXpWDfQCBrLOA70Go9JvT4WW8QYBytb8p93PJq0XM/NSVvje9jXzCuST9HiVqEx+6sJVg0sdEOtITkWnI=
X-Received: by 2002:aa7:c407:0:b0:523:40d0:34d1 with SMTP id
 j7-20020aa7c407000000b0052340d034d1mr130978edq.4.1694111791924; Thu, 07 Sep
 2023 11:36:31 -0700 (PDT)
MIME-Version: 1.0
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-3-ville.syrjala@linux.intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Thu, 7 Sep 2023 11:36:20 -0700
Message-ID: <CAE72mNkp1Z8B1ApSHL6edVpet_szvrPYoWg1XkazG2zhLaPCkw@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915: Change
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

Reviewed-by: Manasi Navare <navaremanasi@chromium.org>

Manasi

On Fri, Sep 1, 2023 at 6:05=E2=80=AFAM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We'll need to also look at the old crtc state in
> intel_pipe_update_start() so change the calling convention to
> just plumb in the full atomic state instead.
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
