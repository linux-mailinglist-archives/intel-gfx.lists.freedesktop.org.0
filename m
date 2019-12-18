Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF91125011
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 19:05:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB9BD89FDB;
	Wed, 18 Dec 2019 18:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3C8D89FDB
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 18:05:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 10:05:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="266954415"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 18 Dec 2019 10:05:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2019 20:05:48 +0200
Date: Wed, 18 Dec 2019 20:05:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20191218180548.GS1208@intel.com>
References: <20191213130228.29509-1-stanislav.lisovskiy@intel.com>
 <20191213130228.29509-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213130228.29509-5-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v8 4/4] drm/i915: Correctly map DBUF slices
 to pipes
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

On Fri, Dec 13, 2019 at 03:02:28PM +0200, Stanislav Lisovskiy wrote:
> Added proper DBuf slice mapping to correspondent
> pipes, depending on pipe configuration as stated
> in BSpec.
> =

> v2:
>     - Remove unneeded braces
>     - Stop using macro for DBuf assignments as
>       it seems to reduce readability.
> =

> v3: Start using enabled slices mask in dev_priv
> =

> v4: Renamed "enabled_slices" used in dev_priv
>     to "enabled_dbuf_slices_mask"(Matt Roper)
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 226 ++++++++++++++++++++++++++++++--
>  1 file changed, 216 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 111bcafd6e4c..a13052b2c2ef 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3832,13 +3832,30 @@ bool intel_can_enable_sagv(struct intel_atomic_st=
ate *state)
>  	return true;
>  }
>  =

> +/*
> + * Calculate initial DBuf slice offset, based on slice size
> + * and mask(i.e if slice size is 1024 and second slice is enabled
> + * offset would be 1024)
> + */
> +static u32 icl_get_first_dbuf_slice_offset(u32 dbuf_slice_mask,
> +					   u32 slice_size, u32 ddb_size)

s/u32/unsigned int/ or something. No point in using sized types when
we're not dealing with some thing that is actually that size.

