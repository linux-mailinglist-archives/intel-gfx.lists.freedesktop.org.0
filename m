Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF11F141171
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 20:10:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F30246F8C2;
	Fri, 17 Jan 2020 19:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4531E6F8C2
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 19:10:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 11:08:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,331,1574150400"; d="scan'208";a="214581230"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 17 Jan 2020 11:07:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jan 2020 21:07:57 +0200
Date: Fri, 17 Jan 2020 21:07:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200117190757.GW13686@intel.com>
References: <20200117095026.1113-1-stanislav.lisovskiy@intel.com>
 <20200117095026.1113-6-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117095026.1113-6-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v13 5/5] drm/i915: Correctly map DBUF slices
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

On Fri, Jan 17, 2020 at 11:50:26AM +0200, Stanislav Lisovskiy wrote:
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

> v5: - Removed redundant parameters from
>       intel_get_ddb_size function.(Matt Roper)
>     - Made i915_possible_dbuf_slices static(Matt Roper)
>     - Renamed total_width into total_width_in_range
>       so that it now reflects that this is not
>       a total pipe width but the one in current
>       dbuf slice allowed range for pipe.(Matt Roper)
>     - Removed 4th pipe for ICL in DBuf assignment
>       table(Matt Roper)
>     - Fixed wrong DBuf slice in DBuf table for TGL
>       (Matt Roper)
>     - Added comment regarding why we currently not
>       using pipe ratio for DBuf assignment for ICL
> =

> v6: - Changed u32 to unsigned int in
>       icl_get_first_dbuf_slice_offset function signature
>       (Ville Syrj=E4l=E4)
>     - Changed also u32 to u8 in dbuf slice mask structure
>       (Ville Syrj=E4l=E4)
>     - Switched from DBUF_S1_BIT to enum + explicit
>       BIT(DBUF_S1) access(Ville Syrj=E4l=E4)
>     - Switched to named initializers in DBuf assignment
>       arrays(Ville Syrj=E4l=E4)
>     - DBuf assignment arrays now use autogeneration tool
>       from
>       https://patchwork.freedesktop.org/series/70493/
>       to avoid typos.
>     - Renamed i915_find_pipe_conf to *_compute_dbuf_slices
>       (Ville Syrj=E4l=E4)
>     - Changed platforms ordering in skl_compute_dbuf_slices
>       to be from newest to oldest(Ville Syrj=E4l=E4)
> =

> v7: - Now ORing assigned DBuf slice config always with DBUF_S1
>       because slice 1 has to be constantly powered on.
>       (Ville Syrj=E4l=E4)
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 395 ++++++++++++++++++++++++++++++--
>  1 file changed, 377 insertions(+), 18 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index b4b291d4244b..b9cfbbeaef8b 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3856,13 +3856,29 @@ bool intel_can_enable_sagv(struct intel_atomic_st=
ate *state)
>  	return true;
>  }
>  =

