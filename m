Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB1130F2D7
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 13:08:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EAF46E9F5;
	Thu,  4 Feb 2021 12:08:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D126E9F5
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 12:08:19 +0000 (UTC)
IronPort-SDR: zOnrWRvnN24BqQ6AkmV5KMn4w4yICRcMxVFZFSFDnUqKdkbgI0oUb7pSlBR5Bysslct0ccKAAp
 YOORjwPQk2Zw==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="177720718"
X-IronPort-AV: E=Sophos;i="5.79,400,1602572400"; d="scan'208";a="177720718"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 04:08:18 -0800
IronPort-SDR: 8HgN3mu443IPcpkj+zQW9KpgR3/gM3LQLCjLB8uBCxGb2qoH0eEO6KixCRIIAnUbkRBRqeEZ6R
 BYizplFD+LoA==
X-IronPort-AV: E=Sophos;i="5.79,400,1602572400"; d="scan'208";a="393132807"
Received: from acanalx-mobl.ger.corp.intel.com (HELO [10.249.32.114])
 ([10.249.32.114])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 04:08:17 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-20-chris@chris-wilson.co.uk>
 <45740fad-297d-03e7-7de4-3a171376c0c2@linux.intel.com>
 <161243750979.1383.2504816924204435385@build.alporthouse.com>
 <161243981120.4856.4115126682547775710@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1e6d0ce0-5325-72a6-ec79-fc667d60126f@linux.intel.com>
Date: Thu, 4 Feb 2021 12:08:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <161243981120.4856.4115126682547775710@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 20/57] drm/i915: Wrap access to
 intel_engine.active
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


On 04/02/2021 11:56, Chris Wilson wrote:
> Quoting Chris Wilson (2021-02-04 11:18:29)
>> Quoting Tvrtko Ursulin (2021-02-04 11:07:07)
>>>
>>>
>>> On 01/02/2021 08:56, Chris Wilson wrote:
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>>> index b56e321ef003..280d84c4e4b7 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>>> @@ -293,6 +293,7 @@ static int virtual_prio(const struct intel_engine_execlists *el)
>>>>    static bool need_preempt(const struct intel_engine_cs *engine,
>>>>                         const struct i915_request *rq)
>>>>    {
>>>> +     const struct i915_sched *se = &engine->active;
>>>
>>> There's only two instances in this patch which do not use
>>> intel_engine_get_scheduler. Intended?
>>
>> They were the ones I earmarked for being replaced by the scheduler
>> object being passed down. Having down that I can do the replacement here
>> and remove the conflicts with the final result later.
> 
> The catch here was the const. We can't make the getter take a const*
> at this point, so I left it as &engine->active to not have to remove the
> constness.

It's fine, I'm mostly interested in the goodness of the end result.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
