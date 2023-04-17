Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4715E6E4524
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 12:24:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 625AF10E00D;
	Mon, 17 Apr 2023 10:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 474A810E00D
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 10:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681727092; x=1713263092;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=EXXgu8P7CfYD1YpDFkAHRqcFU+OjksqjjyeUTXFkdig=;
 b=M70CZ0VZplXRCPmjC2ghfpbKw7UAY6o7bvAt+d+sNVI6I6rDO5f15DNX
 U+Q9PKUWjJptEMKdOFaLli4/NUlXwIE9oa0FGc+ZwjOzsudzprA19HuFq
 gMd51a2HtFmT6NRAhM6+w3HHS81+lZJSDMy+aVhbbIDVbGPI9XcyKFDau
 rwIm9kLRoMUgLmPQ7rUE0dVoGiZOyHf5dHC4VLJB4dzHdNfxX+0XUjGfX
 hNXH2XdOokshfvi/nCmd4qlPdS4n3jYZ3eXUCgpGbhgDcjznSqrqopY52
 8YxU98n1kb/ZOpSYyZdYVL128ShWGmE2zk984fRWslhL06uVxcKwmcJUz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="342350146"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="342350146"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:24:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="1020374071"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="1020374071"
Received: from habramov-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.252.47.83])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:24:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87r0siernf.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230417100021.3205172-1-arun.r.murthy@intel.com>
 <87r0siernf.fsf@intel.com>
Date: Mon, 17 Apr 2023 13:24:47 +0300
Message-ID: <87o7nmergw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: 128/132b LT requirement
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

On Mon, 17 Apr 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> On Mon, 17 Apr 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
>> For 128b/132b LT prior to LT DPTX should set power state, DP channel
>> coding and then link rate.
>>
>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> ---
>>  .../drm/i915/display/intel_dp_link_training.c | 52 +++++++++++++------
>>  1 file changed, 35 insertions(+), 17 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> index 6aa4ae5e7ebe..83ea9ece0157 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -686,23 +686,41 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
>>  		drm_dbg_kms(&i915->drm,
>>  			    "[ENCODER:%d:%s] Using LINK_RATE_SET value %02x\n",
>>  			    encoder->base.base.id, encoder->base.name, rate_select);
>> -
>> -	/* Write the link configuration data */
>> -	link_config[0] = link_bw;
>> -	link_config[1] = crtc_state->lane_count;
>> -	if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
>> -		link_config[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
>> -	drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
>> -
>> -	/* eDP 1.4 rate select method. */
>> -	if (!link_bw)
>> -		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
>> -				  &rate_select, 1);
>> -
>> -	link_config[0] = crtc_state->vrr.flipline ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
>> -	link_config[1] = intel_dp_is_uhbr(crtc_state) ?
>> -		DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
>> -	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
>> +	if (intel_dp_is_uhbr(crtc_state)) {
>> +		/*
>> +		 * Spec DP2.1 Section 3.5.2.16
>> +		 * Prior to LT DPTX should set 128/132 DP Channel coding and then set link rate

PS. I've taken great care to use "128b/132b" in comments
everywhere. There isn't a single instance of "128/132".

It'll be helpful when you git grep 128b/132b.

BR,
Jani.

>> +		 */
>> +		link_config[0] = crtc_state->vrr.enable ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
>> +		link_config[1] = intel_dp_is_uhbr(crtc_state) ?
>> +			DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
>> +		drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
>> +		/* Write the link configuration data */
>> +		link_config[0] = link_bw;
>> +		link_config[1] = crtc_state->lane_count;
>> +		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
>> +			link_config[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
>> +		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
>> +		/* eDP 1.4 rate select method. */
>> +		if (!link_bw)
>> +			drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
>> +					  &rate_select, 1);
>> +	} else {
>> +		/* Write the link configuration data */
>> +		link_config[0] = link_bw;
>> +		link_config[1] = crtc_state->lane_count;
>> +		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
>> +			link_config[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
>> +		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
>> +		/* eDP 1.4 rate select method. */
>> +		if (!link_bw)
>> +			drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
>> +					  &rate_select, 1);
>> +		link_config[0] = crtc_state->vrr.enable ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
>> +		link_config[1] = intel_dp_is_uhbr(crtc_state) ?
>> +			DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
>> +		drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
>> +	}
>
> I'd rather we change the order for 8b10b too.
>
> If we can't do that, you need to add two functions that do each step,
> and then call them in different order for different channel coding. We
> don't want all of the above duplicated.
>
> Also, in what looks like a rebase fail, you change vrr.flipline to
> vrr.enable.
>
>
> BR,
> Jani.
>
>
>>  
>>  	return true;
>>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