> -static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv,
> -			      const struct intel_crtc_state *crtc_state,
> -			      const u64 total_data_rate,
> -			      const int num_active)
> +/*
> + * Calculate initial DBuf slice offset, based on slice size
> + * and mask(i.e if slice size is 1024 and second slice is enabled
> + * offset would be 1024)
> + */
> +static unsigned int
> +icl_get_first_dbuf_slice_offset(u32 dbuf_slice_mask,
> +				u32 slice_size,
> +				u32 ddb_size)
> +{
> +	unsigned int offset =3D 0;
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
> +static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
>  {
> -	struct drm_atomic_state *state =3D crtc_state->uapi.state;
> -	struct intel_atomic_state *intel_state =3D to_intel_atomic_state(state);
>  	u16 ddb_size =3D INTEL_INFO(dev_priv)->ddb_size;
>  =

>  	WARN_ON(ddb_size =3D=3D 0);
> @@ -3870,12 +3886,12 @@ static u16 intel_get_ddb_size(struct drm_i915_pri=
vate *dev_priv,
>  	if (INTEL_GEN(dev_priv) < 11)
>  		return ddb_size - 4; /* 4 blocks for bypass path allocation */
>  =

> -	intel_state->enabled_dbuf_slices_mask =3D BIT(DBUF_S1);
> -	ddb_size /=3D 2;
> -
>  	return ddb_size;
>  }
>  =

> +static u8 skl_compute_dbuf_slices(const struct intel_crtc_state *crtc_st=
ate,
> +				  u32 active_pipes);
> +
>  static void
>  skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
>  				   const struct intel_crtc_state *crtc_state,
> @@ -3887,10 +3903,17 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i91=
5_private *dev_priv,
>  	struct intel_atomic_state *intel_state =3D to_intel_atomic_state(state);
>  	struct drm_crtc *for_crtc =3D crtc_state->uapi.crtc;
>  	const struct intel_crtc *crtc;
> -	u32 pipe_width =3D 0, total_width =3D 0, width_before_pipe =3D 0;
> +	u32 pipe_width =3D 0, total_width_in_range =3D 0, width_before_pipe =3D=
 0;
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
> @@ -3900,12 +3923,15 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i91=
5_private *dev_priv,
>  	}
>  =

>  	if (intel_state->active_pipe_changes)
> -		*num_active =3D hweight8(intel_state->active_pipes);
> +		active_pipes =3D intel_state->active_pipes;
>  	else
> -		*num_active =3D hweight8(dev_priv->active_pipes);
> +		active_pipes =3D dev_priv->active_pipes;
> +
> +	*num_active =3D hweight8(active_pipes);
> +
> +	ddb_size =3D intel_get_ddb_size(dev_priv);
>  =

> -	ddb_size =3D intel_get_ddb_size(dev_priv, crtc_state, total_data_rate,
> -				      *num_active);
> +	slice_size =3D ddb_size / INTEL_INFO(dev_priv)->num_supported_dbuf_slic=
es;
>  =

>  	/*
>  	 * If the state doesn't change the active CRTC's or there is no
> @@ -3924,22 +3950,71 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i91=
5_private *dev_priv,
>  		return;
>  	}
>  =

> +	/*
> +	 * Get allowed DBuf slices for correspondent pipe and platform.
> +	 */
> +	dbuf_slice_mask =3D skl_compute_dbuf_slices(crtc_state, active_pipes);
> +
> +	DRM_DEBUG_KMS("DBuf slice mask %x pipe %d active pipes %x\n",
> +		      dbuf_slice_mask,
> +		      for_pipe, active_pipes);

pipe_name()

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
> +		u32 pipe_dbuf_slice_mask;
>  =

> -		if (!crtc_state->hw.enable)
> +		if (!crtc_state->hw.active)
> +			continue;
> +
> +		pipe_dbuf_slice_mask =3D skl_compute_dbuf_slices(crtc_state,
> +							       active_pipes);
> +
> +		/*
> +		 * According to BSpec pipe can share one dbuf slice with another
> +		 * pipes or pipe can use multiple dbufs, in both cases we
> +		 * account for other pipes only if they have exactly same mask.
> +		 * However we need to account how many slices we should enable
> +		 * in total.
> +		 */
> +		total_slice_mask |=3D pipe_dbuf_slice_mask;
> +
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
> -		total_width +=3D hdisplay;
> +
> +		total_width_in_range +=3D hdisplay;

Not really sure why the rename. Doesn't really seem to add anything.
Also 'width_before_pipe' doesn't have any 'in_range' suffix either
so not sure what's going on.

>  =

>  		if (pipe < for_pipe)
>  			width_before_pipe +=3D hdisplay;
> @@ -3947,8 +4022,31 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915=
_private *dev_priv,
>  			pipe_width =3D hdisplay;
>  	}
>  =

> -	alloc->start =3D ddb_size * width_before_pipe / total_width;
> -	alloc->end =3D ddb_size * (width_before_pipe + pipe_width) / total_widt=
h;
> +	/*
> +	 * FIXME(how?):
> +	 * It looks ridiculous. It looks stupid. But currently we need to OR it
> +	 * with DBUF_S1 bit always, during core_init/uninit, we have to always
> +	 * heve powered on 1st DBuf slice, according to BSpec(!).
> +	 * So for this reason icl/skl_dbuf_enable always sets it on.
> +	 * But we now have a unified assertion in gen9_disable_dc_states, which
> +	 * is supposed to check if the actual state matches state in dev_priv.
> +	 * Thus we always going to have a mismatch! So currently we are going
> +	 * to OR it, keep DBUF_S1 constantly ON even when this is not needed..
> +	 */

Could be shortened to just something less wordy like:
/*
 * FIXME: For now we always enable slice S1 as per
 * the Bspec display initialization sequence.
 */


> +	intel_state->enabled_dbuf_slices_mask =3D total_slice_mask | BIT(DBUF_S=
1);
> +
> +	start =3D ddb_range_size * width_before_pipe / total_width_in_range;
> +	end =3D ddb_range_size *
> +		(width_before_pipe + pipe_width) / total_width_in_range;
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
>  =