> +{
> +	u32 offset =3D 0;
> +
> +	if (!dbuf_slice_mask)
> +		return 0;
> +
> +	offset =3D (ffs(dbuf_slice_mask) - 1) * slice_size;
> +
> +	WARN_ON(offset >=3D ddb_size);
> +	return offset;
> +}
> +
>  static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv,
>  			      const struct intel_crtc_state *crtc_state,
>  			      const u64 total_data_rate,
>  			      const int num_active)
>  {
> -	struct drm_atomic_state *state =3D crtc_state->uapi.state;
> -	struct intel_atomic_state *intel_state =3D to_intel_atomic_state(state);
>  	u16 ddb_size =3D INTEL_INFO(dev_priv)->ddb_size;
>  =

>  	WARN_ON(ddb_size =3D=3D 0);
> @@ -3846,12 +3863,13 @@ static u16 intel_get_ddb_size(struct drm_i915_pri=
vate *dev_priv,
>  	if (INTEL_GEN(dev_priv) < 11)
>  		return ddb_size - 4; /* 4 blocks for bypass path allocation */
>  =

> -	intel_state->enabled_dbuf_slices_mask =3D DBUF_S1_BIT;
> -	ddb_size /=3D 2;
> -
>  	return ddb_size;
>  }
>  =

> +u32 i915_possible_dbuf_slices(struct drm_i915_private *dev_priv,
> +			      int pipe, u32 active_pipes,
> +			      const struct intel_crtc_state *crtc_state);
> +
>  static void
>  skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
>  				   const struct intel_crtc_state *crtc_state,
> @@ -3866,7 +3884,14 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915=
_private *dev_priv,
>  	u32 pipe_width =3D 0, total_width =3D 0, width_before_pipe =3D 0;
>  	enum pipe for_pipe =3D to_intel_crtc(for_crtc)->pipe;
>  	u16 ddb_size;
> +	u32 ddb_range_size;
>  	u32 i;
> +	u32 dbuf_slice_mask;
> +	u32 active_pipes;
> +	u32 offset;
> +	u32 slice_size;
> +	u32 total_slice_mask;
> +	u32 start, end;
>  =

>  	if (WARN_ON(!state) || !crtc_state->hw.active) {
>  		alloc->start =3D 0;
> @@ -3875,14 +3900,19 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i91=
5_private *dev_priv,
>  		return;
>  	}
>  =

> -	if (intel_state->active_pipe_changes)
> +	if (intel_state->active_pipe_changes) {
>  		*num_active =3D hweight8(intel_state->active_pipes);
> -	else
> +		active_pipes =3D intel_state->active_pipes;
> +	} else {
>  		*num_active =3D hweight8(dev_priv->active_pipes);
> +		active_pipes =3D dev_priv->active_pipes;
> +	}
>  =

>  	ddb_size =3D intel_get_ddb_size(dev_priv, crtc_state, total_data_rate,
>  				      *num_active);
>  =

> +	slice_size =3D ddb_size / INTEL_INFO(dev_priv)->num_supported_dbuf_slic=
es;
> +
>  	/*
>  	 * If the state doesn't change the active CRTC's or there is no
>  	 * modeset request, then there's no need to recalculate;
> @@ -3900,18 +3930,68 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i91=
5_private *dev_priv,
>  		return;
>  	}
>  =

> +	/*
> +	 * Get allowed DBuf slices for correspondent pipe and platform.
> +	 */
> +	dbuf_slice_mask =3D i915_possible_dbuf_slices(dev_priv, for_pipe,
> +						    active_pipes, crtc_state);
> +
> +	DRM_DEBUG_KMS("DBuf slice mask %x pipe %d active pipes %x\n",
> +		      dbuf_slice_mask,
> +		      for_pipe, active_pipes);
> +
> +	/*
> +	 * Figure out at which DBuf slice we start, i.e if we start at Dbuf S2
> +	 * and slice size is 1024, the offset would be 1024
> +	 */
> +	offset =3D icl_get_first_dbuf_slice_offset(dbuf_slice_mask,
> +						 slice_size, ddb_size);
> +
> +	/*
> +	 * Figure out total size of allowed DBuf slices, which is basically
> +	 * a number of allowed slices for that pipe multiplied by slice size.
> +	 * Inside of this
> +	 * range ddb entries are still allocated in proportion to display width.
> +	 */
> +	ddb_range_size =3D hweight8(dbuf_slice_mask) * slice_size;
> +
>  	/*
>  	 * Watermark/ddb requirement highly depends upon width of the
>  	 * framebuffer, So instead of allocating DDB equally among pipes
>  	 * distribute DDB based on resolution/width of the display.
>  	 */
> +	total_slice_mask =3D dbuf_slice_mask;
>  	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
>  		const struct drm_display_mode *adjusted_mode =3D
>  			&crtc_state->hw.adjusted_mode;
>  		enum pipe pipe =3D crtc->pipe;
>  		int hdisplay, vdisplay;
> +		u32 pipe_dbuf_slice_mask =3D
> +					i915_possible_dbuf_slices(dev_priv,
> +								  pipe,
> +								  active_pipes,
> +								  crtc_state);
> +
> +		if (!crtc_state->hw.active)
> +			continue;
> +
> +		/*
> +		 * According to BSpec pipe can share one dbuf slice with another
> +		 * pipes or pipe can use multiple dbufs, in both cases we
> +		 * account for other pipes only if they have exactly same mask.
> +		 * However we need to account how many slices we should enable
> +		 * in total.
> +		 */
> +		total_slice_mask |=3D pipe_dbuf_slice_mask;
>  =

> -		if (!crtc_state->hw.enable)
> +		/*
> +		 * Do not account pipes using other slice sets
> +		 * luckily as of current BSpec slice sets do not partially
> +		 * intersect(pipes share either same one slice or same slice set
> +		 * i.e no partial intersection), so it is enough to check for
> +		 * equality for now.
> +		 */
> +		if (dbuf_slice_mask !=3D pipe_dbuf_slice_mask)
>  			continue;
>  =

>  		drm_mode_get_hv_timing(adjusted_mode, &hdisplay, &vdisplay);
> @@ -3923,8 +4003,19 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915=
_private *dev_priv,
>  			pipe_width =3D hdisplay;
>  	}
>  =

