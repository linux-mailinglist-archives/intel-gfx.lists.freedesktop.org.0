Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D34C988DA
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 18:39:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FE3910E141;
	Mon,  1 Dec 2025 17:39:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="LV4hDDjr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AEBA10E437;
 Mon,  1 Dec 2025 17:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1764610771;
 bh=nj69vDfQ1J5Yg610pI7e7INnJWVwsFbGOOnJeRlqGcg=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=LV4hDDjrFj3Vp79lsRSplt3ypNAtHaoO7a8Mvu8Xz3AxckAhN96k0UCuiuNDCcY0D
 I31qq58lAeaAIQurkMHjhrQGSclVRGj4LdY4NWmw0Tl7xGy5qy5xU7JU+XHZgsZTDg
 rbNIjR1QiE6y70e7P60OUXIEms3vHz4o+hdIOUsTINMYqBg8lmkaRK6YipTU3L+h60
 1fOfsDb9VQ43pH1Hx6l4wmZ87MMjSizd8yqzYmKGJe7Hq02cobNAyS6mzhXoufeDmV
 v3BWdH5F7/hn2QIN/gf7NJjciMX9GFWTngLILp0Pb8RvTgiB9WwObmLPQXkAHU9IFn
 1x8HktxyBtKnA==
Message-ID: <bb5c566e-6a9e-4d60-be74-b42a751032aa@lankhorst.se>
Date: Mon, 1 Dec 2025 18:39:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] drm/i915/display: Enable interrupts earlier on
 PREEMPT_RT
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "linux-rt-devel@lists.linux.dev" <linux-rt-devel@lists.linux.dev>,
 Mario Kleiner <mario.kleiner.de@gmail.com>,
 Mike Galbraith <umgwanakikbuti@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
References: <20251104083634.670753-1-dev@lankhorst.se>
 <20251104083634.670753-7-dev@lankhorst.se>
 <DM4PR11MB63603779042D13B89E36BB02F4DEA@DM4PR11MB6360.namprd11.prod.outlook.com>
 <aSeFyN1iD5CwCZZ6@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <aSeFyN1iD5CwCZZ6@intel.com>
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

Hey,

Den 2025-11-26 kl. 23:57, skrev Ville Syrjälä:
> On Wed, Nov 26, 2025 at 08:45:31PM +0000, Shankar, Uma wrote:
>>
>>
>>> -----Original Message-----
>>> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Maarten
>>> Lankhorst
>>> Sent: Tuesday, November 4, 2025 2:07 PM
>>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>>> Cc: linux-rt-devel@lists.linux.dev; Maarten Lankhorst <dev@lankhorst.se>; Mario
>>> Kleiner <mario.kleiner.de@gmail.com>; Mike Galbraith
>>> <umgwanakikbuti@gmail.com>; Thomas Gleixner <tglx@linutronix.de>; Sebastian
>>> Andrzej Siewior <bigeasy@linutronix.de>; Clark Williams
>>> <clrkwllms@kernel.org>; Steven Rostedt <rostedt@goodmis.org>
>>> Subject: [PATCH v2 6/7] drm/i915/display: Enable interrupts earlier on
>>> PREEMPT_RT
>>>
>>> The last part of the vblank evasion is about updating bookkeeping, not
>>> programming hardware registers.
>>>
>>> The interrupts cannot stay disabled here on PREEMPT_RT since the spinlocks get
>>> converted to mutexes.
>>>
>>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_crtc.c | 10 ++++++++++
>>>  1 file changed, 10 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
>>> b/drivers/gpu/drm/i915/display/intel_crtc.c
>>> index 9d2a23c96c61b..b87f6b4a4f3d7 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
>>> @@ -688,6 +688,14 @@ void intel_pipe_update_end(struct intel_atomic_state
>>> *state,
>>>  	    intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
>>>  		icl_dsi_frame_update(new_crtc_state);
>>>
>>> +#if IS_ENABLED(CONFIG_PREEMPT_RT)
>>> +	/*
>>> +	 * Timing sensitive register writing completed, non-deterministic
>>> +	 * locking from here on out.
>>> +	 */
>>> +	local_irq_enable();
>>> +#endif
>>
>> I think we do have VRR send push etc handled here, also arming registers are being updated.
>> Not sure we can allow interrupts here. Please check once
> 
> Yeah, this doesn't seem exactly great.
> 
> Even without VRR we want the register writes and vblank event arming
> to happen in the same frame. Though without VRR I suppose the worst
> that could happen is that we complete the commit one frame too late.
> 
> With VRR however we need the vblank event arming and push to happen
> in the same frame. Otherwise we'll comple		te the flip early and leave
> push send assrted, which causes the next frame to terminate at vmin.
> Basically that makes the next frame a mailbox flip as far as push
> send is concerned.
> 
> The race is already there, but allowing the CPU to get scheduled away
> will widen it. We do try to handle it in the vblank evasion, but I
> think we're handling it way too early (in intel_vblank_evade_init())
> so that part itself is racy. I suppose we should rather do the vmin
> vs. vmax evasion decision after we've actually read out the current
> scanline. That should at least make it a bit more robust.
> 
> One other thing we could maybe think about is arming the vblank
> event after the push is sent (with seq = current+1), and then
> immediately check if the push bit already cleared, and if so
> cancel the arming and send the event directly (with seq = current).
> But that's just a quick idead that popped to my head, didn't really
> think it through in detail.
> 
> I'm tempted to say we should just make the vblank locks raw spinlocks
> as well. But I've not looked at what other drivers do in the vblank
> hooks so dunno how feasible that is.
> 
Ideally we make the time critical code even faster, and fastest is
pre-obtaining the vblank locks so no race is even possible in the timing sensitive part.

If we acquire a drm_vblank_get() and dev->event_lock before we begin
vblank evasion, and release them afterwards then no conversion of the
lock to a raw spinlock is required.

This eliminates even more jitter, and turns the support of PREEMPT_RT
in something positive. :-)

Kind regards,
~Maarten Lankhorst