>  static int skl_compute_wm_params(const struct intel_crtc_state *crtc_sta=
te,
> @@ -4119,6 +4217,267 @@ skl_plane_downscale_amount(const struct intel_crt=
c_state *crtc_state,
>  	return mul_fixed16(downscale_w, downscale_h);
>  }
>  =

> +struct dbuf_slice_conf_entry {
> +	u8 active_pipes;
> +	u8 dbuf_mask[I915_MAX_PIPES];
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
> +static struct dbuf_slice_conf_entry icl_allowed_dbufs[] =3D
> +/* Autogenerated with igt/tools/intel_dbuf_map tool: */
> +{
> +	{
> +		.active_pipes =3D BIT(PIPE_A),
> +		{
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2)
> +		}

Earlier review comments were ignored it seems?

Also, weren't we going to not use two slices on icl until we get
the ratio mess clarified? Or did I miss something somewhere where we
throw away the second slice?

> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B),
> +		{
> +			[PIPE_B] =3D BIT(DBUF_S1) | BIT(DBUF_S2)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B),
> +		{
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_B] =3D BIT(DBUF_S2)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_C),
> +		{
> +			[PIPE_C] =3D BIT(DBUF_S2) | BIT(DBUF_S1)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C),
> +		{
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C),
> +		{
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +		{
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2)
> +		}
> +	},
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
> +static struct dbuf_slice_conf_entry tgl_allowed_dbufs[] =3D
> +/* Autogenerated with igt/tools/intel_dbuf_map tool: */
> +{
> +	{
> +		.active_pipes =3D BIT(PIPE_A),
> +		{
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B),
> +		{
> +			[PIPE_B] =3D BIT(DBUF_S1) | BIT(DBUF_S2)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B),
> +		{
> +			[PIPE_A] =3D BIT(DBUF_S2),
> +			[PIPE_B] =3D BIT(DBUF_S1)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_C),
> +		{
> +			[PIPE_C] =3D BIT(DBUF_S2) | BIT(DBUF_S1)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C),
> +		{
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C),
> +		{
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +		{
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_D),
> +		{
> +			[PIPE_D] =3D BIT(DBUF_S2) | BIT(DBUF_S1)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_D),
> +		{
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_D] =3D BIT(DBUF_S2)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_D),
> +		{
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_D] =3D BIT(DBUF_S2)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_D),
> +		{
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_D] =3D BIT(DBUF_S2)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_C) | BIT(PIPE_D),
> +		{
> +			[PIPE_C] =3D BIT(DBUF_S1),
> +			[PIPE_D] =3D BIT(DBUF_S2)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C) | BIT(PIPE_D),
> +		{
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2),
> +			[PIPE_D] =3D BIT(DBUF_S2)
> +		}
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> +		{
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2),
> +			[PIPE_D] =3D BIT(DBUF_S2)
> +		}
> +	},
> +	{
> +		.active_pipes =3D
> +			BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> +		{
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2),
> +			[PIPE_D] =3D BIT(DBUF_S2)
> +		}
> +	},
> +};
> +
> +static u8 compute_dbuf_slices(enum pipe pipe,
> +			      u32 active_pipes,
> +			      const struct dbuf_slice_conf_entry *dbuf_slices,
> +			      int size)
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
> +static u32 icl_compute_dbuf_slices(enum pipe pipe,
> +				   u32 active_pipes,
> +				   const struct intel_crtc_state *crtc_state)
> +{
> +	/*
> +	 * FIXME: For ICL this is still a bit unclear as prev BSpec revision
> +	 * required calculating "pipe ratio" in order to determine
> +	 * if one or two slices can be used for single pipe configurations
> +	 * as additional constraint to the existing table.
> +	 * However based on recent info, it should be not "pipe ratio"
> +	 * but rather ratio between pixel_rate and cdclk with additional
> +	 * constants, so for now we are using only table until this is
> +	 * clarified.

So I guess this is trying to explain the ratio thing. But it doesn't
answer my question why we are now going to use two slices per pipe
instead of sticking to the current once slice approach. IMO we
should stick to one slice here for now since we know that it works
currently.

> Also this is the reason why crtc_state param is
> +	 * still here - we will need it once those additional constraints
> +	 * pop up.

Please don't add unused function arguments. It can be trivially added if
and when needed.

> +	 */
> +	return compute_dbuf_slices(pipe, active_pipes,
> +				   icl_allowed_dbufs,
> +				   ARRAY_SIZE(icl_allowed_dbufs));
> +}
> +
> +static u32 tgl_compute_dbuf_slices(enum pipe pipe,
> +				   u32 active_pipes,
> +				   const struct intel_crtc_state *crtc_state)
> +{
> +	return compute_dbuf_slices(pipe, active_pipes,
> +				   tgl_allowed_dbufs,
> +				   ARRAY_SIZE(tgl_allowed_dbufs));
> +}
> +
> +static u8 skl_compute_dbuf_slices(const struct intel_crtc_state *crtc_st=
ate,
> +				  u32 active_pipes)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
> +
> +	if (IS_GEN(dev_priv, 12))
> +		return tgl_compute_dbuf_slices(pipe,
> +					       active_pipes,
> +					       crtc_state);
> +	else if (IS_GEN(dev_priv, 11))
> +		return icl_compute_dbuf_slices(pipe,
> +					       active_pipes,
> +					       crtc_state);
> +	/*
> +	 * For anything else just return one slice yet.
> +	 * Should be extended for other platforms.
> +	 */
> +	return BIT(DBUF_S1);
> +}
> +
>  static u64
>  skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
>  			     const struct intel_plane_state *plane_state,
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
