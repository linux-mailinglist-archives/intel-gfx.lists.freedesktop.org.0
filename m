Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95ED57A225A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 17:28:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C62F10E624;
	Fri, 15 Sep 2023 15:28:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F115710E624
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 15:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694791704; x=1726327704;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gU8f3vfWJnv/wG5CpyXLrClA50u/0uOPV8J7pjTuzIE=;
 b=RQCqS6kaoRZd1XWanUJSmEfov6VeoTOflZvhQ+BOg8b2tZzJymt93tpn
 I2zIa541VFlleWegkXoFHimpf98z4MBDVMM/dSxNXXMC6NmXow9JsRgbh
 RixXwCBwxpOv9hqQYm0rvstdfmDUpyAbEj71+6lIyviWYuKzHoP5PBRyF
 EqijW4GO0w1Jmm8s6a6D3oPtizLC5mV1wLj2gZ1KusYyjT7ytjF1jsfWk
 acj92NgBBKpRKr+d8Uhk5SFwjAUaLpOU5s1JHtmCvpd2553SeEcrnlCgh
 aKAob8yuA/79AnpNE/pnkLnx+ZSC09wTG/fGZF2WfUaNhA63Y4P5DRDh8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="378187093"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="378187093"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 08:28:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="810564062"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="810564062"
Received: from azafrani-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.177])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 08:28:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <ZQL/SBEn8sc4K7hf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1694684044.git.jani.nikula@intel.com>
 <a7d53a403822b43c7d78689a10480b47ccc0534d.1694684044.git.jani.nikula@intel.com>
 <ZQL/SBEn8sc4K7hf@intel.com>
Date: Fri, 15 Sep 2023 18:28:17 +0300
Message-ID: <87h6nvv4ku.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/fbc: replace GEM_BUG_ON() to
 drm_WARN_ON()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 14 Sep 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Sep 14, 2023 at 12:34:57PM +0300, Jani Nikula wrote:
>> Avoid using GEM_BUG_ON() in display code.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed the series.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbc.c | 14 ++++++++------
>>  1 file changed, 8 insertions(+), 6 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>> index 817e5784660b..1cb9eec29640 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -333,12 +333,14 @@ static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
>>  {
>>  	struct drm_i915_private *i915 = fbc->i915;
>>  
>> -	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
>> -					 i915_gem_stolen_node_offset(&fbc->compressed_fb),
>> -					 U32_MAX));
>> -	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
>> -					 i915_gem_stolen_node_offset(&fbc->compressed_llb),
>> -					 U32_MAX));
>> +	drm_WARN_ON(&i915->drm,
>> +		    range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
>> +					  i915_gem_stolen_node_offset(&fbc->compressed_fb),
>> +					  U32_MAX));
>> +	drm_WARN_ON(&i915->drm,
>> +		    range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
>> +					  i915_gem_stolen_node_offset(&fbc->compressed_llb),
>> +					  U32_MAX));
>>  	intel_de_write(i915, FBC_CFB_BASE,
>>  		       i915_gem_stolen_node_address(i915, &fbc->compressed_fb));
>>  	intel_de_write(i915, FBC_LL_BASE,
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
