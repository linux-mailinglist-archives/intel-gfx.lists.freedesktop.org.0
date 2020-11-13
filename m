Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7FB2B1E91
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 16:26:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56B796E516;
	Fri, 13 Nov 2020 15:26:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9555E6E516
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 15:26:13 +0000 (UTC)
IronPort-SDR: 0QmoAXrKzWXeJGU20MmAmr176fWtL10/5b0e6IHDORnMAPu7/Lu7MhoeGU2VjvHSHsaTwSADlZ
 iEqEXvoVDYqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="255196128"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="255196128"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 07:26:13 -0800
IronPort-SDR: Hx8GGhatOrp2FU5SqdhVSvwUwKVWGIipsIEcMonoIJ8eZZRXsRvUhlwIfH4FOHD5tHeAVuiE2w
 fsHwOqzbbXEw==
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="309191519"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 07:26:12 -0800
Date: Fri, 13 Nov 2020 17:26:54 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201113152654.GB17194@intel.com>
References: <20201106173042.7534-1-ville.syrjala@linux.intel.com>
 <20201106173042.7534-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201106173042.7534-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Store plane relative data
 rate in crtc_state
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

On Fri, Nov 06, 2020 at 07:30:41PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Store the relative data rate for planes in the crtc state
> so that we don't have to use
> intel_atomic_crtc_state_for_each_plane_state() to compute
> it even for the planes that are no part of the current state.
> =

> Should probably just nuke this stuff entirely an use the normal
> plane data rate instead. The two are slightly different since this
> relative data rate doesn't factor in the actual pixel clock, so
> it's a bit odd thing to even call a "data rate". And since the
> watermarks are computed based on the actual data rate anyway
> I don't really see what the point of this relative data rate
> is. But that's for the future...
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>


> ---
>  .../drm/i915/display/intel_display_types.h    |  4 +
>  drivers/gpu/drm/i915/intel_pm.c               | 83 ++++++++++---------
>  2 files changed, 50 insertions(+), 37 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 8a0276044832..768bd3dc77dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1024,6 +1024,10 @@ struct intel_crtc_state {
>  =

>  	u32 data_rate[I915_MAX_PLANES];
>  =

> +	/* FIXME unify with data_rate[] */
> +	u64 plane_data_rate[I915_MAX_PLANES];
> +	u64 uv_plane_data_rate[I915_MAX_PLANES];
> +
>  	/* Gamma mode programmed on the pipe */
>  	u32 gamma_mode;
>  =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index b789ad78319b..8865f37d6297 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4696,50 +4696,63 @@ skl_plane_relative_data_rate(const struct intel_c=
rtc_state *crtc_state,
>  }
>  =

>  static u64
> -skl_get_total_relative_data_rate(struct intel_crtc_state *crtc_state,
> -				 u64 *plane_data_rate,
> -				 u64 *uv_plane_data_rate)
> +skl_get_total_relative_data_rate(struct intel_atomic_state *state,
> +				 struct intel_crtc *crtc)
>  {
> -	struct intel_plane *plane;
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	const struct intel_plane_state *plane_state;
> +	struct intel_plane *plane;
>  	u64 total_data_rate =3D 0;
> +	enum plane_id plane_id;
> +	int i;
>  =

>  	/* Calculate and cache data rate for each plane */
> -	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc_s=
tate) {
> -		enum plane_id plane_id =3D plane->id;
> -		u64 rate;
> +	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> +		if (plane->pipe !=3D crtc->pipe)
> +			continue;
> +
> +		plane_id =3D plane->id;
>  =

>  		/* packed/y */
> -		rate =3D skl_plane_relative_data_rate(crtc_state, plane_state, 0);
> -		plane_data_rate[plane_id] =3D rate;
> -		total_data_rate +=3D rate;
> +		crtc_state->plane_data_rate[plane_id] =3D
> +			skl_plane_relative_data_rate(crtc_state, plane_state, 0);
>  =

>  		/* uv-plane */
> -		rate =3D skl_plane_relative_data_rate(crtc_state, plane_state, 1);
> -		uv_plane_data_rate[plane_id] =3D rate;
> -		total_data_rate +=3D rate;
> +		crtc_state->uv_plane_data_rate[plane_id] =3D
> +			skl_plane_relative_data_rate(crtc_state, plane_state, 1);
> +	}
> +
> +	for_each_plane_id_on_crtc(crtc, plane_id) {
> +		total_data_rate +=3D crtc_state->plane_data_rate[plane_id];
> +		total_data_rate +=3D crtc_state->uv_plane_data_rate[plane_id];
>  	}
>  =

>  	return total_data_rate;
>  }
>  =

