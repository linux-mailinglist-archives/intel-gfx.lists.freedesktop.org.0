Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 690A91C3913
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 14:15:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D450A6E36F;
	Mon,  4 May 2020 12:15:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 126EC6E36F
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 12:15:37 +0000 (UTC)
IronPort-SDR: 0EVE2SVw3JeSQRxkhnjex3NWwaNYi76R8gYcfyK6lG0aPX7hJ7edaBIp2fj3LsmUOoop7pChTb
 OFI21pZoQA3w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 05:15:36 -0700
IronPort-SDR: k71QbS3whntC/piwb+GY18Veo9lHqkzuF2A31uSRn+1TQ4PJ9u+9Q8fni8Eyw2txPHaW44Fggy
 UXtGkG5oYcPg==
X-IronPort-AV: E=Sophos;i="5.73,352,1583222400"; d="scan'208";a="277510870"
Received: from efarji-mobl1.ger.corp.intel.com (HELO [10.251.165.124])
 ([10.251.165.124])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 05:15:34 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200504044903.7626-1-chris@chris-wilson.co.uk>
 <20200504044903.7626-2-chris@chris-wilson.co.uk>
 <6b0f5f78-cbdb-8a81-f799-3f16cf9c1586@linux.intel.com>
 <158859319983.11660.14233761464643225868@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c8810f44-9500-5516-e3b7-b1580c6296d4@linux.intel.com>
Date: Mon, 4 May 2020 13:15:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <158859319983.11660.14233761464643225868@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 02/22] drm/i915/gem: Specify address type
 for chained reloc batches
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 04/05/2020 12:53, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-05-04 12:49:03)
>>
>> On 04/05/2020 05:48, Chris Wilson wrote:
>>> It is required that a chained batch be in the same address domain as its
>>> parent, and also that must be specified in the command for earlier gen
>>> as it is not inferred from the chaining until gen6.
>>>
>>> Fixes: 964a9b0f611e ("drm/i915/gem: Use chained reloc batches")
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> ---
>>>    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 12 ++++++------
>>>    1 file changed, 6 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> index cce7df231cb9..ab0d4df13c0b 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> @@ -1004,14 +1004,14 @@ static int reloc_gpu_chain(struct reloc_cache *cache)
>>>        GEM_BUG_ON(cache->rq_size + RELOC_TAIL > PAGE_SIZE  / sizeof(u32));
>>>        cmd = cache->rq_cmd + cache->rq_size;
>>>        *cmd++ = MI_ARB_CHECK;
>>> -     if (cache->gen >= 8) {
>>> +     if (cache->gen >= 8)
>>>                *cmd++ = MI_BATCH_BUFFER_START_GEN8;
>>> -             *cmd++ = lower_32_bits(batch->node.start);
>>> -             *cmd++ = upper_32_bits(batch->node.start);
>>> -     } else {
>>> +     else if (cache->gen >= 6)
>>>                *cmd++ = MI_BATCH_BUFFER_START;
>>> -             *cmd++ = lower_32_bits(batch->node.start);
>>> -     }
>>> +     else
>>> +             *cmd++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
>>> +     *cmd++ = lower_32_bits(batch->node.start);
>>> +     *cmd++ = upper_32_bits(batch->node.start);
>>
>> MI_NOOP between batches on gen < 8 ?
> 
> batch->node.start is 32b on gen<8, so this is effectively a trailing NOOP
> after the BB_START. However, since it is after the 2 dword BB_START on
> earlier gen it is never even evaluated by the CS.

Right, okay, like I remembered how it worked from last week! :) Best to 
drop a comment still.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
