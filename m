Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44021B06566
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 19:55:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0A3A10E385;
	Tue, 15 Jul 2025 17:55:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cbn7vG5f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFA8410E234;
 Tue, 15 Jul 2025 17:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752602100; x=1784138100;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WX8NvVu8eRxRiV8malCikl9drxvPW3hDfX2d94hGY40=;
 b=Cbn7vG5fCNteykX5Ag36tK5mY3yTtXD3meKfLmSCEhi03D9QuFZrEb3G
 jGiXoEABgr/RMkKlXw6YpeyFSEata8wfZOtcCJG9Fj5Vqz18ve1sbEbhW
 P5i3HZPhGNgc20cUQlBxB/GC8KrNxjKGGNdPm8tXDMq7In1qdx+m1Xmyy
 48ipjzRW95iSc9RLf8fCfnl3zGBugH3aMsYHE5uHCS1oUZSm2Zq4rLbxu
 sac0T2J4DzX9QvetDtqlOq1RQSSI4Wsld2EtqY6HfMo7VLeq6JWTxRzWs
 wu/RZrq1T8Fyipf5KWSDyZhVrdsEl+EEOuEjh9/cdceIvf6mY0QY9ZGdW Q==;
X-CSE-ConnectionGUID: ImDfF9XXSVmDcRruTbN5Gw==
X-CSE-MsgGUID: lMq+p4hkRuK+exAOxfWONg==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="65900850"
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="65900850"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 10:54:59 -0700
X-CSE-ConnectionGUID: nzSpAu4HQMqfiVCUC1P70A==
X-CSE-MsgGUID: nydGvjKuSEWSA+qpx7y6bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="162930490"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.63])
 by orviesa005.jf.intel.com with SMTP; 15 Jul 2025 10:54:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Jul 2025 20:54:54 +0300
Date: Tue, 15 Jul 2025 20:54:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Scott Oehrlein <scott.oehrlein@intel.com>,
 Ben Hutchings <ben@decadent.org.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Luca Abeni <lucabe72@gmail.com>, Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH v4 4/9] drm/i915: Disable tracing points on PREEMPT_RT
Message-ID: <aHaV7vtp2Y1RbIAt@intel.com>
References: <20250714153954.629393-1-bigeasy@linutronix.de>
 <20250714153954.629393-5-bigeasy@linutronix.de>
 <272f743e-15f7-4dc0-a6c0-08cd60ca6cc2@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <272f743e-15f7-4dc0-a6c0-08cd60ca6cc2@linux.intel.com>
X-Patchwork-Hint: comment
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

On Tue, Jul 15, 2025 at 10:01:45AM +0200, Maarten Lankhorst wrote:
> Hey,
> 
> I believe the platforms that require spinlocks for reading registers all predate Xe,
> so it should be possible to enable tracepoints on Xe.
> 
> I do see there is still a path there that takes locks, through intel_crtc_get_vblank_counter -> drm_crtc_accurate_vblank_count().
> 
> I would recommend changing intel_crtc_get_vblank_counter to use drm_vblank_count(),
> which doesn't take locks.
> 
> This reduces vblank accuracy slightly on old platforms and gen11+ DSI, but I would say for most usecases it has the same accuracy,

The non-accurate version is completely useless here. So NAK.

> with the benefit of keeping tracepoints enabled. The only users for intel_crtc_get_vblank_counter() are debug functions.
> 
> With that change, something like: 
> "#if defined(CONFIG_PREEMPT_RT) && defined(I915) && !defined(NOTRACE)"
> 
> would disable tracepoints only on i915.
> 
> Kind regards,
> ~Maarten
> 
> Den 2025-07-14 kl. 17:39, skrev Sebastian Andrzej Siewior:
> > Luca Abeni reported this:
> > | BUG: scheduling while atomic: kworker/u8:2/15203/0x00000003
> > | CPU: 1 PID: 15203 Comm: kworker/u8:2 Not tainted 4.19.1-rt3 #10
> > | Call Trace:
> > |  rt_spin_lock+0x3f/0x50
> > |  gen6_read32+0x45/0x1d0 [i915]
> > |  g4x_get_vblank_counter+0x36/0x40 [i915]
> > |  trace_event_raw_event_i915_pipe_update_start+0x7d/0xf0 [i915]
> > 
> > The tracing events use trace_intel_pipe_update_start() among other events
> > use functions acquire spinlock_t locks which are transformed into
> > sleeping locks on PREEMPT_RT. A few trace points use
> > intel_get_crtc_scanline(), others use ->get_vblank_counter() wich also
> > might acquire a sleeping locks on PREEMPT_RT.
> > At the time the arguments are evaluated within trace point, preemption
> > is disabled and so the locks must not be acquired on PREEMPT_RT.
> > 
> > Based on this I don't see any other way than disable trace points on
> > PREMPT_RT.
> > 
> > Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
> > Reported-by: Luca Abeni <lucabe72@gmail.com>
> > Cc: Steven Rostedt <rostedt@goodmis.org>
> > Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_trace.h | 4 ++++
> >  drivers/gpu/drm/i915/i915_trace.h                  | 4 ++++
> >  drivers/gpu/drm/i915/intel_uncore_trace.h          | 4 ++++
> >  3 files changed, 12 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
> > index 27ebc32cb61a5..a519d94700c36 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
> > @@ -13,6 +13,10 @@
> >  #if !defined(__INTEL_DISPLAY_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
> >  #define __INTEL_DISPLAY_TRACE_H__
> >  
> > +#if defined(CONFIG_PREEMPT_RT) && !defined(NOTRACE)
> > +#define NOTRACE
> > +#endif
> > +
> >  #include <linux/string.h>
> >  #include <linux/string_helpers.h>
> >  #include <linux/types.h>
> > diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
> > index 7ed41ce9b7085..6b87ef6005c69 100644
> > --- a/drivers/gpu/drm/i915/i915_trace.h
> > +++ b/drivers/gpu/drm/i915/i915_trace.h
> > @@ -6,6 +6,10 @@
> >  #if !defined(_I915_TRACE_H_) || defined(TRACE_HEADER_MULTI_READ)
> >  #define _I915_TRACE_H_
> >  
> > +#if defined(CONFIG_PREEMPT_RT) && !defined(NOTRACE)
> > +#define NOTRACE
> > +#endif
> > +
> >  #include <linux/stringify.h>
> >  #include <linux/types.h>
> >  #include <linux/tracepoint.h>
> > diff --git a/drivers/gpu/drm/i915/intel_uncore_trace.h b/drivers/gpu/drm/i915/intel_uncore_trace.h
> > index f13ff71edf2db..3c67e267fb602 100644
> > --- a/drivers/gpu/drm/i915/intel_uncore_trace.h
> > +++ b/drivers/gpu/drm/i915/intel_uncore_trace.h
> > @@ -7,6 +7,10 @@
> >  #if !defined(__INTEL_UNCORE_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
> >  #define __INTEL_UNCORE_TRACE_H__
> >  
> > +#if defined(CONFIG_PREEMPT_RT) && !defined(NOTRACE)
> > +#define NOTRACE
> > +#endif
> > +
> >  #include "i915_reg_defs.h"
> >  
> >  #include <linux/types.h>

-- 
Ville Syrjälä
Intel
