Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8051783D3
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 21:19:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 135FB6E946;
	Tue,  3 Mar 2020 20:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E70A36E946
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 20:19:15 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 12:19:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="243710209"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga006.jf.intel.com with ESMTP; 03 Mar 2020 12:19:14 -0800
Date: Tue, 3 Mar 2020 12:19:14 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200303201914.GO174531@mdroper-desk1.amr.corp.intel.com>
References: <20200302231421.224322-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302231421.224322-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gen11: Moving WAs to
 rcs_engine_wa_init()
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

On Mon, Mar 02, 2020 at 03:14:20PM -0800, Jos=E9 Roberto de Souza wrote:
> This are register of render engine, so after a render reset those
> would return to the default value and init_clock_gating() is not
> called for single engine reset.
> So here moving it rcs_engine_wa_init() that will guarantee that this
> WAs will not be lost.
> =

> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

rcs_engine_wa_init() is starting to get pretty long (and will get even
longer when new platforms show up).  We may want to think about breaking
it into per-platform handlers at some point like we use for general
gt/ctx workarounds.


Matt

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 15 +++++++++++++++
>  drivers/gpu/drm/i915/intel_pm.c             | 15 ---------------
>  2 files changed, 15 insertions(+), 15 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index 3e375a3b7714..90e1c48dd6be 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1454,6 +1454,21 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>  				   GEN11_SCRATCH2,
>  				   GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE,
>  				   0);
> +
> +		/* WaEnable32PlaneMode:icl */
> +		wa_masked_en(wal, GEN9_CSFE_CHICKEN1_RCS,
> +			     GEN11_ENABLE_32_PLANE_MODE);
> +
> +		/*
> +		 * Wa_1408615072:icl,ehl  (vsunit)
> +		 * Wa_1407596294:icl,ehl  (hsunit)
> +		 */
> +		wa_masked_en(wal, UNSLICE_UNIT_LEVEL_CLKGATE,
> +			     VSUNIT_CLKGATE_DIS | HSUNIT_CLKGATE_DIS);
> +
> +		/* Wa_1407352427:icl,ehl */
> +		wa_masked_en(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> +			     PSDUNIT_CLKGATE_DIS);
>  	}
>  =

>  	if (IS_GEN_RANGE(i915, 9, 11)) {
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 831e53c137cf..d3df00445787 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6782,21 +6782,6 @@ static void icl_init_clock_gating(struct drm_i915_=
private *dev_priv)
>  	I915_WRITE(GEN10_DFR_RATIO_EN_AND_CHICKEN,
>  		   I915_READ(GEN10_DFR_RATIO_EN_AND_CHICKEN) & ~DFR_DISABLE);
>  =

> -	/* WaEnable32PlaneMode:icl */
> -	I915_WRITE(GEN9_CSFE_CHICKEN1_RCS,
> -		   _MASKED_BIT_ENABLE(GEN11_ENABLE_32_PLANE_MODE));
> -
> -	/*
> -	 * Wa_1408615072:icl,ehl  (vsunit)
> -	 * Wa_1407596294:icl,ehl  (hsunit)
> -	 */
> -	intel_uncore_rmw(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE,
> -			 0, VSUNIT_CLKGATE_DIS | HSUNIT_CLKGATE_DIS);
> -
> -	/* Wa_1407352427:icl,ehl */
> -	intel_uncore_rmw(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE2,
> -			 0, PSDUNIT_CLKGATE_DIS);
> -
>  	/*Wa_14010594013:icl, ehl */
>  	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
>  			 0, CNL_DELAY_PMRSP);
> -- =

> 2.25.1
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
