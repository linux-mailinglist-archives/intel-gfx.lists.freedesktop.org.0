Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC5F8D45AF
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 09:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C4BA10E577;
	Thu, 30 May 2024 07:01:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q7qLDcCr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4AFA10E3F3;
 Thu, 30 May 2024 07:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717052478; x=1748588478;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=86p9SXwu41vOeiiUHZVvC0puRGVwoJh6nyyZY1W/y5M=;
 b=Q7qLDcCr0HPgt9RRqwdNLSBbsSz30a4xMvr3dy67OB9Z9IovkRB+fsHr
 /UakaCEBwB96lyEqmqrNq/CVEw4l6PDiMVwHQ1I8bsFCRDkadQd+bWsRO
 T3bu9rdWfSwKQw1Lc+bFD8pUhmEtbUKRxpJrNjXYbO1/dNTrnRWE0ewb+
 qxiPTYdtq8nD2gkIrH/K+l5p9rm5hVVP7vjK2qEmsnuHt6rN5oViq5A1U
 bKbUIP0NAuW13ZUZ0wV+YwTI43s4Mtt3FvzEMNk6/S4nLyTj+RHwuvMsg
 +x/qSY4unrI3rqwHiil5AnqVv/fd2TdLvTVeAL/fZFUvWNQGqQJ6lh+bB A==;
X-CSE-ConnectionGUID: 5zjti9+dQh6z4OfITvFD1g==
X-CSE-MsgGUID: dmYNIY+jQJCOufbLR/Zo6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="13696285"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="13696285"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 00:01:18 -0700
X-CSE-ConnectionGUID: +mHJM9CkTgakznU7J7dgbQ==
X-CSE-MsgGUID: S5RAtNSLQseWrfdeEKqU9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="36270353"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.132])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 00:01:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 06/12] drm/i915: convert fsb_freq and mem_freq to kHz
In-Reply-To: <20240529211655.GU4990@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1716906179.git.jani.nikula@intel.com>
 <1e4f2fe8c22c5a4fd8f137385f9a884e31986075.1716906179.git.jani.nikula@intel.com>
 <20240529211655.GU4990@mdroper-desk1.amr.corp.intel.com>
Date: Thu, 30 May 2024 10:01:12 +0300
Message-ID: <87frtziy13.fsf@intel.com>
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

On Wed, 29 May 2024, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Tue, May 28, 2024 at 05:24:55PM +0300, Jani Nikula wrote:
>> We'll want to use fsb frequency for deriving GT clock and rawclk
>> frequencies in the future. Increase the accuracy by converting to
>> kHz. Do the same for mem freq to be aligned.
>> 
>> Round the frequencies ending in 666 to 667.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Would it be worth adding a "_khz" suffix to the structure fields to help
> clarify the units?

Thought about it, but decided kHz is pretty much the norm, and it's
everything else that should have a suffix to clarify the units!

