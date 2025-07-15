Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 805CAB053FB
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 10:01:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ED2210E549;
	Tue, 15 Jul 2025 08:01:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cJGCTenS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EE4910E549;
 Tue, 15 Jul 2025 08:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752566511; x=1784102511;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=sSTp37TIb6l3MJ4618tSg3NO6JAiET+0ObwmjllNcT0=;
 b=cJGCTenSpQyOYCY6hrxV3icNCmf3p08DFNF7YnIFR9HL35QR87fVfPP/
 VtwK0s11ROdVYyNNJuFwInL3L0M293SUEHjrSmnElU8+pAsxLZn+AAMOT
 DsVZO9E1iRhg6Ldwrkv7q52WG9RU2OSGUhQ2Fg90VhHNpaCR8/YF+FylJ
 EfnIFEJIVwz1Y5YXQcHvK9jtyz3JkpQNtENom4UMsamSguOoKxBmgdULT
 832bAM7tFFM7qe7zt8c1ZklPcYcbLABoAgiskeAyprUmaDj2UolNaKMWA
 vtjhj70m+mnoCLGg6BC0UmOgFyn1LwqAZMVxFKYBv0gsgeBmwBtJywzGl Q==;
X-CSE-ConnectionGUID: dqvfzLWPTAKVv245MJiaxA==
X-CSE-MsgGUID: iiIxnOhsSySMLL8kVla6fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="57386161"
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="57386161"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 01:01:51 -0700
X-CSE-ConnectionGUID: GLUWmg3ESFq7wUTh2Uplcw==
X-CSE-MsgGUID: Mcd9kRoKSs+7HTQyPOO+ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="161178894"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO [10.245.244.177])
 ([10.245.244.177])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 01:01:47 -0700
Message-ID: <272f743e-15f7-4dc0-a6c0-08cd60ca6cc2@linux.intel.com>
Date: Tue, 15 Jul 2025 10:01:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/9] drm/i915: Disable tracing points on PREEMPT_RT
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Scott Oehrlein <scott.oehrlein@intel.com>,
 Ben Hutchings <ben@decadent.org.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, Luca Abeni <lucabe72@gmail.com>,
 Steven Rostedt <rostedt@goodmis.org>
References: <20250714153954.629393-1-bigeasy@linutronix.de>
 <20250714153954.629393-5-bigeasy@linutronix.de>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20250714153954.629393-5-bigeasy@linutronix.de>
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

I believe the platforms that require spinlocks for reading registers all predate Xe,
so it should be possible to enable tracepoints on Xe.

I do see there is still a path there that takes locks, through intel_crtc_get_vblank_counter -> drm_crtc_accurate_vblank_count().

I would recommend changing intel_crtc_get_vblank_counter to use drm_vblank_count(),
which doesn't take locks.

This reduces vblank accuracy slightly on old platforms and gen11+ DSI, but I would say for most usecases it has the same accuracy, with the benefit of keeping tracepoints enabled. The only users for intel_crtc_get_vblank_counter() are debug functions.

With that change, something like: 
"#if defined(CONFIG_PREEMPT_RT) && defined(I915) && !defined(NOTRACE)"

would disable tracepoints only on i915.

Kind regards,
~Maarten

Den 2025-07-14 kl. 17:39, skrev Sebastian Andrzej Siewior:
> Luca Abeni reported this:
> | BUG: scheduling while atomic: kworker/u8:2/15203/0x00000003
> | CPU: 1 PID: 15203 Comm: kworker/u8:2 Not tainted 4.19.1-rt3 #10
> | Call Trace:
> |  rt_spin_lock+0x3f/0x50
> |  gen6_read32+0x45/0x1d0 [i915]
> |  g4x_get_vblank_counter+0x36/0x40 [i915]
> |  trace_event_raw_event_i915_pipe_update_start+0x7d/0xf0 [i915]
> 
> The tracing events use trace_intel_pipe_update_start() among other events
> use functions acquire spinlock_t locks which are transformed into
> sleeping locks on PREEMPT_RT. A few trace points use
> intel_get_crtc_scanline(), others use ->get_vblank_counter() wich also
> might acquire a sleeping locks on PREEMPT_RT.
> At the time the arguments are evaluated within trace point, preemption
> is disabled and so the locks must not be acquired on PREEMPT_RT.
> 
> Based on this I don't see any other way than disable trace points on
> PREMPT_RT.
> 
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
> Reported-by: Luca Abeni <lucabe72@gmail.com>
> Cc: Steven Rostedt <rostedt@goodmis.org>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>  drivers/gpu/drm/i915/display/intel_display_trace.h | 4 ++++
>  drivers/gpu/drm/i915/i915_trace.h                  | 4 ++++
>  drivers/gpu/drm/i915/intel_uncore_trace.h          | 4 ++++
>  3 files changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
> index 27ebc32cb61a5..a519d94700c36 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
> @@ -13,6 +13,10 @@
>  #if !defined(__INTEL_DISPLAY_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
>  #define __INTEL_DISPLAY_TRACE_H__
>  
> +#if defined(CONFIG_PREEMPT_RT) && !defined(NOTRACE)
> +#define NOTRACE
> +#endif
> +
>  #include <linux/string.h>
>  #include <linux/string_helpers.h>
>  #include <linux/types.h>
> diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
> index 7ed41ce9b7085..6b87ef6005c69 100644
> --- a/drivers/gpu/drm/i915/i915_trace.h
> +++ b/drivers/gpu/drm/i915/i915_trace.h
> @@ -6,6 +6,10 @@
>  #if !defined(_I915_TRACE_H_) || defined(TRACE_HEADER_MULTI_READ)
>  #define _I915_TRACE_H_
>  
> +#if defined(CONFIG_PREEMPT_RT) && !defined(NOTRACE)
> +#define NOTRACE
> +#endif
> +
>  #include <linux/stringify.h>
>  #include <linux/types.h>
>  #include <linux/tracepoint.h>
> diff --git a/drivers/gpu/drm/i915/intel_uncore_trace.h b/drivers/gpu/drm/i915/intel_uncore_trace.h
> index f13ff71edf2db..3c67e267fb602 100644
> --- a/drivers/gpu/drm/i915/intel_uncore_trace.h
> +++ b/drivers/gpu/drm/i915/intel_uncore_trace.h
> @@ -7,6 +7,10 @@
>  #if !defined(__INTEL_UNCORE_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
>  #define __INTEL_UNCORE_TRACE_H__
>  
> +#if defined(CONFIG_PREEMPT_RT) && !defined(NOTRACE)
> +#define NOTRACE
> +#endif
> +
>  #include "i915_reg_defs.h"
>  
>  #include <linux/types.h>

