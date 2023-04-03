Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 676586D4004
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 11:17:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A76310E083;
	Mon,  3 Apr 2023 09:17:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0D4510E083
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 09:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680513431; x=1712049431;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=eZlH5Njl0ThY9poLtBfIjwHXFUjxVj7qvxQqmHw/5N8=;
 b=NxQanB4vk1aP240TzjitsrjA2qzQ3U2/DaeHuzISjU9f474Nlnay8YEh
 NyLqe5USLEGajtexCaB9qkg2TUwogp+d4v3XYY9hIHBG5rH41p4/PPvAF
 3il2MDynsdLu0DdcvcOtwUZI/ppIS+K4+3NKottegLygxlV1wS30tLkQ3
 YeCp5J3h2coVXuxipZlIOkqVTinEVBy+9nZxnaIM//T7+f798N7EfoFTp
 y77zrB7JLdSIJkcZk0ikqOoYIQ3U0mNLqpZ4OSRJjdNvH6RwPCX/ZpW16
 cUg7s2GxFEEb0e0JVREwV+UjtkZgtH3ZlkCxZGuJ6tts0HsWn1SgTNHnp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="325851226"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="325851226"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 02:17:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="636057242"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="636057242"
Received: from pstratma-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.54.30])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 02:17:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230403085043.2219092-1-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230403085043.2219092-1-mika.kahola@intel.com>
Date: Mon, 03 Apr 2023 12:17:06 +0300
Message-ID: <87r0t11g19.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add support for PM DEMAND
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 03 Apr 2023, Mika Kahola <mika.kahola@intel.com> wrote:
> Display14 introduces a new way to instruct the PUnit with
> power and bandwidth requirements of DE. Add the functionality
> to program the registers and handle waits using interrupts.
> The current wait time for timeouts is programmed for 10 msecs to
> factor in the worst case scenarios. Changes made to use REG_BIT
> for a register that we touched(GEN8_DE_MISC_IER _MMIO).
>
> v2:
>   - Removed repeated definition of dbuf, which has been moved to struct
>     intel_display. (Gustavo)
>   - s/dev_priv->dbuf/dev_priv->display.dbuf/ (Gustavo)
>
> Bspec: 66451, 64636, 64602, 64603
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c       |   4 +-
>  drivers/gpu/drm/i915/display/intel_bw.h       |   2 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  14 +
>  .../drm/i915/display/intel_display_power.c    |   8 +
>  drivers/gpu/drm/i915/i915_drv.h               |   6 +
>  drivers/gpu/drm/i915/i915_irq.c               |  22 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  33 +-
>  drivers/gpu/drm/i915/intel_pm.c               | 293 ++++++++++++++++++

This is the wrong place.

I've got reviewed patches to rename this to intel_clock_gating.c because
that's what it has left. Everything else has been moved out. They
would've been pushed already but there was a conflict so waited out a
bit.

Maybe a new display/intel_pmdemand.[ch]? This is only about display,
right?

>  drivers/gpu/drm/i915/intel_pm.h               |  35 +++
>  9 files changed, 412 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 202321ffbe2a..87c20bf52123 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -746,8 +746,8 @@ static unsigned int intel_bw_num_active_planes(struct=
 drm_i915_private *dev_priv
>  	return num_active_planes;
>  }
>=20=20
> -static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
> -				       const struct intel_bw_state *bw_state)
> +unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
> +				const struct intel_bw_state *bw_state)
>  {
>  	unsigned int data_rate =3D 0;
>  	enum pipe pipe;
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index f20292143745..17fc0b61db04 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -62,6 +62,8 @@ int intel_bw_init(struct drm_i915_private *dev_priv);
>  int intel_bw_atomic_check(struct intel_atomic_state *state);
>  void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>  			  const struct intel_crtc_state *crtc_state);
> +unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
> +				const struct intel_bw_state *bw_state);
>  int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
>  				  u32 points_mask);
>  int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b53a1d969344..ee7ca33123b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -959,6 +959,9 @@ intel_get_crtc_new_encoder(const struct intel_atomic_=
state *state,
>  		num_encoders++;
>  	}
>=20=20
> +	if (!encoder)
> +		return NULL;
> +

How's this related?

