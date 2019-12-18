Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C02D3124FF8
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 19:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F59889B9F;
	Wed, 18 Dec 2019 18:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F3F89B9F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 18:00:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 10:00:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="212768226"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 18 Dec 2019 10:00:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2019 20:00:46 +0200
Date: Wed, 18 Dec 2019 20:00:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20191218180046.GQ1208@intel.com>
References: <20191213130228.29509-1-stanislav.lisovskiy@intel.com>
 <20191213130228.29509-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213130228.29509-4-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v8 3/4] drm/i915: Manipulate DBuf slices
 properly
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

On Fri, Dec 13, 2019 at 03:02:27PM +0200, Stanislav Lisovskiy wrote:
> Start manipulating DBuf slices as a mask,
> but not as a total number, as current approach
> doesn't give us full control on all combinations
> of slices, which we might need(like enabling S2
> only can't enabled by setting enabled_slices=3D1).
> =

> Removed wrong code from intel_get_ddb_size as
> it doesn't match to BSpec. For now still just
> use DBuf slice until proper algorithm is implemented.
> =

> Other minor code refactoring to get prepared
> for major DBuf assignment changes landed:
> - As now enabled slices contain a mask
>   we still need some value which should
>   reflect how much DBuf slices are supported
>   by the platform, now device info contains
>   num_supported_dbuf_slices.
> - Removed unneeded assertion as we are now
>   manipulating slices in a more proper way.
> =

> v2: Start using enabled_slices in dev_priv
> =

> v3: "enabled_slices" is now "enabled_dbuf_slices_mask",
>     as this now sits in dev_priv independently.
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  23 ++--
>  .../drm/i915/display/intel_display_power.c    | 100 ++++++++----------
>  .../drm/i915/display/intel_display_power.h    |   5 +
>  .../drm/i915/display/intel_display_types.h    |   2 +-
>  drivers/gpu/drm/i915/i915_drv.h               |   2 +-
>  drivers/gpu/drm/i915/i915_pci.c               |   6 +-
>  drivers/gpu/drm/i915/intel_device_info.h      |   1 +
>  drivers/gpu/drm/i915/intel_pm.c               |  49 +++------
>  drivers/gpu/drm/i915/intel_pm.h               |   2 +-
>  9 files changed, 84 insertions(+), 106 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 0e09d0c23b1d..42a0ea540d4f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13359,12 +13359,12 @@ static void verify_wm_state(struct intel_crtc *=
crtc,
>  =

>  	skl_pipe_ddb_get_hw_state(crtc, hw->ddb_y, hw->ddb_uv);
>  =

> -	hw_enabled_slices =3D intel_enabled_dbuf_slices_num(dev_priv);
> +	hw_enabled_slices =3D intel_enabled_dbuf_slices_mask(dev_priv);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 11 &&
> -	    hw_enabled_slices !=3D dev_priv->enabled_dbuf_slices_num)
> -		DRM_ERROR("mismatch in DBUF Slices (expected %u, got %u)\n",
> -			  dev_priv->enabled_dbuf_slices_num,
> +	    hw_enabled_slices !=3D dev_priv->enabled_dbuf_slices_mask)
> +		DRM_ERROR("mismatch in DBUF Slices (expected %x, got %x)\n",
> +			  dev_priv->enabled_dbuf_slices_mask,
>  			  hw_enabled_slices);
>  =

>  	/* planes */
> @@ -14549,22 +14549,23 @@ static void intel_update_trans_port_sync_crtcs(=
struct intel_crtc *crtc,
>  static void icl_dbuf_slice_pre_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_num;
> -	u8 required_slices =3D state->enabled_dbuf_slices_num;
> +	u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_mask;
> +	u8 required_slices =3D state->enabled_dbuf_slices_mask;
> +	u8 slices_union =3D hw_enabled_slices | required_slices;
>  =

>  	/* If 2nd DBuf slice required, enable it here */
> -	if (INTEL_GEN(dev_priv) >=3D 11 && required_slices > hw_enabled_slices)
> -		icl_dbuf_slices_update(dev_priv, required_slices);
> +	if (INTEL_GEN(dev_priv) >=3D 11 && required_slices !=3D hw_enabled_slic=
es)
> +		icl_dbuf_slices_update(dev_priv, slices_union);
>  }
>  =

>  static void icl_dbuf_slice_post_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_num;
> -	u8 required_slices =3D state->enabled_dbuf_slices_num;
> +	u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_mask;
> +	u8 required_slices =3D state->enabled_dbuf_slices_mask;
>  =

>  	/* If 2nd DBuf slice is no more required disable it */
> -	if (INTEL_GEN(dev_priv) >=3D 11 && required_slices < hw_enabled_slices)
> +	if (INTEL_GEN(dev_priv) >=3D 11 && required_slices !=3D hw_enabled_slic=
es)

I would rename the variables to old_slices vs. new_slices or something
like that. Would match the common naming pattern we use extensively all
over.

>  		icl_dbuf_slices_update(dev_priv, required_slices);
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index b8983422a882..ba384a5315f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1031,15 +1031,6 @@ static bool gen9_dc_off_power_well_enabled(struct =
drm_i915_private *dev_priv,
>  		(I915_READ(DC_STATE_EN) & DC_STATE_EN_UPTO_DC5_DC6_MASK) =3D=3D 0);
>  }
>  =

