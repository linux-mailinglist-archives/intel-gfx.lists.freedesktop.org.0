Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7373CB3B9CD
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 13:15:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D349F10EB84;
	Fri, 29 Aug 2025 11:15:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GYE2lS2e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27C9A10EB84;
 Fri, 29 Aug 2025 11:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756466131; x=1788002131;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mWb+UNhgaS5ZjFbGmeEETBW8vLceBfdx0KfaXuzsioM=;
 b=GYE2lS2eYAEYgBjzgLHXPxNU7hmFI+0eg4PNNzz3aXlN08tBMD2f9/7K
 0WD4rV/WPlUGJjhkrS/VWTQrmwlDgZ9/VSE6rCThcgrj2FmDMC6Uxzws0
 4ukVvlNy7JoK1l6pNAiftb4Bv2LnD9Y8LHM1dGkFWMaTqbb17lwhShgwG
 R6K2KSd/5YJoRnuYKkuH31q7ZBNH6FpMKFubTcOj39BV6qKyytavXqKjF
 hCkemN3GrmywyMZA5XLrNNLbAje6r6MwIIj7DGnD9vh9BMV7sw56lNc8U
 jI5PDA7IhZNTLqvLaWYOXVh8csl6U3NCZgAF9sP7gQrK1myuwnWvAEugV w==;
X-CSE-ConnectionGUID: lpDe2EGVTzuIXg/UuQ3oMA==
X-CSE-MsgGUID: WJm+J9/+RBO8hiQZAyOEGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="46318561"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="46318561"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 04:15:31 -0700
X-CSE-ConnectionGUID: xi6PVUprTgu0QKRX/YGM7w==
X-CSE-MsgGUID: T2k0syoFTTKgZcMiCTDepg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="170527338"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.58])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 04:15:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Maarten Lankhorst
 <dev@lankhorst.se>, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, Luca Abeni
 <lucabe72@gmail.com>, Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH 1/2] drm/i915: Disable tracepoints for PREEMPT_RT
In-Reply-To: <20250828090944.101069-1-dev@lankhorst.se>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250828090944.101069-1-dev@lankhorst.se>
Date: Fri, 29 Aug 2025 14:15:24 +0300
Message-ID: <f1c033468a41cfb891e907981118e1a34b71d6a4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 28 Aug 2025, Maarten Lankhorst <dev@lankhorst.se> wrote:
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
> [mlankhorst]
> The original patch was insufficient, and since the tracing
> infrastructure does not allow for partial disabling of tracepoints.
>
> Completely disable tracing for the entire i915 driver in PREEMPT_RT,
> a separate fix for display tracepoints on xe is added to make those
> work.
>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
> Reported-by: Luca Abeni <lucabe72@gmail.com>
> Cc: Steven Rostedt <rostedt@goodmis.org>
> Co-developed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/Makefile | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 8535434430728..ba825d7f6ddf5 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -13,6 +13,11 @@ subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
>  # drivers. Define I915 when building i915.
>  subdir-ccflags-y += -DI915
>  
> +# Disable tracepoints on i915 for PREEMPT_RT, unfortunately
> +# it's an all or nothing flag. You cannot selectively disable
> +# only some tracepoints.

Should probably be a FIXME.

Acked-by: Jani Nikula <jani.nikula@intel.com>


> +subdir-ccflags-$(CONFIG_PREEMPT_RT) += -DNOTRACE
> +
>  subdir-ccflags-y += -I$(src)
>  
>  # Please keep these build lists sorted!

-- 
Jani Nikula, Intel
