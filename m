Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9812A9513
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 12:15:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEE4F6E1B8;
	Fri,  6 Nov 2020 11:15:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E13026E1B8
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 11:14:59 +0000 (UTC)
IronPort-SDR: 2thDorT/usTDGX18tTXgLD19sdoVhCfnvbOS5ZhXQh9fVrsH5IKI7TngmoV3QeBZGiwJlzS90o
 +E1RBOnbfv5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9796"; a="157313415"
X-IronPort-AV: E=Sophos;i="5.77,456,1596524400"; d="scan'208";a="157313415"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 03:14:59 -0800
IronPort-SDR: fN+W92jMtJwwTPJUXyd0AyPMegkJqgxxURdylm2NuGISsxpsqLP0AgRcK1mkv7pN6Xb+A31sZw
 RkZjjnbjJoDw==
X-IronPort-AV: E=Sophos;i="5.77,456,1596524400"; d="scan'208";a="306827481"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 03:14:58 -0800
Date: Fri, 6 Nov 2020 13:15:34 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201106111534.GB31774@intel.com>
References: <20201027203955.28032-1-ville.syrjala@linux.intel.com>
 <20201027203955.28032-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027203955.28032-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915: Extract
 intel_crtc_dbuf_weights()
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

On Tue, Oct 27, 2020 at 10:39:53PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Extract the code to calculate the weights used to chunk up the dbuf
> between pipes. There's still extra stuff in there that shouldn't be
> there and must be moved out, but that requires a bit more state to
> be tracked in the dbuf state.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 145 ++++++++++++++++++++------------
>  1 file changed, 89 insertions(+), 56 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 2ec48d9522e8..bc4d7ce5fd7c 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4111,62 +4111,35 @@ static unsigned int intel_crtc_ddb_weight(const s=
truct intel_crtc_state *crtc_st
>  static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc,
>  				  u8 active_pipes);
>  =

> -static int
> -skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
> -				   const struct intel_crtc_state *crtc_state,
> -				   const u64 total_data_rate,
> -				   struct skl_ddb_entry *alloc, /* out */
> -				   int *num_active /* out */)
> +static int intel_crtc_dbuf_weights(struct intel_atomic_state *state,
> +				   struct intel_crtc *for_crtc,
> +				   unsigned int *weight_start,
> +				   unsigned int *weight_end,
> +				   unsigned int *weight_total)
>  {
> -	struct drm_atomic_state *state =3D crtc_state->uapi.state;
> -	struct intel_atomic_state *intel_state =3D to_intel_atomic_state(state);
> -	struct intel_crtc *for_crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct intel_crtc *crtc;
> -	unsigned int pipe_weight =3D 0, total_weight =3D 0, weight_before_pipe =
=3D 0;
> +	const struct intel_dbuf_state *old_dbuf_state =3D
> +		intel_atomic_get_old_dbuf_state(state);
> +	struct intel_dbuf_state *new_dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(state);
> +	u8 active_pipes =3D new_dbuf_state->active_pipes;
>  	enum pipe for_pipe =3D for_crtc->pipe;
> -	struct intel_dbuf_state *new_dbuf_state =3D
> -		intel_atomic_get_new_dbuf_state(intel_state);
> -	const struct intel_dbuf_state *old_dbuf_state =3D
> -		intel_atomic_get_old_dbuf_state(intel_state);
> -	u8 active_pipes =3D new_dbuf_state->active_pipes;
> -	struct skl_ddb_entry ddb_slices;
> -	u32 ddb_range_size;
> -	u32 i;
> -	u32 dbuf_slice_mask;
> -	u32 total_slice_mask;
> -	u32 start, end;
> -	int ret;
> -
> -	*num_active =3D hweight8(active_pipes);
> -
> -	if (!crtc_state->hw.active) {
> -		alloc->start =3D 0;
> -		alloc->end =3D 0;
> -		return 0;
> -	}
> -
> -	/*
> -	 * If the state doesn't change the active CRTC's or there is no
> -	 * modeset request, then there's no need to recalculate;
> -	 * the existing pipe allocation limits should remain unchanged.
> -	 * Note that we're safe from racing commits since any racing commit
> -	 * that changes the active CRTC list or do modeset would need to
> -	 * grab _all_ crtc locks, including the one we currently hold.
> -	 */
> -	if (old_dbuf_state->active_pipes =3D=3D new_dbuf_state->active_pipes &&
> -	    !dev_priv->wm.distrust_bios_wm)
> -		return 0;
> +	const struct intel_crtc_state *crtc_state;
> +	struct intel_crtc *crtc;
> +	u8 dbuf_slice_mask;
> +	u8 total_slice_mask;
> +	int i, ret;
>  =

>  	/*
>  	 * Get allowed DBuf slices for correspondent pipe and platform.
>  	 */
>  	dbuf_slice_mask =3D skl_compute_dbuf_slices(for_crtc, active_pipes);
> -
> -	skl_ddb_entry_for_slices(dev_priv, dbuf_slice_mask, &ddb_slices);
> -	ddb_range_size =3D skl_ddb_entry_size(&ddb_slices);
> -
>  	total_slice_mask =3D dbuf_slice_mask;
> -	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
> +
> +	*weight_start =3D 0;
> +	*weight_end =3D 0;
> +	*weight_total =3D 0;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
>  		enum pipe pipe =3D crtc->pipe;
>  		unsigned int weight;
>  		u8 pipe_dbuf_slice_mask;
> @@ -4197,12 +4170,14 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i91=
5_private *dev_priv,
>  			continue;
>  =

>  		weight =3D intel_crtc_ddb_weight(crtc_state);
> -		total_weight +=3D weight;
> +		*weight_total +=3D weight;
>  =

> -		if (pipe < for_pipe)
> -			weight_before_pipe +=3D weight;
> -		else if (pipe =3D=3D for_pipe)
> -			pipe_weight =3D weight;
> +		if (pipe < for_pipe) {
> +			*weight_start +=3D weight;
> +			*weight_end +=3D weight;
> +		} else if (pipe =3D=3D for_pipe) {
> +			*weight_end +=3D weight;
> +		}
>  	}
>  =

