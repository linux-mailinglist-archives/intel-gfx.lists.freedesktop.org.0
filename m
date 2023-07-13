Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A209752523
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 16:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22C2010E0E3;
	Thu, 13 Jul 2023 14:30:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC2B210E0E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 14:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689258641; x=1720794641;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=3tF0hkvXMbE6jO0OFHsbaL9e0Fbr+TzJCRSNhg/Pg74=;
 b=bDCngc6SoDyPqgWEU8LTMD4sG2azz9wJ7XN6mCZ4Rv6+UgKxME8wSbNS
 Vah/yA3bUMxWFurOspfooK48eKCvI7YCKnsg47bsxllruj+uwqqLn+jKo
 Z70RI3v2LWx2l/NsPh6Ix8vTUdOVFI0h3WdzzALm8A+XRsCv1DXso3Fnx
 q7Eov9XuvX4+1ozmX3U1bpRUjOZB8NXNUuVil47ygxnAn7GJWitfuvGaW
 ziUxW4Pk7cCPwKUsNqz76EIf+3RvBHM/TGcbX6IC2It/M95c5MsHKE5QW
 4ZOX9cQrgI0jqDE4dpRP4/lxMgB4ci0axG/a2/RVWmPAyFX0uK2MB509b A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="355132455"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="355132455"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 07:12:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="757177466"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="757177466"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.53.19])
 ([10.252.53.19])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 07:12:25 -0700
Message-ID: <5b002808-d060-b1a3-1a2e-b2107f8c1527@linux.intel.com>
Date: Thu, 13 Jul 2023 16:12:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20230627094327.134775-1-andi.shyti@linux.intel.com>
 <20230627094327.134775-3-andi.shyti@linux.intel.com>
 <2fcc7f87-c94a-e593-e76d-1f8b79827509@linux.intel.com>
 <CH0PR11MB54440BB204DF21FC6EAEA9B9E536A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <5e1c14e9-ddd2-bd64-eab5-aeed05d36004@linux.intel.com>
 <ZK/unFmdU3zZwVji@ashyti-mobl2.lan>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <ZK/unFmdU3zZwVji@ashyti-mobl2.lan>
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>, "Cavitt,
 Jonathan" <jonathan.cavitt@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andi,

On 7/13/2023 2:31 PM, Andi Shyti wrote:
> Hi Nirmoy and Jonathan,
>
>>>>> @@ -202,6 +202,13 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>>>>>     {
>>>>>     	struct intel_engine_cs *engine = rq->engine;
>>>>> +	/*
>>>>> +	 * Aux invalidations on Aux CCS platforms require
>>>>> +	 * memory traffic is quiesced prior.
>>>> I see that we are doing aux inval on EMIT_INVALIDATE so it make sense to
>>>>
>>>>    do if ((mode & EMIT_INVALIDATE) && !HAS_FLAT_CCS(engine->i915) )
>>>>
>>> This is agreeable, though I don't think there's any instances of us calling gen12_emit_flush_rcs with a blank mode,
>>> since that wouldn't accomplish anything.  So I don't think the additional check/safety net is necessary, but it doesn't
>>> hurt to have.
> so... do we agree here that we don't add anything? I don't really
> mind...

Not a blocking objection but if you are sending another revision of this 
then why not.


> Or, I can queue up a patch 5 adding this "pedantic" check and we
> can discuss it separately.
>
>>>>> +	 */
>>>>> +	if (!HAS_FLAT_CCS(engine->i915))
>>>>> +		mode |= EMIT_FLUSH;
>>>> I think this generic EMIT_FLUSH is not enough. I seeing some missing
>>>> flags for PIPE_CONTROL
>>>>
>>>> As per https://gfxspecs.intel.com/Predator/Home/Index/43904. It makes
>>>> sense to move this to a
>>>>
>>>> new function given the complexity of PIPE_CONTROL flags requires for this.
>>>>
>>> I'm assuming when you're talking about the missing flags for PIPE_CONTROL, you're
>>> referring to CCS Flush, correct?  Because every other flag is already covered in the
>>> EMIT_FLUSH path.
>> Yes, CCS Flush and I don't see a L3 fabric flush as well.
>>
>>
>>> I feel like I had this conversation with Matt while the internal version was
>>> developed back in February, and the consensus was that the CCS Flush
>>> requirement was already covered.
>> Wasn't aware of this, would be nice to have a confirmation and a comment so
>> we
>>
>> don't get confused in future.
>>
>>>     On the other hand, it looks like the CCS Flush
>>> requirement was only recently added back in May, so it might be worth
>>> double-checking at the very least.
>>>
>>> Although... if CCS Flush is a missing flag, I wonder how we're supposed to set it,
>>> as there doesn’t appear to be a definition for such a flag in intel_gpu_commands.h...
>>
>> Yes, not yet but we should add a flag for that.
> Is it OK if I add in the comment that EMIT_FLUSH covers the CCS
> flushing?


is it though ? I don't see that in the bspec, may be I am missing 
something ?


Regards,

Nirmoy

>
> Andi
