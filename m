Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC714188630
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 14:46:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2198789F8E;
	Tue, 17 Mar 2020 13:46:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2376389F8E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 13:46:40 +0000 (UTC)
IronPort-SDR: ua/sYPwp6XOPq9/Tk/cBIyOelt3bjAT+pOkh2+0jotSyb+I6Yo6yNHBdhn/u2GaZMxNaIQcDbM
 lEe5/iNo8PKA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 06:46:39 -0700
IronPort-SDR: igttxZtj3Qh9FfOMbYKdDZGHbu3hy38cMUyq8t9uXBjzieZyKlGzfu8qml7ACTYNVFQOv+/AUu
 NNCR/wFYpO6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,564,1574150400"; d="scan'208";a="236333249"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 17 Mar 2020 06:46:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Mar 2020 15:46:35 +0200
Date: Tue, 17 Mar 2020 15:46:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200317134635.GV13686@intel.com>
References: <20200316113744.31203-3-stanislav.lisovskiy@intel.com>
 <20200316224338.14384-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316224338.14384-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: Adjust CDCLK accordingly
 to our DBuf bw needs
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

On Tue, Mar 17, 2020 at 12:43:38AM +0200, Stanislav Lisovskiy wrote:
> According to BSpec max BW per slice is calculated using formula
> Max BW =3D CDCLK * 64. Currently when calculating min CDCLK we
> account only per plane requirements, however in order to avoid
> FIFO underruns we need to estimate accumulated BW consumed by
> all planes(ddb entries basically) residing on that particular
> DBuf slice. This will allow us to put CDCLK lower and save power
> when we don't need that much bandwidth or gain additional
> performance once plane consumption grows.
> =

> v2: - Fix long line warning
>     - Limited new DBuf bw checks to only gens >=3D 11
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c       | 46 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_bw.h       |  1 +
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 25 ++++++++++
>  drivers/gpu/drm/i915/display/intel_display.c  | 10 +++-
>  .../drm/i915/display/intel_display_power.h    |  1 +
>  drivers/gpu/drm/i915/intel_pm.c               | 34 +++++++++++++-
>  drivers/gpu/drm/i915/intel_pm.h               |  3 ++
>  7 files changed, 117 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 58b264bc318d..a85125110d7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -6,6 +6,7 @@
>  #include <drm/drm_atomic_state_helper.h>
>  =

>  #include "intel_bw.h"
> +#include "intel_pm.h"
>  #include "intel_display_types.h"
>  #include "intel_sideband.h"
>  =

> @@ -334,6 +335,51 @@ static unsigned int intel_bw_crtc_data_rate(const st=
ruct intel_crtc_state *crtc_
>  	return data_rate;
>  }
>  =

> +int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	int max_bw_per_dbuf[DBUF_SLICE_MAX];
> +	int i =3D 0;
> +	enum plane_id plane_id;
> +	struct intel_crtc_state *crtc_state;
> +	struct intel_crtc *crtc;
> +	int max_bw =3D 0;
> +	int min_cdclk;
> +
> +	memset(max_bw_per_dbuf, 0, sizeof(max_bw_per_dbuf[0]) * DBUF_SLICE_MAX);
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> +		for_each_plane_id_on_crtc(crtc, plane_id) {
> +			struct skl_ddb_entry *plane_alloc =3D
> +				&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +			struct skl_ddb_entry *uv_plane_alloc =3D
> +				&crtc_state->wm.skl.plane_ddb_uv[plane_id];
> +			unsigned int data_rate =3D crtc_state->data_rate[plane_id];
> +			int slice_id =3D 0;
> +			u32 dbuf_mask =3D skl_ddb_dbuf_slice_mask(dev_priv, plane_alloc);
> +
> +			dbuf_mask |=3D skl_ddb_dbuf_slice_mask(dev_priv, uv_plane_alloc);
> +
> +			DRM_DEBUG_KMS("Got dbuf mask %x for pipe %c ddb %d-%d plane %d data r=
ate %d\n",
> +				      dbuf_mask, pipe_name(crtc->pipe), plane_alloc->start,
> +				      plane_alloc->end, plane_id, data_rate);
> +
> +			while (dbuf_mask !=3D 0) {
> +				if (dbuf_mask & 1) {
> +					max_bw_per_dbuf[slice_id] +=3D data_rate;
> +					max_bw =3D max(max_bw, max_bw_per_dbuf[slice_id]);
> +				}
> +				slice_id++;
> +				dbuf_mask >>=3D 1;
> +			}
> +		}
> +	}