>  	drm_WARN(encoder->base.dev, num_encoders !=3D 1,
>  		 "%d encoders for pipe %c\n",
>  		 num_encoders, pipe_name(master_crtc->pipe));
> @@ -6767,6 +6770,10 @@ int intel_atomic_check(struct drm_device *dev,
>  		ret =3D intel_modeset_calc_cdclk(state);
>  		if (ret)
>  			return ret;
> +
> +		ret =3D intel_pmdemand_atomic_check(state);
> +		if (ret)
> +			goto fail;
>  	}
>=20=20
>  	ret =3D intel_atomic_check_crtcs(state);
> @@ -7411,6 +7418,7 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
>  	}
>=20=20
>  	intel_sagv_pre_plane_update(state);
> +	intel_pmdemand_pre_plane_update(state);
>=20=20
>  	/* Complete the events for pipes that have now been disabled */
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> @@ -7523,6 +7531,7 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
>  		intel_verify_planes(state);
>=20=20
>  	intel_sagv_post_plane_update(state);
> +	intel_pmdemand_post_plane_update(state);
>=20=20
>  	drm_atomic_helper_commit_hw_done(&state->base);
>=20=20
> @@ -8250,6 +8259,7 @@ void intel_init_display_hooks(struct drm_i915_priva=
te *dev_priv)
>  	intel_color_init_hooks(dev_priv);
>  	intel_init_cdclk_hooks(dev_priv);
>  	intel_audio_hooks_init(dev_priv);
> +	intel_init_pmdemand(dev_priv);

intel_init_pmdemand()...

>=20=20
>  	intel_dpll_init_clock_hook(dev_priv);
>=20=20
> @@ -8476,6 +8486,10 @@ int intel_modeset_init_noirq(struct drm_i915_priva=
te *i915)
>  	if (ret)
>  		goto cleanup_vga_client_pw_domain_dmc;
>=20=20
> +	ret =3D intel_pmdemand_init(i915);

...and intel_pmdemand_init(). Please just no.

Also, name them all intel_pmdemand_*().

