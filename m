Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BBE4F805F
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 15:23:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A247E10EB0E;
	Thu,  7 Apr 2022 13:23:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3307510EB0E
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 13:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649337781; x=1680873781;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vWEwAH9/nhTZ8pIk2narFPG/cxjmb4bhddmjli9AABg=;
 b=dbxF/DNJMbobb6o5cJqu3f93n63HuH6NKZAiq2B3OFvxrJRVRrPENTES
 npwclHgMzNJ1n4ddVcZ3Di8ZGSae+xPY8P+JvOtrQI5H8IH8/2KH9XW7X
 Qeob2wsvChYm3G6JOnnDqixPn1U+CmVIVgh3mnvrYTTp74HCIMJeB0M/S
 PLoAxxTi+ZaO9kzNm9WOR7S5RVRfnnmI+Zrq2rb/O18hUvt+1YsLv1Pr+
 Xa6q9QjCvIRoCukhXXgqcmUhBQkPgK5wlZFGUBK5NHSc9WKkBkWLf3MF6
 kM/jn8PUSRce1MPRTuUVIOxt9YmU9pQIVG7IxWt0uy95xEYIpBhNuFtKJ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10309"; a="322011419"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="322011419"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 06:23:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="524363831"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 07 Apr 2022 06:23:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 7 Apr 2022 06:23:00 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 7 Apr 2022 06:22:59 -0700
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85]) by
 fmsmsx605.amr.corp.intel.com ([10.18.126.85]) with mapi id 15.01.2308.027;
 Thu, 7 Apr 2022 06:22:59 -0700
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/rps: Centralize computation of freq caps
Thread-Index: AQHYSesnfWijJqv7K0G4wtEiHYx3bqzkcR7A
Date: Thu, 7 Apr 2022 13:22:59 +0000
Message-ID: <5ca3abcee87641f2a1ff3434faf30a00@intel.com>
References: <20220406191848.20895-1-ashutosh.dixit@intel.com>
In-Reply-To: <20220406191848.20895-1-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rps: Centralize computation of
 freq caps
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Dixit, Ashutosh <ashutosh.dixit@intel.com>
> Sent: Thursday, April 7, 2022 12:49 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>
> Subject: [PATCH] drm/i915/rps: Centralize computation of freq caps
>=20
> Freq caps (i.e. RP0, RP1 and RPn frequencies) are read from HW. However t=
he
> formats (bit positions, widths, registers and units) of these vary for di=
fferent
> generations with even more variations arriving in the future. In order no=
t to
> have to do identical computation for these caps in multiple places, here =
we
> centralize the computation of these caps. This makes the code cleaner and=
 also