> -static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
> -{
> -	u32 tmp =3D I915_READ(DBUF_CTL);
> -
> -	WARN((tmp & (DBUF_POWER_STATE | DBUF_POWER_REQUEST)) !=3D
> -	     (DBUF_POWER_STATE | DBUF_POWER_REQUEST),
> -	     "Unexpected DBuf power power state (0x%08x)\n", tmp);
> -}
> -
>  static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_cdclk_state cdclk_state =3D {};
> @@ -1055,8 +1046,6 @@ static void gen9_disable_dc_states(struct drm_i915_=
private *dev_priv)
>  	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
>  	WARN_ON(intel_cdclk_needs_modeset(&dev_priv->cdclk.hw, &cdclk_state));
>  =

> -	gen9_assert_dbuf_enabled(dev_priv);

Why are you removing these? I think you still left the code in place to
power up the first slice uncoditionally. Also not sure if DMC just
powers that sucker up regardless. I think we should try it and if DMC
isn't insane we should turn all the slices off when we don't need them.

> -
>  	if (IS_GEN9_LP(dev_priv))
>  		bxt_verify_ddi_phy_power_wells(dev_priv);
>  =

> @@ -4254,72 +4243,71 @@ static void gen9_dbuf_disable(struct drm_i915_pri=
vate *dev_priv)
>  	intel_dbuf_slice_set(dev_priv, DBUF_CTL, false);
>  }
>  =

> -static u8 intel_dbuf_max_slices(struct drm_i915_private *dev_priv)
> +int intel_dbuf_max_slices(struct drm_i915_private *dev_priv)
>  {
> -	if (INTEL_GEN(dev_priv) < 11)
> -		return 1;
> -	return 2;
> +	return INTEL_INFO(dev_priv)->num_supported_dbuf_slices;
> +}

I don't see this being used anywhere outside this file in this patch.
So why is it being made non-static? Also it's rather redundant now
and could just be inlined into the single caller we have left.

> +
> +void icl_program_dbuf_slices(struct drm_i915_private *dev_priv)
> +{
> +	const u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_mask;

This whole function is just a one line wrapper now that does nothing
special. So I would not even add it.

> +
> +	icl_dbuf_slices_update(dev_priv, hw_enabled_slices);
>  }
>  =

