Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC94930521C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 06:28:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1AEE6E52D;
	Wed, 27 Jan 2021 05:28:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A39F6E52D
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 05:27:59 +0000 (UTC)
IronPort-SDR: VtmtTbk1zVM5NCJC3YG5+JSstEoTm0oXYYonjyIynm3TP0Ft1Z9A7ZAnM/rA0N8UuT8SuIjEHt
 rA07FAHt9PaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="167115961"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="167115961"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 21:27:58 -0800
IronPort-SDR: /kmSw0E2AfRJHBPZsAGEhBkd+YjIklAUo+cnh5u8iV9JGyQpX+b1IXSvAgqKQbqJ5TQ7Oh/IOg
 r8J/SkdgVeVQ==
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="429971569"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 21:27:58 -0800
Date: Tue, 26 Jan 2021 21:27:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210127052756.GM787460@mdroper-desk1.amr.corp.intel.com>
References: <20210127041159.136409-1-aditya.swarup@intel.com>
 <20210127041159.136409-10-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127041159.136409-10-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/adl_s: Add GT and CTX WAs for
 ADL-S
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

On Tue, Jan 26, 2021 at 08:11:59PM -0800, Aditya Swarup wrote:
> - Extend Wa_1606931601 and Wa_1409804808 to ADL-S.
> - Extend Wa_14010919138 and Wa_14010229206 to ADL-S (Madhumitha)
> - Extend Wa_22010271021 to ADLS (cyokoyam)
> =

> v2:
> - Extend Wa_1409804808 and remove unnecessary branching/redundant
>   adls workaround placeholder functions.
> - Split WAs properly based on previous platforms and applicable ADLS
>   WA.
> =

> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli=
.pradeep@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>

Matches the current WA database.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 34 +++++++++++++--------
>  1 file changed, 21 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index 71d1c19c868b..3b4a7da60f0b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -729,7 +729,8 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *en=
gine,
>  =

>  	if (IS_DG1(i915))
>  		dg1_ctx_workarounds_init(engine, wal);
> -	else if (IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915))
> +	else if (IS_ALDERLAKE_S(i915) || IS_ROCKETLAKE(i915) ||
> +		 IS_TIGERLAKE(i915))
>  		tgl_ctx_workarounds_init(engine, wal);
>  	else if (IS_GEN(i915, 12))
>  		gen12_ctx_workarounds_init(engine, wal);
> @@ -1639,45 +1640,45 @@ rcs_engine_wa_init(struct intel_engine_cs *engine=
, struct i915_wa_list *wal)
>  			    GEN7_DISABLE_SAMPLER_PREFETCH);
>  	}
>  =

> -	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> -		/* Wa_1606931601:tgl,rkl,dg1 */
> +	if (IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
> +	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> +		/* Wa_1606931601:tgl,rkl,dg1,adl-s */
>  		wa_masked_en(wal, GEN7_ROW_CHICKEN2, GEN12_DISABLE_EARLY_READ);
>  =

>  		/*
>  		 * Wa_1407928979:tgl A*
>  		 * Wa_18011464164:tgl[B0+],dg1[B0+]
>  		 * Wa_22010931296:tgl[B0+],dg1[B0+]
> -		 * Wa_14010919138:rkl, dg1
> +		 * Wa_14010919138:rkl,dg1,adl-s
>  		 */
>  		wa_write_or(wal, GEN7_FF_THREAD_MODE,
>  			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
>  =

>  		/*
>  		 * Wa_1606700617:tgl,dg1
> -		 * Wa_22010271021:tgl,rkl,dg1
> +		 * Wa_22010271021:tgl,rkl,dg1, adl-s
>  		 */
>  		wa_masked_en(wal,
>  			     GEN9_CS_DEBUG_MODE1,
>  			     FF_DOP_CLOCK_GATE_DISABLE);
> -
> -		/* Wa_1406941453:tgl,rkl,dg1 */
> -		wa_masked_en(wal,
> -			     GEN10_SAMPLER_MODE,
> -			     ENABLE_SMALLPL);
>  	}
>  =

> -	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
> +	if (IS_ALDERLAKE_S(i915) || IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_=
A0) ||
>  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> -		/* Wa_1409804808:tgl,rkl,dg1[a0] */
> +		/* Wa_1409804808:tgl,rkl,dg1[a0],adl-s */
>  		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
>  			     GEN12_PUSH_CONST_DEREF_HOLD_DIS);
>  =

>  		/*
>  		 * Wa_1409085225:tgl
> -		 * Wa_14010229206:tgl,rkl,dg1[a0]
> +		 * Wa_14010229206:tgl,rkl,dg1[a0],adl-s
>  		 */
>  		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
> +	}
> +
>  =

> +	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
> +	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>  		/*
>  		 * Wa_1607030317:tgl
>  		 * Wa_1607186500:tgl
> @@ -1694,6 +1695,13 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>  			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
>  	}
>  =

> +	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> +		/* Wa_1406941453:tgl,rkl,dg1 */
> +		wa_masked_en(wal,
> +			     GEN10_SAMPLER_MODE,
> +			     ENABLE_SMALLPL);
> +	}
> +
>  	if (IS_GEN(i915, 11)) {
>  		/* This is not an Wa. Enable for better image quality */
>  		wa_masked_en(wal,
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
