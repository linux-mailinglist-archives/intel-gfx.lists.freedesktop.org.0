Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAVsA0PiAmpEyQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 10:18:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F29351C92A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 10:18:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E465210E1D6;
	Tue, 12 May 2026 08:18:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fNST9tRT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77C6889EBB;
 Tue, 12 May 2026 08:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778573887; x=1810109887;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+ZAlAb7a9jd5Jaz8FiZsZEwQPZx6ZI6V3fhDCcYD9fo=;
 b=fNST9tRTwjLPYMoCpz289OYpS4bcdAuCrRepsopfsU2KjeTvnLJRHiBS
 onazy6fCCZeXYwQHSskVBnqhKnw6F7z0Y8ZD5enndqL+Z4ACHUKwpgrZF
 /BOVXBnxB4wiYCO3JUjJRhF08/MIE4sG7QxOAMwJ1f7FB5Jw/4vwtE7sA
 VpCyaE6+Tnx2VnoyqOpksi8PX6wHGLftV5kpTZX4DnPLqBdmOjP2NRfd5
 URMtGFb4Q/KSS/OD1alcPQf0Q258IaYYZNzFopu5buae4g+nW+0l2NmJb
 +uXuGAaib/vcANA0M+PhqzUl2Ba3cwHoWzop+MfxOxUlT+r5T5D4szzA1 Q==;
X-CSE-ConnectionGUID: Gk52V4gzRYCknoVOnSqhlg==
X-CSE-MsgGUID: Abs9wF/gSBW7pSS4fj2XSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79372875"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="79372875"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 01:18:06 -0700
X-CSE-ConnectionGUID: AZlXgPqdRWqPwDeWZSIphw==
X-CSE-MsgGUID: KrUq3aK9S8Sc8xPram0g+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="236712478"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.158])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 01:18:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Rodrigo
 Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 1/4] drm/i915/bw: Extract platform-specific parameters
In-Reply-To: <20260511223847.GY2131374@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com>
 <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-1-e762cb8662da@intel.com>
 <20260511223847.GY2131374@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 12 May 2026 11:18:02 +0300
