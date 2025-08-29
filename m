Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A27B3BA51
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 13:55:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1234D10E210;
	Fri, 29 Aug 2025 11:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A20D210E078;
 Fri, 29 Aug 2025 11:55:10 +0000 (UTC)
Message-ID: <8c28c641-958c-4966-a631-effc00c31633@lankhorst.se>
Date: Fri, 29 Aug 2025 13:55:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/display: Make tracepoints work correctly on
 xe with PREEMPT_RT
To: Jani Nikula <jani.nikula@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
References: <20250828090944.101069-1-dev@lankhorst.se>
 <20250828090944.101069-2-dev@lankhorst.se>
 <7ba38466ab2295059820d3d540b6324769ba5485@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <7ba38466ab2295059820d3d540b6324769ba5485@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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

Den 2025-08-29 kl. 13:14, skrev Jani Nikula:
> On Thu, 28 Aug 2025, Maarten Lankhorst <dev@lankhorst.se> wrote:
>> The display tracepoints will work, but drm_crtc_accurate_vblank_count()
>> takes an irq lock. Use the less accurate drm_crtc_vblank_count() on
>> affected platforms, which is simply an atomic_read64();
>>
>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>> ---
>>  drivers/gpu/drm/i915/display/intel_crtc.c     |  9 ++--
>>  drivers/gpu/drm/i915/display/intel_crtc.h     |  2 +-
>>  .../drm/i915/display/intel_display_trace.h    | 48 ++++++++++---------
>>  3 files changed, 31 insertions(+), 28 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
>> index a187db6df2d36..5c8ce35d21ca3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
>> @@ -77,7 +77,7 @@ void intel_wait_for_vblank_if_active(struct intel_display *display,
>>  		intel_crtc_wait_for_next_vblank(crtc);
>>  }
>>  
>> -u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
>> +u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc, bool update_vblank)
>>  {
>>  	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(&crtc->base);
>>  
>> @@ -85,7 +85,8 @@ u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
>>  		return 0;
>>  
>>  	if (!vblank->max_vblank_count)
>> -		return (u32)drm_crtc_accurate_vblank_count(&crtc->base);
>> +		return (u32)(update_vblank ? drm_crtc_accurate_vblank_count(&crtc->base) :
>> +			     drm_crtc_vblank_count(&crtc->base));
>>  
>>  	return crtc->base.funcs->get_vblank_counter(&crtc->base);
>>  }
>> @@ -574,7 +575,7 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
>>  
>>  	crtc->debug.scanline_start = scanline;
>>  	crtc->debug.start_vbl_time = ktime_get();
>> -	crtc->debug.start_vbl_count = intel_crtc_get_vblank_counter(crtc);
>> +	crtc->debug.start_vbl_count = intel_crtc_get_vblank_counter(crtc, true);
>>  
>>  	trace_intel_pipe_update_vblank_evaded(crtc);
>>  	return;
>> @@ -660,7 +661,7 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
>>  		intel_atomic_get_new_crtc_state(state, crtc);
>>  	enum pipe pipe = crtc->pipe;
>>  	int scanline_end = intel_get_crtc_scanline(crtc);
>> -	u32 end_vbl_count = intel_crtc_get_vblank_counter(crtc);
>> +	u32 end_vbl_count = intel_crtc_get_vblank_counter(crtc, true);
>>  	ktime_t end_vbl_time = ktime_get();
>>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>  
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
>> index 8c14ff8b391ea..9826d800f3bb9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc.h
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
>> @@ -43,7 +43,7 @@ int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
>>  struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc);
>>  void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
>>  			    struct intel_crtc *crtc);
>> -u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc);
>> +u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc, bool update_vblank);
>>  void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state);
>>  void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
>>  void intel_pipe_update_start(struct intel_atomic_state *state,
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
>> index 27ebc32cb61a5..4e9bea671effe 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
>> @@ -10,6 +10,8 @@
>>  #define TRACE_SYSTEM xe
>>  #endif
>>  
>> +#define UPDATE_VBLANK (!IS_ENABLED(CONFIG_PREEMPT_RT))
> 
> So I'm thinking leave intel_crtc_get_vblank_counter() alone completely,
> and hide all the ugly parts inside the trace file:
> 
> #if IS_ENABLED(CONFIG_PREEMPT_RT)
> /* Avoid irq lock in tracepoints with PREEMPT_RT=y */
> static inline u32 __trace_intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
> {
> 	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(&crtc->base);
> 
> 	if (!crtc->active)
> 		return 0;
> 
> 	if (!vblank->max_vblank_count)
> 		return (u32)drm_crtc_accurate_vblank_count(&crtc->base);
>                 return (u32)drm_crtc_vblank_count(&crtc->base);
> 
> 	return crtc->base.funcs->get_vblank_counter(&crtc->base);
> }
> #else
> #define __trace_intel_crtc_get_vblank_counter intel_crtc_get_vblank_counter
> #endif
> 
> And then
> s/intel_crtc_get_vblank_counter/__trace_intel_crtc_get_vblank_counter/
> below.

There are only 2 users to the vblank counter, vblank evasion and trace points.
If we're going to be forced to do this for tracepoints, the only user left is vblank evasion.

I'm still a proponent of simply using drm_crtc_vblank_count on preempt-rt unconditionally,
The only other user of intel_crtc_get_vblank_counter() is in intel_pipe_update_begin/end(),

We do know vblanks are enabled during vblank evasion, and interrupts are no longer disabled.
As a result, if a vblank occurred the non-accurate version will still be accurate enough,
especially on longer delays.

I want to repropose my original patch, where drm_crtc_vblank_count() is used on preempt-rt.

Kind regards,
~Maarten