> Either way,
>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/i9xx_wm.c |  6 ++--
>>  drivers/gpu/drm/i915/gt/intel_rps.c    |  4 +--
>>  drivers/gpu/drm/i915/soc/intel_dram.c  | 50 +++++++++++++-------------
>>  3 files changed, 30 insertions(+), 30 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
>> index 8b8a0f305c3a..08c5d122af8f 100644
>> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
>> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
>> @@ -83,14 +83,14 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *
>>  
>>  		if (is_desktop == latency->is_desktop &&
>>  		    i915->is_ddr3 == latency->is_ddr3 &&
>> -		    i915->fsb_freq == latency->fsb_freq &&
>> -		    i915->mem_freq == latency->mem_freq)
>> +		    DIV_ROUND_CLOSEST(i915->fsb_freq, 1000) == latency->fsb_freq &&
>> +		    DIV_ROUND_CLOSEST(i915->mem_freq, 1000) == latency->mem_freq)
>>  			return latency;
>>  	}
>>  
>>  err:
>>  	drm_dbg_kms(&i915->drm,
>> -		    "Could not find CxSR latency for DDR%s, FSB %u MHz, MEM %u MHz\n",
>> +		    "Could not find CxSR latency for DDR%s, FSB %u kHz, MEM %u kHz\n",
>>  		    i915->is_ddr3 ? "3" : "2", i915->fsb_freq, i915->mem_freq);
>>  
>>  	return NULL;
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
>> index c9cb2a391942..5d3de1cddcf6 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>> @@ -280,9 +280,9 @@ static void gen5_rps_init(struct intel_rps *rps)
>>  	u32 rgvmodectl;
>>  	int c_m, i;
>>  
>> -	if (i915->fsb_freq <= 3200)
>> +	if (i915->fsb_freq <= 3200000)
>>  		c_m = 0;
>> -	else if (i915->fsb_freq <= 4800)
>> +	else if (i915->fsb_freq <= 4800000)
>>  		c_m = 1;
>>  	else
>>  		c_m = 2;
>> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
>> index 266ed6cfa485..ace9372244a4 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
>> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>> @@ -56,11 +56,11 @@ static unsigned int pnv_mem_freq(struct drm_i915_private *dev_priv)
>>  
>>  	switch (tmp & CLKCFG_MEM_MASK) {
>>  	case CLKCFG_MEM_533:
>> -		return 533;
>> +		return 533333;
>>  	case CLKCFG_MEM_667:
>> -		return 667;
>> +		return 666667;
>>  	case CLKCFG_MEM_800:
>> -		return 800;
>> +		return 800000;
>>  	}
>>  
>>  	return 0;
>> @@ -73,13 +73,13 @@ static unsigned int ilk_mem_freq(struct drm_i915_private *dev_priv)
>>  	ddrpll = intel_uncore_read16(&dev_priv->uncore, DDRMPLL1);
>>  	switch (ddrpll & 0xff) {
>>  	case 0xc:
>> -		return 800;
>> +		return 800000;
>>  	case 0x10:
>> -		return 1066;
>> +		return 1066667;
>>  	case 0x14:
>> -		return 1333;
>> +		return 1333333;
>>  	case 0x18:
>> -		return 1600;
>> +		return 1600000;
>>  	default:
>>  		drm_dbg(&dev_priv->drm, "unknown memory frequency 0x%02x\n",
>>  			ddrpll & 0xff);
>> @@ -97,9 +97,9 @@ static unsigned int chv_mem_freq(struct drm_i915_private *i915)
>>  
>>  	switch ((val >> 2) & 0x7) {
>>  	case 3:
>> -		return 2000;
>> +		return 2000000;
>>  	default:
>> -		return 1600;
>> +		return 1600000;
>>  	}
>>  }
>>  
>> @@ -114,11 +114,11 @@ static unsigned int vlv_mem_freq(struct drm_i915_private *i915)
>>  	switch ((val >> 6) & 3) {
>>  	case 0:
>>  	case 1:
>> -		return 800;
>> +		return 800000;
>>  	case 2:
>> -		return 1066;
>> +		return 1066667;
>>  	case 3:
>> -		return 1333;
>> +		return 1333333;
>>  	}
>>  
>>  	return 0;
>> @@ -139,7 +139,7 @@ static void detect_mem_freq(struct drm_i915_private *i915)
>>  		i915->is_ddr3 = pnv_is_ddr3(i915);
>>  
>>  	if (i915->mem_freq)
>> -		drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
>> +		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
>>  }
>>  
>>  static unsigned int pnv_fsb_freq(struct drm_i915_private *i915)
>> @@ -150,13 +150,13 @@ static unsigned int pnv_fsb_freq(struct drm_i915_private *i915)
>>  
>>  	switch (fsb) {
>>  	case CLKCFG_FSB_400:
>> -		return 400;
>> +		return 400000;
>>  	case CLKCFG_FSB_533:
>> -		return 533;
>> +		return 533333;
>>  	case CLKCFG_FSB_667:
>> -		return 667;
>> +		return 666667;
>>  	case CLKCFG_FSB_800:
>> -		return 800;
>> +		return 800000;
>>  	}
>>  
>>  	return 0;
>> @@ -170,19 +170,19 @@ static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
>>  
>>  	switch (fsb) {
>>  	case 0x00c:
>> -		return 3200;
>> +		return 3200000;
>>  	case 0x00e:
>> -		return 3733;
>> +		return 3733333;
>>  	case 0x010:
>> -		return 4266;
>> +		return 4266667;
>>  	case 0x012:
>> -		return 4800;
>> +		return 4800000;
>>  	case 0x014:
>> -		return 5333;
>> +		return 5333333;
>>  	case 0x016:
>> -		return 5866;
>> +		return 5866667;
>>  	case 0x018:
>> -		return 6400;
>> +		return 6400000;
>>  	default:
>>  		drm_dbg(&dev_priv->drm, "unknown fsb frequency 0x%04x\n", fsb);
>>  		return 0;
>> @@ -197,7 +197,7 @@ static void detect_fsb_freq(struct drm_i915_private *i915)
>>  		i915->fsb_freq = pnv_fsb_freq(i915);
>>  
>>  	if (i915->fsb_freq)
>> -		drm_dbg(&i915->drm, "FSB frequency: %d MHz\n", i915->fsb_freq);
>> +		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
>>  }
>>  
>>  static int intel_dimm_num_devices(const struct dram_dimm_info *dimm)
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
