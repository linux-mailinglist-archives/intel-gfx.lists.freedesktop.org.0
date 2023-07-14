Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE997537F5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jul 2023 12:24:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE3E10E862;
	Fri, 14 Jul 2023 10:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7459310E861
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jul 2023 10:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689330283; x=1720866283;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=QYZ8b9ux6XsmyWyYJvU35CflCLsXeN1V8xgn7yIweAs=;
 b=O/fpR27asl7EJDEJhsj/1nz9Vv9OzWBvAFI7wDUS7XB9i1769oKuHnaN
 BEvkgHNdOlrqkU4n3TWCpFkgmghxeDfi7A2ybF6+1oG2gOwiaHeBxqE02
 nFAMW0uAZJvB1WPj0iL1TnKP8EWeaaOrBItLWBRb3MUtFlkpK7JC5u6p7
 RQO/EvvnWxQBheXbTMttGPPe+x9S4CdJDnrHH3Fqw/0aDEgub+O1fMcVj
 C8Fkfhko6XPYSo2rLga3+/eWTR15btdveDyFTaKcU/T7EmX71zeuhlAcy
 kkcjYhSIHoLpTtKxnkmeGl0UcswgAYcKvsTE2LaUHGAB8zBUIWKsjt6no w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="368991177"
X-IronPort-AV: E=Sophos;i="6.01,205,1684825200"; d="scan'208";a="368991177"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2023 03:24:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="757520953"
X-IronPort-AV: E=Sophos;i="6.01,205,1684825200"; d="scan'208";a="757520953"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.35.120])
 ([10.249.35.120])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2023 03:24:39 -0700
Message-ID: <f653202c-4a0d-eea3-3369-a4a8936c10b8@linux.intel.com>
Date: Fri, 14 Jul 2023 12:24:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
References: <20230627094327.134775-1-andi.shyti@linux.intel.com>
 <20230627094327.134775-3-andi.shyti@linux.intel.com>
 <2fcc7f87-c94a-e593-e76d-1f8b79827509@linux.intel.com>
 <CH0PR11MB54440BB204DF21FC6EAEA9B9E536A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <5e1c14e9-ddd2-bd64-eab5-aeed05d36004@linux.intel.com>
 <ZK/unFmdU3zZwVji@ashyti-mobl2.lan>
 <5b002808-d060-b1a3-1a2e-b2107f8c1527@linux.intel.com>
 <CH0PR11MB544438D1F757F25F0793CAF0E537A@CH0PR11MB5444.namprd11.prod.outlook.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <CH0PR11MB544438D1F757F25F0793CAF0E537A@CH0PR11MB5444.namprd11.prod.outlook.com>
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


On 7/13/2023 4:23 PM, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Nirmoy Das <nirmoy.das@linux.intel.com>
> Sent: Thursday, July 13, 2023 7:12 AM
> To: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Cavitt, Jonathan <jonathan.cavitt@intel.com>; Intel GFX <intel-gfx@lists.freedesktop.org>; Roper, Matthew D <matthew.d.roper@intel.com>; Chris Wilson <chris@chris-wilson.co.uk>; Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/gt: Ensure memory quiesced before invalidation
>> Hi Andi,
>>
>> On 7/13/2023 2:31 PM, Andi Shyti wrote:
>>> Hi Nirmoy and Jonathan,
>>>
>>>>>>> @@ -202,6 +202,13 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>>>>>>>      {
>>>>>>>      	struct intel_engine_cs *engine = rq->engine;
>>>>>>> +	/*
>>>>>>> +	 * Aux invalidations on Aux CCS platforms require
>>>>>>> +	 * memory traffic is quiesced prior.
>>>>>> I see that we are doing aux inval on EMIT_INVALIDATE so it make sense to
>>>>>>
>>>>>>     do if ((mode & EMIT_INVALIDATE) && !HAS_FLAT_CCS(engine->i915) )
>>>>>>
>>>>> This is agreeable, though I don't think there's any instances of us calling gen12_emit_flush_rcs with a blank mode,
>>>>> since that wouldn't accomplish anything.  So I don't think the additional check/safety net is necessary, but it doesn't
>>>>> hurt to have.
>>> so... do we agree here that we don't add anything? I don't really
>>> mind...
>> Not a blocking objection but if you are sending another revision of this
>> then why not.
>
> That's about my stance on it as well.  I'd defer the decision to Nirmoy here.
>
>
>>
>>> Or, I can queue up a patch 5 adding this "pedantic" check and we
>>> can discuss it separately.
>
> I wouldn't offer much in terms of the discussion, unfortunately, so I'm fairly certain the
> only thing that would come from that is a series of questions asking why the patch
> wasn't squashed with this one to begin with.
>
>
>>>>>>> +	 */
>>>>>>> +	if (!HAS_FLAT_CCS(engine->i915))
>>>>>>> +		mode |= EMIT_FLUSH;
>>>>>> I think this generic EMIT_FLUSH is not enough. I seeing some missing
>>>>>> flags for PIPE_CONTROL
>>>>>>
>>>>>> As per https://gfxspecs.intel.com/Predator/Home/Index/43904. It makes
>>>>>> sense to move this to a
>>>>>>
>>>>>> new function given the complexity of PIPE_CONTROL flags requires for this.
>>>>>>
>>>>> I'm assuming when you're talking about the missing flags for PIPE_CONTROL, you're
>>>>> referring to CCS Flush, correct?  Because every other flag is already covered in the
>>>>> EMIT_FLUSH path.
>>>> Yes, CCS Flush and I don't see a L3 fabric flush as well.
>
> Does PIPE_CONTROL_FLUSH_L3 not do this?

It does actually, was not very clear from 1st look.


>
>
>>>>
>>>>> I feel like I had this conversation with Matt while the internal version was
>>>>> developed back in February, and the consensus was that the CCS Flush
>>>>> requirement was already covered.
>>>> Wasn't aware of this, would be nice to have a confirmation and a comment so
>>>> we
>>>>
>>>> don't get confused in future.
>>>>
>>>>>      On the other hand, it looks like the CCS Flush
>>>>> requirement was only recently added back in May, so it might be worth
>>>>> double-checking at the very least.
>>>>>
>>>>> Although... if CCS Flush is a missing flag, I wonder how we're supposed to set it,
>>>>> as there doesn't appear to be a definition for such a flag in intel_gpu_commands.h...
>>>> Yes, not yet but we should add a flag for that.
>>> Is it OK if I add in the comment that EMIT_FLUSH covers the CCS
>>> flushing?
>>
>> is it though ? I don't see that in the bspec, may be I am missing
>> something ?
>
> That would certainly explain why there's no flag for it, if performing the CCS Flush
> is a part of the EMIT_FLUSH pipeline by default.

CCS Flush is new and I see a new bit for that in the gfxspec.

With that added, the patch looks good to me.


Thanks for your patience, Jonathan!


Nirmoy


Regards,

Nirmoy

> -Jonathan Cavitt
>
>
>>
>> Regards,
>>
>> Nirmoy
>>
>>> Andi
