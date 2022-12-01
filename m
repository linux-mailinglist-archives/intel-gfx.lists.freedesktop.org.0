Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDC063EDBF
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 11:28:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F1BB10E5AE;
	Thu,  1 Dec 2022 10:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C3FA10E5B0
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 10:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669890524; x=1701426524;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=D5741zg5+IqLfMyMrGALpb32tQq6NfnAioM6eIt33P8=;
 b=k7rPcbKG5GhR74nLoJkx9PJdegTGsT6qitNEIxUZsrISjnsXgXJIqJJ1
 FtMbWC1HUkamzSBZRndd8kBBt7+1Jq0kVUigtPSJOoGRQ0RncIQWKP/o5
 PSy21gYklH0kwoiUsEyxj/eLu5dmTBVHk6onJAbrdZllA9ng0QVUIBTR5
 VP2Rbl8Rd9VQ3q4TvRaJnxR01Rrq8SuPLAtrOQckAXVSW2thuRe7ORxOW
 IYKZdIJ0fHtFEbBLrsmqrjAtmVYtgUhPnoSx+KbJ/FVdxqR3bYpnguefH
 KRtYlSgt5rz9+2hAG8kqLI/AR65veew+wRNCXmdK7TcnbnDwWhhargvK8 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="295342262"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="295342262"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 02:28:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="638343458"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="638343458"
Received: from aguefor-mobl.ger.corp.intel.com (HELO [10.213.229.22])
 ([10.213.229.22])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 02:28:41 -0800
Message-ID: <394f6232-50bf-1344-8165-ff6abf3b9323@linux.intel.com>
Date: Thu, 1 Dec 2022 10:28:39 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: John Harrison <john.c.harrison@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221128165209.353706-1-andrzej.hajda@intel.com>
 <36b9d912-84b3-d050-59aa-b95c245551d2@linux.intel.com>
 <0846a17b-9562-0592-003a-4336fcac8f51@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <0846a17b-9562-0592-003a-4336fcac8f51@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix exiting context timeout
 calculation
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/12/2022 00:22, John Harrison wrote:
> On 11/29/2022 00:43, Tvrtko Ursulin wrote:
>> On 28/11/2022 16:52, Andrzej Hajda wrote:
>>> In case context is exiting preempt_timeout_ms is used for timeout,
>>> but since introduction of DRM_I915_PREEMPT_TIMEOUT_COMPUTE it increases
>>> to 7.5 seconds. Heartbeat occurs earlier but it is still 2.5s.
>>>
>>> Fixes: d7a8680ec9fb21 ("drm/i915: Improve long running compute w/a 
>>> for GuC submission")
>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2410
>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>> ---
>>> Hi all,
>>>
>>> I am not sure what is expected solution here, and if my patch does not
>>> actually reverts intentions of patch d7a8680ec9fb21. Feel free to 
>>> propose
>>> something better.
>>> Other alternative would be to increase t/o in IGT tests, but I am not 
>>> sure
>>> if this is good direction.
>>
>> Is it the hack with the FIXME marker from 47daf84a8bfb ("drm/i915: 
>> Make the heartbeat play nice with long pre-emption timeouts") that 
>> actually breaks things? (If IGT modifies the preempt timeout the 
>> heartbeat extension will not work as intended.)
>>
>> If so, I think we agreed during review that was a weakness which needs 
>> to be addressed, but I would need to re-read the old threads to 
>> remember what was the plan. Regardless what it was it may be time is 
>> now to continue with those improvements.
>>
> What is the actual issue? Just that closing contexts are taking forever 
> to actually close? That would be the whole point of the 
> 'context_is_exiting' patch. Which I still totally disagree with.
> 
> If the context is being closed 'gracefully' and it is intended that it 
> should be allowed time to pre-empt without being killed via an engine 
> reset then the 7.5s delay is required. That is the officially agreed 
> upon timeout to allow compute capable contexts to reach a pre-emption 
> point before they should be killed. If an IGT is failing because it 
> enforces a shorter timeout then the IGT needs to be updated to account 
> for the fact that i915 has to support slow compute workloads.
> 
> If the context is being closed 'forcefully' and should be killed 
> immediately then you should be using the 'BANNED_PREEMPT_TIMEOUT' value 
> not the sysfs/config value.
> 
> Regarding heartbeats...
> 
> The heartbeat period is 2.5s. But there are up to five heartbeat periods 
> between the heartbeat starting and it declaring a hang. The patch you 
> mention also introduced a check on the pre-emption timeout when the last 
> period starts. If the pre-emption timeout is longer than the heartbeat 
> period then the last period is extended to guarantee that a full 
> pre-emption time is granted before declaring the hang.
> 
> Are you saying that a heartbeat timeout is occurring and killing the 
> system? Or are you just worried that something doesn't align correctly?

I leave this to Andrzej since I am not the one debugging this. I just glanced over the IGT and saw that there's code in there which sets both the preempt timeout and heartbeat interval to non-default values. And then I remembered this:

next_heartbeat():
...
         /*
          * FIXME: The final period extension is disabled if the period has been
          * modified from the default. This is to prevent issues with certain
          * selftests which override the value and expect specific behaviour.
          * Once the selftests have been updated to either cope with variable
          * heartbeat periods (or to override the pre-emption timeout as well,
          * or just to add a selftest specific override of the extension), the
          * generic override can be removed.
          */
         if (rq && rq->sched.attr.priority >= I915_PRIORITY_BARRIER &&
             delay == engine->defaults.heartbeat_interval_ms) {

Which then wouldn't dtrt with last heartbeat pulse extensions, if the IGT would be relying on that. Don't know, just pointing out to check and see if this FIXME needs to be prioritised.

Regards,

Tvrtko
