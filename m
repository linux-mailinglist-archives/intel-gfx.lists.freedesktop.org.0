Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D122177835
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 15:05:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59DCB6EA6C;
	Tue,  3 Mar 2020 14:05:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F02656EA6C
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 14:05:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 06:05:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="351840166"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2020 06:05:53 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 9F2785C1D7C; Tue,  3 Mar 2020 16:04:37 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <871rq97e14.fsf@gaia.fi.intel.com>
References: <20200303130748.1416073-1-chris@chris-wilson.co.uk>
 <871rq97e14.fsf@gaia.fi.intel.com>
Date: Tue, 03 Mar 2020 16:04:37 +0200
Message-ID: <87y2sh5ybu.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Drop the timeline->mutex as we
 wait for retirement
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Mika Kuoppala <mika.kuoppala@linux.intel.com> writes:

> Chris Wilson <chris@chris-wilson.co.uk> writes:
>
>> As we have pinned the timeline (using tl->active_count), we can safely
>> drop the tl->mutex as we wait for what we believe to be the final
>> request on that timeline. This is useful for ensuring that we do not
>> block the engine heartbeat by hogging the kernel_context's timeline on a
>> dead GPU.
>>
>> References: https://gitlab.freedesktop.org/drm/intel/issues/1364
>> Fixes: 058179e72e09 ("drm/i915/gt: Replace hangcheck by heartbeats")
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_gt_requests.c | 11 +++++++++--
>>  1 file changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
>> index 8a5054f21bf8..436412d07689 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
>> @@ -147,24 +147,31 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
>>  
>>  			fence = i915_active_fence_get(&tl->last_request);
>>  			if (fence) {
>> +				mutex_unlock(&tl->mutex);
>> +
>>  				timeout = dma_fence_wait_timeout(fence,
>>  								 interruptible,
>>  								 timeout);
>>  				dma_fence_put(fence);
>> +
>> +				if (!mutex_trylock(&tl->mutex)) {
>
> If you can't take it, it must be active and for the retirement
> advancement we can bail out early.
>
> Or is there something else with a sampled try?

Got some answers in irc: this is best effort so yes,
if it is active it is used and we can bail out and
retire later.

>
>> +					active_count++;
>> +					goto out_active;
>> +				}
>>  			}
>>  		}
>>  
>>  		if (!retire_requests(tl) || flush_submission(gt))
>>  			active_count++;
>> +		mutex_unlock(&tl->mutex);
>>  
>> -		spin_lock(&timelines->lock);
>> +out_active:	spin_lock(&timelines->lock);
>>  
>>  		/* Resume iteration after dropping lock */
>
> You either fixed this comment with this patch.
> Or that the comment remains a highly confusing.
>

This is for the timeline spinlock.
Still, it is very confusing as we only drop it for the wait,
rather deep in iteration.

After discussing with Chris on irc, we agreed that
massaging it to a proper form is warranted.

With the comment bended to match the lock acquisition,

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>>  		list_safe_reset_next(tl, tn, link);
>>  		if (atomic_dec_and_test(&tl->active_count))
>>  			list_del(&tl->link);
>
> We have the timelines lock and the above seems safe
> wtithout the actual mutex.
>
> But the comment is still hauting me.
> -Mika
>
>>  
>> -		mutex_unlock(&tl->mutex);
>>  
>>  		/* Defer the final release to after the spinlock */
>>  		if (refcount_dec_and_test(&tl->kref.refcount)) {
>> -- 
>> 2.25.1
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
