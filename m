Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6046751D41
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 11:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 309BD10E008;
	Thu, 13 Jul 2023 09:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E003010E008
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 09:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689240701; x=1720776701;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=hvGelgZHWXLG76+J4SwshBgXyrEs0tVfHUgOe3kFeSE=;
 b=SvTSBbQCceEV9CL9Fc5TEkgd/nJE8GVUWEDSOw3a8vq97uHRQc5mNpj1
 K1hXVOM32o9wvKwvKJ+nZgkvs7w1OzOuTtoyGByyg07Zd9D/DasZdUoi4
 Px2XyhXO50dggxPuNBMBRwNjKP/sqBBsCA8oAyyJxsdLzdWQeNhJt8bnT
 ftiCu3Gf66AWhcTlusv6/o2J9FoPDG1Ukx5PsMJgNsJu1FE834uoGoN+9
 HSCH5FIkixc2xhMUpZMsdNHL2rquIHfSCuOnqoHiwXFrIfABP/hf8nwtz
 5IScj1C0w4hFBzBYKGnR1u3MMkP2y2v6IUAVRQpDqI/su0TjcCFZ/jMLj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="349990178"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="349990178"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 02:31:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="699191346"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="699191346"
Received: from ehenriet-mobl.ger.corp.intel.com (HELO [10.252.53.19])
 ([10.252.53.19])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 02:31:02 -0700
Message-ID: <5e1c14e9-ddd2-bd64-eab5-aeed05d36004@linux.intel.com>
Date: Thu, 13 Jul 2023 11:31:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20230627094327.134775-1-andi.shyti@linux.intel.com>
 <20230627094327.134775-3-andi.shyti@linux.intel.com>
 <2fcc7f87-c94a-e593-e76d-1f8b79827509@linux.intel.com>
 <CH0PR11MB54440BB204DF21FC6EAEA9B9E536A@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <CH0PR11MB54440BB204DF21FC6EAEA9B9E536A@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/gt: Ensure memory quiesced
 before invalidation
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/12/2023 5:39 PM, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Nirmoy Das <nirmoy.das@linux.intel.com>
> Sent: Wednesday, July 12, 2023 7:18 AM
> To: Andi Shyti <andi.shyti@linux.intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Cc: Intel GFX <intel-gfx@lists.freedesktop.org>; Roper, Matthew D <matthew.d.roper@intel.com>; Chris Wilson <chris@chris-wilson.co.uk>; Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/gt: Ensure memory quiesced before invalidation
>> Hi Andi and Jonathan,
>>
>> On 6/27/2023 11:43 AM, Andi Shyti wrote:
>>> From: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>>
>>> All memory traffic must be quiesced before requesting
>>> an aux invalidation on platforms that use Aux CCS.
>>>
>>> Fixes: 972282c4cf24 ("drm/i915/gen12: Add aux table invalidate for all engines")
>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
>>> Cc: <stable@vger.kernel.org> # v5.8+
>>> ---
>>>    drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 7 +++++++
>>>    1 file changed, 7 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>>> index 563efee055602..e10e1ad0e841f 100644
>>> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>>> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>>> @@ -202,6 +202,13 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>>>    {
>>>    	struct intel_engine_cs *engine = rq->engine;
>>>    
>>> +	/*
>>> +	 * Aux invalidations on Aux CCS platforms require
>>> +	 * memory traffic is quiesced prior.
>> I see that we are doing aux inval on EMIT_INVALIDATE so it make sense to
>>
>>   do if ((mode & EMIT_INVALIDATE) && !HAS_FLAT_CCS(engine->i915) )
>>
> This is agreeable, though I don't think there's any instances of us calling gen12_emit_flush_rcs with a blank mode,
> since that wouldn't accomplish anything.  So I don't think the additional check/safety net is necessary, but it doesn't
> hurt to have.
>
>>> +	 */
>>> +	if (!HAS_FLAT_CCS(engine->i915))
>>> +		mode |= EMIT_FLUSH;
>> I think this generic EMIT_FLUSH is not enough. I seeing some missing
>> flags for PIPE_CONTROL
>>
>> As per https://gfxspecs.intel.com/Predator/Home/Index/43904. It makes
>> sense to move this to a
>>
>> new function given the complexity of PIPE_CONTROL flags requires for this.
>>
> I'm assuming when you're talking about the missing flags for PIPE_CONTROL, you're
> referring to CCS Flush, correct?  Because every other flag is already covered in the
> EMIT_FLUSH path.

Yes, CCS Flush and I don't see a L3 fabric flush as well.


>
> I feel like I had this conversation with Matt while the internal version was
> developed back in February, and the consensus was that the CCS Flush
> requirement was already covered.

Wasn't aware of this, would be nice to have a confirmation and a comment 
so we

don't get confused in future.

>    On the other hand, it looks like the CCS Flush
> requirement was only recently added back in May, so it might be worth
> double-checking at the very least.
>
> Although... if CCS Flush is a missing flag, I wonder how we're supposed to set it,
> as there doesn’t appear to be a definition for such a flag in intel_gpu_commands.h...


Yes, not yet but we should add a flag for that.


Thanks,

Nirmoy

> -Jonathan Cavitt
>
>> Regards,
>>
>> Nirmoy
>>
>>
>>> +
>>>    	if (mode & EMIT_FLUSH) {
>>>    		u32 flags = 0;
>>>    		int err;
