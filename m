Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D9D65C061
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jan 2023 14:02:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0503710E1F4;
	Tue,  3 Jan 2023 13:02:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EF1110E1F4;
 Tue,  3 Jan 2023 13:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672750965; x=1704286965;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=PK+oUJ6eGND3B16m76PznzI5xpweZ5qE8FXd8hl4Lsc=;
 b=Niqii+jJfgtmzl409HXy4UU4UlLs2980vtt34wFWvPLs2+/pSRgew+kG
 eG/7ZH3YR8CzAwy0b2S5ghgYpFgTB4RpvFtnx80Vorl5G4Wa//UhkOInV
 Z8PvJCc+UmsDhDQhvwDIqqzgGy59y9gT4Jya6AtUZ0pzg2i5d0cFko5EO
 gVhmgZ74ZPjqxqASHsD/aVysClsx8Orefafn3hxdOE583VXQgfJazVHVl
 ynYcGEpuZt40IUtm03Ctu8ZQnKp9e05gdKsEHoEN/pZzHCtAsNrAhJey0
 LqymFsjnugWkk3GVGnOGKbRQNSE96Tl4jpC1VNmbTRBiYFyXYKKHlY9ey g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="322886001"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="322886001"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 05:02:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="648199269"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="648199269"
Received: from adorney-mobl.ger.corp.intel.com (HELO [10.213.222.30])
 ([10.213.222.30])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 05:02:17 -0800