> more extensible for the future.
>=20
> v2: Clarify that caps are in "hw units" in comments (Lucas De Marchi)
> v3: Minor checkpatch fix
> v4: s/intel_rps_get_freq_caps/gen6_rps_get_freq_caps/ (Badal Nilawar)
> v5: Changes comments to kernel doc (Anshuman Gupta)
Acked-by: Anshuman Gupta <anshuman.gupta@intel.com>
>=20
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  24 +---
>  drivers/gpu/drm/i915/gt/intel_rps.c           | 108 +++++++++++-------
>  drivers/gpu/drm/i915/gt/intel_rps.h           |   2 +-
>  drivers/gpu/drm/i915/gt/intel_rps_types.h     |  15 +++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  14 +--
>  5 files changed, 91 insertions(+), 72 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index 003a53c49c86..0c6b9eb724ae 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> @@ -342,17 +342,16 @@ void intel_gt_pm_frequency_dump(struct intel_gt
> *gt, struct drm_printer *p)
>  	} else if (GRAPHICS_VER(i915) >=3D 6) {
>  		u32 rp_state_limits;
>  		u32 gt_perf_status;
> -		u32 rp_state_cap;
> +		struct intel_rps_freq_caps caps;
>  		u32 rpmodectl, rpinclimit, rpdeclimit;
>  		u32 rpstat, cagf, reqf;
>  		u32 rpcurupei, rpcurup, rpprevup;
>  		u32 rpcurdownei, rpcurdown, rpprevdown;
>  		u32 rpupei, rpupt, rpdownei, rpdownt;
>  		u32 pm_ier, pm_imr, pm_isr, pm_iir, pm_mask;
> -		int max_freq;
>=20
>  		rp_state_limits =3D intel_uncore_read(uncore,
> GEN6_RP_STATE_LIMITS);
> -		rp_state_cap =3D intel_rps_read_state_cap(rps);
> +		gen6_rps_get_freq_caps(rps, &caps);
>  		if (IS_GEN9_LP(i915))
>  			gt_perf_status =3D intel_uncore_read(uncore,
> BXT_GT_PERF_STATUS);
>  		else
> @@ -474,25 +473,12 @@ void intel_gt_pm_frequency_dump(struct intel_gt
> *gt, struct drm_printer *p)
>  		drm_printf(p, "RP DOWN THRESHOLD: %d (%lldns)\n",
>  			   rpdownt, intel_gt_pm_interval_to_ns(gt, rpdownt));
>=20
> -		max_freq =3D (IS_GEN9_LP(i915) ? rp_state_cap >> 0 :
> -			    rp_state_cap >> 16) & 0xff;
> -		max_freq *=3D (IS_GEN9_BC(i915) ||
> -			     GRAPHICS_VER(i915) >=3D 11 ? GEN9_FREQ_SCALER :
> 1);
>  		drm_printf(p, "Lowest (RPN) frequency: %dMHz\n",
> -			   intel_gpu_freq(rps, max_freq));
> -
> -		max_freq =3D (rp_state_cap & 0xff00) >> 8;
> -		max_freq *=3D (IS_GEN9_BC(i915) ||
> -			     GRAPHICS_VER(i915) >=3D 11 ? GEN9_FREQ_SCALER :
> 1);
> +			   intel_gpu_freq(rps, caps.min_freq));
>  		drm_printf(p, "Nominal (RP1) frequency: %dMHz\n",
> -			   intel_gpu_freq(rps, max_freq));
> -
> -		max_freq =3D (IS_GEN9_LP(i915) ? rp_state_cap >> 16 :
> -			    rp_state_cap >> 0) & 0xff;
> -		max_freq *=3D (IS_GEN9_BC(i915) ||
> -			     GRAPHICS_VER(i915) >=3D 11 ? GEN9_FREQ_SCALER :
> 1);
> +			   intel_gpu_freq(rps, caps.rp1_freq));
>  		drm_printf(p, "Max non-overclocked (RP0) frequency:
> %dMHz\n",
> -			   intel_gpu_freq(rps, max_freq));
> +			   intel_gpu_freq(rps, caps.rp0_freq));
>  		drm_printf(p, "Max overclocked frequency: %dMHz\n",
>  			   intel_gpu_freq(rps, rps->max_freq));
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c
> b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 6c9fdf7906c5..3476a11f294c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1070,24 +1070,67 @@ int intel_rps_set(struct intel_rps *rps, u8 val)
>  	return 0;
>  }
>=20
> -static void gen6_rps_init(struct intel_rps *rps)
> +static u32 intel_rps_read_state_cap(struct intel_rps *rps)
>  {
>  	struct drm_i915_private *i915 =3D rps_to_i915(rps);
> -	u32 rp_state_cap =3D intel_rps_read_state_cap(rps);
> +	struct intel_uncore *uncore =3D rps_to_uncore(rps);
>=20
> -	/* All of these values are in units of 50MHz */
> +	if (IS_XEHPSDV(i915))
> +		return intel_uncore_read(uncore, XEHPSDV_RP_STATE_CAP);
> +	else if (IS_GEN9_LP(i915))
> +		return intel_uncore_read(uncore, BXT_RP_STATE_CAP);
> +	else
> +		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP); }
> +
> +/**
> + * gen6_rps_get_freq_caps - Get freq caps exposed by HW
> + * @rps: the intel_rps structure
> + * @caps: returned freq caps
> + *
> + * Returned "caps" frequencies should be converted to MHz using
> + * intel_gpu_freq()
> + */
> +void gen6_rps_get_freq_caps(struct intel_rps *rps, struct
> +intel_rps_freq_caps *caps) {
> +	struct drm_i915_private *i915 =3D rps_to_i915(rps);
> +	u32 rp_state_cap;
> +
> +	rp_state_cap =3D intel_rps_read_state_cap(rps);
>=20
>  	/* static values from HW: RP0 > RP1 > RPn (min_freq) */
>  	if (IS_GEN9_LP(i915)) {
> -		rps->rp0_freq =3D (rp_state_cap >> 16) & 0xff;
> -		rps->rp1_freq =3D (rp_state_cap >>  8) & 0xff;
> -		rps->min_freq =3D (rp_state_cap >>  0) & 0xff;
> +		caps->rp0_freq =3D (rp_state_cap >> 16) & 0xff;
> +		caps->rp1_freq =3D (rp_state_cap >>  8) & 0xff;
> +		caps->min_freq =3D (rp_state_cap >>  0) & 0xff;
>  	} else {
> -		rps->rp0_freq =3D (rp_state_cap >>  0) & 0xff;
> -		rps->rp1_freq =3D (rp_state_cap >>  8) & 0xff;
> -		rps->min_freq =3D (rp_state_cap >> 16) & 0xff;
> +		caps->rp0_freq =3D (rp_state_cap >>  0) & 0xff;
> +		caps->rp1_freq =3D (rp_state_cap >>  8) & 0xff;
> +		caps->min_freq =3D (rp_state_cap >> 16) & 0xff;
>  	}
>=20
> +	if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >=3D 11) {
> +		/*
> +		 * In this case rp_state_cap register reports frequencies in
> +		 * units of 50 MHz. Convert these to the actual "hw unit", i.e.
> +		 * units of 16.67 MHz
> +		 */
> +		caps->rp0_freq *=3D GEN9_FREQ_SCALER;
> +		caps->rp1_freq *=3D GEN9_FREQ_SCALER;
> +		caps->min_freq *=3D GEN9_FREQ_SCALER;
> +	}
> +}
> +
> +static void gen6_rps_init(struct intel_rps *rps) {
> +	struct drm_i915_private *i915 =3D rps_to_i915(rps);
> +	struct intel_rps_freq_caps caps;
> +
> +	gen6_rps_get_freq_caps(rps, &caps);
> +	rps->rp0_freq =3D caps.rp0_freq;
> +	rps->rp1_freq =3D caps.rp1_freq;
> +	rps->min_freq =3D caps.min_freq;
> +
>  	/* hw_max =3D RP0 until we check for overclocking */
>  	rps->max_freq =3D rps->rp0_freq;
>=20
> @@ -1095,26 +1138,18 @@ static void gen6_rps_init(struct intel_rps *rps)
>  	if (IS_HASWELL(i915) || IS_BROADWELL(i915) ||
>  	    IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >=3D 11) {
>  		u32 ddcc_status =3D 0;
> +		u32 mult =3D 1;
>=20
> +		if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >=3D 11)
> +			mult =3D GEN9_FREQ_SCALER;
>  		if (snb_pcode_read(i915,
> HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL,
>  				   &ddcc_status, NULL) =3D=3D 0)
>  			rps->efficient_freq =3D
> -				clamp_t(u8,
> -					(ddcc_status >> 8) & 0xff,
> +				clamp_t(u32,
> +					((ddcc_status >> 8) & 0xff) * mult,
>  					rps->min_freq,
>  					rps->max_freq);
>  	}
> -
> -	if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >=3D 11) {
> -		/* Store the frequency values in 16.66 MHZ units, which is
> -		 * the natural hardware unit for SKL
> -		 */
> -		rps->rp0_freq *=3D GEN9_FREQ_SCALER;
> -		rps->rp1_freq *=3D GEN9_FREQ_SCALER;
> -		rps->min_freq *=3D GEN9_FREQ_SCALER;
> -		rps->max_freq *=3D GEN9_FREQ_SCALER;
> -		rps->efficient_freq *=3D GEN9_FREQ_SCALER;
> -	}
>  }
>=20
>  static bool rps_reset(struct intel_rps *rps) @@ -2219,19 +2254,6 @@ int
> intel_rps_set_min_frequency(struct intel_rps *rps, u32 val)
>  		return set_min_freq(rps, val);
>  }
>=20
> -u32 intel_rps_read_state_cap(struct intel_rps *rps) -{
> -	struct drm_i915_private *i915 =3D rps_to_i915(rps);
> -	struct intel_uncore *uncore =3D rps_to_uncore(rps);
> -
> -	if (IS_XEHPSDV(i915))
> -		return intel_uncore_read(uncore, XEHPSDV_RP_STATE_CAP);
> -	else if (IS_GEN9_LP(i915))
> -		return intel_uncore_read(uncore, BXT_RP_STATE_CAP);
> -	else
> -		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
> -}
> -
>  static void intel_rps_set_manual(struct intel_rps *rps, bool enable)  {
>  	struct intel_uncore *uncore =3D rps_to_uncore(rps); @@ -2244,18
> +2266,18 @@ static void intel_rps_set_manual(struct intel_rps *rps, bool
> enable)  void intel_rps_raise_unslice(struct intel_rps *rps)  {
>  	struct intel_uncore *uncore =3D rps_to_uncore(rps);
> -	u32 rp0_unslice_req;
>=20
>  	mutex_lock(&rps->lock);
>=20
>  	if (rps_uses_slpc(rps)) {
>  		/* RP limits have not been initialized yet for SLPC path */
> -		rp0_unslice_req =3D ((intel_rps_read_state_cap(rps) >> 0)
> -				   & 0xff) * GEN9_FREQ_SCALER;
> +		struct intel_rps_freq_caps caps;
> +
> +		gen6_rps_get_freq_caps(rps, &caps);
>=20
>  		intel_rps_set_manual(rps, true);
>  		intel_uncore_write(uncore, GEN6_RPNSWREQ,
> -				   ((rp0_unslice_req <<
> +				   ((caps.rp0_freq <<
>  				   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT) |
>  				   GEN9_IGNORE_SLICE_RATIO));
>  		intel_rps_set_manual(rps, false);
> @@ -2269,18 +2291,18 @@ void intel_rps_raise_unslice(struct intel_rps *rp=
s)
> void intel_rps_lower_unslice(struct intel_rps *rps)  {
>  	struct intel_uncore *uncore =3D rps_to_uncore(rps);
> -	u32 rpn_unslice_req;
>=20
>  	mutex_lock(&rps->lock);
>=20
>  	if (rps_uses_slpc(rps)) {
>  		/* RP limits have not been initialized yet for SLPC path */
> -		rpn_unslice_req =3D ((intel_rps_read_state_cap(rps) >> 16)
> -				   & 0xff) * GEN9_FREQ_SCALER;
> +		struct intel_rps_freq_caps caps;
> +
> +		gen6_rps_get_freq_caps(rps, &caps);
>=20
>  		intel_rps_set_manual(rps, true);
>  		intel_uncore_write(uncore, GEN6_RPNSWREQ,
> -				   ((rpn_unslice_req <<
> +				   ((caps.min_freq <<
>  				   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT) |
>  				   GEN9_IGNORE_SLICE_RATIO));
>  		intel_rps_set_manual(rps, false);
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h
> b/drivers/gpu/drm/i915/gt/intel_rps.h
> index ba1ed9f7ecda..1e8d56491308 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.h
> @@ -45,7 +45,7 @@ u32 intel_rps_get_rp1_frequency(struct intel_rps *rps);
>  u32 intel_rps_get_rpn_frequency(struct intel_rps *rps);
>  u32 intel_rps_read_punit_req(struct intel_rps *rps);
>  u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps);
> -u32 intel_rps_read_state_cap(struct intel_rps *rps);
> +void gen6_rps_get_freq_caps(struct intel_rps *rps, struct
> +intel_rps_freq_caps *caps);
>  void intel_rps_raise_unslice(struct intel_rps *rps);  void
> intel_rps_lower_unslice(struct intel_rps *rps);
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h
> b/drivers/gpu/drm/i915/gt/intel_rps_types.h
> index 3941d8551f52..9173ec75f2b8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
> @@ -37,6 +37,21 @@ enum {
>  	INTEL_RPS_TIMER,
>  };
>=20
> +/**
> + * struct intel_rps_freq_caps - rps freq capabilities
> + * @rp0_freq: non-overclocked max frequency
> + * @rp1_freq: "less than" RP0 power/freqency
> + * @min_freq: aka RPn, minimum frequency
> + *
> + * Freq caps exposed by HW, values are in "hw units" and
> +intel_gpu_freq()
> + * should be used to convert to MHz
> + */
> +struct intel_rps_freq_caps {
> +	u8 rp0_freq;
> +	u8 rp1_freq;
> +	u8 min_freq;
> +};
> +
>  struct intel_rps {
>  	struct mutex lock; /* protects enabling and the worker */
>=20
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index 9f032c65a488..9e02355e44f1 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -582,16 +582,12 @@ static int slpc_use_fused_rp0(struct intel_guc_slpc
> *slpc)  static void slpc_get_rp_values(struct intel_guc_slpc *slpc)  {
>  	struct intel_rps *rps =3D &slpc_to_gt(slpc)->rps;
> -	u32 rp_state_cap;
> +	struct intel_rps_freq_caps caps;
>=20
> -	rp_state_cap =3D intel_rps_read_state_cap(rps);
> -
> -	slpc->rp0_freq =3D REG_FIELD_GET(RP0_CAP_MASK, rp_state_cap) *
> -					GT_FREQUENCY_MULTIPLIER;
> -	slpc->rp1_freq =3D REG_FIELD_GET(RP1_CAP_MASK, rp_state_cap) *
> -					GT_FREQUENCY_MULTIPLIER;
> -	slpc->min_freq =3D REG_FIELD_GET(RPN_CAP_MASK, rp_state_cap) *
> -					GT_FREQUENCY_MULTIPLIER;
> +	gen6_rps_get_freq_caps(rps, &caps);
> +	slpc->rp0_freq =3D intel_gpu_freq(rps, caps.rp0_freq);
> +	slpc->rp1_freq =3D intel_gpu_freq(rps, caps.rp1_freq);
> +	slpc->min_freq =3D intel_gpu_freq(rps, caps.min_freq);
>=20
>  	if (!slpc->boost_freq)
>  		slpc->boost_freq =3D slpc->rp0_freq;
> --
> 2.34.1

