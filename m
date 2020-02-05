Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEFE153834
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 19:34:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BDD96F92A;
	Wed,  5 Feb 2020 18:34:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC16C6F92D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 18:34:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 10:34:00 -0800
X-IronPort-AV: E=Sophos;i="5.70,406,1574150400"; d="scan'208";a="224743072"
Received: from aabader-mobl1.ccr.corp.intel.com (HELO [10.252.21.249])
 ([10.252.21.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 05 Feb 2020 10:33:59 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200205121147.1834445-1-chris@chris-wilson.co.uk>
 <20200205121313.1834548-1-chris@chris-wilson.co.uk>
 <637ae604-f50d-7436-eb0b-e69d555e401f@linux.intel.com>
 <158092108409.5585.7308401904801560850@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0eb12f13-eb2c-2c44-2a04-aa65deef2df8@linux.intel.com>
Date: Wed, 5 Feb 2020 18:33:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <158092108409.5585.7308401904801560850@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gem: Don't leak non-persistent
 requests on changing engines
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


On 05/02/2020 16:44, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-02-05 16:22:34)
>> On 05/02/2020 12:13, Chris Wilson wrote:
>>> If we have a set of active engines marked as being non-persistent, we
>>> lose track of those if the user replaces those engines with
>>> I915_CONTEXT_PARAM_ENGINES. As part of our uABI contract is that
>>> non-persistent requests are terminated if they are no longer being
>>> tracked by the user's context (in order to prevent a lost request
>>> causing an untracked and so unstoppable GPU hang), we need to apply the
>>> same context cancellation upon changing engines.
>>>
>>> Fixes: a0e047156cde ("drm/i915/gem: Make context persistence optional")
>>> Testcase: XXX
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gem/i915_gem_context.c | 7 +++++++
>>>    1 file changed, 7 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>>> index 52a749691a8d..20f1d3e0221f 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>>> @@ -1624,11 +1624,18 @@ set_engines(struct i915_gem_context *ctx,
>>>    
>>>    replace:
>>>        mutex_lock(&ctx->engines_mutex);
>>> +
>>> +     /* Flush stale requests off the old engines if required */
>>> +     if (!i915_gem_context_is_persistent(ctx) ||
>>> +         !i915_modparams.enable_hangcheck)
>>> +             kill_context(ctx);
>>
>> Is the negative effect of this is legit contexts can't keep submitting
>> and changing the map? Only if PREEMPT_TIMEOUT is disabled I think but
>> still. Might break legitimate userspace. Not that I offer solutions.. :(
>> Banning changing engines once context went non-persistent? That too can
>> break someone.
> 
> It closes the hole we have. To do otherwise, we need to keep track of
> the old engines. Not an impossible task, certainly inconvenient.
> 
> struct old_engines {
> 	struct i915_active active;
> 	struct list_head link;
> 	struct i915_gem_context *ctx;
> 	void *engines;
> 	int num_engines;
> };
> 
> With a list+spinlock in the ctx that we can work in kill_context.
> 
> The biggest catch there is actually worrying about attaching the active
> to already executing request, and making sure the coupling doesn't bug
> on a concurrent completion. Hmm, it's just a completion callback, but
> more convenient to use a ready made one.

What would you do with old engines? We don't have a mechanism to mark 
intel_context closed. Hm, right, it would get unreachable by definition. 
But how to terminate it if it doesn't play nicely?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
