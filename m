Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F85287A271
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 05:45:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48CD10F5C1;
	Wed, 13 Mar 2024 04:45:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="MqSEvoIx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8091710F5C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 04:45:49 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id
 4fb4d7f45d1cf-5685d46b199so777620a12.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 21:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1710305148; x=1710909948;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6NsipZmwvaNGVjDOYQMy+T3a4tBYTpTvE28Ylmqr3IA=;
 b=MqSEvoIxFpmkGVfpNkcIsaQ95W0Ndn/ev0n0VN9TU+aslR5lqisDgRXzgDu+FeQ+nI
 wi6VOS1YyBE5qUiBi8JayLOm73iugAJXOTLLHeLQIhcFNK4D8LMnVIQwn5kUsVpJu3cK
 riqODjRgODS67gRE8fUM3UrweUyEYS2j/rXh4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710305148; x=1710909948;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6NsipZmwvaNGVjDOYQMy+T3a4tBYTpTvE28Ylmqr3IA=;
 b=Bf67wGtr2fRMURbc0HXzyJQ6bmhYybTRYvT1sIuDwiSLvyS2QVnhoe8S963zLqxOQB
 Cs+GxR+pnFahMU8JoIm7gHEnrHl98WD/fasa5Si08ODYrmqIizZ9gjJV8HtyM8FoSbS4
 5fZX33WSOAwok8uuRTUBoDKtQJNnqRTdkDoWMDzuTqFYTbb80eeZhFtMin/2UeRmpm4A
 ICfAhpVHHtHChPdTK+bqMT993gDy7URgZRdn9kvBe+lAEzecayk6TZVHUW3tVXSV3iwP
 7jCtz+waejRHvHIgXrs+Z4Zy/BedUy2oe7pJe5X3wN8O0L4eMdM7DUiLccNpAgroMLFn
 AUSQ==
X-Gm-Message-State: AOJu0Yx9j0cCmUDvWs0hQdHhN4SZGpr8ZqqxIK6BfOjd0a9vzEBVNVHk
 z3oryhPQRsKyrTDk0Al5JKX05+fzwB9rjNHAQMknReHtEA0iHEMDe8EHs0iyGp8vRUFDqUY1EN4
 rUsxR+m4NCvT4Vuy74pTE1Xe4uMucqPAaUxr7
X-Google-Smtp-Source: AGHT+IGxs8X1VJhHgApDHnTDFLGog1V5PGVys+BcQD0kTFiYuNQiY2mu7i2tTyZEty6jTszJdLtAkhCondXHvLu+vDc=
X-Received: by 2002:a17:906:408e:b0:a46:28c2:49b2 with SMTP id
 u14-20020a170906408e00b00a4628c249b2mr3755112ejj.24.1710305147011; Tue, 12
 Mar 2024 21:45:47 -0700 (PDT)
MIME-Version: 1.0
References: <20240308131146.32714-1-stanislav.lisovskiy@intel.com>
 <20240308131146.32714-4-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240308131146.32714-4-stanislav.lisovskiy@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 12 Mar 2024 21:45:36 -0700
Message-ID: <CAE72mNkYfDoJLLdZqKfTsEnPUFSKF_FC5JQ5F1cJZJF+8wM+4Q@mail.gmail.com>
Subject: Re: [PATCH 3/6] drm/i915: Utilize intel_crtc_joined_pipe_mask() more
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com, 
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
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

On Fri, Mar 8, 2024 at 5:11=E2=80=AFAM Stanislav Lisovskiy
<stanislav.lisovskiy@intel.com> wrote:
>
> Unify the master vs. slave handling in
> intel_ddi_post_disable_hdmi_or_sst() by looping over all the
> pipes in one go.

How will we handle looping through all joined pipes for MST case,
does this need to be accounted for in the last patch that enables bigjoiner
for MST now that we have separated out ddi_post_disable for hdmi/sst?

Manasi

>
> This also lets us move the intel_crtc_vblank_off() calls to
> happen in a consistent place vs. the transcoder disable.
> Previously we did the master vs. slaves on different sides
> of that.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Credits-to: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 34 ++++++++++++------------
>  1 file changed, 17 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 5628a4ab608d4..15441674c6f58 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3097,34 +3097,34 @@ static void intel_ddi_post_disable_hdmi(struct in=
tel_atomic_state *state,
>
>  static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state=
 *state,
>                                                struct intel_encoder *enco=
der,
> -                                              const struct intel_crtc_st=
ate *old_master_crtc_state,
> +                                              const struct intel_crtc_st=
ate *old_crtc_state,
>                                                const struct drm_connector=
_state *old_conn_state)
>  {
>         struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -       struct intel_crtc *slave_crtc;
> +       u8 pipe_mask =3D intel_crtc_joined_pipe_mask(old_crtc_state);
> +       struct intel_crtc *crtc;
> +
> +       for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask)=
 {
> +               const struct intel_crtc_state *_old_crtc_state =3D
> +                       intel_atomic_get_old_crtc_state(state, crtc);
>
> -       intel_crtc_vblank_off(old_crtc_state);
> +               intel_crtc_vblank_off(_old_crtc_state);
> +       }
>
>         intel_disable_transcoder(old_crtc_state);
>
>         intel_ddi_disable_transcoder_func(old_crtc_state);
>
> -       intel_dsc_disable(old_crtc_state);
> +       for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask)=
 {
> +               const struct intel_crtc_state *_old_crtc_state =3D
> +                       intel_atomic_get_old_crtc_state(state, crtc);
>
> -       if (DISPLAY_VER(dev_priv) >=3D 9)
> -               skl_scaler_disable(old_crtc_state);
> -       else
> -               ilk_pfit_disable(old_crtc_state);
> +               intel_dsc_disable(_old_crtc_state);
>
> -       for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
> -                                        intel_crtc_bigjoiner_slave_pipes=
(old_crtc_state)) {
> -               const struct intel_crtc_state *old_slave_crtc_state =3D
> -                       intel_atomic_get_old_crtc_state(state, slave_crtc=
);
> -
> -               intel_crtc_vblank_off(old_slave_crtc_state);
> -
> -               intel_dsc_disable(old_slave_crtc_state);
> -               skl_scaler_disable(old_slave_crtc_state);
> +               if (DISPLAY_VER(dev_priv) >=3D 9)
> +                       skl_scaler_disable(_old_crtc_state);
> +               else
> +                       ilk_pfit_disable(_old_crtc_state);
>         }
>  }
>
> --
> 2.37.3
>
