Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC0A4C70A8
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 16:33:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F28E10E47F;
	Mon, 28 Feb 2022 15:33:13 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9E0610E605;
 Mon, 28 Feb 2022 15:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646062392; x=1677598392;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8hQqWVaXMEnplX5L91vSRMr2Bgi436Ma6WTh8PwXV4Q=;
 b=UdwvzkH28NJ9a6+PcWz5VBAzdvwWHLgW3QzTeuAdKe1zxYLwVko8iwtX
 pkg+K8PNyybmh65DtwVzXKTh+YBNyXaPCQcQs+cgbsMW3RjFbv0y9zHAU
 IxDm9biTtBoIuegT4aqJMNkGiQrEycb//WdDF2T7XzadDu05nhy5mmZms
 IjTEDKbhPSUyLntnrzfeHqTvGaVBFFWGLDwq3uT3RkCvV9cZtOKigE0RY
 Ln2e5V9YT1AbptKNcnrOME2R/WHLtTfaD6GUOrLB9qJrXjUxP8RNTDd2Z
 kG8ISpRQ4j32woRu5WmWQh/qljUYrASJ8oTffpI81g1ws/d9uay6QBMUF w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10271"; a="253099123"
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="253099123"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 07:32:52 -0800
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="708677296"
Received: from jpdecker-mobl3.ger.corp.intel.com (HELO [10.213.235.138])
 ([10.213.235.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 07:32:51 -0800
Message-ID: <fe10779e-db98-4d84-3d12-d4260f28a3c8@linux.intel.com>
Date: Mon, 28 Feb 2022 15:32:49 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: John Harrison <john.c.harrison@intel.com>, Intel-GFX@Lists.FreeDesktop.Org
References: <20220218213307.1338478-1-John.C.Harrison@Intel.com>
 <647b611a-d159-3a6f-2e3a-c8039a9503ec@linux.intel.com>
 <7ceb4723-7ebf-3762-ddb7-b16e48e804d3@intel.com>
 <ccc8d37f-2bcc-b258-4969-430c609c11d0@linux.intel.com>
 <6526515c-a4d1-1815-3ee8-6a35dfa5036f@intel.com>
 <e3abab20-084a-146b-8c6f-274474aa7bc1@linux.intel.com>
 <bb8d25fa-4b6f-0c53-302a-623787760bcd@intel.com>
 <720fe7f8-a712-c755-9fbe-70ac2fa008f6@linux.intel.com>
 <72ebab5f-1023-b590-f5a7-f5db2333e925@intel.com>
 <34273e9e-8473-d95e-fdc0-47ca9e7ac8cb@linux.intel.com>
 <09969620-129e-f032-2f12-0d1adf537e6e@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <09969620-129e-f032-2f12-0d1adf537e6e@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 0/3] Improve anti-pre-emption w/a for
 compute workloads
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/02/2022 19:03, John Harrison wrote:
> On 2/25/2022 10:29, Tvrtko Ursulin wrote:
>> On 25/02/2022 18:01, John Harrison wrote:
>>> On 2/25/2022 09:39, Tvrtko Ursulin wrote:
>>>> On 25/02/2022 17:11, John Harrison wrote:
>>>>> On 2/25/2022 08:36, Tvrtko Ursulin wrote:
>>>>>> On 24/02/2022 20:02, John Harrison wrote:
>>>>>>> On 2/23/2022 04:00, Tvrtko Ursulin wrote:
>>>>>>>> On 23/02/2022 02:22, John Harrison wrote:
>>>>>>>>> On 2/22/2022 01:53, Tvrtko Ursulin wrote:
>>>>>>>>>> On 18/02/2022 21:33, John.C.Harrison@Intel.com wrote:
>>>>>>>>>>> From: John Harrison <John.C.Harrison@Intel.com>
>>>>>>>>>>>
>>>>>>>>>>> Compute workloads are inherently not pre-emptible on current 
>>>>>>>>>>> hardware.
>>>>>>>>>>> Thus the pre-emption timeout was disabled as a workaround to 
>>>>>>>>>>> prevent
>>>>>>>>>>> unwanted resets. Instead, the hang detection was left to the 
>>>>>>>>>>> heartbeat
>>>>>>>>>>> and its (longer) timeout. This is undesirable with GuC 
>>>>>>>>>>> submission as
>>>>>>>>>>> the heartbeat is a full GT reset rather than a per engine 
>>>>>>>>>>> reset and so
>>>>>>>>>>> is much more destructive. Instead, just bump the pre-emption 
>>>>>>>>>>> timeout
>>>>>>>>>>
>>>>>>>>>> Can we have a feature request to allow asking GuC for an 
>>>>>>>>>> engine reset?
>>>>>>>>> For what purpose?
>>>>>>>>
>>>>>>>> To allow "stopped heartbeat" to reset the engine, however..
>>>>>>>>
>>>>>>>>> GuC manages the scheduling of contexts across engines. With 
>>>>>>>>> virtual engines, the KMD has no knowledge of which engine a 
>>>>>>>>> context might be executing on. Even without virtual engines, 
>>>>>>>>> the KMD still has no knowledge of which context is currently 
>>>>>>>>> executing on any given engine at any given time.
>>>>>>>>>
>>>>>>>>> There is a reason why hang detection should be left to the 
>>>>>>>>> entity that is doing the scheduling. Any other entity is second 
>>>>>>>>> guessing at best.
>>>>>>>>>
>>>>>>>>> The reason for keeping the heartbeat around even when GuC 
>>>>>>>>> submission is enabled is for the case where the KMD/GuC have 
>>>>>>>>> got out of sync with either other somehow or GuC itself has 
>>>>>>>>> just crashed. I.e. when no submission at all is working and we 
>>>>>>>>> need to reset the GuC itself and start over.
>>>>>>>>
>>>>>>>> .. I wasn't really up to speed to know/remember heartbeats are 
>>>>>>>> nerfed already in GuC mode.
>>>>>>> Not sure what you mean by that claim. Engine resets are handled 
>>>>>>> by GuC because GuC handles the scheduling. You can't do the 
>>>>>>> former if you aren't doing the latter. However, the heartbeat is 
>>>>>>> still present and is still the watchdog by which engine resets 
>>>>>>> are triggered. As per the rest of the submission process, the 
>>>>>>> hang detection and recovery is split between i915 and GuC.
>>>>>>
>>>>>> I meant that "stopped heartbeat on engine XXX" can only do a full 
>>>>>> GPU reset on GuC.
>>>>> I mean that there is no 'stopped heartbeat on engine XXX' when i915 
>>>>> is not handling the recovery part of the process.
>>>>
>>>> Hmmmm?
>>>>
>>>> static void
>>>> reset_engine(struct intel_engine_cs *engine, struct i915_request *rq)
>>>> {
>>>>     if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
>>>>         show_heartbeat(rq, engine);
>>>>
>>>>     if (intel_engine_uses_guc(engine))
>>>>         /*
>>>>          * GuC itself is toast or GuC's hang detection
>>>>          * is disabled. Either way, need to find the
>>>>          * hang culprit manually.
>>>>          */
>>>>         intel_guc_find_hung_context(engine);
>>>>
>>>>     intel_gt_handle_error(engine->gt, engine->mask,
>>>>                   I915_ERROR_CAPTURE,
>>>>                   "stopped heartbeat on %s",
>>>>                   engine->name);
>>>> }
>>>>
>>>> How there is no "stopped hearbeat" in guc mode? From this code it 
>>>> certainly looks there is.
>>> Only when the GuC is toast and it is no longer an engine reset but a 
>>> full GT reset that is required. So technically, it is not a 'stopped 
>>> heartbeat on engine XXX' it is 'stopped heartbeat on GT#'.
>>>
>>>>
>>>> You say below heartbeats are going in GuC mode. Now I totally don't 
>>>> understand how they are going but there is allegedly no "stopped 
>>>> hearbeat".
>>> Because if GuC is handling the detection and recovery then i915 will 
>>> not reach that point. GuC will do the engine reset and start 
>>> scheduling the next context before the heartbeat period expires. So 
>>> the notification will be a G2H about a specific context being reset 
>>> rather than the i915 notification about a stopped heartbeat.
>>>
>>>>
>>>>>>
>>>>>>     intel_gt_handle_error(engine->gt, engine->mask,
>>>>>>                   I915_ERROR_CAPTURE,
>>>>>>                   "stopped heartbeat on %s",
>>>>>>                   engine->name);
>>>>>>
>>>>>> intel_gt_handle_error:
>>>>>>
>>>>>>     /*
>>>>>>      * Try engine reset when available. We fall back to full reset if
>>>>>>      * single reset fails.
>>>>>>      */
>>>>>>     if (!intel_uc_uses_guc_submission(&gt->uc) &&
>>>>>>         intel_has_reset_engine(gt) && !intel_gt_is_wedged(gt)) {
>>>>>>         local_bh_disable();
>>>>>>         for_each_engine_masked(engine, gt, engine_mask, tmp) {
>>>>>>
>>>>>> You said "However, the heartbeat is still present and is still the 
>>>>>> watchdog by which engine resets are triggered", now I don't know 
>>>>>> what you meant by this. It actually triggers a single engine reset 
>>>>>> in GuC mode? Where in code does that happen if this block above 
>>>>>> shows it not taking the engine reset path?
>>>>> i915 sends down the per engine pulse.
>>>>> GuC schedules the pulse
>>>>> GuC attempts to pre-empt the currently active context
>>>>> GuC detects the pre-emption timeout
>>>>> GuC resets the engine
>>>>>
>>>>> The fundamental process is exactly the same as in execlist mode. 
>>>>> It's just that the above blocks of code (calls to 
>>>>> intel_gt_handle_error and such) are now inside the GuC not i915.
>>>>>
>>>>> Without the heartbeat going ping, there would be no context 
>>>>> switching and thus no pre-emption, no pre-emption timeout and so no 
>>>>> hang and reset recovery. And GuC cannot sent pulses by itself - it 
>>>>> has no ability to generate context workloads. So we need i915 to 
>>>>> send the pings and to gradually raise their priority. But the back 
>>>>> half of the heartbeat code is now inside the GuC. It will simply 
>>>>> never reach the i915 side timeout if GuC is doing the recovery 
>>>>> (unless the heartbeat's final period is too short). We should only 
>>>>> reach the i915 side timeout if GuC itself is toast. At which point 
>>>>> we need the full GT reset to recover the GuC.
>>>>
>>>> If workload is not preempting and reset does not work, like engine 
>>>> is truly stuck, does the current code hit "stopped heartbeat" or not 
>>>> in GuC mode?
>>> Hang on, where did 'reset does not work' come into this?
>>>
>>> If GuC is alive and the hardware is not broken then no, it won't. 
>>> That's the whole point. GuC does the detection and recovery. The KMD 
>>> will never reach 'stopped heartbeat'.
>>>
>>> If the hardware is broken and the reset does not work then GuC will 
>>> send a 'failed reset' notification to the KMD. The KMD treats that as 
>>> a major error and immediately does a full GT reset. So there is still 
>>> no 'stopped heartbeat'.
>>>
>>> If GuC has died (or a KMD bug has caused sufficient confusion to make 
>>> it think the GuC has died) then yes, you will reach that code. But in 
>>> that case it is not an engine reset that is required, it is a full GT 
>>> reset including a reset of the GuC.
>>
>> Got it, so what is actually wrong is calling intel_gt_handle_error 
>> with an engine->mask in GuC mode. intel_engine_hearbeat.c/reset_engine 
>> should fork into two (in some way), depending on backend, so in the 
>> case of GuC it can call a variant of intel_gt_handle_error which would 
>> be explicitly about a full GPU reset only, instead of a sprinkle of 
>> intel_uc_uses_guc_submission in that function. Possibly even off load 
>> the reset to a single per gt worker, so that if multiple active 
>> engines trigger the reset roughly simultaneously, there is only one 
>> full GPU reset. And it gets correctly labeled as "dead GuC" or something.
>>
> Sure. Feel free to re-write the reset code yet again. That's another 
> exceedingly fragile area of the driver.

> However, that is unrelated to this patch set.

It's still okay to talk about improving things in my opinion. Especially 
since I think it is the same issue I raised late 2019 during internal 
review.

And I don't think it is fair to say that I should go and rewrite it, 
since I do not own the GuC backend area. Especially given the above.

If there is no motivation to improve it now then please at least track 
this, if it isn't already, in that internal Jira which was tracking all 
the areas of the GuC backend which could be improved.

I am also pretty sure if the design was cleaner it would have been more 
obvious to me, or anyone who happens to stumble there, what the purpose 
of intel_engine_heartbeat.c/reset_engine() is in GuC mode. So we 
wouldn't have to spend this long explaining things.

Regards,

Tvrtko
