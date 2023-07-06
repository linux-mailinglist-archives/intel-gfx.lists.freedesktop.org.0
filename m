Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6677D749B56
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 14:06:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0F1F10E4FB;
	Thu,  6 Jul 2023 12:06:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25D7C10E4FB
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 12:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688645167; x=1720181167;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lYZV8qy4qd7dbdPMCLDy2SzVt044IRDqjKrmT3Y8BmY=;
 b=AAT2cQkxbhlXZon6PTNE+EdNlYMJ+T+nBdBxgVcsVNcVyIXiHVZms1au
 /FKsOhVkpxWE3KW++teca+xdJ+BWFAp1rKS9iNin4pLrSFFmGHGM5dv7A
 UiFtUofLUk6GQUOUwMT2LvuSOpreGd/sBG6rjEnmB3BW0ZlIwHZGsTI1Y
 o9rlr0jITHA+TnVD7gf/TfWNYLe/BEhFSUtWmh/f1UpGcoFiDmfHYBZ0b
 e/Xo7bgfH+DPzbAZetNHRRBjCdlwnRzr1L5Bfu9YKx+MTVnQfJZPj1Z4l
 rE8LcDboWiyf30WjodYMJqLDXP4iUtfvjl6+LtifoTetwX1eQNXCBhvwe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="394341177"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="394341177"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 05:06:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="713560714"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="713560714"
Received: from jmvuilla-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.105])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 05:06:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <5e84ec16-537d-3df8-a47b-fb91f254a7ff@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1688463863.git.jani.nikula@intel.com>
 <4e087e216d86e6be8109bb443d1ac6c9ced1f777.1688463863.git.jani.nikula@intel.com>
 <5e84ec16-537d-3df8-a47b-fb91f254a7ff@linux.intel.com>
Date: Thu, 06 Jul 2023 15:06:01 +0300
Message-ID: <87bkgpxn12.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/uncore: optimize
 CONFIG_DRM_I915_DEBUG_MMIO=n more
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

On Thu, 06 Jul 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 04/07/2023 10:48, Jani Nikula wrote:
>> While the default for the mmio_debug parameter depends on
>> CONFIG_DRM_I915_DEBUG_MMIO, we look it up and include all the code for
>> unclaimed reg debugging even when CONFIG_DRM_I915_DEBUG_MMIO=n. Fix it.
>> 
>> Cc: Lee Shawn C <shawn.c.lee@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/intel_uncore.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
>> index dfefad5a5fec..da2edde4b6f6 100644
>> --- a/drivers/gpu/drm/i915/intel_uncore.c
>> +++ b/drivers/gpu/drm/i915/intel_uncore.c
>> @@ -1929,7 +1929,8 @@ static inline bool __must_check
>>   unclaimed_reg_debug_header(struct intel_uncore *uncore,
>>   			   const i915_reg_t reg, const bool read)
>>   {
>> -	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
>> +	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO) ||
>> +	    likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
>>   		return false;
>
> But now it would not be possible to enable mmio_debug, if Kconfig 
> _default_ is 'n'. What am I missing?

You're not missing anything, I am. *facepalm*

The question is, are the first two acceptable without the third?

BR,
Jani.


>
> Regards,
>
> Tvrtko
>
>>   
>>   	/* interrupts are disabled and re-enabled around uncore->lock usage */

-- 
Jani Nikula, Intel Open Source Graphics Center
