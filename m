Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E110EB3BAD6
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 14:08:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B590F10EB9F;
	Fri, 29 Aug 2025 12:08:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="qo3Dngaz";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="ZFL65700";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65D4D10EB9C;
 Fri, 29 Aug 2025 12:08:14 +0000 (UTC)
Date: Fri, 29 Aug 2025 14:08:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1756469292;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Z3M9pzNCrJkUveNgwaUfJQS57+vbOOvjhqJEJ4qcS/8=;
 b=qo3Dngazvcjp6jsbRuxQLfYZmdCMO0Vs+WntSOHQkkqW+YMmg5cPg66vA3QMSovbc1G0oo
 KnvnGKuszqk3/XHNHgMrBv6MQKoUxH/ntSJF/+hMZoBRGWq/vcmT1nbEXirJ/ET/mHE4EX
 S4p11zugA1EQWPqpLQN6HK4CPk1sDWFa/Bq/CCFq6A7NdDIi1/LNZ8Uzz7/YJiEC6RxRIB
 0njTaCMvmZZSUMG1YuE9nsB2s6YyxLaus91Rzeciv+XE4LF2oL9kUNIDHsK37e7/xkgoGI
 oNy8T9ZCLAQVTOG9qHhP7dXksj6Rg/9uK94hmj8Aj3ewp8tx6IQ5PGKx+CQdHw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1756469292;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Z3M9pzNCrJkUveNgwaUfJQS57+vbOOvjhqJEJ4qcS/8=;
 b=ZFL65700LnfE0H+pGzsmVPeEYvtY4Bg1OdKYEYAPUhZu00zitOS+k40G2mwMBXjVAf6wjq
 Usm19nCh4pTmCkAQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/display: Make tracepoints work correctly on
 xe with PREEMPT_RT
Message-ID: <20250829120810.xsF9vGw7@linutronix.de>
References: <20250828090944.101069-1-dev@lankhorst.se>
 <20250828090944.101069-2-dev@lankhorst.se>
 <7ba38466ab2295059820d3d540b6324769ba5485@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <7ba38466ab2295059820d3d540b6324769ba5485@intel.com>
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

On 2025-08-29 14:14:10 [+0300], Jani Nikula wrote:
> > --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
> > @@ -10,6 +10,8 @@
> >  #define TRACE_SYSTEM xe
> >  #endif
> >  
> > +#define UPDATE_VBLANK (!IS_ENABLED(CONFIG_PREEMPT_RT))
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

If I may: There is also the possibility to use the _enabled() function of
a trace point. So instead trace_intel_pipe_enable() you would so
something like

| void do_trace_intel_pipe_enable(struct intel_crtc *crtc)
| {
| 	if (!trace_intel_pipe_enable_enabled())
| 		return;
| 	trace_intel_pipe(crtc, 
| 		intel_crtc_get_vblank_counter(crtc));
| }

The _enabled() macro uses the static branches as the actual TP. The
intel_crtc_get_vblank_counter() would only be evaluated if the TP is
enabled and passed early.

> BR,
> Jani.

Sebastian