> +	if (ret)
> +		goto cleanup_vga_client_pw_domain_dmc;
> +
>  	init_llist_head(&i915->display.atomic_helper.free_list);
>  	INIT_WORK(&i915->display.atomic_helper.free_work,
>  		  intel_atomic_helper_free_state_worker);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 5e85572dc8e4..04c172b5c17b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -19,6 +19,7 @@
>  #include "intel_mchbar_regs.h"
>  #include "intel_pch_refclk.h"
>  #include "intel_pcode.h"
> +#include "intel_pm.h"
>  #include "intel_pps_regs.h"
>  #include "intel_snps_phy.h"
>  #include "skl_watermark.h"
> @@ -1083,6 +1084,10 @@ static void gen9_dbuf_enable(struct drm_i915_priva=
te *dev_priv)
>  	dev_priv->display.dbuf.enabled_slices =3D
>  		intel_enabled_dbuf_slices_mask(dev_priv);
>=20=20
> +	if (DISPLAY_VER(dev_priv) >=3D 14)
> +		intel_program_dbuf_pmdemand(dev_priv, BIT(DBUF_S1) |
> +					    dev_priv->display.dbuf.enabled_slices);
> +
>  	/*
>  	 * Just power up at least 1 slice, we will
>  	 * figure out later which slices we have and what we need.
> @@ -1094,6 +1099,9 @@ static void gen9_dbuf_enable(struct drm_i915_privat=
e *dev_priv)
>  static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
>  {
>  	gen9_dbuf_slices_update(dev_priv, 0);
> +
> +	if (DISPLAY_VER(dev_priv) >=3D 14)
> +		intel_program_dbuf_pmdemand(dev_priv, 0);
>  }
>=20=20
>  static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index e771fdc3099c..2a73e726c6ed 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -250,6 +250,12 @@ struct drm_i915_private {
>  	unsigned int hpll_freq;
>  	unsigned int czclk_freq;
>=20=20
> +	struct {
> +		wait_queue_head_t waitqueue;
> +		struct mutex lock;
> +		struct intel_global_obj obj;
> +	} pmdemand;
> +

Please don't add new display stuff to struct drm_i915_private. See
struct intel_display in display/intel_display_core.h.

>  	/**
>  	 * wq - Driver workqueue for GEM.
>  	 *
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index c0888cc88d04..636033bb9650 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1913,6 +1913,11 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915=
_private *dev_priv)
>  		return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
>  }
>=20=20
> +static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
> +{
> +	wake_up_all(&dev_priv->pmdemand.waitqueue);
> +}
> +
>  static void
>  gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  {
> @@ -1949,6 +1954,18 @@ gen8_de_misc_irq_handler(struct drm_i915_private *=
dev_priv, u32 iir)
>  		}
>  	}
>=20=20
> +	if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR) {
> +		drm_dbg(&dev_priv->drm,
> +			"Error waiting for Punit PM Demand Response\n");
> +		intel_pmdemand_irq_handler(dev_priv);
> +		found =3D true;
> +	}
> +
> +	if (iir & XELPDP_PMDEMAND_RSP) {
> +		intel_pmdemand_irq_handler(dev_priv);
> +		found =3D true;
> +	}
> +
>  	if (!found)
>  		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt\n");
>  }
> @@ -3315,7 +3332,10 @@ static void gen8_de_irq_postinstall(struct drm_i91=
5_private *dev_priv)
>  	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		de_port_masked |=3D BXT_DE_PORT_GMBUS;
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 11) {
> +	if (DISPLAY_VER(dev_priv) >=3D 14)
> +		de_misc_masked |=3D XELPDP_PMDEMAND_RSPTOUT_ERR |
> +				  XELPDP_PMDEMAND_RSP;
> +	else if (DISPLAY_VER(dev_priv) >=3D 11) {
>  		enum port port;
>=20=20
>  		if (intel_bios_is_dsi_present(dev_priv, &port))
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 8d26fa2765c1..7f8e750665ed 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4783,8 +4783,10 @@
>  #define GEN8_DE_MISC_IMR _MMIO(0x44464)
>  #define GEN8_DE_MISC_IIR _MMIO(0x44468)
>  #define GEN8_DE_MISC_IER _MMIO(0x4446c)
> -#define  GEN8_DE_MISC_GSE		(1 << 27)
> -#define  GEN8_DE_EDP_PSR		(1 << 19)
> +#define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
> +#define  GEN8_DE_MISC_GSE		REG_BIT(27)
> +#define  GEN8_DE_EDP_PSR		REG_BIT(19)
> +#define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
>=20=20
>  #define GEN8_PCU_ISR _MMIO(0x444e0)
>  #define GEN8_PCU_IMR _MMIO(0x444e4)
> @@ -4847,6 +4849,33 @@
>  #define  GEN11_HOTPLUG_CTL_SHORT_DETECT(hpd_pin)	(1 << (_HPD_PIN_TC(hpd_=
pin) * 4))
>  #define  GEN11_HOTPLUG_CTL_NO_DETECT(hpd_pin)		(0 << (_HPD_PIN_TC(hpd_pi=
n) * 4))
>=20=20
> +#define XELPDP_INITIATE_PMDEMAND_REQUEST(dword)		_MMIO(0x45230 + 4 * (dw=
ord))
> +#define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK		REG_GENMASK(31, 16)
> +#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_=
QCLK_GV_BW_MASK, x)
> +#define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK		REG_GENMASK(14, 12)
> +#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAN=
D_VOLTAGE_INDEX_MASK, x)
> +#define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK		REG_GENMASK(11, 8)
> +#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAN=
D_QCLK_GV_INDEX_MASK, x)
> +#define  XELPDP_PMDEMAND_PIPES_MASK			REG_GENMASK(7, 6)
> +#define  XELPDP_PMDEMAND_PIPES(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PIPES=
_MASK, x)
> +#define  XELPDP_PMDEMAND_DBUFS_MASK			REG_GENMASK(5, 4)
> +#define  XELPDP_PMDEMAND_DBUFS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS=
_MASK, x)
> +#define  XELPDP_PMDEMAND_PHYS_MASK			REG_GENMASK(2, 0)
> +#define  XELPDP_PMDEMAND_PHYS(x)				REG_FIELD_PREP(XELPDP_PMDEMAND_PHYS_=
MASK, x)
> +
> +#define  XELPDP_PMDEMAND_REQ_ENABLE			REG_BIT(31)
> +#define  XELPDP_PMDEMAND_CDCLK_FREQ_MASK		REG_GENMASK(30, 20)
> +#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_=
CDCLK_FREQ_MASK, x)
> +#define  XELPDP_PMDEMAND_DDICLK_FREQ_MASK		REG_GENMASK(18, 8)
> +#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND=
_DDICLK_FREQ_MASK, x)
> +#define  XELPDP_PMDEMAND_SCALERS_MASK			REG_GENMASK(6, 4)
> +#define  XELPDP_PMDEMAND_SCALERS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_SCA=
LERS_MASK, x)
> +#define  XELPDP_PMDEMAND_PLLS_MASK			REG_GENMASK(2, 0)
> +#define  XELPDP_PMDEMAND_PLLS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PLLS_M=
ASK, x)
> +
> +#define GEN12_DCPR_STATUS_1				_MMIO(0x46440)
> +#define  XELPDP_PMDEMAND_INFLIGHT_STATUS		REG_BIT(26)
> +
>  #define ILK_DISPLAY_CHICKEN2	_MMIO(0x42004)
>  /* Required on all Ironlake and Sandybridge according to the B-Spec. */
>  #define  ILK_ELPIN_409_SELECT	(1 << 25)
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index c45af0d981fd..877997e4141d 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -25,6 +25,10 @@
>   *
>   */
>=20=20
> +#include <linux/bitops.h>
> +
> +#include "display/intel_bw.h"
> +#include "display/intel_cdclk.h"
>  #include "display/intel_de.h"
>  #include "display/intel_display.h"
>  #include "display/intel_display_trace.h"
> @@ -40,6 +44,14 @@
>  #include "intel_pm.h"
>  #include "vlv_sideband.h"
>=20=20
> +bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
> +{
> +        if (IS_METEORLAKE(dev_priv) && (phy < PHY_C))
> +                return true;
> +
> +        return false;
> +}

