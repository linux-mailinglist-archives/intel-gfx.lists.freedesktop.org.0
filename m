Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F34988CD52
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 20:39:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77CCD10F225;
	Tue, 26 Mar 2024 19:39:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="aMFHKxNI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0846C10F225
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 19:39:03 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id
 a640c23a62f3a-a46a7208eedso812907566b.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 12:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1711481942; x=1712086742;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MSBA7W35Ws3rbiqW4sp2cRXbhkY+DuL//A3AXX+Y1gs=;
 b=aMFHKxNIW8HAJ07Ha85dUlymleK4vSxXTFatPOC3cVbxy6R9TmywDBfh5No35uP7kW
 XkMmbLeqavdSSR57v6EZmiKh8DV5xYUCBfvVqreUFl2hZN9sr1AKo/tUprv5/LT8KzsW
 9WfwIU0u99TdLE+0jamFNuYMobe2xwVPUBi+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711481942; x=1712086742;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MSBA7W35Ws3rbiqW4sp2cRXbhkY+DuL//A3AXX+Y1gs=;
 b=eIqYxbyeQAQIfQ8HZmgNf90jBWYk7J/3fLWVvP8QKQzznpLqQl3SGzaOQPBHbQq95L
 Fo3/PQmuxbR9XWzmeIsn2zpg8es484eUCOusgv2u6tA1jjP37AdPccg4sEaxu9D762Zp
 LFview/RZExmRlgQ913dL4jPxQcSRVbg5Uvh6tLifoAbb9NyiMNOQPAjKEM4i3Pya5tq
 zh7HMaym16DStJXXjnKmWECRyPDhSTVYMPrr1i4lHC32MB3sNl3GJGSHq6YiNJdpem7A
 jBjJ8C0lDEnk7Mz8GQ6q7sE6qJOYfW45e384XztD+nB/umUD/eLY8/BIcRU6nJG0hmNf
 vyrQ==
X-Gm-Message-State: AOJu0YyotHU1M/qVDpE7PocrtwdgYqHEM4ac6o/9q+6doTQzSxthV452
 p4ec5FxHPxc089juMXzSZ6qfPJL3GUndn7LCY8LWwLAwUm+R+jJYvA7VPkxzMdK1aJj/P0ZOx5o
 XQ9bY271Kx4TQDFh7E2J1yFwMVEil1d0mj4T/
X-Google-Smtp-Source: AGHT+IGD0H5Tk5FDzITAmrLycUuTeIKXN5h7Euw0ouPph5+dLcJ+SDhh3TjkjmoiZtqbJoRfs8G0AZqc584CHTHGfJ0=
X-Received: by 2002:a17:906:2e88:b0:a45:c931:5703 with SMTP id
 o8-20020a1709062e8800b00a45c9315703mr1403975eji.70.1711481941989; Tue, 26 Mar
 2024 12:39:01 -0700 (PDT)
MIME-Version: 1.0
References: <20240308131146.32714-1-stanislav.lisovskiy@intel.com>
 <20240308131146.32714-2-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240308131146.32714-2-stanislav.lisovskiy@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 26 Mar 2024 12:38:50 -0700
Message-ID: <CAE72mNm+h_2x2GjQmXp8Gp1mpUbhGf_mcUk_zW361CObATJ5Pg@mail.gmail.com>
Subject: Re: [PATCH 1/6] Add a small helper to compute the set of pipes that
 the current crtc is using.
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

Looks good to me

Reviewed-by: Manasi Navare <navaremanasi@chromium.org>

Manasi

On Fri, Mar 8, 2024 at 5:11=E2=80=AFAM Stanislav Lisovskiy
<stanislav.lisovskiy@intel.com> wrote:
>
> And we have at least one trivial place in
> intel_ddi_update_active_dpll() where we can use it
> immediately, so let's do that.
>
> v2: - Fixed conflicts, part of patch didn't apply, because of master_crtc
>       rename(Stan)
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Credits-to: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 9 ++++-----
>  drivers/gpu/drm/i915/display/intel_display.c | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_display.h | 1 +
>  3 files changed, 12 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index c587a8efeafcf..bbce74f011d40 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3472,17 +3472,16 @@ void intel_ddi_update_active_dpll(struct intel_at=
omic_state *state,
>         struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>         struct intel_crtc_state *crtc_state =3D
>                 intel_atomic_get_new_crtc_state(state, crtc);
> -       struct intel_crtc *slave_crtc;
> +       struct intel_crtc *pipe_mask_crtc;
> +       u8 pipe_mask =3D intel_crtc_joined_pipe_mask(crtc_state);
>         enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>
>         /* FIXME: Add MTL pll_mgr */
>         if (DISPLAY_VER(i915) >=3D 14 || !intel_phy_is_tc(i915, phy))
>                 return;
>
> -       intel_update_active_dpll(state, crtc, encoder);
> -       for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> -                                        intel_crtc_bigjoiner_slave_pipes=
(crtc_state))
> -               intel_update_active_dpll(state, slave_crtc, encoder);
> +       for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_mask_crtc, pipe=
_mask)
> +               intel_update_active_dpll(state, pipe_mask_crtc, encoder);
>  }
>
>  static void
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b88f214e111ae..021db26a630af 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -275,6 +275,13 @@ static int intel_bigjoiner_num_pipes(const struct in=
tel_crtc_state *crtc_state)
>         return hweight8(crtc_state->bigjoiner_pipes);
>  }
>
> +u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state=
)
> +{
> +       struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +
> +       return BIT(crtc->pipe) | crtc_state->bigjoiner_pipes;
> +}
> +
>  struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc=
_state)
>  {
>         struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->=
dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index f4a0773f0fca8..631218c954a47 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -410,6 +410,7 @@ bool is_trans_port_sync_mode(const struct intel_crtc_=
state *state);
>  bool is_trans_port_sync_master(const struct intel_crtc_state *state);
>  bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_s=
tate);
>  bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_=
state);
> +u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state=
);
>  u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_=
state);
>  struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc=
_state);
>  bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
> --
> 2.37.3
>
