Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8E0A31338
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 18:38:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCAB110E733;
	Tue, 11 Feb 2025 17:38:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CJBcdomN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C7D089143;
 Tue, 11 Feb 2025 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739295496; x=1770831496;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AWmpEB9VJYhQejpg/7buDs+Po8Myz8u49Cbv32yKzwM=;
 b=CJBcdomNDJt3md3b0+8xHitHIneWhhlG8dllofgMPg7Od7aO3ztQ6aB1
 WU6/YP8iKNGg8th6cy4um8yzYI8Jb7/gge64No+EZC0nxeRGhHT4+ve8i
 uCcLl0thJBcT3HIuYz+IqVXQ0Kcd6odfa/95iJVQmaPjBFrVbOQq878IJ
 XKE7JJ0QltxBg34seOFQMBXvbFxPtSf/1nZFknJoHGdAazYpD8lRWhlS5
 buvMpm+fa1jzpkS4d+8RHYactaVuKuSpJfw0sG9bz2BabygPgDdOuzl2E
 JZxJfOszcMY5vQoQNFcMsxWS64+YCA/unebCcTCXzABApFgpt+fZBhz0N A==;
X-CSE-ConnectionGUID: 30hwTBtRQYCZXRo8WzfguA==
X-CSE-MsgGUID: 60pLUcHgRP+6HpRybgUIqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50567497"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="50567497"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 09:38:16 -0800
X-CSE-ConnectionGUID: JDqZ81RAR2efgjSNWBK4kQ==
X-CSE-MsgGUID: T5E376+vSrunW7ZvgYrNnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112792567"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 09:38:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Feb 2025 19:38:11 +0200
Date: Tue, 11 Feb 2025 19:38:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 7/8] drm/i915/vrr: Check that the push send bit is
 clear after delayed vblank
Message-ID: <Z6uLA_ZsQS-EIZt_@intel.com>
References: <20250207223159.14132-8-ville.syrjala@linux.intel.com>
 <20250210160711.24010-1-ville.syrjala@linux.intel.com>
 <6e7cb456-7866-4063-8ad0-e7e1c2bcd72d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6e7cb456-7866-4063-8ad0-e7e1c2bcd72d@intel.com>
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

On Tue, Feb 11, 2025 at 12:38:47PM +0530, Nautiyal, Ankit K wrote:
> 
> On 2/10/2025 9:37 PM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Since we don't do mailbox updates the push send bit
> > should alwyas clear by the time the delay vblank fires
> > and the flip completes. Check for that to make sure we
> > haven't screwed up the sequencing/vblank evasion/etc.
> >
> > On the DSB path we should be able to guarantee this
> > since we don't have to deal with any scheduler latencies
> > and whatnot. I suppose unexpected DMA/memory latencies
> > might be the only thing that might trip us up here.
> >
> > For the MMIO path we do always have a non-zero chance
> > that vblank evasion fails (since we can't really guarantee
> > anything about the scheduling behaviour). That could trip
> > up this check, but that seems fine since we already print
> > errors for other types of vblank evasion failures.
> >
> > Should the CPU vblank evasion actually fail, then the push
> > send bit can still be set when the next commit happens. But
> > both the DSB and MMIO paths should handle that situation
> > gracefully.
> >
> > v2: Only check once instead of polling for two scanlines
> >      since we should now be guaranteed to be past the
> >      delayed vblank.
> >      Also check in the MMIO path for good measure
> > v3: Skip the push send check when VRR is enabled.
> >      With joiner the secondary pipe's DSBs doen't have access
> >      to the transcoder registers, and so doing this check
> >      there triggers a reponse timeout error on the DSB. VRR
> >      is not currently allowed when using joiner, so this will
> >      prevent the bogus register access.
> >
> > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com> #v1
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_color.c   |  1 +
> >   drivers/gpu/drm/i915/display/intel_display.c |  4 +++
> >   drivers/gpu/drm/i915/display/intel_vrr.c     | 34 ++++++++++++++++++++
> >   drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
> >   4 files changed, 41 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> > index 4d8f6509cac4..cfe14162231d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -1991,6 +1991,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
> >   	if (crtc_state->use_dsb) {
> >   		intel_vrr_send_push(crtc_state->dsb_color_vblank, crtc_state);
> >   		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color_vblank);
> > +		intel_vrr_check_push_sent(crtc_state->dsb_color_vblank, crtc_state);
> >   		intel_dsb_interrupt(crtc_state->dsb_color_vblank);
> >   	}
> >   
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 0790b2a4583e..34434071a415 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7737,6 +7737,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
> >   
> >   			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
> >   			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
> > +			intel_vrr_check_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
> >   			intel_dsb_interrupt(new_crtc_state->dsb_commit);
> >   		}
> >   	}
> > @@ -7886,6 +7887,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
> >   			intel_crtc_disable_flip_done(state, crtc);
> >   
> >   		intel_atomic_dsb_wait_commit(new_crtc_state);
> > +
> > +		if (!state->base.legacy_cursor_update && !new_crtc_state->use_dsb)
> > +			intel_vrr_check_push_sent(NULL, new_crtc_state);
> >   	}
> >   
> >   	/*
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index adb51609d0a3..cac49319026d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -416,6 +416,40 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
> >   		intel_dsb_nonpost_end(dsb);
> >   }
> >   
> > +void intel_vrr_check_push_sent(struct intel_dsb *dsb,
> > +			       const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct intel_display *display = to_intel_display(crtc_state);
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> > +
> > +	if (!crtc_state->vrr.enable)
> 
> I think you mean:
> 
> if (crtc_state->vrr.enable) return;

No. We want to do the check when VRR is enabled (when we are
actually sending pushes), and skip it otherwise (when we don't
send pushes anyway).

> 
> Regards,
> 
> Ankit
> 
> > +		return;
> > +
> > +	/*
> > +	 * Make sure the push send bit has cleared. This should
> > +	 * already be the case as long as the caller makes sure
> > +	 * this is called after the delayed vblank has occurred.
> > +	 */
> > +	if (dsb) {
> > +		int wait_us, count;
> > +
> > +		wait_us = 2;
> > +		count = 1;
> > +
> > +		/*
> > +		 * If the bit hasn't cleared the DSB will
> > +		 * raise the poll error interrupt.
> > +		 */
> > +		intel_dsb_poll(dsb, TRANS_PUSH(display, cpu_transcoder),
> > +			       TRANS_PUSH_SEND, 0, wait_us, count);
> > +	} else {
> > +		if (intel_vrr_is_push_sent(crtc_state))
> > +			drm_err(display->drm, "[CRTC:%d:%s] VRR push send still pending\n",
> > +				crtc->base.base.id, crtc->base.name);
> > +	}
> > +}
> > +
> >   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
> >   {
> >   	struct intel_display *display = to_intel_display(crtc_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> > index 899cbf40f880..514822577e8a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> > @@ -25,6 +25,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
> >   void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
> >   void intel_vrr_send_push(struct intel_dsb *dsb,
> >   			 const struct intel_crtc_state *crtc_state);
> > +void intel_vrr_check_push_sent(struct intel_dsb *dsb,
> > +			       const struct intel_crtc_state *crtc_state);
> >   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
> >   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
> >   void intel_vrr_get_config(struct intel_crtc_state *crtc_state);

-- 
Ville Syrjälä
Intel
