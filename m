Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C1C9F4981
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 12:03:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD2BA10E919;
	Tue, 17 Dec 2024 11:03:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mEd5nrp5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484BB10E918;
 Tue, 17 Dec 2024 11:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734433381; x=1765969381;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mZNvfstMonyWiXpOThd2mbXmqwFocTSSBLhJ6Kgn18w=;
 b=mEd5nrp56IVu/e+9GyVqd+n1pzKVOeZ3p1aMELQ8wl17ifQzFjPAxGy5
 VW/AtsCTqv3324upuZbbcCAno9RcKrRFdNGYWz3dnhwFER9uRlJ8wd++y
 lbBHXNfw78GeIH9FdGFD+ZmVlwz41oYwC2OZydHzQsDhvx+a+CStBm1NP
 kW/43zNHLXhIGhTOP5B7BfZvyvIpVCu4Nt30r7+FM9/xSADUZu6bLQEV1
 jdGq5I5rCxljowZOmzWUoXM40k4Fmtbo51LRiSNe44+Fhi6ZB+CYeo/TV
 hdSl2AOeyVA0Oy3hvx8hsjP4eKlBguYtl9LI5a2IVaXUfWn3Cgspw0+p7 Q==;
X-CSE-ConnectionGUID: 5nQX/2v8RaezKysGbcgPOg==
X-CSE-MsgGUID: zBKzokxES8i4RYgEmhjWfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38781552"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38781552"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 03:03:01 -0800
X-CSE-ConnectionGUID: 7Kkjrp3iTFyIr0auk2lJJQ==
X-CSE-MsgGUID: rEN1y4IzR6CAAech0WHmiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="97733513"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.55])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 03:02:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 imre.deak@intel.com
Subject: Re: [PATCH 02/14] drm/i915/dp: Return early if DSC not supported
In-Reply-To: <871py6sho2.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
 <20241217093244.3938132-3-ankit.k.nautiyal@intel.com>
 <871py6sho2.fsf@intel.com>
Date: Tue, 17 Dec 2024 13:02:55 +0200
Message-ID: <87seqmr2qo.fsf@intel.com>
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

On Tue, 17 Dec 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Tue, 17 Dec 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Check for DSC support before computing link config with DSC.
>> For DP MST we are already doing the same.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 908b9887f89b..dd2da9facaad 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2375,9 +2375,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>  		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
>>  		 !intel_dp_is_uhbr(pipe_config));
>>  
>> -	if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
>> -		return -EINVAL;
>> -
>>  	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
>>  		return -EINVAL;
>>  
>> @@ -2652,6 +2649,9 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>>  			    str_yes_no(intel_dp->force_dsc_en));
>>  
>> +		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
>> +			return -EINVAL;
>> +
>
> The (pre-existing) problem with this is that we debug log we fall back
> to DSC, while we don't.
>
> Maybe we should do something like this instead, both in SST and MST code:

On second thought, this can also come as a follow-up later. I don't want
to block the series with this.

BR,
Jani.


>
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2644,6 +2644,11 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  			dsc_needed = true;
>  	}
>  
> +	if (dsc_needed && !intel_dp_supports_dsc(connector, pipe_config)) {
> +		drm_dbg_kms(display->drm, "DSC required but not available.\n");
> +		return -EINVAL;
> +	}
> +
>  	if (dsc_needed) {
>  		drm_dbg_kms(display->drm,
>  			    "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
>
> BR,
> Jani.
>
>>  		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
>>  						    respect_downstream_limits,
>>  						    true,

-- 
Jani Nikula, Intel