> -	alloc->start =3D ddb_size * width_before_pipe / total_width;
> -	alloc->end =3D ddb_size * (width_before_pipe + pipe_width) / total_widt=
h;
> +	intel_state->enabled_dbuf_slices_mask =3D total_slice_mask;
> +
> +	start =3D ddb_range_size * width_before_pipe / total_width;
> +	end =3D ddb_range_size * (width_before_pipe + pipe_width) / total_width;
> +
> +	alloc->start =3D offset + start;
> +	alloc->end =3D offset + end;
> +
> +	DRM_DEBUG_KMS("Pipe %d ddb %d-%d\n", for_pipe,
> +		      alloc->start, alloc->end);
> +	DRM_DEBUG_KMS("Enabled ddb slices mask %x num supported %d\n",
> +		      intel_state->enabled_dbuf_slices_mask,
> +		      INTEL_INFO(dev_priv)->num_supported_dbuf_slices);
>  }

That function really is quite the monster. Probably needs to be split up
into sensible chunks... later.

>  =

>  static int skl_compute_wm_params(const struct intel_crtc_state *crtc_sta=
te,
> @@ -4094,6 +4185,121 @@ skl_plane_downscale_amount(const struct intel_crt=
c_state *crtc_state,
>  	return mul_fixed16(downscale_w, downscale_h);
>  }
>  =

> +struct dbuf_slice_conf_entry {
> +	u32 active_pipes;
> +	u32 dbuf_mask[I915_MAX_PIPES];

u8 will do for everything.

> +};
> +
> +/*
> + * Table taken from Bspec 12716
> + * Pipes do have some preferred DBuf slice affinity,
> + * plus there are some hardcoded requirements on how
> + * those should be distributed for multipipe scenarios.
> + * For more DBuf slices algorithm can get even more messy
> + * and less readable, so decided to use a table almost
> + * as is from BSpec itself - that way it is at least easier
> + * to compare, change and check.
> + */
> +static struct dbuf_slice_conf_entry icl_allowed_dbufs[] =3D {
> +	{ BIT(PIPE_A), { DBUF_S1_BIT, 0, 0, 0 } },

Still don't like that DBUF_S1_BIT. I still think it should be an
enum dbuf_slice + explcit BIT(DBUF_S1) where needed.

And please use named initializers instead of sprinkling zeroes.
IMO this should just look something like:

	{ .active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B),
	  .dbuf_slices =3D { [PIPE_A] =3D BIT(DBUF_S1),
	  		   [PIPE_B] =3D BIT(DBUF_S2),
			 },
	},

> +	{ BIT(PIPE_B), { 0, DBUF_S1_BIT, 0, 0 } },
> +	{ BIT(PIPE_C), { 0, 0, DBUF_S2_BIT, 0 } },
> +	{ BIT(PIPE_A) | BIT(PIPE_B), { DBUF_S1_BIT, DBUF_S2_BIT, 0, 0 } },
> +	{ BIT(PIPE_A) | BIT(PIPE_C), { DBUF_S1_BIT, 0, DBUF_S2_BIT, 0 } },
> +	{ BIT(PIPE_B) | BIT(PIPE_C), { 0, DBUF_S1_BIT, DBUF_S2_BIT, 0 } },
> +	{ BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +		{ DBUF_S1_BIT, DBUF_S1_BIT, DBUF_S2_BIT, 0 } }
> +};
> +
> +/*
> + * Table taken from Bspec 49255
> + * Pipes do have some preferred DBuf slice affinity,
> + * plus there are some hardcoded requirements on how
> + * those should be distributed for multipipe scenarios.
> + * For more DBuf slices algorithm can get even more messy
> + * and less readable, so decided to use a table almost
> + * as is from BSpec itself - that way it is at least easier
> + * to compare, change and check.
> + */
> +static struct dbuf_slice_conf_entry tgl_allowed_dbufs[] =3D {
> +	{ BIT(PIPE_A), { DBUF_S1_BIT | DBUF_S2_BIT, 0, 0, 0 } },
> +	{ BIT(PIPE_B), { 0, DBUF_S1_BIT | DBUF_S2_BIT, 0, 0 } },
> +	{ BIT(PIPE_C), { 0, 0, DBUF_S1_BIT | DBUF_S2_BIT, 0 } },
> +	{ BIT(PIPE_D), { 0, 0, 0, DBUF_S1_BIT | DBUF_S2_BIT } },
> +	{ BIT(PIPE_A) | BIT(PIPE_B), { DBUF_S2_BIT, DBUF_S1_BIT, 0, 0 } },
> +	{ BIT(PIPE_A) | BIT(PIPE_C), { DBUF_S1_BIT, 0, DBUF_S2_BIT, 0 } },
> +	{ BIT(PIPE_A) | BIT(PIPE_D), { DBUF_S1_BIT, 0, 0, DBUF_S2_BIT } },
> +	{ BIT(PIPE_B) | BIT(PIPE_C), { 0, DBUF_S1_BIT, DBUF_S2_BIT, 0 } },
> +	{ BIT(PIPE_B) | BIT(PIPE_D), { 0, DBUF_S1_BIT, 0, DBUF_S2_BIT } },
> +	{ BIT(PIPE_C) | BIT(PIPE_D), { 0, 0, DBUF_S2_BIT, DBUF_S2_BIT } },

I believe pipe C should use S1 here.

> +	{ BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +		{ DBUF_S1_BIT, DBUF_S1_BIT, DBUF_S2_BIT, 0 } },
> +	{ BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_D),
> +		{ DBUF_S1_BIT, DBUF_S1_BIT, 0, DBUF_S2_BIT } },
> +	{ BIT(PIPE_A) | BIT(PIPE_C) | BIT(PIPE_D),
> +		{ DBUF_S1_BIT, 0, DBUF_S2_BIT, DBUF_S2_BIT } },
> +	{ BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> +		{ 0, DBUF_S1_BIT, DBUF_S2_BIT, DBUF_S2_BIT } },
> +	{ BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> +		{ DBUF_S1_BIT, DBUF_S1_BIT, DBUF_S2_BIT, DBUF_S2_BIT } },
> +};
> +
> +static u32 i915_find_pipe_conf(int pipe,

enum pipe pipe

> +			       u32 active_pipes,
> +			       const struct dbuf_slice_conf_entry *dbuf_slices,
> +			       int size)

