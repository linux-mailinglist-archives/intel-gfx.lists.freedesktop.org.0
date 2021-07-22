Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3125B3D24ED
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 15:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 997486E9A9;
	Thu, 22 Jul 2021 13:55:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 116366E8D3;
 Thu, 22 Jul 2021 13:55:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211709297"
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="211709297"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 06:55:26 -0700
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="470649071"
Received: from cstylian-mobl3.ger.corp.intel.com (HELO [10.213.198.98])
 ([10.213.198.98])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 06:55:24 -0700
To: Matthew Brost <matthew.brost@intel.com>
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-25-matthew.brost@intel.com>
 <e5d96ebb-f168-c1af-22c8-0b066388e70d@linux.intel.com>
 <20210720015959.GA14012@sdutt-i7>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <325be7ab-b495-cf2c-05ca-13bfa9f2a466@linux.intel.com>
Date: Thu, 22 Jul 2021 14:55:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210720015959.GA14012@sdutt-i7>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 24/47] drm/i915/guc: Add several request
 trace points
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 20/07/2021 02:59, Matthew Brost wrote:
> On Tue, Jul 13, 2021 at 10:06:17AM +0100, Tvrtko Ursulin wrote:
>>
>> On 24/06/2021 08:04, Matthew Brost wrote:
>>> Add trace points for request dependencies and GuC submit. Extended
>>> existing request trace points to include submit fence value,, guc_id,
>>> and ring tail value.
>>>
>>> Cc: John Harrison <john.c.harrison@intel.com>
>>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
>>> ---
>>>    .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  3 ++
>>>    drivers/gpu/drm/i915/i915_request.c           |  3 ++
>>>    drivers/gpu/drm/i915/i915_trace.h             | 39 ++++++++++++++++++-
>>>    3 files changed, 43 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> index 89b3c7e5d15b..c2327eebc09c 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> @@ -422,6 +422,7 @@ static int guc_dequeue_one_context(struct intel_guc *guc)
>>>    			guc->stalled_request = last;
>>>    			return false;
>>>    		}
>>> +		trace_i915_request_guc_submit(last);
>>>    	}
>>>    	guc->stalled_request = NULL;
>>> @@ -642,6 +643,8 @@ static int guc_bypass_tasklet_submit(struct intel_guc *guc,
>>>    	ret = guc_add_request(guc, rq);
>>>    	if (ret == -EBUSY)
>>>    		guc->stalled_request = rq;
>>> +	else
>>> +		trace_i915_request_guc_submit(rq);
>>>    	return ret;
>>>    }
>>> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
>>> index d92c9f25c9f4..7f7aa096e873 100644
>>> --- a/drivers/gpu/drm/i915/i915_request.c
>>> +++ b/drivers/gpu/drm/i915/i915_request.c
>>> @@ -1344,6 +1344,9 @@ __i915_request_await_execution(struct i915_request *to,
>>>    			return err;
>>>    	}
>>> +	trace_i915_request_dep_to(to);
>>> +	trace_i915_request_dep_from(from);
>>
>> Are those two guaranteed to be atomic ie. no other dep_to/dep_from can get
>> injected in the middle of them and if so what guarantees that?
>>
> 
> These are not atomic but in practice I've never seen an out of order
> tracepoints.
>   
>> Actually we had an internal discussion going in November 2019 on these very
>> tracepoints which I think was left hanging in the air.
>>
>> There I was suggesting you create a single tracepoint in the format of "from
>> -> to", so it's clear without any doubt what is going on.
>>
> 
> Not sure if it worth adding a custom trace point fo rthis.

Custom as in not inherit from i915_request class you mean? It's not that 
hard really.

>> I also suggested this should out outside the GuC patch since it is backend
>> agnostic.
> 
> I guess, but it really matter?

IMO following best practices and established conventions matters a lot.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