This doesn't belong here or in intel_pmdemand.c. It's just not about pm
or pmdemand.

> +
>  struct drm_i915_clock_gating_funcs {
>  	void (*init_clock_gating)(struct drm_i915_private *i915);
>  };
> @@ -124,6 +136,287 @@ static void glk_init_clock_gating(struct drm_i915_p=
rivate *dev_priv)
>  		   PWM1_GATING_DIS | PWM2_GATING_DIS);
>  }
>=20=20
> +static struct intel_global_state *intel_pmdemand_duplicate_state(struct =
intel_global_obj *obj)
> +{
> +	struct intel_pmdemand_state *pmdmnd_state;
> +
> +	pmdmnd_state =3D kmemdup(obj->state, sizeof(*pmdmnd_state), GFP_KERNEL);
> +	if (!pmdmnd_state)
> +		return NULL;
> +
> +	return &pmdmnd_state->base;
> +}
> +
> +static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,
> +					 struct intel_global_state *state)
> +{
> +	kfree(state);
> +}
> +
> +static const struct intel_global_state_funcs intel_pmdemand_funcs =3D {
> +	.atomic_duplicate_state =3D intel_pmdemand_duplicate_state,
> +	.atomic_destroy_state =3D intel_pmdemand_destroy_state,
> +};
> +
> +struct intel_pmdemand_state *
> +intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_global_state *pmdemand_state;
> +
> +	pmdemand_state =3D intel_atomic_get_global_obj_state(state, &dev_priv->=
pmdemand.obj);
> +	if (IS_ERR(pmdemand_state))
> +		return ERR_CAST(pmdemand_state);
> +
> +	return to_intel_pmdemand_state(pmdemand_state);
> +}
> +
> +int intel_pmdemand_init(struct drm_i915_private *dev_priv)
> +{
> +	struct intel_pmdemand_state *pmdemand_state;
> +
> +	pmdemand_state =3D kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
> +	if (!pmdemand_state)
> +		return -ENOMEM;
> +
> +	intel_atomic_global_obj_init(dev_priv, &dev_priv->pmdemand.obj,
> +				     &pmdemand_state->base, &intel_pmdemand_funcs);
> +
> +	return 0;
> +}
> +
> +void intel_init_pmdemand(struct drm_i915_private *dev_priv)
> +{
> +	mutex_init(&dev_priv->pmdemand.lock);
> +	init_waitqueue_head(&dev_priv->pmdemand.waitqueue);
> +}
> +
> +int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_pmdemand_state *new_pmdemand_state =3D NULL;
> +	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> +	struct intel_crtc *crtc;
> +	struct intel_encoder *encoder;
> +	struct intel_bw_state *new_bw_state;
> +	const struct intel_dbuf_state *new_dbuf_state;
> +	const struct intel_cdclk_state *new_cdclk_state;
> +	int port_clock =3D 0;
> +	unsigned int data_rate;
> +	enum phy phy;
> +	int i, ret;
> +
> +	if (DISPLAY_VER(dev_priv) < 14)
> +		return 0;
> +
> +	new_pmdemand_state =3D intel_atomic_get_pmdemand_state(state);
> +	if (IS_ERR(new_pmdemand_state))
> +		return PTR_ERR(new_pmdemand_state);
> +
> +	ret =3D intel_atomic_lock_global_state(&new_pmdemand_state->base);
> +	if (ret)
> +		return ret;
> +
> +	/* Punit figures out the voltage index based on bandwidth*/
> +	new_bw_state =3D intel_atomic_get_bw_state(state);
> +	if (IS_ERR(new_bw_state))
> +		return PTR_ERR(new_bw_state);
> +
> +	/* firmware will calculate the qclck_gc_index, requirement is set to 0 =
*/
> +	new_pmdemand_state->qclk_gv_index =3D 0;
> +
> +	data_rate =3D intel_bw_data_rate(dev_priv, new_bw_state);
> +	/* To MBs then to multiples of 100MBs */
> +	data_rate =3D DIV_ROUND_UP(data_rate, 1000);
> +	data_rate =3D DIV_ROUND_UP(data_rate, 100);
> +	new_pmdemand_state->qclk_gv_bw =3D data_rate;
> +
> +	new_dbuf_state =3D intel_atomic_get_dbuf_state(state);
> +	if (IS_ERR(new_dbuf_state))
> +		return PTR_ERR(new_dbuf_state);
> +
> +	i =3D hweight8(new_dbuf_state->active_pipes);
> +	new_pmdemand_state->active_pipes =3D min(i, 3);
> +
> +	new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
> +	if (IS_ERR(new_cdclk_state))
> +		return PTR_ERR(new_cdclk_state);
> +
> +	new_pmdemand_state->voltage_index =3D new_cdclk_state->logical.voltage_=
level;
> +	/* KHz to MHz */
> +	new_pmdemand_state->cdclk_freq_mhz =3D DIV_ROUND_UP(new_cdclk_state->lo=
gical.cdclk, 1000);
> +
> +	new_pmdemand_state->active_phys_plls_mask =3D 0;
> +
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_cr=
tc_state, i) {
> +		if (!new_crtc_state->hw.active)
> +			continue;
> +
> +		encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
> +		if (!encoder)
> +			continue;
> +
> +		phy =3D intel_port_to_phy(dev_priv, encoder->port);
> +
> +		if (intel_is_c10phy(dev_priv, phy))
> +			new_pmdemand_state->active_phys_plls_mask |=3D BIT(phy);
> +
> +		port_clock =3D max(port_clock, new_crtc_state->port_clock);
> +	}
> +
> +	/* To MHz */
> +	new_pmdemand_state->ddiclk_freq_mhz =3D DIV_ROUND_UP(port_clock, 1000);
> +
> +	/*
> +	 * Setting scalers to max as it can not be calculated during flips and
> +	 * fastsets without taking global states locks.
> +	 */
> +	new_pmdemand_state->scalers =3D 7;
> +
> +	return 0;
> +}
> +
> +static bool intel_pmdemand_check_prev_transaction(struct drm_i915_privat=
e *dev_priv)
> +{
> +	return !((intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) =
& XELPDP_PMDEMAND_REQ_ENABLE) ||
> +		(intel_de_read(dev_priv, GEN12_DCPR_STATUS_1) & XELPDP_PMDEMAND_INFLIG=
HT_STATUS));
> +}
> +
> +static bool intel_pmdemand_req_complete(struct drm_i915_private *dev_pri=
v)
> +{
> +	return !(intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) &=
 XELPDP_PMDEMAND_REQ_ENABLE);
