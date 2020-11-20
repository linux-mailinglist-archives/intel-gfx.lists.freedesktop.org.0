Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0A02B9F3C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 01:27:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FE276E838;
	Fri, 20 Nov 2020 00:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D946E838
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 00:27:30 +0000 (UTC)
IronPort-SDR: BsbIhWtFs2IgMv2VjQ491HaTMmMMSTBfmWQc40ngYNa26aSAZ9YOCEPsCr19sUjak6M8FhVHX/
 ciTjlsSQ6LVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="158427823"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="158427823"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 16:27:29 -0800
IronPort-SDR: jVRLTcNuphqwYeBev1QMRcaVuZmpLneHxI0N6Xlg7NM7W7h/NGqjC/d7CglOWk9dqt0KW/41Qr
 UakA/KVjKuTA==
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="534980043"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 16:27:29 -0800
Date: Thu, 19 Nov 2020 16:27:28 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201120002728.GC2099117@mdroper-desk1.amr.corp.intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
 <20201117185029.22078-11-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117185029.22078-11-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 10/21] drm/i915/adl_s: Add HTI support and
 initialize display for ADL-S
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 17, 2020 at 10:50:18AM -0800, Aditya Swarup wrote:
> Initialize display outputs and add HTI support for ADL-S. ADL-S has 5
> display outputs -> 1 eDP, 2 HDMI and 2 DP++ outputs.
> =

> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 +++++++-
>  drivers/gpu/drm/i915/i915_pci.c              | 1 +
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  3 files changed, 9 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index dcb70efbfa3b..db8ba5e297ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -17261,7 +17261,13 @@ static void intel_setup_outputs(struct drm_i915_=
private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>  =

> -	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv)) {
> +	if (IS_ALDERLAKE_S(dev_priv)) {
> +		intel_ddi_init(dev_priv, PORT_A);
> +		intel_ddi_init(dev_priv, PORT_D);	/* DDI TC1 */
> +		intel_ddi_init(dev_priv, PORT_E);	/* DDI TC2 */
> +		intel_ddi_init(dev_priv, PORT_F);	/* DDI TC3 */
> +		intel_ddi_init(dev_priv, PORT_G);	/* DDI TC4 */
> +	} else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv)) {
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_B);
>  		intel_ddi_init(dev_priv, PORT_TC1);
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 069ac0c28bb3..26e4bf8bb4ef 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -930,6 +930,7 @@ static const struct intel_device_info adl_s_info =3D {
>  	PLATFORM(INTEL_ALDERLAKE_S),
>  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
>  	.require_force_probe =3D 1,
> +	.display.has_hti =3D 1,
>  	.display.has_psr_hw_tracking =3D 0,
>  	.platform_engine_mask =3D
>  		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),

This part should probably just go in the patch that added the initial
platform definition.

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 5416d04373ae..4c8d0d84af6a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2928,7 +2928,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t r=
eg)
>  #define MBUS_BBOX_CTL_S2		_MMIO(0x45044)
>  =

>  #define HDPORT_STATE			_MMIO(0x45050)
> -#define   HDPORT_DPLL_USED_MASK		REG_GENMASK(14, 12)
> +#define   HDPORT_DPLL_USED_MASK		REG_GENMASK(15, 12)

This doesn't seem like it belongs in this patch.  The DPLL patch might
be a better match for it?


Matt

>  #define   HDPORT_PHY_USED_DP(phy)	REG_BIT(2 * (phy) + 2)
>  #define   HDPORT_PHY_USED_HDMI(phy)	REG_BIT(2 * (phy) + 1)
>  #define   HDPORT_ENABLED		REG_BIT(0)
> -- =

> 2.27.0
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