Could just add a sentinel to the end of the arrays and avoid this
'size' stuff.

The function name is still very confusing. icl_compute_dbuf_slices()
or something perhaps. Or even without a prefix since it's static
anyway.

> +{
> +	int i;
> +
> +	for (i =3D 0; i < size; i++) {
> +		if (dbuf_slices[i].active_pipes =3D=3D active_pipes)
> +			return dbuf_slices[i].dbuf_mask[pipe];
> +	}
> +	return 0;
> +}
> +
> +/*
> + * This function finds an entry with same enabled pipe configuration and
> + * returns correspondent DBuf slice mask as stated in BSpec for particul=
ar
> + * platform.
> + */
> +static u32 icl_possible_dbuf_slices(int pipe,
> +				    u32 active_pipes,
> +				    const struct intel_crtc_state *crtc_state)
> +{
> +	return i915_find_pipe_conf(pipe, active_pipes,
> +				   icl_allowed_dbufs,
> +				   ARRAY_SIZE(icl_allowed_dbufs));
> +}
> +
> +static u32 tgl_possible_dbuf_slices(int pipe,
> +				    u32 active_pipes,
> +				    const struct intel_crtc_state *crtc_state)
> +{
> +	return i915_find_pipe_conf(pipe, active_pipes,
> +				   tgl_allowed_dbufs,
> +				   ARRAY_SIZE(tgl_allowed_dbufs));
> +}

These wrappers aren't really doing anything for us.

> +
> +u32 i915_possible_dbuf_slices(struct drm_i915_private *dev_priv,

dev_priv and pipe are redundant parameters. Both
can be extracted from crtc_state. I would put crtc_state as the first
parameter. Matches common practice more closely.

s/i915/skl/ in the function name.

> +			      int pipe, u32 active_pipes,
> +			      const struct intel_crtc_state *crtc_state)
> +{
> +	if (IS_GEN(dev_priv, 11))
> +		return icl_possible_dbuf_slices(pipe,
> +						active_pipes,
> +						crtc_state);
> +	else if (IS_GEN(dev_priv, 12))
> +		return tgl_possible_dbuf_slices(pipe,
> +						active_pipes,
> +						crtc_state);

The established convention is to go from new platforms
to old platforms, if possible.

> +	/*
> +	 * For anything else just return one slice yet.
> +	 * Should be extended for other platforms.
> +	 */
> +	return DBUF_S1_BIT;
> +}
> +
>  static u64
>  skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
>  			     const struct intel_plane_state *plane_state,
> -- =

> 2.17.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
