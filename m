Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPaADzjjAmpEyQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 10:22:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E0B51C99F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 10:22:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F09F10E261;
	Tue, 12 May 2026 08:22:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hHORD1GE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1F9510E261;
 Tue, 12 May 2026 08:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778574133; x=1810110133;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BFeb1t9oRZkuAf/a39zznexfPydLuQQnbQ9ksv3izFA=;
 b=hHORD1GEpONw9x1MsbCgtuLX78eqWrPkTOtNjyOHF5fNmwjPZbwM7YAE
 0w6MrxRPd060g6b/0G5bGl8xzZQC1CM2eXYdOY+X8r4yFCuCtA5A1Vf9P
 ROdhSs7y8bD2MLw6dT46B3PFNcngcV1vtomR9AgNo30FTbplOD9eXvjmh
 fOxDV+AtuxJrZlV6ldjvGGWKAFLe/z1esqu16n4TjUoYe4YYx9UJQMrzG
 OXfhLHvV3113QkciGC0z4USHYZCSVEsdKrixZsUq4rRMAIksfhmFlZwHw
 jrWuCMMaEK7ZimA+M9tJcdm69nNhvw9H/AWTiYKIe0cfBB1gzdR8fmG+b g==;
X-CSE-ConnectionGUID: F3xEaFMwRsqULIlt9At8TA==
X-CSE-MsgGUID: k7TGr2+mS5m9UDw4MxVSuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="67005426"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="67005426"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 01:22:12 -0700
X-CSE-ConnectionGUID: oeTHSj0lSZeoounHYKXyUw==
X-CSE-MsgGUID: LWXzwCngTpySGpsxaQwhnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="233387047"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.158])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 01:22:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 4/4] drm/i915/bw: Extract get_display_bw_params()
In-Reply-To: <20260511224923.GB2131374@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com>
 <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-4-e762cb8662da@intel.com>
 <20260511224923.GB2131374@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 12 May 2026 11:22:08 +0300
Message-ID: <0a68170c66f746503b0ed5f285b165ac5ddc9657@intel.com>
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
X-Rspamd-Queue-Id: 60E0B51C99F
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

On Mon, 11 May 2026, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Mon, May 11, 2026 at 01:30:59PM -0300, Gustavo Sousa wrote:
>> Just like it is done for the platform-specific bandwidth parameters, use
>> a separate function named get_display_bw_params() to return the display
>> IP-specific parameters.  This simplifies intel_bw_init_hw() by having
>> just one call for each of the *_get_bw_info() functions.
>> 
>> v2:
>>   - Prefer to call get_display_bw_params() only once in
>>     intel_bw_init_hw() instead of having multiple calls in each of the
>>     affected *_get_bw_info() functions. (Jani)
>> 
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c | 36 +++++++++++++++++++++------------
>>  1 file changed, 23 insertions(+), 13 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>> index c01356d38e64..acd1b6901b46 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -493,6 +493,26 @@ static const struct intel_display_bw_params xelpdp_bw_params = {
>>  	.displayrtids = 256,
>>  };
>>  
>> +static const struct intel_display_bw_params *get_display_bw_params(struct intel_display *display)
>> +{
>> +	if (DISPLAY_VER(display) >= 14) {
>> +		return &xelpdp_bw_params;
>> +	} else if (DISPLAY_VER(display) >= 12) {
>> +		/*
>> +		 * RKL's SoC was based on ICL and the display, even though being
>> +		 * gen12, had changes to the memory interface to match gen11's,
>> +		 * consequently inheriting gen11's display-specific bandwidth
>> +		 * parameters.
>> +		 */
>> +		if (display->platform.rocketlake)
>> +			return &gen11_bw_params;
>> +		else
>> +			return &gen12_bw_params;
>> +	} else {
>> +		return &gen11_bw_params;
>
> It doesn't really matter, but this is technically going to assign gen11
> parameters for all the pre-gen11 platforms that call through here on
> i915.  If we never use the values it probably doesn't hurt anything, but
> it might be best to make this a condition on gen11 rather than an 'else'
> just to avoid any confusion.
>
>
> Matt
>
>> +	}
>> +}
>> +
>>  static int icl_get_bw_info(struct intel_display *display,
>>  			   const struct dram_info *dram_info,
>>  			   const struct intel_soc_bw_params *soc_bw_params,
>> @@ -843,6 +863,7 @@ void intel_bw_init_hw(struct intel_display *display)
>>  {
>>  	const struct dram_info *dram_info = intel_dram_info(display);
>>  	const struct intel_soc_bw_params *soc_bw_params = get_soc_bw_params(display);
>> +	const struct intel_display_bw_params *display_bw_params = get_display_bw_params(display);

Feels like it gets increasingly weird to call all these functions
unconditionally when we bail out for !display right below.

BR,
Jani.

>>  
>>  	if (!HAS_DISPLAY(display))
>>  		return;
>> @@ -858,23 +879,12 @@ void intel_bw_init_hw(struct intel_display *display)
>>  
>>  	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>>  		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
>> -	} else if (DISPLAY_VER(display) >= 14) {
>> -		tgl_get_bw_info(display, dram_info, soc_bw_params, &xelpdp_bw_params);
>>  	} else if (display->platform.dg2) {
>>  		dg2_get_bw_info(display);
>>  	} else if (DISPLAY_VER(display) >= 12) {
>> -		/*
>> -		 * RKL's SoC was based on ICL and the display, even though being
>> -		 * gen12, had changes to the memory interface to match gen11's,
>> -		 * consequently inheriting gen11's display-specific bandwidth
>> -		 * parameters.
>> -		 */
>> -		if (display->platform.rocketlake)
>> -			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
>> -		else
>> -			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen12_bw_params);
>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, display_bw_params);
>>  	} else if (DISPLAY_VER(display) == 11) {
>> -		icl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
>> +		icl_get_bw_info(display, dram_info, soc_bw_params, display_bw_params);
>>  	}
>>  }
>>  
>> 
>> -- 
>> 2.53.0
>> 

-- 
Jani Nikula, Intel
