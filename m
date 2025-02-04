Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D3AA27768
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 17:40:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B337D10E04B;
	Tue,  4 Feb 2025 16:40:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MNwcyrS2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1701D10E04B;
 Tue,  4 Feb 2025 16:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738687247; x=1770223247;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ag59gt0R4wUluzeQmwlzB11I7hPLR+291x/fsL+STCU=;
 b=MNwcyrS2eKbFsaZFlNnzVqg06CWXEAqbw33FuedEdI3xzUaCG4oIUP70
 oMe8w0ka/+goIuFsnDE0+SinxAyT2S/sIkHqkWWSbvIV6vLH6VqKfwNCR
 WaXNVYRXfBtBctdytdFCZAucbaa6XiUAbqTJplLFMg6kBSj0xx20eXeAI
 yfYA4uc3+QVWMbdXlqLxsbEZJ7ZBEb7HNJPp2XOD4D5zgEGBEdYPcveFk
 ZCxcX7d1Grq96PE9nZEoNBZ8SMhE1EyQWKq31S9m8BctSOZG1o/ETwShA
 CHXQZcq9Fq7yBlZB7AzkRaAKIDXNaNY6NHgcfQNeiKnNhaHWe/qZSot+g g==;
X-CSE-ConnectionGUID: ZiOuV0p2T0iuFZnPoB6+/A==
X-CSE-MsgGUID: MyuInnubSuSFuhsiqVw8cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="50218004"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="50218004"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 08:40:41 -0800
X-CSE-ConnectionGUID: eQTsPE73RWCyIQfiKbDsrQ==
X-CSE-MsgGUID: mN783BM8Tbaf7hA3ikESaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="111230727"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 08:40:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp: Add support for DP UHBR SST DSC
In-Reply-To: <Z6I93PkEez_WdgOM@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250203160834.2708027-1-jani.nikula@intel.com>
 <Z6I93PkEez_WdgOM@ideak-desk.fi.intel.com>
Date: Tue, 04 Feb 2025 18:40:05 +0200
Message-ID: <87frkt64uy.fsf@intel.com>
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

On Tue, 04 Feb 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Mon, Feb 03, 2025 at 06:08:34PM +0200, Jani Nikula wrote:
>> Drop the UHBR limitation from DP SST DSC, and handle SST DSC bandwidth
>> computation for UHBR using intel_dp_mtp_tu_compute_config().
>> 
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>
>
> With the DPT bpp and bpp_step fixes on the list, this seems to work on a
> DP2.0 dock on (SST) UHBR link/DSC mode.

\o/

Thanks for the review and testing!

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 35 +++++++++++++++++++------
>>  1 file changed, 27 insertions(+), 8 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index cc6aba353c11..eb8f6806166c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1958,15 +1958,37 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
>>  		for (lane_count = limits->min_lane_count;
>>  		     lane_count <= limits->max_lane_count;
>>  		     lane_count <<= 1) {
>> -			if (!is_bw_sufficient_for_dsc_config(dsc_bpp_x16, link_rate,
>> -							     lane_count, adjusted_mode->clock,
>> -							     pipe_config->output_format,
>> -							     timeslots))
>> -				continue;
>>  
>> +			/*
>> +			 * FIXME: intel_dp_mtp_tu_compute_config() requires
>> +			 * ->lane_count and ->port_clock set before we know
>> +			 * they'll work. If we end up failing altogether,
>> +			 * they'll remain in crtc state. This shouldn't matter,
>> +			 * as we'd then bail out from compute config, but it's
>> +			 * just ugly.
>> +			 */
>>  			pipe_config->lane_count = lane_count;
>>  			pipe_config->port_clock = link_rate;
>>  
>> +			if (drm_dp_is_uhbr_rate(link_rate)) {
>> +				int ret;
>> +
>> +				ret = intel_dp_mtp_tu_compute_config(intel_dp,
>> +								     pipe_config,
>> +								     conn_state,
>> +								     dsc_bpp_x16,
>> +								     dsc_bpp_x16,
>> +								     0, true);
>> +				if (ret)
>> +					continue;
>> +			} else {
>> +				if (!is_bw_sufficient_for_dsc_config(dsc_bpp_x16, link_rate,
>> +								     lane_count, adjusted_mode->clock,
>> +								     pipe_config->output_format,
>> +								     timeslots))
>> +					continue;
>> +			}
>> +
>>  			return 0;
>>  		}
>>  	}
>> @@ -2493,9 +2515,6 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>>  	limits->min_rate = intel_dp_min_link_rate(intel_dp);
>>  	limits->max_rate = intel_dp_max_link_rate(intel_dp);
>>  
>> -	/* FIXME 128b/132b SST+DSC support missing */
>> -	if (!is_mst && dsc)
>> -		limits->max_rate = min(limits->max_rate, 810000);
>>  	limits->min_rate = min(limits->min_rate, limits->max_rate);
>>  
>>  	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