Something like?

for_each_plane_id() {
	for_each_dbuf_slice() {
		skl_ddb_entry_for_slices(BIT(slice), &ddb_slice);
		=

		if (skl_ddb_entries_overlap(&ddb_slice, &ddb[plane_id])))
			bw[slice] +=3D data_rate;
	}
}

But this seems to borked anyway since we only consider the crtcs in the
state, and there are those ugly FIXMEs below.

I have a feeling what we want is dbuf_state, and track the bw used for =

each slice therein. Should also allow us to flag the cdclk recalculation
only when things actually change in a way that needs more cdclk, instead =

of pessimising every plane enable/disable like you do below.

> +
> +	min_cdclk =3D max_bw / 64;
> +
> +	return min_cdclk;
> +}
> +
>  void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>  			  const struct intel_crtc_state *crtc_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index a8aa7624c5aa..8a522b571c51 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -29,5 +29,6 @@ int intel_bw_init(struct drm_i915_private *dev_priv);
>  int intel_bw_atomic_check(struct intel_atomic_state *state);
>  void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>  			  const struct intel_crtc_state *crtc_state);
> +int intel_bw_calc_min_cdclk(struct intel_atomic_state *state);
>  =

>  #endif /* __INTEL_BW_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 0741d643455b..9f2de613642e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -25,6 +25,7 @@
>  #include "intel_cdclk.h"
>  #include "intel_display_types.h"
>  #include "intel_sideband.h"
> +#include "intel_bw.h"
>  =

>  /**
>   * DOC: CDCLK / RAWCLK
> @@ -1979,11 +1980,19 @@ int intel_crtc_compute_min_cdclk(const struct int=
el_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D
>  		to_i915(crtc_state->uapi.crtc->dev);
> +	struct intel_atomic_state *state =3D NULL;
>  	int min_cdclk;
>  =

>  	if (!crtc_state->hw.enable)
>  		return 0;
>  =

> +	/*
> +	 * FIXME: Unfortunately when this gets called from intel_modeset_setup_=
hw_state
> +	 * there is no intel_atomic_state at all. So lets not then use it.
> +	 */
> +	if (crtc_state->uapi.state)
> +		state =3D to_intel_atomic_state(crtc_state->uapi.state);
> +
>  	min_cdclk =3D intel_pixel_rate_to_cdclk(crtc_state);
>  =

>  	/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
> @@ -2058,6 +2067,22 @@ int intel_crtc_compute_min_cdclk(const struct inte=
l_crtc_state *crtc_state)
>  	if (IS_TIGERLAKE(dev_priv))
>  		min_cdclk =3D max(min_cdclk, (int)crtc_state->pixel_rate);
>  =

> +	/*
> +	 * Similar story as with skl_write_plane_wm and intel_enable_sagv
> +	 * - in some certain driver parts, we don't have any guarantee that
> +	 * parent exists. So we might be having a crtc_state without
> +	 * parent state.
> +	 */
> +	if (INTEL_GEN(dev_priv) >=3D 11) {
> +		if (state) {
> +			int dbuf_bw_cdclk =3D intel_bw_calc_min_cdclk(state);
> +
> +			DRM_DEBUG_KMS("DBuf bw min cdclk %d current min_cdclk %d\n",
> +				      dbuf_bw_cdclk, min_cdclk);
> +			min_cdclk =3D max(min_cdclk, dbuf_bw_cdclk);
> +		}
> +	}
> +
>  	if (min_cdclk > dev_priv->max_cdclk_freq) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index cdff3054b344..aae5521424c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14632,7 +14632,7 @@ static bool active_planes_affects_min_cdclk(struc=
t drm_i915_private *dev_priv)
>  	/* See {hsw,vlv,ivb}_plane_ratio() */
>  	return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
>  		IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
> -		IS_IVYBRIDGE(dev_priv);
> +		IS_IVYBRIDGE(dev_priv) || (INTEL_GEN(dev_priv) >=3D 11);
>  }
>  =

