Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1313278971
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 15:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3386ECFD;
	Fri, 25 Sep 2020 13:23:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 932F66ECFD
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 13:23:36 +0000 (UTC)
IronPort-SDR: zEYgezkjtWxwCy2SXb9IcR5jxaKfLSN0K+39HvGCWCqAd2RXI8DF3EYIwiClOejBm9XmeWoY9z
 yFES/wlmYWSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="161613001"
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="161613001"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 06:23:36 -0700
IronPort-SDR: WLUmg5rmr9hQCksKMErW3xHxwfXHOX9ydxyS0ZbNDCZZRZvnO5dp55MOfwM8qfr9YAhPTW+icu
 LuXOHkDj4RBA==
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="455832584"
Received: from mlevy2-mobl.ger.corp.intel.com (HELO [10.251.176.131])
 ([10.251.176.131])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 06:23:34 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200916094219.3878-1-chris@chris-wilson.co.uk>
 <20200916094219.3878-4-chris@chris-wilson.co.uk>
 <e665fc1d-1b9d-a6ee-1798-df32d1296118@linux.intel.com>
 <160102830667.30248.7803662790481339170@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f2e8aa26-45d3-969f-daad-c4b208c69352@linux.intel.com>
Date: Fri, 25 Sep 2020 14:23:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160102830667.30248.7803662790481339170@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gem: Always test execution
 status on closing the context
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/09/2020 11:05, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-09-24 15:26:56)
>>
>> On 16/09/2020 10:42, Chris Wilson wrote:
>>> Verify that if a context is active at the time it is closed, that it is
>>> either persistent and preemptible (with hangcheck running) or it shall
>>> be removed from execution.
>>>
>>> Fixes: 9a40bddd47ca ("drm/i915/gt: Expose heartbeat interval via sysfs")
>>> Testcase: igt/gem_ctx_persistence/heartbeat-close
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>>> Cc: <stable@vger.kernel.org> # v5.7+
>>> ---
>>>    drivers/gpu/drm/i915/gem/i915_gem_context.c | 48 +++++----------------
>>>    1 file changed, 10 insertions(+), 38 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>>> index a548626fa8bc..4fd38101bb56 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>>> @@ -390,24 +390,6 @@ __context_engines_static(const struct i915_gem_context *ctx)
>>>        return rcu_dereference_protected(ctx->engines, true);
>>>    }
>>>    
>>> -static bool __reset_engine(struct intel_engine_cs *engine)
>>> -{
>>> -     struct intel_gt *gt = engine->gt;
>>> -     bool success = false;
>>> -
>>> -     if (!intel_has_reset_engine(gt))
>>> -             return false;
>>> -
>>> -     if (!test_and_set_bit(I915_RESET_ENGINE + engine->id,
>>> -                           &gt->reset.flags)) {
>>> -             success = intel_engine_reset(engine, NULL) == 0;
>>> -             clear_and_wake_up_bit(I915_RESET_ENGINE + engine->id,
>>> -                                   &gt->reset.flags);
>>> -     }
>>> -
>>> -     return success;
>>> -}
>>> -
>>>    static void __reset_context(struct i915_gem_context *ctx,
>>>                            struct intel_engine_cs *engine)
>>>    {
>>> @@ -431,12 +413,7 @@ static bool __cancel_engine(struct intel_engine_cs *engine)
>>>         * kill the banned context, we fallback to doing a local reset
>>>         * instead.
>>>         */
>>> -     if (IS_ACTIVE(CONFIG_DRM_I915_PREEMPT_TIMEOUT) &&
>>> -         !intel_engine_pulse(engine))
>>> -             return true;
>>> -
>>> -     /* If we are unable to send a pulse, try resetting this engine. */
>>> -     return __reset_engine(engine);
>>> +     return intel_engine_pulse(engine) == 0;
>>
>> Where is the path now which actually resets the currently running
>> workload (engine) of a non-persistent context? Pulse will be sent and
>> then rely on hangcheck but otherwise let it run?
> 
> If the pulse fails, we just call intel_handle_error() on the engine. On
> looking at this code again, I could not justify the open-coding of the
> engine reset fragment of the general error handler, especially as we end
> up taking that route anyway for device resets. (Unlike inside the
> tasklet, there's no atomicity concerns on this engine-reset path.)

I think yesterday I got lost in boolean logic and flows here. Today it 
looks fine. Bool ban will be true and code will indeed enter the 
__kill_context path.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko



_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
