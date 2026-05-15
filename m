Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJnwL5tOB2p3xwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 18:49:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDD6553FA5
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 18:49:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68BF010E42B;
	Fri, 15 May 2026 16:49:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N1CjPhgj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 898AF10F58B;
 Fri, 15 May 2026 16:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778863768; x=1810399768;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+puYBlmZHceMme18gp+n45ARHpsNSC1WIzudeVbzbcQ=;
 b=N1CjPhgjdMjRdyFu/hxptH+3nkR+ZavSNW8g0saq3hphw42sSEw900YI
 OqcjjYBou4AJXVVgxtodaZtGcIofBJMA6jU720ErmJX4sqRzJ1zJswFWy
 bi/2nnP8a3IMxLHkaEeVS85f/a1icg7rQhneQ6d6r13oMMNFedmwrXAa2
 c8svTb8EUaGKUBTwigCPX9ez7N+Ei6hBHBmIDpqf/EgWPt4NOHIY48ywW
 hAnMQW5yZLYNWriqmFeZPXnP3Lf71j4RR3zngQvj5/PzxDC9Ny9c3Vc9d
 T0UBQ2pP5aVuOwNyBr3SiHtTgsRL54PzI5ZArFz60YVZrXcuCDgOYPrh0 w==;
X-CSE-ConnectionGUID: xO+HhyOySNOMiNUW+q6haA==
X-CSE-MsgGUID: yjsuERnXTu6kqibIQpJicQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="90131205"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="90131205"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 09:49:27 -0700
X-CSE-ConnectionGUID: 6uuudNGDSZ2vd4zxK06JmA==
X-CSE-MsgGUID: Hq0bua/hStiq/MTLWdIQHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="236094545"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.71])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 09:49:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v3 2/5] drm/i915/bw: Extract platform-specific parameters
In-Reply-To: <87cxywptnb.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-0-68727d6fe3ec@intel.com>
 <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-2-68727d6fe3ec@intel.com>
 <87cxywptnb.fsf@intel.com>
Date: Fri, 15 May 2026 19:49:22 +0300
Message-ID: <3427613dfaf60b4fd322d58221dd78043e30caff@intel.com>
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
X-Rspamd-Queue-Id: 2DDD6553FA5
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Fri, 15 May 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Gustavo Sousa <gustavo.sousa@intel.com> writes:
>
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
>> v3:
>>   - Call get_soc_bw_params() only after the check on
>>     HAS_DISPLAY(display). (Jani)
>>   - Combine if-ladder branches for adl_s_bw_params into a single one.
>>     (Matt)
>>   - Flatten if-ladder by checking for WCL before PTL (as opposed to
>>     checking for WCL inside the brace for PTL). (Matt)
>>   - Bail out of intel_bw_init_hw() if display version is below 11.
>>     (Gustavo)
>>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c | 162 ++++++++++++++++++++++----------
>>  1 file changed, 114 insertions(+), 48 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>> index 7eef693b51ad..351ecf741b54 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -372,81 +372,144 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
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
>> +		    display->platform.elkhartlake)
>> +			return &icl_bw_params;
>> +		else if (display->platform.tigerlake)
>> +			return &tgl_bw_params;
>> +		else if (display->platform.rocketlake)
>> +			return &rkl_bw_params;
>> +		else if (display->platform.alderlake_s ||
>> +			 display->platform.meteorlake ||
>> +			 display->platform.lunarlake)
>> +			return &adl_s_bw_params;
>> +		else if (display->platform.alderlake_p)
>> +			return &adl_p_bw_params;
>> +		else if (display->platform.pantherlake_wildcatlake)
>> +			return &wcl_bw_params;
>> +		else if (display->platform.pantherlake ||
>> +			 display->platform.novalake)
>> +			return &ptl_bw_params;
>> +	}
>> +
>> +	drm_WARN(display->drm, 1, "Platform-specific bandwidth parameters not found!\n");
>
> CI shows the warning because DG2 does not use bandwidth
> parameters and get_soc_bw_params() rightfully does not cover DG2.
>
> We could just get rid of the warnings in get_soc_bw_params() and
> get_display_bw_params() all together.  The idea of the warning was to
> serve as an aid to the developer, but I guess tracing the null pointer
> dereference back to those functions shouldn't be too hard?
>
> Another idea is to make sure that only the functions that use those
> parameters make the call to get_{soc,display}_bw_params().
>
> Jani, I know you preferred the other way around, but maybe this is a
> compelling reason for moving the call to the direct users?

I still prefer figuring the pointer out early, and passing it around to
the places that need it. Actually, ditto for dram_info above. I
refactored this stuff once to call intel_dram_info() once, and pass the
pointer around.

I think the alternatives are:

- Remove the drm_WARN() altogether.

- Return NULL directly for platforms where the parameters don't make
  sense, e.g. DG2.

BR,
Jani.

>
> --
> Gustavo Sousa
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
>> @@ -466,7 +529,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>  	}
>>  
>>  	dclk_max = icl_sagv_max_dclk(&qi);
>> -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>>  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>>  
>> @@ -496,7 +559,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>>  
>>  			bi->deratedbw[j] = min(maxdebw,
>> -					       bw * (100 - sa->derating) / 100);
>> +					       bw * (100 - soc_bw_params->derating) / 100);
>>  
>>  			drm_dbg_kms(display->drm,
>>  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
>> @@ -518,6 +581,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>  
>>  static int tgl_get_bw_info(struct intel_display *display,
>>  			   const struct dram_info *dram_info,
>> +			   const struct intel_soc_bw_params *soc_bw_params,
>>  			   const struct intel_sa_info *sa)
>>  {
>>  	struct intel_qgv_info qi = {};
>> @@ -554,7 +618,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>  	dclk_max = icl_sagv_max_dclk(&qi);
>>  
>>  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
>> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>>  
>>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>>  	/*
>> @@ -599,7 +663,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>>  
>>  			bi->deratedbw[j] = min(maxdebw,
>> -					       bw * (100 - sa->derating) / 100);
>> +					       bw * (100 - soc_bw_params->derating) / 100);
>>  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
>>  							  num_channels *
>>  							  qi.channel_width, 8);
>> @@ -661,7 +725,7 @@ static void dg2_get_bw_info(struct intel_display *display)
>>  
>>  static int xe2_hpd_get_bw_info(struct intel_display *display,
>>  			       const struct dram_info *dram_info,
>> -			       const struct intel_sa_info *sa)
>> +			       const struct intel_soc_bw_params *soc_bw_params)
>>  {
>>  	struct intel_qgv_info qi = {};
>>  	int num_channels = dram_info->num_channels;
>> @@ -676,14 +740,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
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
>> @@ -792,11 +856,16 @@ static unsigned int icl_qgv_bw(struct intel_display *display,
>>  void intel_bw_init_hw(struct intel_display *display)
>>  {
>>  	const struct dram_info *dram_info;
>> +	const struct intel_soc_bw_params *soc_bw_params;
>>  
>>  	if (!HAS_DISPLAY(display))
>>  		return;
>>  
>> +	if (DISPLAY_VER(display) < 11)
>> +		return;
>> +
>>  	dram_info = intel_dram_info(display);
>> +	soc_bw_params = get_soc_bw_params(display);
>>  
>>  	/*
>>  	 * Starting with Xe3p_LPD, the hardware tells us whether memory has ECC
>> @@ -809,28 +878,25 @@ void intel_bw_init_hw(struct intel_display *display)
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

-- 
Jani Nikula, Intel