>  static int intel_atomic_check_planes(struct intel_atomic_state *state,
> @@ -14681,6 +14681,14 @@ static int intel_atomic_check_planes(struct inte=
l_atomic_state *state,
>  		if (hweight8(old_active_planes) =3D=3D hweight8(new_active_planes))
>  			continue;
>  =

> +		/*
> +		 * active_planes bitmask has been updated, whenever amount
> +		 * of active planes had changed we need to recalculate CDCLK
> +		 * as it depends on total bandwidth now, not only min_cdclk
> +		 * per plane.
> +		 */
> +		*need_cdclk_calc =3D true;
> +
>  		ret =3D intel_crtc_add_planes_to_state(state, crtc, new_active_planes);
>  		if (ret)
>  			return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index da64a5edae7a..3446c3ce6a4f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -311,6 +311,7 @@ intel_display_power_put_async(struct drm_i915_private=
 *i915,
>  enum dbuf_slice {
>  	DBUF_S1,
>  	DBUF_S2,
> +	DBUF_SLICE_MAX
>  };
>  =

>  #define with_intel_display_power(i915, domain, wf) \
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 8375054ba27d..15300c44d9dc 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3844,10 +3844,9 @@ icl_get_first_dbuf_slice_offset(u32 dbuf_slice_mas=
k,
>  	return offset;
>  }
>  =

> -static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
> +u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
>  {
>  	u16 ddb_size =3D INTEL_INFO(dev_priv)->ddb_size;
> -
>  	drm_WARN_ON(&dev_priv->drm, ddb_size =3D=3D 0);
>  =

>  	if (INTEL_GEN(dev_priv) < 11)
> @@ -3856,6 +3855,37 @@ static u16 intel_get_ddb_size(struct drm_i915_priv=
ate *dev_priv)
>  	return ddb_size;
>  }
>  =

> +u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
> +			    const struct skl_ddb_entry *entry)
> +{
> +	u32 slice_mask =3D 0;
> +	u16 ddb_size =3D intel_get_ddb_size(dev_priv);
> +	u16 num_supported_slices =3D INTEL_INFO(dev_priv)->num_supported_dbuf_s=
lices;
> +	u16 slice_size =3D ddb_size / num_supported_slices;
> +	u16 start_slice;
> +	u16 end_slice;
> +
> +	if (!skl_ddb_entry_size(entry))
> +		return 0;
> +
> +	start_slice =3D entry->start / slice_size;
> +	end_slice =3D (entry->end - 1) / slice_size;
> +
> +	DRM_DEBUG_KMS("ddb size %d slices %d slice size %d start slice %d end s=
lice %d\n",
> +		      ddb_size, num_supported_slices, slice_size, start_slice, end_sli=
ce);
> +
> +	/*
> +	 * Per plane DDB entry can in a really worst case be on multiple slices
> +	 * but single entry is anyway contigious.
> +	 */
> +	while (start_slice <=3D end_slice) {
> +		slice_mask |=3D 1 << start_slice;
> +		start_slice++;
> +	}
> +
> +	return slice_mask;
> +}
> +
>  static u8 skl_compute_dbuf_slices(const struct intel_crtc_state *crtc_st=
ate,
>  				  u8 active_pipes);
>  =

> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index d60a85421c5a..a9e3835927a8 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -37,6 +37,9 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
>  			       struct skl_ddb_entry *ddb_y,
>  			       struct skl_ddb_entry *ddb_uv);
>  void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv);
> +u16 intel_get_ddb_size(struct drm_i915_private *dev_priv);
> +u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
> +			    const struct skl_ddb_entry *entry);
>  void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  			      struct skl_pipe_wm *out);
>  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
