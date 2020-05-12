Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 170441CF39B
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 13:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7AAF89D60;
	Tue, 12 May 2020 11:47:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AA4F89D60
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 11:47:50 +0000 (UTC)
IronPort-SDR: svawUAnGhvxk2M/rRs+0rjlouzIvOJOYMkNmXfdzL/I1shqomgSirx/cjBUzn0xOnOG2lOls0N
 r5wgqAg9lNkQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 04:47:49 -0700
IronPort-SDR: E3I16HK0OA+aMWBVqGyEs4c+I72lyyjcSk33A6/xVtVo+eQQU5eqi69RPiJ2xRkhLT7u4/YG5C
 zc5v5ZqV/i1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,383,1583222400"; d="scan'208";a="250870491"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 12 May 2020 04:47:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 May 2020 14:47:45 +0300
Date: Tue, 12 May 2020 14:47:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200512114745.GN6112@intel.com>
References: <20200507144503.15506-1-stanislav.lisovskiy@intel.com>
 <20200507144503.15506-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507144503.15506-3-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v28 2/6] drm/i915: Extract skl SAGV checking
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 07, 2020 at 05:44:59PM +0300, Stanislav Lisovskiy wrote:
> Introduce platform dependent SAGV checking in
> combination with bandwidth state pipe SAGV mask.
> =

> This is preparation to adding TGL support, which
> requires different way of SAGV checking.
> =

> v2, v3, v4, v5, v6: Fix rebase conflict
> =

> v7: - Nuke icl specific function, use skl
>       for icl as well, gen specific active_pipes
>       check to be added in the next patch(Ville)
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 8a86298962dc..3dc1ad66beb3 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3804,7 +3804,7 @@ void intel_sagv_post_plane_update(struct intel_atom=
ic_state *state)
>  		intel_enable_sagv(dev_priv);
>  }
>  =

> -static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *cr=
tc_state)
> +static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc=
_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -3865,7 +3865,7 @@ static int intel_compute_sagv_mask(struct intel_ato=
mic_state *state)
>  {
>  	int ret;
>  	struct intel_crtc *crtc;
> -	struct intel_crtc_state *new_crtc_state;
> +	const struct intel_crtc_state *new_crtc_state;
>  	struct intel_bw_state *new_bw_state =3D NULL;
>  	const struct intel_bw_state *old_bw_state =3D NULL;
>  	int i;
> @@ -3878,7 +3878,7 @@ static int intel_compute_sagv_mask(struct intel_ato=
mic_state *state)
>  =

>  		old_bw_state =3D intel_atomic_get_old_bw_state(state);
>  =

> -		if (intel_crtc_can_enable_sagv(new_crtc_state))
> +		if (skl_crtc_can_enable_sagv(new_crtc_state))

I'd leave this behing as a trivial wrapper =

intel_crtc_can_enable_sagv()
{
	return skl_crtc_cna_enable_sagv();
}

so we won't need that ugly 'can_sagv' boolean when introducing the tgl
counterpart. Otherwise lgtm.

>  			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe);
>  		else
>  			new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pipe);
> @@ -3889,6 +3889,7 @@ static int intel_compute_sagv_mask(struct intel_ato=
mic_state *state)
>  =

>  	new_bw_state->active_pipes =3D
>  		intel_calc_active_pipes(state, old_bw_state->active_pipes);
> +
>  	if (new_bw_state->active_pipes !=3D old_bw_state->active_pipes) {
>  		ret =3D intel_atomic_lock_global_state(&new_bw_state->base);
>  		if (ret)
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
