Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4D62B0723
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 14:59:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 542006E22C;
	Thu, 12 Nov 2020 13:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23B896E22C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 13:59:09 +0000 (UTC)
IronPort-SDR: Jtg8uyYvp1OW4AwVfBtjTYwxJuIH30MJx6uwJBJhx+P3/LYflfpayFAbVhrzeFy2PVF3RwhqRN
 cTsWIy+5/zrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="158088416"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="158088416"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 05:59:05 -0800
IronPort-SDR: lXiNalzPfZmIan7uoxZTPSoD6gI5t1YFi1VtQ+53Debnmh45umrlC4mmbYwWh9iNZ3WvCSLvSK
 lhpaOLk9Fbxg==
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="474284853"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 05:59:04 -0800
Date: Thu, 12 Nov 2020 15:59:40 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201112134927.GA16561@intel.com>
References: <20201106173042.7534-1-ville.syrjala@linux.intel.com>
 <20201106173042.7534-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201106173042.7534-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Precompute can_sagv for each
 wm level
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

On Fri, Nov 06, 2020 at 07:30:40PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> In order to remove intel_atomic_crtc_state_for_each_plane_state()
> from skl_crtc_can_enable_sagv() we can simply precompute whether
> each wm level can tolerate the SAGV block time latency or not.
> =

> This has the nice side benefit that we remove the duplicated
> wm level latency calculation. In fact the copy of that code
> we had in skl_crtc_can_enable_sagv() didn't even handle
> WaIncreaseLatencyIPCEnabled/Display WA #1141 whereas the copy
> in skl_compute_plane_wm() did. So now we just have the one
> copy which handles all the w/as.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/intel_pm.c               | 21 +++++++------------
>  2 files changed, 9 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index b977e70e34d7..8a0276044832 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -686,6 +686,7 @@ struct skl_wm_level {
>  	u8 plane_res_l;
>  	bool plane_en;
>  	bool ignore_lines;
> +	bool can_sagv;
>  };
>  =

>  struct skl_plane_wm {
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 85b4bfb02e2e..b789ad78319b 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3873,9 +3873,7 @@ static bool skl_crtc_can_enable_sagv(const struct i=
ntel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct intel_plane *plane;
> -	const struct intel_plane_state *plane_state;
> -	int level, latency;
> +	enum plane_id plane_id;
>  =

>  	if (!intel_has_sagv(dev_priv))
>  		return false;
> @@ -3886,9 +3884,10 @@ static bool skl_crtc_can_enable_sagv(const struct =
intel_crtc_state *crtc_state)
>  	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
>  		return false;
>  =

> -	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc_s=
tate) {
> +	for_each_plane_id_on_crtc(crtc, plane_id) {
>  		const struct skl_plane_wm *wm =3D
> -			&crtc_state->wm.skl.optimal.planes[plane->id];
> +			&crtc_state->wm.skl.optimal.planes[plane_id];
> +		int level;
>  =

>  		/* Skip this plane if it's not enabled */
>  		if (!wm->wm[0].plane_en)
> @@ -3899,19 +3898,12 @@ static bool skl_crtc_can_enable_sagv(const struct=
 intel_crtc_state *crtc_state)
>  		     !wm->wm[level].plane_en; --level)
>  		     { }
>  =

> -		latency =3D dev_priv->wm.skl_latency[level];
> -
> -		if (skl_needs_memory_bw_wa(dev_priv) &&
> -		    plane_state->uapi.fb->modifier =3D=3D
> -		    I915_FORMAT_MOD_X_TILED)
> -			latency +=3D 15;
> -
>  		/*
>  		 * If any of the planes on this pipe don't enable wm levels that
>  		 * incur memory latencies higher than sagv_block_time_us we
>  		 * can't enable SAGV.
>  		 */
> -		if (latency < dev_priv->sagv_block_time_us)
> +		if (!wm->wm[level].can_sagv)
>  			return false;
>  	}

Ah yet again that "thing". I wonder tbh, do we even need this per level,
as we anyway do "to SAGV or not to SAGV" decision, based on all wm levels.

Also I remember we even discussed that we wanted some clarification here,
as for Gen12+ we actually checking only if we can fit wm0 + block time to d=
db.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>


>  =

> @@ -5375,6 +5367,9 @@ static void skl_compute_plane_wm(const struct intel=
_crtc_state *crtc_state,
>  	/* Bspec says: value >=3D plane ddb allocation -> invalid, hence the +1=
 here */
>  	result->min_ddb_alloc =3D max(min_ddb_alloc, res_blocks) + 1;
>  	result->plane_en =3D true;
> +
> +	if (INTEL_GEN(dev_priv) < 12)
> +		result->can_sagv =3D latency >=3D dev_priv->sagv_block_time_us;
>  }
>  =

>  static void
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
