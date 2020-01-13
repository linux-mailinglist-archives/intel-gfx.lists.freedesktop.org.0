Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1432B139432
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 16:02:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7029D6E0E2;
	Mon, 13 Jan 2020 15:02:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A24806E0E2
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 15:01:59 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 07:01:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,429,1571727600"; d="scan'208";a="219314915"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 13 Jan 2020 07:01:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Jan 2020 17:01:56 +0200
Date: Mon, 13 Jan 2020 17:01:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200113150156.GQ13686@intel.com>
References: <20191223154522.9797-1-stanislav.lisovskiy@intel.com>
 <20191223154522.9797-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223154522.9797-4-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v10 3/4] drm/i915: Manipulate DBuf slices
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

On Mon, Dec 23, 2019 at 05:45:21PM +0200, Stanislav Lisovskiy wrote:
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

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 23 ++---
>  .../drm/i915/display/intel_display_power.c    | 94 +++++++++----------
>  .../drm/i915/display/intel_display_power.h    |  4 +
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  2 +-
>  drivers/gpu/drm/i915/i915_pci.c               |  5 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  1 +
>  drivers/gpu/drm/i915/intel_device_info.h      |  1 +
>  drivers/gpu/drm/i915/intel_pm.c               | 51 +++-------
>  drivers/gpu/drm/i915/intel_pm.h               |  2 +-
>  10 files changed, 83 insertions(+), 102 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index bba7897d05d8..757e90ccbab5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13332,12 +13332,12 @@ static void verify_wm_state(struct intel_crtc *=
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
> @@ -14518,22 +14518,23 @@ static void intel_update_trans_port_sync_crtcs(=
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
> index d8058cc61e45..b30738d2d46c 100644
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
> @@ -1031,8 +1032,19 @@ static void gen9_assert_dbuf_enabled(struct drm_i9=
15_private *dev_priv)
>  	u32 tmp =3D I915_READ(DBUF_CTL);
>  =

>  	WARN((tmp & (DBUF_POWER_STATE | DBUF_POWER_REQUEST)) !=3D
> -	     (DBUF_POWER_STATE | DBUF_POWER_REQUEST),
> -	     "Unexpected DBuf power power state (0x%08x)\n", tmp);
> +	    (DBUF_POWER_STATE | DBUF_POWER_REQUEST),
> +	    "Unexpected DBuf power power state (0x%08x, expected 0x%08x)\n",
> +	    tmp, (DBUF_POWER_STATE | DBUF_POWER_REQUEST));
> +}
> +
> +static void gen11_assert_dbuf_status(struct drm_i915_private *dev_priv)
> +{
> +	u8 enabled_dbuf_slices =3D intel_enabled_dbuf_slices_mask(dev_priv);
> +
> +	WARN(enabled_dbuf_slices !=3D dev_priv->enabled_dbuf_slices_mask,
> +	     "Unexpected DBuf power power state (0x%08x, expected 0x%08x)\n",
> +	     enabled_dbuf_slices,
> +	     dev_priv->enabled_dbuf_slices_mask);
>  }

This gen9 vs. gen11 split seems a bit odd. Why aren't we just
populating the mask properly for all platforms?

>  =

>  static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
> @@ -1050,7 +1062,11 @@ static void gen9_disable_dc_states(struct drm_i915=
_private *dev_priv)
>  	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
>  	WARN_ON(intel_cdclk_needs_modeset(&dev_priv->cdclk.hw, &cdclk_state));
>  =

> -	gen9_assert_dbuf_enabled(dev_priv);
> +	/* Starting from ICL, DMC restores the last state, being set */
> +	if (INTEL_GEN(dev_priv) >=3D 11)
> +		gen11_assert_dbuf_status(dev_priv);
> +	else
> +		gen9_assert_dbuf_enabled(dev_priv);
>  =

>  	if (IS_GEN9_LP(dev_priv))
>  		bxt_verify_ddi_phy_power_wells(dev_priv);
> @@ -4396,72 +4412,48 @@ static void gen9_dbuf_disable(struct drm_i915_pri=
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
> +		intel_dbuf_slice_set(dev_priv,
> +				     DBUF_CTL_S(BIT(i)),
> +				     req_slices & BIT(i));
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
> index 1da04f3e0fb3..f52594ecf577 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -311,8 +311,12 @@ intel_display_power_put_async(struct drm_i915_privat=
e *i915,
>  	for ((wf) =3D intel_display_power_get((i915), (domain)); (wf); \
>  	     intel_display_power_put_async((i915), (domain), (wf)), (wf) =3D 0)
>  =

> +#define DBUF_S1_BIT			BIT(0)
> +#define DBUF_S2_BIT			BIT(1)

You're replacing these with the enum in the next patch.

> +
>  void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
>  			    u8 req_slices);
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
> index 9571611b4b16..62998cf1ce0a 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -615,7 +615,8 @@ static const struct intel_device_info intel_cherryvie=
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
> @@ -650,6 +651,7 @@ static const struct intel_device_info intel_skylake_g=
t4_info =3D {
>  #define GEN9_LP_FEATURES \
>  	GEN(9), \
>  	.is_lp =3D 1, \
> +	.num_supported_dbuf_slices =3D 1, \
>  	.display.has_hotplug =3D 1, \
>  	.engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
>  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
> @@ -774,6 +776,7 @@ static const struct intel_device_info intel_cannonlak=
e_info =3D {
>  	}, \
>  	GEN(11), \
>  	.ddb_size =3D 2048, \
> +	.num_supported_dbuf_slices =3D 2, \
>  	.has_logical_ring_elsq =3D 1, \
>  	.color =3D { .degamma_lut_size =3D 33, .gamma_lut_size =3D 262145 }
>  =

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index cbb4689af432..62efd5ad07a7 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7760,6 +7760,7 @@ enum {
>  #define DBUF_CTL	_MMIO(0x45008)
>  #define DBUF_CTL_S1	_MMIO(0x45008)
>  #define DBUF_CTL_S2	_MMIO(0x44FE8)
> +#define DBUF_CTL_S(X)	((X) =3D=3D 1 ? DBUF_CTL_S1 : DBUF_CTL_S2)

_MMIO_PIPE() or somesuch thing is how these are normally handled.

I would make the enum+parametrization a separate patch. Trivial to
review and push ahead of time.

>  #define  DBUF_POWER_REQUEST		(1 << 31)
>  #define  DBUF_POWER_STATE		(1 << 30)
>  #define GEN7_MSG_CTL	_MMIO(0x45010)
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
> index 35eaeaac0bb5..dc6b69f5b6d7 100644
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
> +	int i;
> +	int max_slices =3D intel_dbuf_max_slices(dev_priv);
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
> +	for (i =3D 0; i < max_slices; i++) {
> +		if (I915_READ(DBUF_CTL_S(BIT(i))) & DBUF_POWER_STATE)

Should be just DBUF_CTL_S(i) since it's the index we want to pass.

> +			enabled_slices_mask |=3D BIT(i);
> +	}
>  =

> -	return enabled_dbuf_slices_num;
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
> +	intel_state->enabled_dbuf_slices_mask =3D DBUF_S1_BIT;
> +	ddb_size /=3D 2;
>  =

>  	return ddb_size;
>  }
> @@ -4065,8 +4044,8 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc *c=
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
> @@ -5205,7 +5184,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
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

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
