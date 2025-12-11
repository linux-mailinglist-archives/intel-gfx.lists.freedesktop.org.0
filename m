Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42034CB56EC
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 10:59:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3813D10E7D1;
	Thu, 11 Dec 2025 09:59:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="Nai72pfq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3154D10E7CD;
 Thu, 11 Dec 2025 09:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1765447181;
 bh=exIAGU+nPUq4RJT1NTyBFTofN+1YVUQhaJalQkNEhis=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=Nai72pfqPjKCdKxzkuNzEJkdvk+JhIWbMTN2o87UI3Ua6R98b9ttLgWCzE7Jm+3YG
 DLf8UP8pw2qFgVnBxHeXETnoYQjyMZg5XtZSIskjDIAGVQQSalh4yDQrMDN3KH5E/P
 NOlYgxMZoG83eFBW394nNtzIbBm4TfUglzs7Wo1Ja4J4fjPUAsOGXGhYgktgApKEiI
 Yqrpeb8pU+28iXxtoZN8pAT6FYbWpZ1kI9bhLyNtWQh9HHUBmv3P0Ftq3RqRmhygw2
 45nUeAl3PMrCfCB1ThZQhQU14RQLPUTY9XtX13Z1nu2gR93mFp7WLD16Q7v21GJyJd
 hMlU70dT20m9A==
Message-ID: <452ed1e8-76f9-4db3-9a7c-3a2b6535b724@lankhorst.se>
Date: Thu, 11 Dec 2025 10:59:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/7] drm/i915/display: Remove locking from
 intel_vblank_evade critical section
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-rt-devel@lists.linux.dev, Mario Kleiner <mario.kleiner.de@gmail.com>,
 Mike Galbraith <umgwanakikbuti@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
References: <20251104083634.670753-1-dev@lankhorst.se>
 <20251104083634.670753-5-dev@lankhorst.se> <aSduc2bC343FF3rk@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <aSduc2bC343FF3rk@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



Den 2025-11-26 kl. 22:17, skrev Ville Syrjälä:
> On Tue, Nov 04, 2025 at 09:36:28AM +0100, Maarten Lankhorst wrote:
>> finish_wait() may take a lock, which means that it can take any amount
>> of time. On PREEMPT-RT we should not be taking any lock after disabling
>> preemption, so ensure that the completion is done before disabling
>> interrupts.
>>
>> This also has the benefit of making vblank evasion more deterministic,
>> by performing the final vblank check after all locking is done.
>>
>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>> ---
>>  drivers/gpu/drm/i915/display/intel_vblank.c | 35 ++++++++++-----------
>>  1 file changed, 17 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
>> index 2b106ffa3f5f5..3628d2a1b8f38 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
>> @@ -708,6 +708,13 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>>  		evade->min -= vblank_delay;
>>  }
>>  
>> +static inline int vblank_evadable(struct intel_vblank_evade_ctx *evade, int *scanline)
> 
> The name is confusing. But having a function
> would be nice since we need two checks I guess.
> scanline_is_safe() or something?
> 
> Also type should be bool, and inline looks pointless.
> 
>> +{
>> +	*scanline = intel_get_crtc_scanline(evade->crtc);
>> +
>> +	return *scanline < evade->min || *scanline > evade->max;
>> +}
>> +
>>  /* must be called with vblank interrupt already enabled! */
>>  int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>>  {
>> @@ -715,23 +722,22 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>>  	struct intel_display *display = to_intel_display(crtc);
>>  	long timeout = msecs_to_jiffies_timeout(1);
>>  	wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
>> -	DEFINE_WAIT(wait);
>>  	int scanline;
>>  
>>  	if (evade->min <= 0 || evade->max <= 0)
>>  		return 0;
>>  
>> -	for (;;) {
>> -		/*
>> -		 * prepare_to_wait() has a memory barrier, which guarantees
>> -		 * other CPUs can see the task state update by the time we
>> -		 * read the scanline.
>> -		 */
>> -		prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);
>> +	while (!vblank_evadable(evade, &scanline)) {
>> +		local_irq_enable();
>>  
>> -		scanline = intel_get_crtc_scanline(crtc);
>> -		if (scanline < evade->min || scanline > evade->max)
>> -			break;
>> +		DEFINE_WAIT(wait);
>> +		while (!vblank_evadable(evade, &scanline) && timeout > 0) {
>> +			prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);
>> +			timeout = schedule_timeout(timeout);
>> +		}
>> +		finish_wait(wq, &wait);
>> +
>> +		local_irq_disable();
>>  
>>  		if (!timeout) {
> 
> This looks to introduce the classic "didn't check the
> condition after timeout" race.
> 
> I guess what you're going for is something like this (done
> through a somewhat less intrusive reordering of the current
> code):
> 
> for (;;) {
> 	if (scanline_is_safe(evade, &scanline))
> 		break;
> 
> 	if (!timeout) {
> 		drm_dbg_kms(display->drm,
> 			    "Potential atomic update failure on pipe %c\n",
> 			    pipe_name(crtc->pipe));
> 		break;
> 	}
> 
> 	local_irq_enable();
> 
> 	prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);
> 
> 	if (!scanline_is_safe(evade, &scanline))
> 		timeout = schedule_timeout(timeout);
> 
> 	finish_wait(wq, &wait);
> 
> 	local_irq_disable();
> }
> 
> And then maybe the whole prepare+wait+finish thing there
> could be a simple wait_event_timeout(). That would make
> that inner thing a loop though. We might not want that
> just because jiffies is so coarse and we don't really
> want to wait multiple times there.
This could be a wait_event_timeout(), except it takes the struct waitqueue, and we
only have a pointer to the queue.

Wasn't sure if it wait_event_timeout(*queue, ...) was allowed, but it seems at least
the msm driver and even the atomic helper does so, so should be ok to use.
> 
>>  			drm_dbg_kms(display->drm,
>> @@ -740,15 +746,8 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>>  			break;
>>  		}
>>  
>> -		local_irq_enable();
>> -
>> -		timeout = schedule_timeout(timeout);
>> -
>> -		local_irq_disable();
>>  	}
>>  
>> -	finish_wait(wq, &wait);
>> -
>>  	/*
>>  	 * On VLV/CHV DSI the scanline counter would appear to
>>  	 * increment approx. 1/3 of a scanline before start of vblank.
>> -- 
>> 2.51.0
> 

