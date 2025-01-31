Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C56A23EFC
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 15:07:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4341610EAC8;
	Fri, 31 Jan 2025 14:06:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xoj3Xd8G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C43C710EAC2;
 Fri, 31 Jan 2025 14:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738332418; x=1769868418;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=X5Lfwe4EewjboJIXtaVsOgu1QOS1soJHlqJhxrLyt9Y=;
 b=Xoj3Xd8G9ID6StwOgXFE2nJN6TWAUJJu6qyngVlgdliNxFibVCjnWMQ0
 EaidmHVglSO2woRjRWUOlMUOirAd8iH7V85zFkQ1roSztmX3ytVopPhr3
 QYLOSiNdvemI7VIMCvKcjspu2cZA0U6O6bpd4C+6MQodEMcS8pJsg1JDs
 9bC/kG/OlOQWKMEf1m5v1tAz766Jj+H4ok9y6QT3/oFWXGmLo0H5rF39L
 2fUU56KvvgT0VQboYE4FOaheRSBTx0m26+zLv7N1UJgeEX8KvSB0HPcUe
 WoGp9kXpgQfZvzT0c42yuxaiHm3fPo73tecDbnU96jTPfDrpPmzavGbWG w==;
X-CSE-ConnectionGUID: gwSmP1uwQ8+Hp6beJJQxdA==
X-CSE-MsgGUID: kBsx+xRBQeKZp/ARpjobxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="56444606"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="56444606"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:06:57 -0800
X-CSE-ConnectionGUID: oJb0RGcnQ3G5U3pKucNk2g==
X-CSE-MsgGUID: H9PAfYXsQwi35R91QIK7sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="114641838"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:06:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 02/14] drm/i915/dp: Add intel_dp_dsc_bpp_step_x16()
 helper to get DSC BPP precision
In-Reply-To: <Z5zT-QAD_RRYbzCX@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1738327620.git.jani.nikula@intel.com>
 <ed109ed88a6ae3849871ec341cb5ab2088097dd3.1738327620.git.jani.nikula@intel.com>
 <Z5zT-QAD_RRYbzCX@ideak-desk.fi.intel.com>
Date: Fri, 31 Jan 2025 16:06:53 +0200
Message-ID: <87v7tv6ps2.fsf@intel.com>
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

On Fri, 31 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Fri, Jan 31, 2025 at 02:49:55PM +0200, Jani Nikula wrote:
>> Add a platform independent helper for getting the supported DSC BPP step
>> for the link.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 21 ++++++++++++++++-----
>>  1 file changed, 16 insertions(+), 5 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index ecf192262eb9..a7a5bb2075da 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2054,6 +2054,21 @@ static int dsc_src_max_compressed_bpp(struct intel_dp *intel_dp)
>>  		return 27;
>>  }
>>  
>> +/*
>> + * Note: for pre-13 display you still need to check the validity of each step.
>> + */
>> +static int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
>
> Nit: there was a guideline that these KMS objects should be passed around via
> non-const pointers vs. state pointers which should be const if possible.

At this point, xelpd_dsc_compute_link_config() only has the const
variable available. This changes later in the series.

>
>> +{
>> +	struct intel_display *display = to_intel_display(connector);
>> +	u8 incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
>> +
>> +	if (DISPLAY_VER(display) < 14 || !incr)
>> +		return fxp_q4_from_int(1);
>> +
>> +	/* fxp q4 */
>> +	return 16 / incr;
>
> Nit: could've been fxp_q4_from_int(1) / incr;

Good point, will fix.

>
> Regardless of the nits, patch looks ok:
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks!

>
>> +}
>> +
>>  /*
>>   * From a list of valid compressed bpps try different compressed bpp and find a
>>   * suitable link configuration that can support it.
>> @@ -2110,16 +2125,12 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>>  			      int timeslots)
>>  {
>>  	struct intel_display *display = to_intel_display(intel_dp);
>> -	u8 bppx16_incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
>>  	int output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
>>  	u16 compressed_bppx16;
>>  	u8 bppx16_step;
>>  	int ret;
>>  
>> -	if (DISPLAY_VER(display) < 14 || bppx16_incr <= 1)
>> -		bppx16_step = 16;
>> -	else
>> -		bppx16_step = 16 / bppx16_incr;
>> +	bppx16_step = intel_dp_dsc_bpp_step_x16(connector);
>>  
>>  	/* Compressed BPP should be less than the Input DSC bpp */
>>  	dsc_max_bpp = min(dsc_max_bpp << 4, (output_bpp << 4) - bppx16_step);
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
