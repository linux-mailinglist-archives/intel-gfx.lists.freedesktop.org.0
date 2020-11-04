Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B331D2A67BE
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 16:34:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5FEE89DD8;
	Wed,  4 Nov 2020 15:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9677B89B5F
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 15:34:48 +0000 (UTC)
IronPort-SDR: Z1sQBs9xNZw4nT20PINY1f6NDsOaUzIXwAZ5wydDV9Snm/J4Dr7PN9aqnkFy8MYnzsU0cERhci
 Ysq0xFzWvTtA==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="230863895"
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="230863895"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 07:34:45 -0800
IronPort-SDR: m8NlE3wL1BSWHbtzXANRFMCEqrG50LWFnZTJs73iSLYCQezW1JJBGgFJOPU9mUgvD/9Rv0fVfS
 bd1NXNGeZSPg==
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="538959050"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 07:34:44 -0800
Date: Wed, 4 Nov 2020 17:35:14 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201104153514.GA23942@intel.com>
References: <20201027203955.28032-1-ville.syrjala@linux.intel.com>
 <20201027203955.28032-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027203955.28032-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Extract
 intel_crtc_ddb_weight()
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

On Tue, Oct 27, 2020 at 10:39:48PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> skl_ddb_get_pipe_allocation_limits() doesn't care how the weights
> for distributing the ddb are caclculated for each pipe. Put that
> calculation into a separate function so that such mundane details
> are hidden from view.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 46 ++++++++++++++++++++-------------
>  1 file changed, 28 insertions(+), 18 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 0ef01a01ef8d..d14cdedc4ac3 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4084,6 +4084,25 @@ u32 skl_ddb_dbuf_slice_mask(struct drm_i915_privat=
e *dev_priv,
>  	return slice_mask;
>  }
>  =

> +static unsigned int intel_crtc_ddb_weight(const struct intel_crtc_state =
*crtc_state)
> +{
> +	const struct drm_display_mode *adjusted_mode =3D
> +		&crtc_state->hw.adjusted_mode;
> +	int hdisplay, vdisplay;
> +
> +	if (!crtc_state->hw.active)
> +		return 0;
> +
> +	/*
> +	 * Watermark/ddb requirement highly depends upon width of the
> +	 * framebuffer, So instead of allocating DDB equally among pipes
> +	 * distribute DDB based on resolution/width of the display.
> +	 */
> +	drm_mode_get_hv_timing(adjusted_mode, &hdisplay, &vdisplay);
> +
> +	return hdisplay;
> +}
> +
>  static u8 skl_compute_dbuf_slices(const struct intel_crtc_state *crtc_st=
ate,
>  				  u8 active_pipes);
>  =

> @@ -4098,7 +4117,7 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_=
private *dev_priv,
>  	struct intel_atomic_state *intel_state =3D to_intel_atomic_state(state);
>  	struct drm_crtc *for_crtc =3D crtc_state->uapi.crtc;
>  	const struct intel_crtc *crtc;
> -	u32 pipe_width =3D 0, total_width_in_range =3D 0, width_before_pipe_in_=
range =3D 0;
> +	unsigned int pipe_weight =3D 0, total_weight =3D 0, weight_before_pipe =
=3D 0;
>  	enum pipe for_pipe =3D to_intel_crtc(for_crtc)->pipe;
>  	struct intel_dbuf_state *new_dbuf_state =3D
>  		intel_atomic_get_new_dbuf_state(intel_state);
> @@ -4167,18 +4186,11 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i91=
5_private *dev_priv,
>  	 */
>  	ddb_range_size =3D hweight8(dbuf_slice_mask) * slice_size;
>  =

> -	/*
> -	 * Watermark/ddb requirement highly depends upon width of the
> -	 * framebuffer, So instead of allocating DDB equally among pipes
> -	 * distribute DDB based on resolution/width of the display.
> -	 */
>  	total_slice_mask =3D dbuf_slice_mask;
>  	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
> -		const struct drm_display_mode *adjusted_mode =3D
> -			&crtc_state->hw.adjusted_mode;
>  		enum pipe pipe =3D crtc->pipe;
> -		int hdisplay, vdisplay;
> -		u32 pipe_dbuf_slice_mask;
> +		unsigned int weight;
> +		u8 pipe_dbuf_slice_mask;
>  =

>  		if (!crtc_state->hw.active)
>  			continue;
> @@ -4205,14 +4217,13 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i91=
5_private *dev_priv,
>  		if (dbuf_slice_mask !=3D pipe_dbuf_slice_mask)
>  			continue;
>  =

> -		drm_mode_get_hv_timing(adjusted_mode, &hdisplay, &vdisplay);
> -
> -		total_width_in_range +=3D hdisplay;
> +		weight =3D intel_crtc_ddb_weight(crtc_state);
> +		total_weight +=3D weight;
>  =

>  		if (pipe < for_pipe)
> -			width_before_pipe_in_range +=3D hdisplay;
> +			weight_before_pipe +=3D weight;
>  		else if (pipe =3D=3D for_pipe)
> -			pipe_width =3D hdisplay;
> +			pipe_weight =3D weight;
>  	}
>  =

>  	/*
> @@ -4227,9 +4238,8 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_=
private *dev_priv,
>  			return ret;
>  	}
>  =

> -	start =3D ddb_range_size * width_before_pipe_in_range / total_width_in_=
range;
> -	end =3D ddb_range_size *
> -		(width_before_pipe_in_range + pipe_width) / total_width_in_range;
> +	start =3D ddb_range_size * weight_before_pipe / total_weight;
> +	end =3D ddb_range_size * (weight_before_pipe + pipe_weight) / total_wei=
ght;
>  =

>  	alloc->start =3D offset + start;
>  	alloc->end =3D offset + end;
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
