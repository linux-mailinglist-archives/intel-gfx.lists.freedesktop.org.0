Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 777B67A229A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 17:40:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB98B10E65C;
	Fri, 15 Sep 2023 15:40:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B031810E643
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 15:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694792405; x=1726328405;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=M8FSFadd3FJZkOqCj8b92X28TWWvm87ugZDXN42jpbc=;
 b=CJbv/fqYhOkphNG6aaZPYeYIsGT0iqcHgNFr4HHjX0Gbt/bmHlAME72K
 C1P4qmUzJuVZHmj1iLjhtqlWZyvb0P0Y8ILZ5LwNHUsuKJmiysUpKmLRl
 J79cndbQJC4rJ3XKZc5BJIH92pw+1+GAyQ6tOclP9Wp4EFKnM06NEtdSv
 E9dPRD6TBAgG5HWlTMEtTks05qelM8nEA0qoqVj7nudLYpjhqMHH7Pe7e
 whRCjXwH5vpABxN4ppIgpz4V9j6jocCy0X2mJaC3z6dhc4UQde8WJJVX8
 XpShgE61vvOq9BE9meOFlqae7txLbYYoOaUKXhC+AfTqrJiqxLuIynF5u g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="410216403"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="410216403"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 08:40:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="835251874"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="835251874"
Received: from azafrani-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.177])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 08:40:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <ZQBaIWoG50ycOLKq@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230912120537.2158209-1-jani.nikula@intel.com>
 <ZQBaIWoG50ycOLKq@intel.com>
Date: Fri, 15 Sep 2023 18:39:58 +0300
Message-ID: <87cyyjv41d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: move more of the display
 probe to display code
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 12 Sep 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Sep 12, 2023 at 03:05:35PM +0300, Jani Nikula wrote:
>> Initializing i915->display.info.__device_info and DISPLAY_RUNTIME_INFO()
>> really belongs in display code. Move them there.
>> 
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed the series.

BR,
Jani.

>
>> ---
>>  .../drm/i915/display/intel_display_device.c   | 24 ++++++++++++++++---
>>  .../drm/i915/display/intel_display_device.h   |  4 +---
>>  drivers/gpu/drm/i915/intel_device_info.c      | 14 +----------
>>  3 files changed, 23 insertions(+), 19 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>> index c39f8a15d8aa..ed564566e31b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>> @@ -850,9 +850,9 @@ probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step
>>  	return &no_display;
>>  }
>>  
>> -const struct intel_display_device_info *
>> -intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
>> -			   u16 *gmdid_ver, u16 *gmdid_rel, u16 *gmdid_step)
>> +static const struct intel_display_device_info *
>> +probe_display(struct drm_i915_private *i915, bool has_gmdid,
>> +	      u16 *gmdid_ver, u16 *gmdid_rel, u16 *gmdid_step)
>>  {
>>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>>  	int i;
>> @@ -876,6 +876,24 @@ intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
>>  	return &no_display;
>>  }
>>  
>> +void intel_display_device_probe(struct drm_i915_private *i915)
>> +{
>> +	u16 ver, rel, step;
>> +
>> +	/* Probe display support */
>> +	i915->display.info.__device_info = probe_display(i915, HAS_GMD_ID(i915),
>> +							 &ver, &rel, &step);
>> +	memcpy(DISPLAY_RUNTIME_INFO(i915),
>> +	       &DISPLAY_INFO(i915)->__runtime_defaults,
>> +	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
>> +
>> +	if (HAS_GMD_ID(i915)) {
>> +		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
>> +		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
>> +		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
>> +	}
>> +}
>> +
>>  void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
>>  {
>>  	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 8198401aa5be..a7b6469b43a6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -149,9 +149,7 @@ struct intel_display_device_info {
>>  	} color;
>>  };
>>  
>> -const struct intel_display_device_info *
>> -intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
>> -			   u16 *ver, u16 *rel, u16 *step);
>> +void intel_display_device_probe(struct drm_i915_private *i915);
>>  void intel_display_device_info_runtime_init(struct drm_i915_private *i915);
>>  
>>  void intel_display_device_info_print(const struct intel_display_device_info *info,
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>> index 9dfa680a4c62..b9b8b22540cb 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> @@ -410,7 +410,6 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>>  				     const struct intel_device_info *match_info)
>>  {
>>  	struct intel_runtime_info *runtime;
>> -	u16 ver, rel, step;
>>  
>>  	/* Setup INTEL_INFO() */
>>  	i915->__info = match_info;
>> @@ -419,18 +418,7 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>>  	runtime = RUNTIME_INFO(i915);
>>  	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
>>  
>> -	/* Probe display support */
>> -	i915->display.info.__device_info = intel_display_device_probe(i915, HAS_GMD_ID(i915),
>> -								      &ver, &rel, &step);
>> -	memcpy(DISPLAY_RUNTIME_INFO(i915),
>> -	       &DISPLAY_INFO(i915)->__runtime_defaults,
>> -	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
>> -
>> -	if (HAS_GMD_ID(i915)) {
>> -		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
>> -		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
>> -		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
>> -	}
>> +	intel_display_device_probe(i915);
>>  
>>  	runtime->device_id = device_id;
>>  }
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
