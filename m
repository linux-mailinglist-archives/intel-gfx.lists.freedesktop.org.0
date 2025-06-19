Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D198DAE026E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 12:11:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C659110E9F0;
	Thu, 19 Jun 2025 10:11:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NEd1OvGv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2847410E9EE;
 Thu, 19 Jun 2025 10:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750327897; x=1781863897;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=JhCYIYxmiWJmC5xkBLpMKIRbnMlvSKi3voWN+DuBfvA=;
 b=NEd1OvGvFL+R7HNaaN5q/kf56AiJgz2L6x0b+mO47aN6DmebJq7QdCpL
 1hKc01dZ5svcLdmRcZ1Iv2dppXzucepN58tQL+hvW0tAtnHtjxa0NXcZk
 /AahKs+JdpY4PzcuFIqngIFfAGCnzy1J/pwcpXyXz+lNU5SiEikt8FL36
 i4IWOdXiBk85CmXpd/44sB7O8SmAJQ4bbebVQhhfYnf2Msn6S+zttIcoL
 MknpfqEbisRh7axsjWBmdyHs2hhZ3IhyQ8E4KBA0LuEMJvjPUxKkmE+mY
 Ab9HVeP73Nesdxpi2X3ub9lz1kdpdEYi5sfguk2zkkEkiAc1G7trgXy0i w==;
X-CSE-ConnectionGUID: ZgaqRvDtRUuwX2lOVR9y/w==
X-CSE-MsgGUID: bdh7i9WrS9Ggbr2dsx/fww==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="70012269"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="70012269"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 03:11:37 -0700
X-CSE-ConnectionGUID: 5DVnRo+2T1CP35lnM3ygVg==
X-CSE-MsgGUID: quJeh+OBT56cEE3YCAjAew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="187798974"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.191])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 03:11:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 15/16] drm/i915/cdclk: abstract intel_cdclk_actual() and
 intel_cdclk_actual_voltage_level()
In-Reply-To: <aFMCudrkm1wjb1v6@ideak-desk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1749730224.git.jani.nikula@intel.com>
 <b282cb46ab35f4e0a6e2cf6c57cd8a2cd5db2647.1749730224.git.jani.nikula@intel.com>
 <aFMCudrkm1wjb1v6@ideak-desk>
Date: Thu, 19 Jun 2025 13:11:32 +0300
Message-ID: <223efae2cddd35d932e439e051362c2f77f9c919@intel.com>
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

On Wed, 18 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Thu, Jun 12, 2025 at 03:12:10PM +0300, Jani Nikula wrote:
>> Add intel_cdclk_actual() and intel_cdclk_actual_voltage_level() helpers
>> to avoid looking at struct intel_cdclk_state internals outside of
>> intel_cdclk.c.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 10 ++++++++++
>>  drivers/gpu/drm/i915/display/intel_cdclk.h    |  2 ++
>>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  4 ++--
>>  3 files changed, 14 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> index 994be1d0e20c..2e8abf237bd1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -3884,3 +3884,13 @@ void intel_cdclk_read_hw(struct intel_display *display)
>>  	cdclk_state->actual = display->cdclk.hw;
>>  	cdclk_state->logical = display->cdclk.hw;
>>  }
>> +
>> +int intel_cdclk_actual(const struct intel_cdclk_state *cdclk_state)
>> +{
>> +	return cdclk_state->actual.cdclk;
>> +}
>> +
>> +int intel_cdclk_actual_voltage_level(const struct intel_cdclk_state *cdclk_state)
>> +{
>> +	return cdclk_state->actual.voltage_level;
>> +}
>
> These could've been grouped better after intel_cdclk_logical().

Yes, changing that.

> I wondered if it'd make sense to use
> intel_cdclk_{logical,actual}_cdclk() instead of 
> intel_cdclk_{logical,actual}().

Mmh. I dislike the repetition, "cdclk logical cdclk"...

> Or *_clock() instead of *_cdclk() in the above and other helpers.

...so I set out to consistently use "clock", but then it didn't feel
right for things like "intel_cdclk_min_cdclk" because it's then compared
against min_cdclk in a number of places.

I don't know, leave it as it is now in the patches?

BR,
Jani.



>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
>> index 0d5ee1826168..f38605c6ab72 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
>> @@ -103,5 +103,7 @@ int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state);
>>  bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state);
>>  void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int force_min_cdclk);
>>  void intel_cdclk_read_hw(struct intel_display *display);
>> +int intel_cdclk_actual(const struct intel_cdclk_state *cdclk_state);
>> +int intel_cdclk_actual_voltage_level(const struct intel_cdclk_state *cdclk_state);
>>  
>>  #endif /* __INTEL_CDCLK_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> index 16ef68ef4041..d806c15db7ce 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> @@ -360,9 +360,9 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
>>  		return PTR_ERR(new_cdclk_state);
>>  
>>  	new_pmdemand_state->params.voltage_index =
>> -		new_cdclk_state->actual.voltage_level;
>> +		intel_cdclk_actual_voltage_level(new_cdclk_state);
>>  	new_pmdemand_state->params.cdclk_freq_mhz =
>> -		DIV_ROUND_UP(new_cdclk_state->actual.cdclk, 1000);
>> +		DIV_ROUND_UP(intel_cdclk_actual(new_cdclk_state), 1000);
>>  
>>  	intel_pmdemand_update_max_ddiclk(display, state, new_pmdemand_state);
>>  
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