> +}
> +
> +static int intel_pmdemand_wait(struct drm_i915_private *dev_priv)
> +{
> +	DEFINE_WAIT(wait);
> +	int ret;
> +	const unsigned int timeout_ms =3D 10;
> +
> +	add_wait_queue(&dev_priv->pmdemand.waitqueue, &wait);
> +
> +	ret =3D wait_event_timeout(dev_priv->pmdemand.waitqueue,
> +				 intel_pmdemand_req_complete(dev_priv),
> +				 msecs_to_jiffies_timeout(timeout_ms));
> +	if (ret < 0)
> +		drm_err(&dev_priv->drm,
> +			"timed out waiting for Punit PM Demand Response\n");
> +
> +	remove_wait_queue(&dev_priv->pmdemand.waitqueue, &wait);
> +
> +	return ret;
> +}
> +
> +/* Required to be programmed during Display Init Sequences. */
> +void intel_program_dbuf_pmdemand(struct drm_i915_private *dev_priv,
> +				 u8 dbuf_slices)
> +{
> +	mutex_lock(&dev_priv->pmdemand.lock);
> +	if (drm_WARN_ON(&dev_priv->drm,
> +			!intel_pmdemand_check_prev_transaction(dev_priv)))
> +		goto unlock;
> +
> +	intel_de_rmw(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
> +		     XELPDP_PMDEMAND_DBUFS_MASK,
> +		     XELPDP_PMDEMAND_DBUFS(hweight32(dbuf_slices)));
> +	intel_de_rmw(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
> +		     XELPDP_PMDEMAND_REQ_ENABLE);
> +
> +	intel_pmdemand_wait(dev_priv);
> +unlock:
> +	mutex_unlock(&dev_priv->pmdemand.lock);
> +}
> +
> +static void intel_program_pmdemand(struct drm_i915_private *dev_priv,
> +				   const struct intel_pmdemand_state *new,
> +				   const struct intel_pmdemand_state *old)
> +{
> +	u32 val, tmp;
> +
> +#define UPDATE_PMDEMAND_VAL(val, F, f) do {            \
> +	val &=3D (~(XELPDP_PMDEMAND_##F##_MASK));         \
> +	val |=3D (XELPDP_PMDEMAND_##F((u32)(old ? max(old->f, new->f) : new->f)=
)); \
> +} while (0)

I'm not convinced this makes the code easier to follow.

> +
> +	mutex_lock(&dev_priv->pmdemand.lock);
> +	if (drm_WARN_ON(&dev_priv->drm,
> +			!intel_pmdemand_check_prev_transaction(dev_priv)))
> +		goto unlock;
> +
> +	/*
> +	 * TODO: Update programming PM Demand for
> +	 * PHYS, PLLS, DDI_CLKFREQ, SCALARS
> +	 */
> +	val =3D intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(0));
> +	UPDATE_PMDEMAND_VAL(val, QCLK_GV_INDEX, qclk_gv_index);
> +	UPDATE_PMDEMAND_VAL(val, QCLK_GV_BW, qclk_gv_bw);
> +	UPDATE_PMDEMAND_VAL(val, VOLTAGE_INDEX, voltage_index);
> +	UPDATE_PMDEMAND_VAL(val, PIPES, active_pipes);
> +	UPDATE_PMDEMAND_VAL(val, DBUFS, dbufs);
> +	tmp =3D hweight32(new->active_phys_plls_mask);
> +	if (old)
> +		tmp =3D max(tmp, hweight32(old->active_phys_plls_mask));
> +	val |=3D XELPDP_PMDEMAND_PHYS(tmp);
> +
> +	intel_de_write(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(0), val);
> +
> +	val =3D intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
> +	UPDATE_PMDEMAND_VAL(val, CDCLK_FREQ, cdclk_freq_mhz);
> +	UPDATE_PMDEMAND_VAL(val, DDICLK_FREQ, ddiclk_freq_mhz);
> +	UPDATE_PMDEMAND_VAL(val, SCALERS, scalers);
> +	/*
> +	 * Active_PLLs starts with 1 because of CDCLK PLL.
> +	 * TODO: Missing to account genlock filter when it gets used.
> +	 */
> +	val |=3D XELPDP_PMDEMAND_PLLS(tmp + 1);
> +
> +	intel_de_write(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1), val);
> +
> +#undef UPDATE_PM_DEMAND_VAL
> +
> +	intel_de_rmw(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0, XELPDP_P=
MDEMAND_REQ_ENABLE);
> +
> +	intel_pmdemand_wait(dev_priv);
> +unlock:
> +	mutex_unlock(&dev_priv->pmdemand.lock);
> +}
> +
> +void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	const struct intel_pmdemand_state *new_pmdmnd_state =3D
> +		intel_atomic_get_new_pmdemand_state(state);
> +	const struct intel_pmdemand_state *old_pmdmnd_state =3D
> +		intel_atomic_get_old_pmdemand_state(state);
> +
> +	if (DISPLAY_VER(dev_priv) < 14)
> +		return;
> +
> +	if (!new_pmdmnd_state ||
> +	    memcmp(new_pmdmnd_state, old_pmdmnd_state, sizeof(*new_pmdmnd_state=
)) =3D=3D 0)
> +		return;
> +
> +	intel_program_pmdemand(dev_priv, new_pmdmnd_state, old_pmdmnd_state);
> +}
> +
> +void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	const struct intel_pmdemand_state *new_pmdmnd_state =3D
> +		intel_atomic_get_new_pmdemand_state(state);
> +	const struct intel_pmdemand_state *old_pmdmnd_state =3D
> +		intel_atomic_get_old_pmdemand_state(state);
> +
> +	if (DISPLAY_VER(dev_priv) < 14)
> +		return;
> +
> +	if (!new_pmdmnd_state ||
> +	    memcmp(new_pmdmnd_state, old_pmdmnd_state, sizeof(*new_pmdmnd_state=
)) =3D=3D 0)
> +		return;
> +
> +	intel_program_pmdemand(dev_priv, new_pmdmnd_state, NULL);
> +}
> +
>  static void ibx_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	/*
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index f774bddcdca6..2663bec408c7 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -8,11 +8,46 @@
>=20=20
>  #include <linux/types.h>
>=20=20
> +#include "display/intel_global_state.h"
> +
>  struct drm_i915_private;
>  struct intel_crtc_state;
>  struct intel_plane_state;
>=20=20
>  void intel_init_clock_gating(struct drm_i915_private *dev_priv);
> +void intel_init_pmdemand(struct drm_i915_private *dev_priv);
>  void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
>=20=20
> +struct intel_pmdemand_state {
> +	struct intel_global_state base;
> +
> +	u16 qclk_gv_bw;
> +	u8 voltage_index;
> +	u8 qclk_gv_index;
> +	u8 active_pipes;
> +	u8 dbufs;
> +	u8 active_phys_plls_mask;
> +	u16 cdclk_freq_mhz;
> +	u16 ddiclk_freq_mhz;
> +	u8 scalers;
> +};

Could this actually be private to intel_pmdemand.c?

> +
> +int intel_pmdemand_init(struct drm_i915_private *dev_priv);
> +
> +struct intel_pmdemand_state *
> +intel_atomic_get_pmdemand_state(struct intel_atomic_state *state);
> +
> +#define to_intel_pmdemand_state(x) container_of((x), struct intel_pmdema=
nd_state, base)
> +#define intel_atomic_get_old_pmdemand_state(state) \
> +	to_intel_pmdemand_state(intel_atomic_get_old_global_obj_state(state, &t=
o_i915(state->base.dev)->pmdemand.obj))
> +#define intel_atomic_get_new_pmdemand_state(state) \
> +	to_intel_pmdemand_state(intel_atomic_get_new_global_obj_state(state, &t=
o_i915(state->base.dev)->pmdemand.obj))

Please just make these proper functions and hide the details. I've been
meaning to do that elsewhere too. This shouldn't have to include
intel_global_state.h.

> +
> +int intel_pmdemand_init(struct drm_i915_private *dev_priv);
> +void intel_program_dbuf_pmdemand(struct drm_i915_private *dev_priv,
> +				 u8 dbuf_slices);

intel_pmdemand_* naming please, if these will be put in
intel_pmdemand.[ch].

> +void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state);
> +void intel_pmdemand_post_plane_update(struct intel_atomic_state *state);
> +int intel_pmdemand_atomic_check(struct intel_atomic_state *state);
> +
>  #endif /* __INTEL_PM_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