>  void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
>  			    u8 req_slices)
>  {
> -	const u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_num;
> -	bool ret;
> +	int i;
> +	int max_slices =3D intel_dbuf_max_slices(dev_priv);
>  =

> -	if (req_slices > intel_dbuf_max_slices(dev_priv)) {
> +	if (hweight8(req_slices) > intel_dbuf_max_slices(dev_priv)) {

You already have max_slices in a variable.

>  		DRM_ERROR("Invalid number of dbuf slices requested\n");

Can't happen unless we messed up in state calculation. We should
drop the check or just WARN and keep going. But that's probably
material for another patch.

>  		return;
>  	}
>  =

> -	if (req_slices =3D=3D hw_enabled_slices || req_slices =3D=3D 0)
> -		return;
> +	DRM_DEBUG_KMS("Updating dbuf slices to %x\n", req_slices);

Pls use 0x%x so it's obvious it's hex.

>  =

> -	if (req_slices > hw_enabled_slices)
> -		ret =3D intel_dbuf_slice_set(dev_priv, DBUF_CTL_S2, true);
> -	else
> -		ret =3D intel_dbuf_slice_set(dev_priv, DBUF_CTL_S2, false);
> +	for (i =3D 0; i < max_slices; i++) {
> +		int slice_bit =3D BIT(i);
> +		bool slice_set =3D (slice_bit & req_slices) !=3D 0;
> +
> +		switch (slice_bit) {
> +		case DBUF_S1_BIT:
> +			intel_dbuf_slice_set(dev_priv,
> +					     DBUF_CTL_S1,
> +					     slice_set);
> +			break;
> +		case DBUF_S2_BIT:
> +			intel_dbuf_slice_set(dev_priv,
> +					     DBUF_CTL_S2,
> +					     slice_set);
> +			break;
> +		default:
> +			MISSING_CASE(slice_bit);
> +		}

Still can be just:
	intel_dbuf_slice_set(dev_priv, DBUF_CTL(i), =

			     req_slices & BIT(i));


> +	}
>  =

> -	if (ret)
> -		dev_priv->enabled_dbuf_slices_num =3D req_slices;
> +	dev_priv->enabled_dbuf_slices_mask =3D req_slices;
>  }
>  =

>  static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
>  {
> -	I915_WRITE(DBUF_CTL_S1, I915_READ(DBUF_CTL_S1) | DBUF_POWER_REQUEST);
> -	I915_WRITE(DBUF_CTL_S2, I915_READ(DBUF_CTL_S2) | DBUF_POWER_REQUEST);
> -	POSTING_READ(DBUF_CTL_S2);
> -
> -	udelay(10);
> -
> -	if (!(I915_READ(DBUF_CTL_S1) & DBUF_POWER_STATE) ||
> -	    !(I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE))
> -		DRM_ERROR("DBuf power enable timeout\n");
> -	else
> -		/*
> -		 * FIXME: for now pretend that we only have 1 slice, see
> -		 * intel_enabled_dbuf_slices_num().
> -		 */
> -		dev_priv->enabled_dbuf_slices_num =3D 1;
> +	/*
> +	 * Just power up 1 slice, we will
> +	 * figure out later which slices we have and what we need.
> +	 */
> +	dev_priv->enabled_dbuf_slices_mask =3D DBUF_S1_BIT;
> +	icl_program_dbuf_slices(dev_priv);
>  }
>  =

>  static void icl_dbuf_disable(struct drm_i915_private *dev_priv)
>  {
> -	I915_WRITE(DBUF_CTL_S1, I915_READ(DBUF_CTL_S1) & ~DBUF_POWER_REQUEST);
> -	I915_WRITE(DBUF_CTL_S2, I915_READ(DBUF_CTL_S2) & ~DBUF_POWER_REQUEST);
> -	POSTING_READ(DBUF_CTL_S2);
> -
> -	udelay(10);
> -
> -	if ((I915_READ(DBUF_CTL_S1) & DBUF_POWER_STATE) ||
> -	    (I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE))
> -		DRM_ERROR("DBuf power disable timeout!\n");
> -	else
> -		/*
> -		 * FIXME: for now pretend that the first slice is always
> -		 * enabled, see intel_enabled_dbuf_slices_num().
> -		 */
> -		dev_priv->enabled_dbuf_slices_num =3D 1;
> +	/*
> +	 * Disable all slices
> +	 */
> +	dev_priv->enabled_dbuf_slices_mask =3D 0;
> +	icl_program_dbuf_slices(dev_priv);
>  }
>  =

>  static void icl_mbus_init(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index 1da04f3e0fb3..0d9f87607eac 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -311,8 +311,13 @@ intel_display_power_put_async(struct drm_i915_privat=
e *i915,
>  	for ((wf) =3D intel_display_power_get((i915), (domain)); (wf); \
>  	     intel_display_power_put_async((i915), (domain), (wf)), (wf) =3D 0)
>  =

> +#define DBUF_S1_BIT			BIT(0)
> +#define DBUF_S2_BIT			BIT(1)
> +
>  void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
>  			    u8 req_slices);
> +void icl_program_dbuf_slices(struct drm_i915_private *dev_priv);
> +int intel_dbuf_max_slices(struct drm_i915_private *dev_priv);
>  =

>  void chv_phy_powergate_lanes(struct intel_encoder *encoder,
>  			     bool override, unsigned int mask);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 70e65c2d525d..ba2e41a03051 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -518,7 +518,7 @@ struct intel_atomic_state {
>  	struct skl_ddb_values wm_results;
>  =

>  	/* Number of enabled DBuf slices */
> -	u8 enabled_dbuf_slices_num;
> +	u8 enabled_dbuf_slices_mask;
>  =

>  	struct i915_sw_fence commit_ready;
>  =

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 7a2d9fa5a9a6..ec4b9e3cef79 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1210,7 +1210,7 @@ struct drm_i915_private {
>  		bool distrust_bios_wm;
>  	} wm;
>  =

> -	u8 enabled_dbuf_slices_num; /* GEN11 has configurable 2 slices */
> +	u8 enabled_dbuf_slices_mask; /* GEN11 has configurable 2 slices */
>  =

>  	struct dram_info {
>  		bool valid;
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 877560b1031e..2068aac5ab6a 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -614,7 +614,8 @@ static const struct intel_device_info intel_cherryvie=
w_info =3D {
>  	.has_gt_uc =3D 1, \
>  	.display.has_hdcp =3D 1, \
>  	.display.has_ipc =3D 1, \
> -	.ddb_size =3D 896
> +	.ddb_size =3D 896, \
> +	.num_supported_dbuf_slices =3D 1
>  =

>  #define SKL_PLATFORM \
>  	GEN9_FEATURES, \
> @@ -649,6 +650,7 @@ static const struct intel_device_info intel_skylake_g=
t4_info =3D {
>  #define GEN9_LP_FEATURES \
>  	GEN(9), \
>  	.is_lp =3D 1, \
> +	.num_supported_dbuf_slices =3D 1, \
>  	.display.has_hotplug =3D 1, \
>  	.engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
>  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
> @@ -737,6 +739,7 @@ static const struct intel_device_info intel_coffeelak=
e_gt3_info =3D {
>  	GEN9_FEATURES, \
>  	GEN(10), \
>  	.ddb_size =3D 1024, \
> +	.num_supported_dbuf_slices =3D 1, \
>  	.display.has_dsc =3D 1, \
>  	.has_coherent_ggtt =3D false, \
>  	GLK_COLORS
> @@ -773,6 +776,7 @@ static const struct intel_device_info intel_cannonlak=
e_info =3D {
>  	}, \
>  	GEN(11), \
>  	.ddb_size =3D 2048, \
> +	.num_supported_dbuf_slices =3D 2, \
>  	.has_logical_ring_elsq =3D 1, \
>  	.color =3D { .degamma_lut_size =3D 33, .gamma_lut_size =3D 262145 }
>  =

> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i=
915/intel_device_info.h
> index 2725cb7fc169..7d4d122d2182 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -180,6 +180,7 @@ struct intel_device_info {
>  	} display;
>  =

>  	u16 ddb_size; /* in blocks */
> +	u8 num_supported_dbuf_slices; /* number of DBuf slices */

Redundant comment.

>  =

>  	/* Register offsets for the various display pipes and transcoders */
>  	int pipe_offsets[I915_MAX_TRANSCODERS];
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index c2510978ccdf..111bcafd6e4c 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3616,26 +3616,22 @@ bool ilk_disable_lp_wm(struct drm_i915_private *d=
ev_priv)
>  	return _ilk_disable_lp_wm(dev_priv, WM_DIRTY_LP_ALL);
>  }
>  =

> -u8 intel_enabled_dbuf_slices_num(struct drm_i915_private *dev_priv)
> +u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *dev_priv)
>  {
> -	u8 enabled_dbuf_slices_num;
> -
> -	/* Slice 1 will always be enabled */
> -	enabled_dbuf_slices_num =3D 1;
> +	u8 enabled_slices_mask =3D 0;
>  =

>  	/* Gen prior to GEN11 have only one DBuf slice */
>  	if (INTEL_GEN(dev_priv) < 11)
> -		return enabled_dbuf_slices_num;
> +		return DBUF_S1_BIT;
>  =

> -	/*
> -	 * FIXME: for now we'll only ever use 1 slice; pretend that we have
> -	 * only that 1 slice enabled until we have a proper way for on-demand
> -	 * toggling of the second slice.
> -	 */
> -	if (0 && I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE)
> -		enabled_dbuf_slices_num++;
> +	/* Check if second DBuf slice is enabled */
> +	if (I915_READ(DBUF_CTL_S1) & DBUF_POWER_STATE)
> +		enabled_slices_mask |=3D DBUF_S1_BIT;
>  =

> -	return enabled_dbuf_slices_num;
> +	if (I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE)
> +		enabled_slices_mask |=3D DBUF_S2_BIT;

With parametrized DBUF_CTL this could also just loop over the slices.

> +
> +	return enabled_slices_mask;
>  }
>  =

>  /*
> @@ -3843,8 +3839,6 @@ static u16 intel_get_ddb_size(struct drm_i915_priva=
te *dev_priv,
>  {
>  	struct drm_atomic_state *state =3D crtc_state->uapi.state;
>  	struct intel_atomic_state *intel_state =3D to_intel_atomic_state(state);
> -	const struct drm_display_mode *adjusted_mode;
> -	u64 total_data_bw;
>  	u16 ddb_size =3D INTEL_INFO(dev_priv)->ddb_size;
>  =

>  	WARN_ON(ddb_size =3D=3D 0);
> @@ -3852,23 +3846,8 @@ static u16 intel_get_ddb_size(struct drm_i915_priv=
ate *dev_priv,
>  	if (INTEL_GEN(dev_priv) < 11)
>  		return ddb_size - 4; /* 4 blocks for bypass path allocation */
>  =

> -	adjusted_mode =3D &crtc_state->hw.adjusted_mode;
> -	total_data_bw =3D total_data_rate * drm_mode_vrefresh(adjusted_mode);
> -
> -	/*
> -	 * 12GB/s is maximum BW supported by single DBuf slice.
> -	 *
> -	 * FIXME dbuf slice code is broken:
> -	 * - must wait for planes to stop using the slice before powering it off
> -	 * - plane straddling both slices is illegal in multi-pipe scenarios
> -	 * - should validate we stay within the hw bandwidth limits
> -	 */
> -	if (0 && (num_active > 1 || total_data_bw >=3D GBps(12))) {
> -		intel_state->enabled_dbuf_slices_num =3D 2;
> -	} else {
> -		intel_state->enabled_dbuf_slices_num =3D 1;
> -		ddb_size /=3D 2;
> -	}

Aren't we left with loads of pointless function arguments now?

> +	intel_state->enabled_dbuf_slices_mask =3D DBUF_S1_BIT;
> +	ddb_size /=3D 2;
>  =

>  	return ddb_size;
>  }
> @@ -4065,7 +4044,7 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc *c=
rtc,
>  =

>  void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv)
>  {
> -	dev_priv->enabled_dbuf_slices_num =3D intel_enabled_dbuf_slices_num(dev=
_priv);
> +	dev_priv->enabled_dbuf_slices_mask =3D intel_enabled_dbuf_slices_mask(d=
ev_priv);
>  }
>  =

>  /*
> @@ -5204,7 +5183,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
>  	struct intel_crtc *crtc;
>  	int ret, i;
>  =

> -	state->enabled_dbuf_slices_num =3D dev_priv->enabled_dbuf_slices_num;
> +	state->enabled_dbuf_slices_mask =3D dev_priv->enabled_dbuf_slices_mask;
>  =

>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index a476f6c730e9..7a7494d1224f 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -33,7 +33,7 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_p=
riv);
>  void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv);
>  void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv);
>  void skl_wm_get_hw_state(struct drm_i915_private *dev_priv);
> -u8 intel_enabled_dbuf_slices_num(struct drm_i915_private *dev_priv);
> +u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *dev_priv);
>  void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
>  			       struct skl_ddb_entry *ddb_y,
>  			       struct skl_ddb_entry *ddb_uv);
> -- =

> 2.17.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
