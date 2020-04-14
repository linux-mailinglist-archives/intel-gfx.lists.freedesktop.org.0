Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 696C51A87C4
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 19:42:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1BFE89CAF;
	Tue, 14 Apr 2020 17:42:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A82689CAF
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 17:42:30 +0000 (UTC)
IronPort-SDR: NdEdx0Dq2//SR/RuBEYyYN8Zr5LkWgUDB7mB1poKmFGmMeIFz9b7TrqXpi14HXfZ0S5Onxt9Yn
 c7CbBPOANaLQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 10:42:29 -0700
IronPort-SDR: ZhOz0zYrP16Q2nVXEj0Ry/Veu+ulcm+k2sEvyD0Dpf6fqXLBdaKbuObxd97/YRZTO/5M8NsItz
 x30kRE68YRsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,383,1580803200"; d="scan'208";a="363438160"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 14 Apr 2020 10:42:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Apr 2020 20:42:25 +0300
Date: Tue, 14 Apr 2020 20:42:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200414174225.GG6112@intel.com>
References: <20200409154730.18568-1-stanislav.lisovskiy@intel.com>
 <20200409154730.18568-7-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409154730.18568-7-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v22 06/13] drm/i915: Add pre/post plane
 updates for SAGV
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 09, 2020 at 06:47:23PM +0300, Stanislav Lisovskiy wrote:
> Lets have a unified way to handle SAGV changes,
> espoecially considering the upcoming Gen12 changes.
> =

> Current "standard" way of doing this in commit_tail
> is pre/post plane updates, when everything which
> has to be forbidden and not supported in new config
> has to be restricted before update and relaxed after
> plane update.
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 13 ++++---------
>  drivers/gpu/drm/i915/intel_pm.c              | 20 ++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_pm.h              |  2 ++
>  3 files changed, 26 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 70ec301fe6e3..ac7f600c84ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15349,12 +15349,7 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>  =

>  		intel_set_cdclk_pre_plane_update(state);
>  =

> -		/*
> -		 * SKL workaround: bspec recommends we disable the SAGV when we
> -		 * have more then one pipe enabled
> -		 */
> -		if (!intel_can_enable_sagv(state))
> -			intel_disable_sagv(dev_priv);
> +		intel_sagv_pre_plane_update(state);
>  =

>  		intel_modeset_verify_disabled(dev_priv, state);
>  	}
> @@ -15451,11 +15446,11 @@ static void intel_atomic_commit_tail(struct int=
el_atomic_state *state)
>  	intel_check_cpu_fifo_underruns(dev_priv);
>  	intel_check_pch_fifo_underruns(dev_priv);
>  =

> -	if (state->modeset)
> +	if (state->modeset) {
>  		intel_verify_planes(state);
>  =

> -	if (state->modeset && intel_can_enable_sagv(state))
> -		intel_enable_sagv(dev_priv);
> +		intel_sagv_post_plane_update(state);
> +	}
>  =

>  	drm_atomic_helper_commit_hw_done(&state->base);
>  =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 41af69ad3edc..d1df288396d8 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3757,6 +3757,26 @@ intel_disable_sagv(struct drm_i915_private *dev_pr=
iv)
>  	return 0;
>  }
>  =

> +void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +
> +	if (!intel_can_enable_sagv(state)) {
> +		intel_disable_sagv(dev_priv);
> +		return;
> +	}
> +}
> +
> +void intel_sagv_post_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +
> +	if (intel_can_enable_sagv(state)) {
> +		intel_enable_sagv(dev_priv);
> +		return;

Pointless returns. With those removed

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +	}
> +}
> +
>  static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *cr=
tc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index d60a85421c5a..9a6036ab0f90 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -44,6 +44,8 @@ void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
>  bool intel_can_enable_sagv(struct intel_atomic_state *state);
>  int intel_enable_sagv(struct drm_i915_private *dev_priv);
>  int intel_disable_sagv(struct drm_i915_private *dev_priv);
> +void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
> +void intel_sagv_post_plane_update(struct intel_atomic_state *state);
>  bool skl_wm_level_equals(const struct skl_wm_level *l1,
>  			 const struct skl_wm_level *l2);
>  bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