Message-ID: <7d6df13c-6c2e-d713-edc8-128d6e19f187@linux.intel.com>
Date: Tue, 3 Jan 2023 13:02:15 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Matthew Brost <matthew.brost@intel.com>
References: <20221222222127.34560-1-matthew.brost@intel.com>
 <20221222222127.34560-5-matthew.brost@intel.com>
 <20221230112042.2ddd1946@collabora.com>
 <20221230125508.57af8a14@collabora.com>
 <20230102083019.24b99647@collabora.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230102083019.24b99647@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC PATCH 04/20] drm/sched: Convert drm scheduler
 to use a work queue rather than kthread
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 02/01/2023 07:30, Boris Brezillon wrote:
> On Fri, 30 Dec 2022 12:55:08 +0100
> Boris Brezillon <boris.brezillon@collabora.com> wrote:
> 
>> On Fri, 30 Dec 2022 11:20:42 +0100
>> Boris Brezillon <boris.brezillon@collabora.com> wrote:
>>
>>> Hello Matthew,
>>>
>>> On Thu, 22 Dec 2022 14:21:11 -0800
>>> Matthew Brost <matthew.brost@intel.com> wrote:
>>>    
>>>> In XE, the new Intel GPU driver, a choice has made to have a 1 to 1
>>>> mapping between a drm_gpu_scheduler and drm_sched_entity. At first this
>>>> seems a bit odd but let us explain the reasoning below.
>>>>
>>>> 1. In XE the submission order from multiple drm_sched_entity is not
>>>> guaranteed to be the same completion even if targeting the same hardware
>>>> engine. This is because in XE we have a firmware scheduler, the GuC,
>>>> which allowed to reorder, timeslice, and preempt submissions. If a using
>>>> shared drm_gpu_scheduler across multiple drm_sched_entity, the TDR falls
>>>> apart as the TDR expects submission order == completion order. Using a
>>>> dedicated drm_gpu_scheduler per drm_sched_entity solve this problem.
>>>
>>> Oh, that's interesting. I've been trying to solve the same sort of
>>> issues to support Arm's new Mali GPU which is relying on a FW-assisted
>>> scheduling scheme (you give the FW N streams to execute, and it does
>>> the scheduling between those N command streams, the kernel driver
>>> does timeslice scheduling to update the command streams passed to the
>>> FW). I must admit I gave up on using drm_sched at some point, mostly
>>> because the integration with drm_sched was painful, but also because I
>>> felt trying to bend drm_sched to make it interact with a
>>> timeslice-oriented scheduling model wasn't really future proof. Giving
>>> drm_sched_entity exlusive access to a drm_gpu_scheduler probably might
>>> help for a few things (didn't think it through yet), but I feel it's
>>> coming short on other aspects we have to deal with on Arm GPUs.
>>
>> Ok, so I just had a quick look at the Xe driver and how it
>> instantiates the drm_sched_entity and drm_gpu_scheduler, and I think I
>> have a better understanding of how you get away with using drm_sched
>> while still controlling how scheduling is really done. Here
>> drm_gpu_scheduler is just a dummy abstract that let's you use the
>> drm_sched job queuing/dep/tracking mechanism. The whole run-queue
>> selection is dumb because there's only one entity ever bound to the
>> scheduler (the one that's part of the xe_guc_engine object which also
>> contains the drm_gpu_scheduler instance). I guess the main issue we'd
>> have on Arm is the fact that the stream doesn't necessarily get
>> scheduled when ->run_job() is called, it can be placed in the runnable
>> queue and be picked later by the kernel-side scheduler when a FW slot
>> gets released. That can probably be sorted out by manually disabling the
>> job timer and re-enabling it when the stream gets picked by the
>> scheduler. But my main concern remains, we're basically abusing
>> drm_sched here.
>>
>> For the Arm driver, that means turning the following sequence
>>
>> 1. wait for job deps
>> 2. queue job to ringbuf and push the stream to the runnable
>>     queue (if it wasn't queued already). Wakeup the timeslice scheduler
>>     to re-evaluate (if the stream is not on a FW slot already)
>> 3. stream gets picked by the timeslice scheduler and sent to the FW for
>>     execution
>>
>> into
>>
>> 1. queue job to entity which takes care of waiting for job deps for
>>     us
>> 2. schedule a drm_sched_main iteration
>> 3. the only available entity is picked, and the first job from this
>>     entity is dequeued. ->run_job() is called: the job is queued to the
>>     ringbuf and the stream is pushed to the runnable queue (if it wasn't
>>     queued already). Wakeup the timeslice scheduler to re-evaluate (if
>>     the stream is not on a FW slot already)
>> 4. stream gets picked by the timeslice scheduler and sent to the FW for
>>     execution
>>
>> That's one extra step we don't really need. To sum-up, yes, all the
>> job/entity tracking might be interesting to share/re-use, but I wonder
>> if we couldn't have that without pulling out the scheduling part of
>> drm_sched, or maybe I'm missing something, and there's something in
>> drm_gpu_scheduler you really need.
> 
> On second thought, that's probably an acceptable overhead (not even
> sure the extra step I was mentioning exists in practice, because dep
> fence signaled state is checked as part of the drm_sched_main
> iteration, so that's basically replacing the worker I schedule to
> check job deps), and I like the idea of being able to re-use drm_sched
> dep-tracking without resorting to invasive changes to the existing
> logic, so I'll probably give it a try.

I agree with the concerns and think that how Xe proposes to integrate 
with drm_sched is a problem, or at least significantly inelegant.

AFAICT it proposes to have 1:1 between *userspace* created contexts (per 
context _and_ engine) and drm_sched. I am not sure avoiding invasive 
changes to the shared code is in the spirit of the overall idea and 
instead opportunity should be used to look at way to refactor/improve 
drm_sched.

Even on the low level, the idea to replace drm_sched threads with 
workers has a few problems.

To start with, the pattern of:

   while (not_stopped) {
	keep picking jobs
   }

Feels fundamentally in disagreement with workers (while obviously fits 
perfectly with the current kthread design).

Secondly, it probably demands separate workers (not optional), otherwise 
behaviour of shared workqueues has either the potential to explode 
number kernel threads anyway, or add latency.

What would be interesting to learn is whether the option of refactoring 
drm_sched to deal with out of order completion was considered and what 
were the conclusions.

Second option perhaps to split out the drm_sched code into parts which 
would lend themselves more to "pick and choose" of its functionalities. 
Specifically, Xe wants frontend dependency tracking, but not any 
scheduling really (neither least busy drm_sched, neither FIFO/RQ entity 
picking), so even having all these data structures in memory is a waste.

With the first option then the end result could be drm_sched per engine 
class (hardware view), which I think fits with the GuC model. Give all 
schedulable contexts (entities) to the GuC and then mostly forget about 
them. Timeslicing and re-ordering and all happens transparently to the 
kernel from that point until completion.

Or with the second option you would build on some smaller refactored 
sub-components of drm_sched, by maybe splitting the dependency tracking 
from scheduling (RR/FIFO entity picking code).

Second option is especially a bit vague and I haven't thought about the 
required mechanics, but it just appeared too obvious the proposed design 
has a bit too much impedance mismatch.

Oh and as a side note, when I went into the drm_sched code base to 
remind myself how things worked, it is quite easy to find some FIXME 
comments which suggest people working on it are unsure of locking desing 
there and such. So perhaps that all needs cleanup too, I mean would 
benefit from refactoring/improving work as brainstormed above anyway.

Regards,

Tvrtko
