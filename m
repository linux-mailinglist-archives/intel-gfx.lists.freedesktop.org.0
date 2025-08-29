Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00237B3BB7C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 14:38:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D409F10EBAA;
	Fri, 29 Aug 2025 12:37:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDDF010EBA8;
 Fri, 29 Aug 2025 12:37:57 +0000 (UTC)
Message-ID: <a5f1568b-6abf-43b0-ae72-5ae0d4024319@lankhorst.se>
Date: Fri, 29 Aug 2025 14:37:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/display: Make tracepoints work correctly on
 xe with PREEMPT_RT
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
References: <20250828090944.101069-1-dev@lankhorst.se>
 <20250828090944.101069-2-dev@lankhorst.se>
 <7ba38466ab2295059820d3d540b6324769ba5485@intel.com>
 <20250829120810.xsF9vGw7@linutronix.de>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20250829120810.xsF9vGw7@linutronix.de>
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

Den 2025-08-29 kl. 14:08, skrev Sebastian Andrzej Siewior:
> On 2025-08-29 14:14:10 [+0300], Jani Nikula wrote:
>>> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
>>> @@ -10,6 +10,8 @@
>>>  #define TRACE_SYSTEM xe
>>>  #endif
>>>  
>>> +#define UPDATE_VBLANK (!IS_ENABLED(CONFIG_PREEMPT_RT))
>>
>> So I'm thinking leave intel_crtc_get_vblank_counter() alone completely,
>> and hide all the ugly parts inside the trace file:
>>
>> #if IS_ENABLED(CONFIG_PREEMPT_RT)
>> /* Avoid irq lock in tracepoints with PREEMPT_RT=y */
>> static inline u32 __trace_intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
>> {
>> 	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(&crtc->base);
>>
>> 	if (!crtc->active)
>> 		return 0;
>>
>> 	if (!vblank->max_vblank_count)
>> 		return (u32)drm_crtc_accurate_vblank_count(&crtc->base);
>>                 return (u32)drm_crtc_vblank_count(&crtc->base);
>>
>> 	return crtc->base.funcs->get_vblank_counter(&crtc->base);
>> }
>> #else
>> #define __trace_intel_crtc_get_vblank_counter intel_crtc_get_vblank_counter
>> #endif
>>
>> And then
>> s/intel_crtc_get_vblank_counter/__trace_intel_crtc_get_vblank_counter/
>> below.
> 
> If I may: There is also the possibility to use the _enabled() function of
> a trace point. So instead trace_intel_pipe_enable() you would so
> something like
> 
> | void do_trace_intel_pipe_enable(struct intel_crtc *crtc)
> | {
> | 	if (!trace_intel_pipe_enable_enabled())
> | 		return;
> | 	trace_intel_pipe(crtc, 
> | 		intel_crtc_get_vblank_counter(crtc));
> | }
> 
> The _enabled() macro uses the static branches as the actual TP. The
> intel_crtc_get_vblank_counter() would only be evaluated if the TP is
> enabled and passed early.

That requires adding new macros for 23 tracepoints for something that only affects preempt-rt,
and even then only on a specific type of uncommon output (DSI).

Aren't we also completely duplicating the functionality of tracepoints then?

>> BR,
>> Jani.
> 
> Sebastian

Kind regards,
~maarten Lankhorst

