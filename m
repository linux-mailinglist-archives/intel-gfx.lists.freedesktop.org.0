Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B2113CFF2
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 23:13:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D4226E0D4;
	Wed, 15 Jan 2020 22:13:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 832306E0D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 22:13:26 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 14:13:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="423765680"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga005.fm.intel.com with ESMTP; 15 Jan 2020 14:13:26 -0800
Date: Wed, 15 Jan 2020 14:13:25 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200115221325.GL2244136@mdroper-desk1.amr.corp.intel.com>
References: <20200115095054.10660-1-stanislav.lisovskiy@intel.com>
 <20200115095054.10660-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115095054.10660-4-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v11 3/5] drm/i915: Manipulate DBuf slices
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

On Wed, Jan 15, 2020 at 11:50:52AM +0200, Stanislav Lisovskiy wrote:
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

> v4: - Fixed debug print formatting to hex(Matt Roper)
>     - Optimized dbuf slice updates to be used only
>       if slice union is different from current conf(Matt Roper)
>     - Fixed some functions to be static(Matt Roper)
>     - Created a parameterized version for DBUF_CTL to
>       simplify DBuf programming cycle(Matt Roper)
>     - Removed unrequred field from GEN10_FEATURES(Matt Roper)
> =

> v5: - Removed redundant programming dbuf slices helper(Ville Syrj=E4l=E4)
>     - Started to use parameterized loop for hw readout to get slices
>       (Ville Syrj=E4l=E4)
>     - Added back assertion checking amount of DBUF slices enabled
>       after DC states 5/6 transition, also added new assertion
>       as starting from ICL DMC seems to restore the last DBuf
>       power state set, rather than power up all dbuf slices
>       as assertion was previously expecting(Ville Syrj=E4l=E4)
> =