>  static u64
> -icl_get_total_relative_data_rate(struct intel_crtc_state *crtc_state,
> -				 u64 *plane_data_rate)
> +icl_get_total_relative_data_rate(struct intel_atomic_state *state,
> +				 struct intel_crtc *crtc)
>  {
> -	struct intel_plane *plane;
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	const struct intel_plane_state *plane_state;
> +	struct intel_plane *plane;
>  	u64 total_data_rate =3D 0;
> +	enum plane_id plane_id;
> +	int i;
>  =

>  	/* Calculate and cache data rate for each plane */
> -	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc_s=
tate) {
> -		enum plane_id plane_id =3D plane->id;
> -		u64 rate;
> +	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> +		if (plane->pipe !=3D crtc->pipe)
> +			continue;
> +
> +		plane_id =3D plane->id;
>  =

>  		if (!plane_state->planar_linked_plane) {
> -			rate =3D skl_plane_relative_data_rate(crtc_state, plane_state, 0);
> -			plane_data_rate[plane_id] =3D rate;
> -			total_data_rate +=3D rate;
> +			crtc_state->plane_data_rate[plane_id] =3D
> +				skl_plane_relative_data_rate(crtc_state, plane_state, 0);
>  		} else {
>  			enum plane_id y_plane_id;
>  =

> @@ -4754,17 +4767,18 @@ icl_get_total_relative_data_rate(struct intel_crt=
c_state *crtc_state,
>  				continue;
>  =

>  			/* Y plane rate is calculated on the slave */
> -			rate =3D skl_plane_relative_data_rate(crtc_state, plane_state, 0);
>  			y_plane_id =3D plane_state->planar_linked_plane->id;
> -			plane_data_rate[y_plane_id] =3D rate;
> -			total_data_rate +=3D rate;
> +			crtc_state->plane_data_rate[y_plane_id] =3D
> +				skl_plane_relative_data_rate(crtc_state, plane_state, 0);
>  =

> -			rate =3D skl_plane_relative_data_rate(crtc_state, plane_state, 1);
> -			plane_data_rate[plane_id] =3D rate;
> -			total_data_rate +=3D rate;
> +			crtc_state->plane_data_rate[plane_id] =3D
> +				skl_plane_relative_data_rate(crtc_state, plane_state, 1);
>  		}
>  	}
>  =

> +	for_each_plane_id_on_crtc(crtc, plane_id)
> +		total_data_rate +=3D crtc_state->plane_data_rate[plane_id];
> +
>  	return total_data_rate;
>  }
>  =

> @@ -4796,8 +4810,6 @@ skl_allocate_pipe_ddb(struct intel_atomic_state *st=
ate,
>  	u64 total_data_rate;
>  	enum plane_id plane_id;
>  	int num_active;
> -	u64 plane_data_rate[I915_MAX_PLANES] =3D {};
> -	u64 uv_plane_data_rate[I915_MAX_PLANES] =3D {};
>  	u32 blocks;
>  	int level;
>  	int ret;
> @@ -4837,13 +4849,10 @@ skl_allocate_pipe_ddb(struct intel_atomic_state *=
state,
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 11)
>  		total_data_rate =3D
> -			icl_get_total_relative_data_rate(crtc_state,
> -							 plane_data_rate);
> +			icl_get_total_relative_data_rate(state, crtc);
>  	else
>  		total_data_rate =3D
> -			skl_get_total_relative_data_rate(crtc_state,
> -							 plane_data_rate,
> -							 uv_plane_data_rate);
> +			skl_get_total_relative_data_rate(state, crtc);
>  =

>  	ret =3D skl_ddb_get_pipe_allocation_limits(dev_priv, crtc_state,
>  						 total_data_rate,
> @@ -4924,7 +4933,7 @@ skl_allocate_pipe_ddb(struct intel_atomic_state *st=
ate,
>  		if (total_data_rate =3D=3D 0)
>  			break;
>  =

> -		rate =3D plane_data_rate[plane_id];
> +		rate =3D crtc_state->plane_data_rate[plane_id];
>  		extra =3D min_t(u16, alloc_size,
>  			      DIV64_U64_ROUND_UP(alloc_size * rate,
>  						 total_data_rate));
> @@ -4935,7 +4944,7 @@ skl_allocate_pipe_ddb(struct intel_atomic_state *st=
ate,
>  		if (total_data_rate =3D=3D 0)
>  			break;
>  =

> -		rate =3D uv_plane_data_rate[plane_id];
> +		rate =3D crtc_state->uv_plane_data_rate[plane_id];
>  		extra =3D min_t(u16, alloc_size,
>  			      DIV64_U64_ROUND_UP(alloc_size * rate,
>  						 total_data_rate));
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