Message-ID: <171b0f5dfd5400d72d4bddbdb793e8da8b136cbd@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Rspamd-Queue-Id: 5F29351C92A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Mon, 11 May 2026, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Mon, May 11, 2026 at 01:30:56PM -0300, Gustavo Sousa wrote:
>> We got confirmation from the hardware team that the bandwidth parameters
>> deprogbwlimit and derating are platform-specific and not tied to the
>> display IP.  As such, let's make sure that we use platform checks for
>> those.
>> 
>> The rest of the members of struct intel_sa_info are tied to the display
>> IP and we will deal with them as a follow-up.
>> 
>> v2:
>>   - Use good old if-ladder instead of weird-looking pattern "assign ret,
>>     check platform, then return ret". (Jani, Matt)
>>   - Have a single call site for get_platform_bw_params() and pass the
>>     result as parameter to the *_get_bw_info() functions. (Jani)
>>   - Avoid using "plat" as abbreviation for "platform". (Jani)
>>   - s/_plat_bw_params/_bw_params/, since all of the instances are
>>     prefixed with platform names. (Jani)
>>   - s/struct intel_platform_bw_params/struct intel_soc_bw_params/.
>>     (Matt)
>>   - Do not return a default value; prefer to return NULL and
>>     intentionally cause a NULL pointer dereference if a platform is
>>     missing. (Gustavo)
>> 
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c | 161 ++++++++++++++++++++++----------
>>  1 file changed, 113 insertions(+), 48 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>> index 9c3a9bbb49f6..cf6756b8ae52 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -372,81 +372,147 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>>  	return dclk;
>>  }
>>  
>> +struct intel_soc_bw_params {
>> +	u8 deprogbwlimit;
>> +	u8 derating;
>> +};
>> +
>> +static const struct intel_soc_bw_params icl_bw_params = {
>> +	.deprogbwlimit = 25,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_soc_bw_params tgl_bw_params = {
>> +	.deprogbwlimit = 34,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_soc_bw_params rkl_bw_params = {
>> +	.deprogbwlimit = 20,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_soc_bw_params adl_s_bw_params = {
>> +	.deprogbwlimit = 38,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_soc_bw_params adl_p_bw_params = {
>> +	.deprogbwlimit = 38,
>> +	.derating = 20,
>> +};
>> +
>> +static const struct intel_soc_bw_params bmg_bw_params = {
>> +	.deprogbwlimit = 53,
>> +	.derating = 30,
>> +};
>> +
>> +static const struct intel_soc_bw_params bmg_ecc_bw_params = {
>> +	.deprogbwlimit = 53,
>> +	.derating = 45,
>> +};
>> +
>> +static const struct intel_soc_bw_params ptl_bw_params = {
>> +	.deprogbwlimit = 65,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_soc_bw_params wcl_bw_params = {
>> +	.deprogbwlimit = 22,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_soc_bw_params *get_soc_bw_params(struct intel_display *display)
>> +{
>> +	if (display->platform.dgfx) {
>> +		if (display->platform.dg1) {
>> +			return &tgl_bw_params;
>> +		} else if (display->platform.battlemage) {
>> +			const struct dram_info *dram_info = intel_dram_info(display);
>> +
>> +			if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>> +				return &bmg_ecc_bw_params;
>> +			else
>> +				return &bmg_bw_params;
>> +		}
>> +	} else {
>> +		if (display->platform.icelake ||
>> +		    display->platform.jasperlake ||
>> +		    display->platform.elkhartlake) {
>> +			return &icl_bw_params;
>> +		} else if (display->platform.tigerlake) {
>> +			return &tgl_bw_params;
>> +		} else if (display->platform.rocketlake) {
>> +			return &rkl_bw_params;
>> +		} else if (display->platform.alderlake_s) {
>> +			return &adl_s_bw_params;
>> +		} else if (display->platform.alderlake_p) {
>> +			return &adl_p_bw_params;
>> +		} else if (display->platform.meteorlake ||
>> +			   display->platform.lunarlake) {
>> +			return &adl_s_bw_params;
>
> Any reason not to combine this with the ADL-S branch of the if/else
> ladder?
>
>> +		} else if (display->platform.pantherlake ||
>> +			   display->platform.novalake) {
>> +			if (display->platform.pantherlake_wildcatlake)
>> +				return &wcl_bw_params;
>
> Can we just flatten this out rather than nesting?
>
>         } else if (display->platform.pantherlake_wildcatlake) {
>                 return &wcl_bw_params;
>         } else if (display->platform.pantherlake ||
>                    display->platform.novalake) {
>                 return &ptl_bw_params;
>         }
>
>
>> +			else
>> +				return &ptl_bw_params;
>> +		}
>> +	}
>> +
>> +	drm_WARN(display->drm, 1, "Platform-specific bandwidth parameters not found!\n");
>
> I think 
>
>   i915_driver_hw_probe -> intel_bw_init_hw -> get_soc_bw_params
>
> is called unconditionally on all platforms for i915, not just the recent
> ones where we started caring about memory bandwidth, so I'm not sure if
> this WARN is appropriate since we'll always hit it on the pre-gen11
> stuff.
>
> Since the values populated here only get used when paired with display
> IP version 11 or later, we should probably add that as a condition since
> those are the only cases where it matters that we found a set of SoC
> parameters.

In general, we should stop calling low level display init functions from
i915 core code. Can we move the init call to some display init function?

That said, it'll still get called on all sorts of platforms.

BR,
Jani.


>
>
> Matt
>
>> +
>> +	return NULL;
>> +}
>> +
>>  struct intel_sa_info {
>>  	u16 displayrtids;
>> -	u8 deburst, deprogbwlimit, derating;
>> +	u8 deburst;
>>  };
>>  
>>  static const struct intel_sa_info icl_sa_info = {
>>  	.deburst = 8,
>> -	.deprogbwlimit = 25, /* GB/s */
>>  	.displayrtids = 128,
>> -	.derating = 10,
>>  };
>>  
>>  static const struct intel_sa_info tgl_sa_info = {
>>  	.deburst = 16,
>> -	.deprogbwlimit = 34, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 10,
>>  };
>>  
>>  static const struct intel_sa_info rkl_sa_info = {
>>  	.deburst = 8,
>> -	.deprogbwlimit = 20, /* GB/s */
>>  	.displayrtids = 128,
>> -	.derating = 10,
>>  };
>>  
>>  static const struct intel_sa_info adls_sa_info = {
>>  	.deburst = 16,
>> -	.deprogbwlimit = 38, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 10,
>>  };
>>  
>>  static const struct intel_sa_info adlp_sa_info = {
>>  	.deburst = 16,
>> -	.deprogbwlimit = 38, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 20,
>>  };
>>  
>>  static const struct intel_sa_info mtl_sa_info = {
>>  	.deburst = 32,
>> -	.deprogbwlimit = 38, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 10,
>> -};
>> -
>> -static const struct intel_sa_info xe2_hpd_sa_info = {
>> -	.derating = 30,
>> -	.deprogbwlimit = 53,
>> -	/* Other values not used by simplified algorithm */
>> -};
>> -
>> -static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
>> -	.derating = 45,
>> -	.deprogbwlimit = 53,
>> -	/* Other values not used by simplified algorithm */
>>  };
>>  
>>  static const struct intel_sa_info xe3lpd_sa_info = {
>>  	.deburst = 32,
>> -	.deprogbwlimit = 65, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 10,
>>  };
>>  
>>  static const struct intel_sa_info xe3lpd_3002_sa_info = {
>>  	.deburst = 32,
>> -	.deprogbwlimit = 22, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 10,
>>  };
>>  
>>  static int icl_get_bw_info(struct intel_display *display,
>>  			   const struct dram_info *dram_info,
>> +			   const struct intel_soc_bw_params *soc_bw_params,
>>  			   const struct intel_sa_info *sa)
>>  {
>>  	struct intel_qgv_info qi = {};
>> @@ -466,7 +532,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>  	}
>>  
>>  	dclk_max = icl_sagv_max_dclk(&qi);
>> -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>>  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>>  
>> @@ -496,7 +562,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>>  
>>  			bi->deratedbw[j] = min(maxdebw,
>> -					       bw * (100 - sa->derating) / 100);
>> +					       bw * (100 - soc_bw_params->derating) / 100);
>>  
>>  			drm_dbg_kms(display->drm,
>>  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
>> @@ -518,6 +584,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>  
>>  static int tgl_get_bw_info(struct intel_display *display,
>>  			   const struct dram_info *dram_info,
>> +			   const struct intel_soc_bw_params *soc_bw_params,
>>  			   const struct intel_sa_info *sa)
>>  {
>>  	struct intel_qgv_info qi = {};
>> @@ -554,7 +621,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>  	dclk_max = icl_sagv_max_dclk(&qi);
>>  
>>  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
>> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>>  
>>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>>  	/*
>> @@ -599,7 +666,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>>  
>>  			bi->deratedbw[j] = min(maxdebw,
>> -					       bw * (100 - sa->derating) / 100);
>> +					       bw * (100 - soc_bw_params->derating) / 100);
>>  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
>>  							  num_channels *
>>  							  qi.channel_width, 8);
>> @@ -661,7 +728,7 @@ static void dg2_get_bw_info(struct intel_display *display)
>>  
>>  static int xe2_hpd_get_bw_info(struct intel_display *display,
>>  			       const struct dram_info *dram_info,
>> -			       const struct intel_sa_info *sa)
>> +			       const struct intel_soc_bw_params *soc_bw_params)
>>  {
>>  	struct intel_qgv_info qi = {};
>>  	int num_channels = dram_info->num_channels;
>> @@ -676,14 +743,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
>>  	}
>>  
>>  	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
>> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>>  
>>  	for (i = 0; i < qi.num_points; i++) {
>>  		const struct intel_qgv_point *point = &qi.points[i];
>>  		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
>>  
>>  		display->bw.max[0].deratedbw[i] =
>> -			min(maxdebw, (100 - sa->derating) * bw / 100);
>> +			min(maxdebw, (100 - soc_bw_params->derating) * bw / 100);
>>  		display->bw.max[0].peakbw[i] = bw;
>>  
>>  		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
>> @@ -792,6 +859,7 @@ static unsigned int icl_qgv_bw(struct intel_display *display,
>>  void intel_bw_init_hw(struct intel_display *display)
>>  {
>>  	const struct dram_info *dram_info = intel_dram_info(display);
>> +	const struct intel_soc_bw_params *soc_bw_params = get_soc_bw_params(display);
>>  
>>  	if (!HAS_DISPLAY(display))
>>  		return;
>> @@ -807,28 +875,25 @@ void intel_bw_init_hw(struct intel_display *display)
>>  
>>  	if (DISPLAY_VER(display) >= 30) {
>>  		if (DISPLAY_VERx100(display) == 3002)
>> -			tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
>> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_3002_sa_info);
>>  		else
>> -			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
>> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_sa_info);
>>  	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>> -		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
>> -		else
>> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
>> +		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
>>  	} else if (DISPLAY_VER(display) >= 14) {
>> -		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &mtl_sa_info);
>>  	} else if (display->platform.dg2) {
>>  		dg2_get_bw_info(display);
>>  	} else if (display->platform.alderlake_p) {
>> -		tgl_get_bw_info(display, dram_info, &adlp_sa_info);
>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &adlp_sa_info);
>>  	} else if (display->platform.alderlake_s) {
>> -		tgl_get_bw_info(display, dram_info, &adls_sa_info);
>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &adls_sa_info);
>>  	} else if (display->platform.rocketlake) {
>> -		tgl_get_bw_info(display, dram_info, &rkl_sa_info);
>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &rkl_sa_info);
>>  	} else if (DISPLAY_VER(display) == 12) {
>> -		tgl_get_bw_info(display, dram_info, &tgl_sa_info);
>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &tgl_sa_info);
>>  	} else if (DISPLAY_VER(display) == 11) {
>> -		icl_get_bw_info(display, dram_info, &icl_sa_info);
>> +		icl_get_bw_info(display, dram_info, soc_bw_params, &icl_sa_info);
>>  	}
>>  }
>>  
>> 
>> -- 
>> 2.53.0
>> 

-- 
Jani Nikula, Intel