> v6: - Now using enum for DBuf slices in this patch (Ville Syrj=E4l=E4)
>     - Removed gen11_assert_dbuf_enabled and put gen9_assert_dbuf_enabled
>       back, as we really need to have a single unified assert here
>       however currently enabling always slice 1 is enforced by BSpec,
>       so we will have to OR enabled slices mask with 1 in order
>       to be consistent with BSpec, that way we can unify that
>       assertion and against the actual state from the driver, but
>       not some hardcoded value.(concluded with Ville)
>     - Remove parameterized DBUF_CTL version, to extract it to another
>       patch.(Ville Syrj=E4l=E4)
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 23 ++---
>  .../drm/i915/display/intel_display_power.c    | 95 +++++++++----------
>  .../drm/i915/display/intel_display_power.h    |  6 ++
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  2 +-
>  drivers/gpu/drm/i915/i915_pci.c               |  5 +-
>  drivers/gpu/drm/i915/intel_device_info.h      |  1 +
>  drivers/gpu/drm/i915/intel_pm.c               | 66 ++++++-------
>  drivers/gpu/drm/i915/intel_pm.h               |  2 +-
>  9 files changed, 99 insertions(+), 103 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 441bbf67bace..c2ff17358858 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13769,12 +13769,12 @@ static void verify_wm_state(struct intel_crtc *=
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
> +		DRM_ERROR("mismatch in DBUF Slices (expected 0x%x, got 0x%x)\n",
> +			  dev_priv->enabled_dbuf_slices_mask,
>  			  hw_enabled_slices);
>  =

>  	/* planes */
> @@ -15118,22 +15118,23 @@ static void intel_update_trans_port_sync_crtcs(=
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
> +	if (INTEL_GEN(dev_priv) >=3D 11 && slices_union !=3D hw_enabled_slices)
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
>  		icl_dbuf_slices_update(dev_priv, required_slices);
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 5e1c601f0f99..4503f5fab63d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -15,6 +15,7 @@
>  #include "intel_display_types.h"
>  #include "intel_dpio_phy.h"
>  #include "intel_hotplug.h"
> +#include "intel_pm.h"
>  #include "intel_sideband.h"
>  #include "intel_tc.h"
>  #include "intel_vga.h"
> @@ -1028,11 +1029,12 @@ static bool gen9_dc_off_power_well_enabled(struct=
 drm_i915_private *dev_priv,
>  =

>  static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
>  {
> -	u32 tmp =3D I915_READ(DBUF_CTL);
> +	u8 enabled_dbuf_slices =3D intel_enabled_dbuf_slices_mask(dev_priv);
>  =

> -	WARN((tmp & (DBUF_POWER_STATE | DBUF_POWER_REQUEST)) !=3D
> -	     (DBUF_POWER_STATE | DBUF_POWER_REQUEST),
> -	     "Unexpected DBuf power power state (0x%08x)\n", tmp);
> +	WARN(enabled_dbuf_slices !=3D dev_priv->enabled_dbuf_slices_mask,
> +	     "Unexpected DBuf power power state (0x%08x, expected 0x%08x)\n",
> +	     enabled_dbuf_slices,
> +	     dev_priv->enabled_dbuf_slices_mask);
>  }
>  =

>  static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
> @@ -4396,72 +4398,61 @@ static void gen9_dbuf_disable(struct drm_i915_pri=
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
>  }

Maybe we should just inline this into the callsites now that it's just a
single line?

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
> -		DRM_ERROR("Invalid number of dbuf slices requested\n");
> -		return;
> -	}
> +	WARN(hweight8(req_slices) > max_slices,
> +	     "Invalid number of dbuf slices requested\n");
>  =

> -	if (req_slices =3D=3D hw_enabled_slices || req_slices =3D=3D 0)
> -		return;
> +	DRM_DEBUG_KMS("Updating dbuf slices to 0x%x\n", req_slices);
>  =

> -	if (req_slices > hw_enabled_slices)
> -		ret =3D intel_dbuf_slice_set(dev_priv, DBUF_CTL_S2, true);
> -	else
> -		ret =3D intel_dbuf_slice_set(dev_priv, DBUF_CTL_S2, false);
> +	for (i =3D 0; i < max_slices; i++) {
> +		u8 slice_set =3D req_slices & BIT(i);
> +
> +		switch (i) {
> +		case DBUF_S1:
> +			intel_dbuf_slice_set(dev_priv,
> +					     DBUF_CTL_S1,
> +					     slice_set);
> +			break;
> +		case DBUF_S2:
> +			intel_dbuf_slice_set(dev_priv,
> +					     DBUF_CTL_S2,
> +					     slice_set);
> +			break;
> +		default:
> +			MISSING_CASE(i);
> +		}
> +	}

Now that we're not using the return value of intel_dbuf_slice_set()
anywhere, we could make it return void.  But you can do that as a
followup patch if you like.

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
> +	dev_priv->enabled_dbuf_slices_mask =3D BIT(DBUF_S1);
> +	icl_dbuf_slices_update(dev_priv, dev_priv->enabled_dbuf_slices_mask);
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
> +	icl_dbuf_slices_update(dev_priv, dev_priv->enabled_dbuf_slices_mask);
>  }
>  =

>  static void icl_mbus_init(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index 2608a65af7fa..d07bdbe2040a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -307,12 +307,18 @@ intel_display_power_put_async(struct drm_i915_priva=
te *i915,
>  }
>  #endif
>  =

> +enum dbuf_slice {
> +	DBUF_S1,
> +	DBUF_S2,
> +};
> +
>  #define with_intel_display_power(i915, domain, wf) \
>  	for ((wf) =3D intel_display_power_get((i915), (domain)); (wf); \
>  	     intel_display_power_put_async((i915), (domain), (wf)), (wf) =3D 0)
>  =

>  void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
>  			    u8 req_slices);
> +int intel_dbuf_max_slices(struct drm_i915_private *dev_priv);
>  =

>  void chv_phy_powergate_lanes(struct intel_encoder *encoder,
>  			     bool override, unsigned int mask);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 6dca90ebca35..09f14e9e7863 100644
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
> index 120c9f1090c4..23688e904e12 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1208,7 +1208,7 @@ struct drm_i915_private {
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
> index 83f01401b8b5..6c6daa44c439 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -615,7 +615,8 @@ static const struct intel_device_info chv_info =3D {
>  	.has_gt_uc =3D 1, \
>  	.display.has_hdcp =3D 1, \
>  	.display.has_ipc =3D 1, \
> -	.ddb_size =3D 896
> +	.ddb_size =3D 896, \
> +	.num_supported_dbuf_slices =3D 1
>  =

>  #define SKL_PLATFORM \
>  	GEN9_FEATURES, \
> @@ -650,6 +651,7 @@ static const struct intel_device_info skl_gt4_info =
=3D {
>  #define GEN9_LP_FEATURES \
>  	GEN(9), \
>  	.is_lp =3D 1, \
> +	.num_supported_dbuf_slices =3D 1, \
>  	.display.has_hotplug =3D 1, \
>  	.engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
>  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
> @@ -774,6 +776,7 @@ static const struct intel_device_info cnl_info =3D {
>  	}, \
>  	GEN(11), \
>  	.ddb_size =3D 2048, \
> +	.num_supported_dbuf_slices =3D 2, \

Maybe we should save this change for a patch of its own at the very end
of the series to "flip the switch?"  That way if there are regressions
it's less invasive to just revert that while we debug and tweak the rest
of the dbuf logic.


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
>  =

>  	/* Register offsets for the various display pipes and transcoders */
>  	int pipe_offsets[I915_MAX_TRANSCODERS];
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 8f6f6472626a..6ba72a6be7cb 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3644,26 +3644,37 @@ bool ilk_disable_lp_wm(struct drm_i915_private *d=
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
> +	int i;
> +	int max_slices =3D intel_dbuf_max_slices(dev_priv);
> +	u8 enabled_slices_mask =3D 0;
>  =

>  	/* Gen prior to GEN11 have only one DBuf slice */
>  	if (INTEL_GEN(dev_priv) < 11)
> -		return enabled_dbuf_slices_num;
> +		return BIT(DBUF_S1);

Is there any reason to handle this case separately?  If we just let it
continue on to below, max_slices will be 1, so it will only test
DBUF_CTL_S1 (which is the same register as DBUF_CTL on gen9)

If we hardcode this, then we've neutered gen9_assert_dbuf_enabled() on
gen9/gen10 since we'd now just be comparing expected vs expected and
never actually reading out how the hardware was actually programmed
(either by us or the DMC).


Matt

>  =

> -	/*
> -	 * FIXME: for now we'll only ever use 1 slice; pretend that we have
> -	 * only that 1 slice enabled until we have a proper way for on-demand
> -	 * toggling of the second slice.
> -	 */
> -	if (0 && I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE)
> -		enabled_dbuf_slices_num++;
> +	for (i =3D 0; i < max_slices; i++) {
> +		u8 slice_bit =3D BIT(i);
> +		bool res;
> +
> +		switch (i) {
> +
> +		case DBUF_S1:
> +			res =3D I915_READ(DBUF_CTL_S1) & DBUF_POWER_STATE;
> +			break;
> +		case DBUF_S2:
> +			res =3D I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE;
> +			break;
> +		default:
> +			MISSING_CASE(slice_bit);
> +		}
>  =

> -	return enabled_dbuf_slices_num;
> +		if (res)
> +			enabled_slices_mask |=3D slice_bit;
> +	}
> +
> +	return enabled_slices_mask;
>  }
>  =

>  /*
> @@ -3871,8 +3882,6 @@ static u16 intel_get_ddb_size(struct drm_i915_priva=
te *dev_priv,
>  {
>  	struct drm_atomic_state *state =3D crtc_state->uapi.state;
>  	struct intel_atomic_state *intel_state =3D to_intel_atomic_state(state);
> -	const struct drm_display_mode *adjusted_mode;
> -	u64 total_data_bw;
>  	u16 ddb_size =3D INTEL_INFO(dev_priv)->ddb_size;
>  =

>  	WARN_ON(ddb_size =3D=3D 0);
> @@ -3880,23 +3889,8 @@ static u16 intel_get_ddb_size(struct drm_i915_priv=
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
> +	intel_state->enabled_dbuf_slices_mask =3D BIT(DBUF_S1);
> +	ddb_size /=3D 2;
>  =

>  	return ddb_size;
>  }
> @@ -4093,8 +4087,8 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc *c=
rtc,
>  =

>  void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv)
>  {
> -	dev_priv->enabled_dbuf_slices_num =3D
> -				intel_enabled_dbuf_slices_num(dev_priv);
> +	dev_priv->enabled_dbuf_slices_mask =3D
> +				intel_enabled_dbuf_slices_mask(dev_priv);
>  }
>  =

>  /*
> @@ -5236,7 +5230,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
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
> index 22fd2daf608e..d60a85421c5a 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -32,7 +32,7 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_p=
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

> 2.24.1.485.gad05a3d8e5
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
