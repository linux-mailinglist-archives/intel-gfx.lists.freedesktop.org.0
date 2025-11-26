Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CD5C8BFF7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 22:17:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C99910E6B9;
	Wed, 26 Nov 2025 21:17:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JzeNg6o5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64B9910E6B9;
 Wed, 26 Nov 2025 21:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764191865; x=1795727865;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MNh2xlPpTuAWOLyKYfPu6xi8P3cxqmVLyCrUNHxVc3Y=;
 b=JzeNg6o5KAot3ykRrBhmRegc39T4CpHTG6gjOAwpyqvpjP46FnXcHanP
 Iz15evK/n4jkpGEWvKpIOygGoyuH06AqDnbxYnD6ZGxsWuQK39n2mzt87
 8XzxHe6oyvl2xzuykkroz1H2axZuqQ7idnBu137Kg36ZEO+uOeFTn48+l
 /eGuu2R+lfx6TnAmcqfCoXJfm84OvV6EgFgG0gOt8J55aeB38Jffjy24c
 cK57GOqfdSyKjmhsRjl66JUZCoHOL7sQGnLvYJFL5JR1lDQxZAmLumSE+
 /dbXItJkR+nXtQirfmqJrWX5Up/1V/6dwLQ7seSYBWAgGJaMHGi2T3OKt w==;
X-CSE-ConnectionGUID: +ToUGuw+TEidaAe/rI8TyA==
X-CSE-MsgGUID: cLimtdNlRFiDq3Rxe2omTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="76564364"
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="76564364"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 13:17:45 -0800
X-CSE-ConnectionGUID: HA+kWzQMQBOhPFwLj3DMzg==
X-CSE-MsgGUID: Q1eLRGd4T0ixfXKtl95Alg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="193151598"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.205])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 13:17:42 -0800
Date: Wed, 26 Nov 2025 23:17:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-rt-devel@lists.linux.dev, Mario Kleiner <mario.kleiner.de@gmail.com>,
 Mike Galbraith <umgwanakikbuti@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH v2 4/7] drm/i915/display: Remove locking from
 intel_vblank_evade critical section
Message-ID: <aSduc2bC343FF3rk@intel.com>
References: <20251104083634.670753-1-dev@lankhorst.se>
 <20251104083634.670753-5-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251104083634.670753-5-dev@lankhorst.se>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Nov 04, 2025 at 09:36:28AM +0100, Maarten Lankhorst wrote:
> finish_wait() may take a lock, which means that it can take any amount
> of time. On PREEMPT-RT we should not be taking any lock after disabling
> preemption, so ensure that the completion is done before disabling
> interrupts.
> 
> This also has the benefit of making vblank evasion more deterministic,
> by performing the final vblank check after all locking is done.
> 
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 35 ++++++++++-----------
>  1 file changed, 17 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 2b106ffa3f5f5..3628d2a1b8f38 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -708,6 +708,13 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>  		evade->min -= vblank_delay;
>  }
>  
> +static inline int vblank_evadable(struct intel_vblank_evade_ctx *evade, int *scanline)

The name is confusing. But having a function
would be nice since we need two checks I guess.
scanline_is_safe() or something?

Also type should be bool, and inline looks pointless.

> +{
> +	*scanline = intel_get_crtc_scanline(evade->crtc);
> +
> +	return *scanline < evade->min || *scanline > evade->max;
> +}
> +
>  /* must be called with vblank interrupt already enabled! */
>  int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>  {
> @@ -715,23 +722,22 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>  	struct intel_display *display = to_intel_display(crtc);
>  	long timeout = msecs_to_jiffies_timeout(1);
>  	wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
> -	DEFINE_WAIT(wait);
>  	int scanline;
>  
>  	if (evade->min <= 0 || evade->max <= 0)
>  		return 0;
>  
> -	for (;;) {
> -		/*
> -		 * prepare_to_wait() has a memory barrier, which guarantees
> -		 * other CPUs can see the task state update by the time we
> -		 * read the scanline.
> -		 */
> -		prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);
> +	while (!vblank_evadable(evade, &scanline)) {
> +		local_irq_enable();
>  
> -		scanline = intel_get_crtc_scanline(crtc);
> -		if (scanline < evade->min || scanline > evade->max)
> -			break;
> +		DEFINE_WAIT(wait);
> +		while (!vblank_evadable(evade, &scanline) && timeout > 0) {
> +			prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);
> +			timeout = schedule_timeout(timeout);
> +		}
> +		finish_wait(wq, &wait);
> +
> +		local_irq_disable();
>  
>  		if (!timeout) {

This looks to introduce the classic "didn't check the
condition after timeout" race.

I guess what you're going for is something like this (done
through a somewhat less intrusive reordering of the current
code):

for (;;) {
	if (scanline_is_safe(evade, &scanline))
		break;

	if (!timeout) {
		drm_dbg_kms(display->drm,
			    "Potential atomic update failure on pipe %c\n",
			    pipe_name(crtc->pipe));
		break;
	}

	local_irq_enable();

	prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);

	if (!scanline_is_safe(evade, &scanline))
		timeout = schedule_timeout(timeout);

	finish_wait(wq, &wait);

	local_irq_disable();
}

And then maybe the whole prepare+wait+finish thing there
could be a simple wait_event_timeout(). That would make
that inner thing a loop though. We might not want that
just because jiffies is so coarse and we don't really
want to wait multiple times there.

>  			drm_dbg_kms(display->drm,
> @@ -740,15 +746,8 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>  			break;
>  		}
>  
> -		local_irq_enable();
> -
> -		timeout = schedule_timeout(timeout);
> -
> -		local_irq_disable();
>  	}
>  
> -	finish_wait(wq, &wait);
> -
>  	/*
>  	 * On VLV/CHV DSI the scanline counter would appear to
>  	 * increment approx. 1/3 of a scanline before start of vblank.
> -- 
> 2.51.0

-- 
Ville Syrjälä
Intel
