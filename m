Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F21BD94A6D7
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 13:21:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F3310E4B6;
	Wed,  7 Aug 2024 11:21:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OkRoYBA+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5457E10E4B6
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 11:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723029695; x=1754565695;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=PVAP5M2sjp1bJiTO19KwNfRepbydFnx2ud8uQTRc3OQ=;
 b=OkRoYBA+Dmgstfn1vfIIockLXGTXEGpN4RT4YYTBtGZW9vWUDOkEbLDF
 b9YF1qlBuLGcoprdqy7VxmdL65nJnfdGGqR8tRJ5Qhxs4+FiyKIViuvy4
 4al8agMv+LVmlcfPyBjGyqtKHxJ9r+iNYj3mbEX8OT/kLOTR/4I1RlWRu
 ZhtrtRIiztaz4QmX0bi/Pc77zeTkeAwC0hxMeKjH5F+5CQIk7lW1xWStP
 aa4IoDhRFGg0Saa+Z1w3BZiL9j3o/urKnpBBt5zD2zspTgqypaXaU2Qoo
 u38pJt+KGxAqW3U1vaM60Z6amDKsempMHEY4pf8PKn2+b5kpRcZYQM/xm A==;
X-CSE-ConnectionGUID: pe/fLrMbStS+YfxVIKIr6Q==
X-CSE-MsgGUID: d+yQOvZCSp+DFJ8/SLyF5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="21253200"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="21253200"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 04:21:33 -0700
X-CSE-ConnectionGUID: dD5STMSZSjKL2lXp2xQ88w==
X-CSE-MsgGUID: QljXvbM8RW+MMBnLOvH8WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="56689856"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 04:21:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915: remove a few __i915_printk() uses
In-Reply-To: <fef2188f-fd25-4f21-a2cf-6d7931b7bc8b@ursulin.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1722951405.git.jani.nikula@intel.com>
 <82857a0c04d3c11ca6758f05c13a3cec4f1a2f01.1722951405.git.jani.nikula@intel.com>
 <fef2188f-fd25-4f21-a2cf-6d7931b7bc8b@ursulin.net>
Date: Wed, 07 Aug 2024 14:21:11 +0300
Message-ID: <87o7644lzs.fsf@intel.com>
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

On Wed, 07 Aug 2024, Tvrtko Ursulin <tursulin@ursulin.net> wrote:
> On 06/08/2024 14:38, Jani Nikula wrote:
>> __i915_printk() does nothing for notice/info levels. Just use the
>> regular drm_notice() and drm_info() calls.
>
> "does nothing"? You mean does nothing _special_?

Yeah, does nothing in addition to the regular drm logging that we switch
to.

>
> The patch itself looks okay.
>
> Regards,
>
> Tvrtko
>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_utils.c | 10 +++++-----
>>   1 file changed, 5 insertions(+), 5 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
>> index 6f9e7b354b54..bee32222f0fd 100644
>> --- a/drivers/gpu/drm/i915/i915_utils.c
>> +++ b/drivers/gpu/drm/i915/i915_utils.c
>> @@ -54,8 +54,8 @@ __i915_printk(struct drm_i915_private *dev_priv, const char *level,
>>   
>>   void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint)
>>   {
>> -	__i915_printk(i915, KERN_NOTICE, "CI tainted:%#x by %pS\n",
>> -		      taint, (void *)_RET_IP_);
>> +	drm_notice(&i915->drm, "CI tainted: %#x by %pS\n",
>> +		   taint, __builtin_return_address(0));
>>   
>>   	/* Failures that occur during fault injection testing are expected */
>>   	if (!i915_error_injected())
>> @@ -74,9 +74,9 @@ int __i915_inject_probe_error(struct drm_i915_private *i915, int err,
>>   	if (++i915_probe_fail_count < i915_modparams.inject_probe_failure)
>>   		return 0;
>>   
>> -	__i915_printk(i915, KERN_INFO,
>> -		      "Injecting failure %d at checkpoint %u [%s:%d]\n",
>> -		      err, i915_modparams.inject_probe_failure, func, line);
>> +	drm_info(&i915->drm, "Injecting failure %d at checkpoint %u [%s:%d]\n",
>> +		 err, i915_modparams.inject_probe_failure, func, line);
>> +
>>   	i915_modparams.inject_probe_failure = 0;
>>   	return err;
>>   }

-- 
Jani Nikula, Intel