>  	/*
> @@ -4217,15 +4192,73 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i91=
5_private *dev_priv,
>  			return ret;
>  	}
>  =

> -	start =3D ddb_range_size * weight_before_pipe / total_weight;
> -	end =3D ddb_range_size * (weight_before_pipe + pipe_weight) / total_wei=
ght;
> +	return 0;
> +}
> +
> +static int
> +skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
> +				   const struct intel_crtc_state *crtc_state,
> +				   const u64 total_data_rate,
> +				   struct skl_ddb_entry *alloc, /* out */
> +				   int *num_active /* out */)
> +{
> +	struct intel_atomic_state *state =3D
> +		to_intel_atomic_state(crtc_state->uapi.state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	unsigned int weight_start, weight_end, weight_total;
> +	const struct intel_dbuf_state *old_dbuf_state =3D
> +		intel_atomic_get_old_dbuf_state(state);
> +	struct intel_dbuf_state *new_dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(state);
> +	u8 active_pipes =3D new_dbuf_state->active_pipes;
> +	struct skl_ddb_entry ddb_slices;
> +	u32 ddb_range_size;
> +	u32 dbuf_slice_mask;
> +	u32 start, end;
> +	int ret;
> +
> +	*num_active =3D hweight8(active_pipes);
> +
> +	if (!crtc_state->hw.active) {
> +		alloc->start =3D 0;
> +		alloc->end =3D 0;
> +		return 0;
> +	}
> +
> +	/*
> +	 * If the state doesn't change the active CRTC's or there is no
> +	 * modeset request, then there's no need to recalculate;
> +	 * the existing pipe allocation limits should remain unchanged.
> +	 * Note that we're safe from racing commits since any racing commit
> +	 * that changes the active CRTC list or do modeset would need to
> +	 * grab _all_ crtc locks, including the one we currently hold.
> +	 */
> +	if (old_dbuf_state->active_pipes =3D=3D new_dbuf_state->active_pipes &&
> +	    !dev_priv->wm.distrust_bios_wm)
> +		return 0;
> +
> +	/*
> +	 * Get allowed DBuf slices for correspondent pipe and platform.
> +	 */
> +	dbuf_slice_mask =3D skl_compute_dbuf_slices(crtc, active_pipes);
> +
> +	skl_ddb_entry_for_slices(dev_priv, dbuf_slice_mask, &ddb_slices);
> +	ddb_range_size =3D skl_ddb_entry_size(&ddb_slices);
> +
> +	ret =3D intel_crtc_dbuf_weights(state, crtc,
> +				      &weight_start, &weight_end, &weight_total);
> +	if (ret)
> +		return ret;
> +
> +	start =3D ddb_range_size * weight_start / weight_total;
> +	end =3D ddb_range_size * weight_end / weight_total;
>  =

>  	alloc->start =3D ddb_slices.start + start;
>  	alloc->end =3D ddb_slices.start + end;
>  =

>  	drm_dbg_kms(&dev_priv->drm,
>  		    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x\n=
",
> -		    for_crtc->base.base.id, for_crtc->base.name,
> +		    crtc->base.base.id, crtc->base.name,
>  		    dbuf_slice_mask, alloc->start, alloc->end, active_pipes);
>  =

>  	return 0;
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
