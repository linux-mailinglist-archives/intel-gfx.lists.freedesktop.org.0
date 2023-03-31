Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2868F6D19B2
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 10:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F263110F133;
	Fri, 31 Mar 2023 08:23:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92FF110F11A
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 08:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680250982; x=1711786982;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=fuY1MioiqKgIYu/vt88Ei03JgeNdiouN4+cYKtaWhNU=;
 b=ARHZGOsfZQa0MoOCeiy4qm1u0EOI9+6eC/USrs9LqJiE/5O5G70hDQN+
 Ik2Hntb4ZdrFjuNc7eqjZyIYrD4SORBpCCbiAwPeXsReRNIBN1oB2mziE
 caugmr1eLW8Nj/r9787/BPcW9cMmVby1szQ/aNJ3GsJOaqxZoqWjVRXpP
 8c27Diq53MGF6aX9WJbFkZka1xCu7je4RqpfgOH3arDGL8ylNRYaEZG8G
 VT2WqevFuU7pZTPJg4UbjFTcbvocMmqD104SsBH7ZOUigkdCNb6kN9bdJ
 +NHyOUmnMlzG4SolRoKLCIJlnzgJYaObdqsNXEN6KtwWqYlOQ7HMBW3Zy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="406405609"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="406405609"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 01:23:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="754330336"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="754330336"
Received: from bpower-mobl3.ger.corp.intel.com (HELO [10.213.225.27])
 ([10.213.225.27])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 01:23:00 -0700
Message-ID: <bfe8d7ab-b327-39e8-cdd0-3aad0cd437e4@linux.intel.com>
Date: Fri, 31 Mar 2023 09:22:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
 <20230330004103.1295413-6-umesh.nerlige.ramappa@intel.com>
 <1036f396-f5d6-82bd-27ff-66146b115184@linux.intel.com>
 <87r0t5dgc5.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87r0t5dgc5.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915/pmu: Prepare for multi-tile
 non-engine counters
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


On 30/03/2023 23:28, Dixit, Ashutosh wrote:
> On Thu, 30 Mar 2023 05:39:04 -0700, Tvrtko Ursulin wrote:
>>
> 
> Hi Tvrtko,
> 
>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>>> index 1b04c79907e8..a708e44a227e 100644
>>> --- a/drivers/gpu/drm/i915/i915_pmu.h
>>> +++ b/drivers/gpu/drm/i915/i915_pmu.h
>>> @@ -38,13 +38,16 @@ enum {
>>> 	__I915_NUM_PMU_SAMPLERS
>>>    };
>>>    +#define I915_PMU_MAX_GTS (4) /* FIXME */
>>
>> 3-4 years since writing this I have no idea what I meant by this
>> FIXME. Should have put a better comment.. :( It was early platform
>> enablement times so it was somewhat passable, but now I think we need to
>> figure out what I actually meant. Maybe removing the comment is fine.
>>
>>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>>> index dba7c5a5b25e..bbab7f3dbeb4 100644
>>> --- a/include/uapi/drm/i915_drm.h
>>> +++ b/include/uapi/drm/i915_drm.h
>>> @@ -280,7 +280,17 @@ enum drm_i915_pmu_engine_sample {
>>>    #define I915_PMU_ENGINE_SEMA(class, instance) \
>>> 	__I915_PMU_ENGINE(class, instance, I915_SAMPLE_SEMA)
>>>    -#define __I915_PMU_OTHER(x) (__I915_PMU_ENGINE(0xff, 0xff, 0xf) + 1 +
>>> (x))
>>> +/*
>>> + * Top 8 bits of every non-engine counter are GT id.
>>> + * FIXME: __I915_PMU_GT_SHIFT will be changed to 56
>>> + */
>>
>> I asked before and don't think I got an answer: Why is 4 bits not enough
>> for gt id? The comment is not my code I am pretty sure.
> 
> Both of the above FIXME's are the work of yours truly :-) (added during
> PRELIM work).

Very kind of you but I think first one is mine. ;) I can find it in my 
local branch dating from at least June 2020.

I had an idea that maybe it was supposed to mean I wanted to results the 
I915_MAX_GT define and not duplicate a '4' here. Perhaps there was some 
header mess which made me give up at the time.

I think it is worth trying that now, maybe something changed.

> Anyway given that now i915 will not support new product generations I think
> we can just drop the FIXME's. Otherwise I was saying since we are only
> using a few bottom bits, why not future proof things a bit and allow for
> num_gt's to expand beyond 16.

Oh right.. I thought 16 gts will be enough but I also don't think I mind 
if it is 4 or 8 bits. Possibly at the time, as I was seeing more and 
more counters getting added, or better say classes of counters, I was 
starting to get wary of getting out of bits for future expansion. All of 
those were done by segmenting the numerical space, not bit wise, so 
perhaps the concern shouldn't have been there and 8 is also fine. Don't 
know really, don't think I have a strong opinion. Lets pick one and drop 
the FIXME comment.

Regards,

Tvrtko

> 
> So for now just drop the FIXME's for i915, revisit if needed with xe.


