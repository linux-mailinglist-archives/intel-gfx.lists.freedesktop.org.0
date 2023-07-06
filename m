Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CD8749E1C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 15:48:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32EA610E0BB;
	Thu,  6 Jul 2023 13:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55CA710E0BB
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 13:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688651324; x=1720187324;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=CuC3BSL67xm6XG7/8A7HjNzz24ivPkqO7kw0GWvArjo=;
 b=JAFDpIrGq6FU2lX2fZ97MYi2dATuK5Qs1tDzsGbYdXxs1J7fWXzuy48k
 ouyAPL1mRm1jiWiAtdXEM/sGmUleT3Tq73HGEYqdBxiYbgjMhoqPE9zcN
 7JrH16/IjyIcL2bAwmvW+H1qNqNjBf2Q1qmFoWpo6+XoTudOZRhTX2reN
 X9Th/KsaYjdxirWexsQju8f1LSkRYvJdv9+weClbvue/XXG3R7XZNQOEi
 d1kMHr4Q8J5lIuQmWQ/4kuuvZFeJ9GZlDQIicHDyLG2C6JB0ykw7o7LHR
 a9j+52WxPPS85u4I0mYGJPBjMaFc7Yj4r7SbnzAgfTH1O6OnB41rEFSEI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="343193976"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="343193976"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 06:48:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="713597303"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="713597303"
Received: from dnatta1-mobl1.ger.corp.intel.com (HELO [10.213.201.247])
 ([10.213.201.247])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 06:48:42 -0700
Message-ID: <33aa69d3-c94d-f0d2-3ab2-0bdde23850c5@linux.intel.com>
Date: Thu, 6 Jul 2023 14:48:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1688463863.git.jani.nikula@intel.com>
 <4e087e216d86e6be8109bb443d1ac6c9ced1f777.1688463863.git.jani.nikula@intel.com>
 <5e84ec16-537d-3df8-a47b-fb91f254a7ff@linux.intel.com>
 <87bkgpxn12.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87bkgpxn12.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 06/07/2023 13:06, Jani Nikula wrote:
> On Thu, 06 Jul 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>> On 04/07/2023 10:48, Jani Nikula wrote:
>>> While the default for the mmio_debug parameter depends on
>>> CONFIG_DRM_I915_DEBUG_MMIO, we look it up and include all the code for
>>> unclaimed reg debugging even when CONFIG_DRM_I915_DEBUG_MMIO=n. Fix it.
>>>
>>> Cc: Lee Shawn C <shawn.c.lee@intel.com>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/intel_uncore.c | 3 ++-
>>>    1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
>>> index dfefad5a5fec..da2edde4b6f6 100644
>>> --- a/drivers/gpu/drm/i915/intel_uncore.c
>>> +++ b/drivers/gpu/drm/i915/intel_uncore.c
>>> @@ -1929,7 +1929,8 @@ static inline bool __must_check
>>>    unclaimed_reg_debug_header(struct intel_uncore *uncore,
>>>    			   const i915_reg_t reg, const bool read)
>>>    {
>>> -	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
>>> +	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO) ||
>>> +	    likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
>>>    		return false;
>>
>> But now it would not be possible to enable mmio_debug, if Kconfig
>> _default_ is 'n'. What am I missing?
> 
> You're not missing anything, I am. *facepalm*
> 
> The question is, are the first two acceptable without the third?

What are 1st, 2nd and 3rd in your counting?

This area is confusing me a little bit.

If I look at unclaimed_reg_debug it appears unclaimed register debug 
depends on mmio_debug.

But if I look at the message output by 
intel_uncore_arm_unclaimed_mmio_detection it appears that on detecting 
an unclaimed register we suggest to enable mmio_debug.

Isn't that a contradiction?

Regards,

Tvrtko
