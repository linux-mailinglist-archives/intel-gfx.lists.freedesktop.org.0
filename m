Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B821260453
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Sep 2020 20:13:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B26C16E524;
	Mon,  7 Sep 2020 18:13:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B54566E51D
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Sep 2020 18:12:59 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id o5so16603644wrn.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Sep 2020 11:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=LHSyc27SmPIwObKMPUKu6Jzix2yeZ+HcMvuXkW9Ej9Q=;
 b=lNOW67a+Qb3S5rdDdVPQDsTdliDth/s8VA7315uDR1h8B3Q02sUNrzfPtdhAqs4Cm6
 Ra97u/iC/ydr+aq4v1UYzQuZMmxvi+KPDGaX30afXGR2oIV2N26WAihGqKwU/9W++sEm
 o5502+gTsNtFiHGs70IK2LR3FnLACv3sa/PQ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=LHSyc27SmPIwObKMPUKu6Jzix2yeZ+HcMvuXkW9Ej9Q=;
 b=JnF7Bd2dvVsWGhmmNUVttfmQ5zzpXLa5olrBQP7iaCYaYJY8boxbnZ3oZW+9xmNdge
 rD9S009+oqPvn3sg9eaQFsfVIWKWR5cMEjXBGjwL6q/3cZ04Y3+MMMyaNHW8vvThz1uE
 O3RX37LwtE2G9JDLRmJELxSFpZEMpdQHFxc9PKfOeN9Hka0jiCXmCtETqQ/ks+O2F8i1
 kbXBN/38nscghfVLkbhE07Eowlru2Xkj1/g3ro9AKABVDuv/uhjkuC2f+qUp3nDaxA2p
 xjjdxwwpX7Q+rSC/KnNy/C1nm7ZhRsWm/Eak9KC1ODM9Cqkyx4+RDi4DOlPiUxZaVdQ3
 ymXA==
X-Gm-Message-State: AOAM530sKcHvySy757mjFsWwVW94bl8bJwmrBCex0IiVtWa0+1Fjglua
 /sqUDtUuQBjdQVi0r1Uh9V9M2AxwrFO8Xv0U
X-Google-Smtp-Source: ABdhPJyGDi4A9+7lbhoSp7iHrMDG1YFxL4t/wsCpcOhxc4Aw8aj+qv0a4iOn1uWdO+2SSzHeqdI8yQ==
X-Received: by 2002:adf:fd8d:: with SMTP id d13mr23339249wrr.104.1599502378425; 
 Mon, 07 Sep 2020 11:12:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h8sm29567101wrw.68.2020.09.07.11.12.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 11:12:57 -0700 (PDT)
Date: Mon, 7 Sep 2020 20:12:56 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200907181256.GB2352366@phenom.ffwll.local>
References: <20200907120026.6360-1-ville.syrjala@linux.intel.com>
 <20200907120026.6360-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200907120026.6360-2-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/atomic-helper: Remove the
 timestamping constant update from
 drm_atomic_helper_update_legacy_modeset_state()
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 07, 2020 at 03:00:25PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The timestamping constants have nothing to do with any legacy state
> so should not be updated from
> drm_atomic_helper_update_legacy_modeset_state().
> =

> Let's make everyone call drm_atomic_helper_calc_timestamping_constants()
> directly instead of relying on
> drm_atomic_helper_update_legacy_modeset_state() to call it.
> =

> @@
> expression S;
> @@
> - drm_atomic_helper_calc_timestamping_constants(S);
> =

> @@
> expression D, S;
> @@
>   drm_atomic_helper_update_legacy_modeset_state(D, S);
> + drm_atomic_helper_calc_timestamping_constants(S);
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

I think the kerneldoc for
drm_crtc_vblank_helper_get_vblank/_timestamp_internal (both of them) also
needs to be updated to mention the new function. With that fixed:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>


> ---
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 1 +
>  drivers/gpu/drm/drm_atomic_helper.c               | 7 ++-----
>  drivers/gpu/drm/i915/display/intel_display.c      | 1 +
>  drivers/gpu/drm/nouveau/dispnv50/disp.c           | 1 +
>  4 files changed, 5 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/=
gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> index 490684787cff..0511097343da 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> @@ -7397,6 +7397,7 @@ static void amdgpu_dm_atomic_commit_tail(struct drm=
_atomic_state *state)
>  	int crtc_disable_count =3D 0;
>  =

>  	drm_atomic_helper_update_legacy_modeset_state(dev, state);
> +	drm_atomic_helper_calc_timestamping_constants(state);
>  =

>  	dm_state =3D dm_atomic_get_new_state(state);
>  	if (dm_state && dm_state->context) {
> diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_at=
omic_helper.c
> index 673e3fc282d9..45ee613c8efd 100644
> --- a/drivers/gpu/drm/drm_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_helper.c
> @@ -1115,9 +1115,7 @@ disable_outputs(struct drm_device *dev, struct drm_=
atomic_state *old_state)
>   * @old_state: atomic state object with old state structures
>   *
>   * This function updates all the various legacy modeset state pointers in
> - * connectors, encoders and CRTCs. It also updates the timestamping cons=
tants
> - * used for precise vblank timestamps by calling
> - * drm_calc_timestamping_constants().
> + * connectors, encoders and CRTCs.
>   *
>   * Drivers can use this for building their own atomic commit if they don=
't have
>   * a pure helper-based modeset implementation.
> @@ -1187,8 +1185,6 @@ drm_atomic_helper_update_legacy_modeset_state(struc=
t drm_device *dev,
>  			crtc->y =3D new_plane_state->src_y >> 16;
>  		}
>  	}
> -
> -	drm_atomic_helper_calc_timestamping_constants(old_state);
>  }
>  EXPORT_SYMBOL(drm_atomic_helper_update_legacy_modeset_state);
>  =

> @@ -1296,6 +1292,7 @@ void drm_atomic_helper_commit_modeset_disables(stru=
ct drm_device *dev,
>  	disable_outputs(dev, old_state);
>  =

>  	drm_atomic_helper_update_legacy_modeset_state(dev, old_state);
> +	drm_atomic_helper_calc_timestamping_constants(old_state);
>  =

>  	crtc_set_mode(dev, old_state);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index ec148a8da2c2..035840ce3825 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15578,6 +15578,7 @@ static void intel_atomic_commit_tail(struct intel=
_atomic_state *state)
>  =

>  	if (state->modeset) {
>  		drm_atomic_helper_update_legacy_modeset_state(dev, &state->base);
> +		drm_atomic_helper_calc_timestamping_constants(&state->base);
>  =

>  		intel_set_cdclk_pre_plane_update(state);
>  =

> diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/no=
uveau/dispnv50/disp.c
> index 7799530e07c1..b6d1b926bc5e 100644
> --- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
> +++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
> @@ -2069,6 +2069,7 @@ nv50_disp_atomic_commit_tail(struct drm_atomic_stat=
e *state)
>  	drm_atomic_helper_wait_for_fences(dev, state, false);
>  	drm_atomic_helper_wait_for_dependencies(state);
>  	drm_atomic_helper_update_legacy_modeset_state(dev, state);
> +	drm_atomic_helper_calc_timestamping_constants(state);
>  =

>  	if (atom->lock_core)
>  		mutex_lock(&disp->mutex);
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
