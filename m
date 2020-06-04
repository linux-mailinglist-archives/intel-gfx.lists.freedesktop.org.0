Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BEC1EE999
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 19:43:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9F626E527;
	Thu,  4 Jun 2020 17:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05B7C6E527
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 17:43:27 +0000 (UTC)
IronPort-SDR: O0Gb0WUsS7BqhkkUEFbmA4tRxAQ88Li/oE5P02pOieTJFF19rsMO6MBh/h6JRSwCEiXnlzbjRj
 PxL2DY+FyDLg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 10:43:26 -0700
IronPort-SDR: SpCNFRFjEq+O9LhcPPufgiIM86lHDs+BUFGppaAa3m41j7rF8PSDSnvexaJTTmyRlOeBvQIdqG
 idZENolZ6tgg==
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="287452901"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 10:43:26 -0700
Date: Thu, 4 Jun 2020 10:41:38 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200604174138.GF3190340@intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
 <20200603211529.3005059-15-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603211529.3005059-15-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 14/15] drm/i915/rkl: Disable PSR2
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
Cc: intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 03, 2020 at 02:15:28PM -0700, Matt Roper wrote:
> From: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> RKL doesn't have PSR2 HW tracking, it was replaced by software/manual
> tracking.  The driver is required to track the areas that needs update
> and program hardware to send selective updates.
> =

> So until the software tracking is implemented, PSR2 needs to be disabled
> for platforms without PSR2 HW tracking.
> =

> BSpec: 50422
> BSpec: 50424
> =

> Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 15 +++++++++++++++
>  drivers/gpu/drm/i915/i915_drv.h          |  2 ++
>  drivers/gpu/drm/i915/i915_pci.c          |  3 +++
>  drivers/gpu/drm/i915/intel_device_info.h |  1 +
>  4 files changed, 21 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index b7a2c102648a..714c590b39f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -646,6 +646,21 @@ static bool intel_psr2_config_valid(struct intel_dp =
*intel_dp,
>  		return false;
>  	}
>  =

> +	/*
> +	 * Some platforms lack PSR2 HW tracking and instead require manual
> +	 * tracking by software.  In this case, the driver is required to track
> +	 * the areas that need updates and program hardware to send selective
> +	 * updates.
> +	 *
> +	 * So until the software tracking is implemented, PSR2 needs to be
> +	 * disabled for platforms without PSR2 HW tracking.
> +	 */
> +	if (!HAS_PSR_HW_TRACKING(dev_priv)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "No PSR2 HW tracking in the platform\n");
> +		return false;
> +	}
> +
>  	/*
>  	 * DSC and PSR2 cannot be enabled simultaneously. If a requested
>  	 * resolution requires DSC to be enabled, priority is given to DSC
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 668b3c9cf3ae..87f4000413f1 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1644,6 +1644,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
>  #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->has_fpga=
_dbg)
>  #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
> +#define HAS_PSR_HW_TRACKING(dev_priv) \
> +	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
>  #define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->cpu_tra=
nscoder_mask & BIT(trans)) !=3D 0)
>  =

>  #define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 0ed586ee2047..ef4a457a6c4f 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -536,6 +536,7 @@ static const struct intel_device_info vlv_info =3D {
>  	.display.has_ddi =3D 1, \
>  	.has_fpga_dbg =3D 1, \
>  	.display.has_psr =3D 1, \
> +	.display.has_psr_hw_tracking =3D 1, \
>  	.display.has_dp_mst =3D 1, \
>  	.has_rc6p =3D 0 /* RC6p removed-by HSW */, \
>  	HSW_PIPE_OFFSETS, \
> @@ -690,6 +691,7 @@ static const struct intel_device_info skl_gt4_info =
=3D {
>  	.display.has_fbc =3D 1, \
>  	.display.has_hdcp =3D 1, \
>  	.display.has_psr =3D 1, \
> +	.display.has_psr_hw_tracking =3D 1, \
>  	.has_runtime_pm =3D 1, \
>  	.display.has_csr =3D 1, \
>  	.has_rc6 =3D 1, \
> @@ -884,6 +886,7 @@ static const struct intel_device_info rkl_info =3D {
>  	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
>  		BIT(TRANSCODER_C),
>  	.require_force_probe =3D 1,
> +	.display.has_psr_hw_tracking =3D 0,
>  	.engine_mask =3D
>  		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
>  };
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i=
915/intel_device_info.h
> index 3613c04904e0..34dbffd65bad 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -148,6 +148,7 @@ enum intel_ppgtt_type {
>  	func(has_modular_fia); \
>  	func(has_overlay); \
>  	func(has_psr); \
> +	func(has_psr_hw_tracking); \
>  	func(overlay_needs_physical); \
>  	func(supports_tv);
>  =

> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
