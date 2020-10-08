Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3BC286D89
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 06:20:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44CD86EA00;
	Thu,  8 Oct 2020 04:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC6066EA00
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 04:20:27 +0000 (UTC)
IronPort-SDR: xZgQ5+mtmAuYVn5qys7ENhWA/TMGFrRWTHyoyoGcWhgTQ5VB6TLFa4IX6+SC/HWuR5aetBjA/0
 EEEExEAIXHvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="162624936"
X-IronPort-AV: E=Sophos;i="5.77,349,1596524400"; d="scan'208";a="162624936"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 21:20:26 -0700
IronPort-SDR: T7lS5dCUoYmWozKGTygFoduNps8aQ3fLsisk5S8Wn1JODy2PEKHAI54kMvTtyA7Wnjp+Uiapp7
 qfXNcNFJRSnQ==
X-IronPort-AV: E=Sophos;i="5.77,349,1596524400"; d="scan'208";a="343230663"
Received: from lewisjos-mobl3.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.51.10])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 21:20:26 -0700
Date: Wed, 7 Oct 2020 21:20:25 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20201008042025.tiuaorml6wkhsfmz@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
 <20200930064234.85769-23-lucas.demarchi@intel.com>
 <20200930165007.GA2245633@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930165007.GA2245633@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 22/24] drm/i915/dg1: DG1 does not support
 DC6
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 30, 2020 at 09:50:07AM -0700, Matt Roper wrote:
>On Tue, Sep 29, 2020 at 11:42:32PM -0700, Lucas De Marchi wrote:
>> From: Anshuman Gupta <anshuman.gupta@intel.com>
>>
>> DC6 is not supported on DG1, so change the allowed DC mask for DG1.
>>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
>
>Do we have a bspec reference for this?  I can't find anything specific
>about this from a casual skim of the pages I'd expect it to be mentioned
>on.
>
>If we have a reference added (or a note clarifying that we have offline
>confirmation from hardware architects),
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

I received confirmation from HW people that DG1 doesn't support DC6 and
spec is going to be updated.

Lucas De Marchi

>
>
>At some point I think we should re-write this section of the code in
>general.  The magic numbers used here are annoying, and a driver
>modparam named 'enable_dc' really sounds like it should be a bitmask of
>the exact DCs supported (rather than defining a combination of 'up to'
>values + DC3CO and omitting DC9 completely).  But we don't need to do
>that in a DG1 enabling patch.
>
>
>Matt
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_power.c | 5 ++++-
>>  1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 0827e68a9d89..7dfc697ccf78 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -4689,7 +4689,10 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
>>  	int max_dc;
>>
>>  	if (INTEL_GEN(dev_priv) >= 12) {
>> -		max_dc = 4;
>> +		if (IS_DG1(dev_priv))
>> +			max_dc = 3;
>> +		else
>> +			max_dc = 4;
>>  		/*
>>  		 * DC9 has a separate HW flow from the rest of the DC states,
>>  		 * not depending on the DMC firmware. It's needed by system
>> --
>> 2.28.0
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>-- 
>Matt Roper
>Graphics Software Engineer
>VTT-OSGC Platform Enablement
>Intel Corporation
>(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
