Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BwHKWMIuWm+nQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 08:53:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E86312A521C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 08:53:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63B6110E51F;
	Tue, 17 Mar 2026 07:53:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oHt5mpvu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A91B10E51E;
 Tue, 17 Mar 2026 07:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773733984; x=1805269984;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=oOvr8DNfHFAs8SRhHQvvbUQi1xndYyCCq95pYYBRfkg=;
 b=oHt5mpvuUFTrgArLLntW+9spZyUMxsX7Q/zbSpzevBti/K/BqlqtCSRQ
 WJmLr6pgqKKcXq5vjtHdBfh0oVkaFZZM1Iolyd7BV9AdaloH6ZSNmhvi7
 rcQmwinsBlnM1boQQyfuR8q16U1rxZy1NWB5Zdo73WddbqT0MEoQgQeV/
 OSLLqhq3ZSfvqwJwsz36Qj08Jhpy78VLrVck5OVyodbYHu/l9C/IOiD+K
 x2INPqT15uPUq9bEk9y9kOw3Q+X7bgMa5JmjmNC80lfz6Zy9zrafRdjQv
 bp/6/wK0T+WvrszSicVYeeLGfNpkwOjMNLgLv2bMi14Vgb1+5MdMMRVuk Q==;
X-CSE-ConnectionGUID: csvQv+mkQ1uzNCJa/jm35w==
X-CSE-MsgGUID: VAElkmZQRxKlB+7JOhINOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="74646769"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74646769"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 00:53:03 -0700
X-CSE-ConnectionGUID: 3SoHKZykQCe05aU8U/1nJQ==
X-CSE-MsgGUID: s2s6je03RZaTZD1IQFw22w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="226861840"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.99])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 00:53:02 -0700
Date: Tue, 17 Mar 2026 09:52:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915/de: Implement register polling in the
 display code
Message-ID: <abkIW3ApfkiUUiAJ@intel.com>
References: <20260313111028.25159-1-ville.syrjala@linux.intel.com>
 <20260313111028.25159-4-ville.syrjala@linux.intel.com>
 <c642aab2724d1db478cdcd3af623117e6f9dad5c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c642aab2724d1db478cdcd3af623117e6f9dad5c@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.72 / 15.00];
	R_MIXED_CHARSET(0.59)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E86312A521C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 05:03:16PM +0200, Jani Nikula wrote:
> On Fri, 13 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > The plan is to move all the mmio stuff into the display code itself.
> > As a first step implement the register polling in intel_de.c.
> >
> > Currently i915 and xe implement this stuff in slightly different
> > ways, so there are some functional changes here. Try to go for a
> > reasonable middle ground between the i915 and xe implementations:
> > - the exponential backoff limit is the simpler approach taken
> >   by i915 (== just clamp the max sleep duration to 1 ms)
> 
> The fact that xe has no upper limit is just bonkers, and with a suitable
> sleep value the exponential backoff can be really bad, the timeout
> happening almost 2x later than it should. Also, there's a bunch of quick
> hammering reads with small timeouts at first, which aren't at all
> necessary with longer timeouts. There are downsides to the exponential
> backoff because of it's behaviour.
> 
> i915 also doesn't actually clamp the max, it'll double if the wait is
> under the "max", but the doubling is okay to go over the max. Ditto in
> this patch.
> 
> > - the fast vs. slow timeout handling is similar to i915 where
> >   we first try the fast timeout and then again the slow timeout
> >   if the condition still isn't satisfied. xe just adds up the
> >   timeouts together, which is a bit weird.
> 
> Side note, IMO the fast vs. slow must remain an implementation detail
> and not leak outside of intel_de.c. If it really matters, I think it's
> more obvious to do it the way gmbus_wait() currently does it, i.e. first
> atomic then regular in the call site itself. If the wait functions are
> too complex, we either end up with too many functions or functions with
> too many parameters, and anyway calls sites end up having to use
> poll_timeout_us() directly.

I think I'll follow up with a patch to nuke the fast vs. slow thing
entirely. IMO it doesn't really make sense.n the current scheme of
things. If the operation is expected to be fast (eg. ~10 usec) then
the difference between the 2 usec fast timeout vs. the starting 10
usec polling interval shouldn't make any practical difference anyway.
And if the operation is expected to take significantly longer than
that, then the whole fast timeout attempt is just wasted energy.

Though having some kind of fast vs. slow thing might make some sense
if we switch to poll_timeout_us() because then the exponential backoff
won't help us deal with cases that have very long timeouts but need
a short polling interval for performance reasons. AUX polling was one
such cases where the timeout needs to be long for the failure cases,
but the success case is very fast. I don't remember how short the
polling interval had to be to maintain reasonable performance, but
at least something like 10 ms timeout + 1 ms polling interval
(1/10th of the timeout) was way too slow.

But, as you say, perhaps we just need to hand roll those cases with
poll_timeout_us(). Though, for AUX specifically, the presence of 
random number of LTTPRs might make it a bit hard to manually select
an optimal polling interval.

The gmbus thing is somewhat broken btw. Interrupt based wakeup
does not work with poll_timeout_us() at all, so effectively we
have no gmbus interrupts currently. I'll eventually need to
think how to fix that as well...

> 
> > - the atomic wait variant uses udelay() like xe, whereas i915
> >   has no udelay()s in its atomic loop. As a compromise go for a
> >   fixed 1 usec delay  for short waits, instead of the somewhat
> >   peculiar xe behaviour where it effectively just does one
> >   iteration of the loop.
> 
> Overall I really prefer having separate functions for atomic and
> non-atomic, similar to poll_timeout_us() and poll_timeout_us_atomic(). I
> think it's so much easier to reason with the code with that than having
> atomic as parameter.
> 
> > - keep the "use udelay() for < 10 usec waits" logic (which
> >   more or less mirrors fsleep()), but include an explicit
> >   might_sleep() even for these short waits when called from
> >   a non-atomic intel_de_wait*() function. This should prevent
> >   people from calling the non-atomic functions from the wrong
> >   place.
> 
> Another difference between i915/xe and poll_timeout_us() is the range
> for usleep_range(), which is *also* different from fsleep().
> 
> i915/xe have:
> 
> 	usleep_range(wait__, wait__ * 2);
> 
> iopoll has:
> 
> 	usleep_range((__sleep_us >> 2) + 1, __sleep_us);
> 
> fsleep() has:
> 
> 	usleep_range(usecs, usecs + (usecs >> max_slack_shift));
> 
> I'm inclined to think all of the non-atomic variants should just use
> fsleep(), but especially changing iopoll might be risky.
> 
> > Eventually we may want to switch over to poll_timeout*(),
> > but that lacks the exponential backoff, so a bit too
> > radical to change in one go.
> 
> Yeah, *sigh*. I fear it'll be too radical to add exponential backoff in
> iopoll too. But I'm not entirely sure doing 10, 20, 40, 80, 160, etc. us
> waits first when the timeout is like 1000000 us makes any sense
> either.

Generally yes. Though the aforementioned AUX polling case
is an exception to the rule.

> It's just wasteful hammering. Maybe the initial wait should be
> relative to the timeout/sleep instead of fixed.

My local poll_timeout_us() conversion just used something like
1/10th (or thereabouts) of the timeout as the sleep duration.
I suppose we could adopt a similar approach even with the backoff.

> 
> I don't know, lots of talk here. And lots of stuff I don't actually like
> about this *or* the existing implementations all that much. But since
> this largely remains an implementation detail that can be changed, I
> guess I'm fine.
> 
> In the long run I kind of do expect the atomic and non-atomic paths to
> be split. Having them combined is what I dislike most. Plus they'd have
> to be split for migrating to poll_timeout_us() and
> poll_timeout_us_atomic() anyway.

I'm pondering if we could just get rid of the atomic variant entirely.
It's only needed by the wakelock stuff due to the spinlock. Maybe
that could be converted to mutex+non-atomic wait...

> 
> As far as the change is concerned, I think it does what it says on the
> box. Please take the comments into consideration, especially regarding
> future changes, but I'm not insisting on any changes now.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_de.c       | 99 +++++++++++++++++--
> >  .../drm/xe/compat-i915-headers/intel_uncore.h | 31 ------
> >  2 files changed, 91 insertions(+), 39 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_de.c b/drivers/gpu/drm/i915/display/intel_de.c
> > index fce92535bd6a..6cbe50f3e2b4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_de.c
> > +++ b/drivers/gpu/drm/i915/display/intel_de.c
> > @@ -3,10 +3,85 @@
> >   * Copyright © 2026 Intel Corporation
> >   */
> >  
> > +#include <linux/delay.h>
> > +
> >  #include <drm/drm_print.h>
> >  
> >  #include "intel_de.h"
> >  
> > +static int __intel_de_wait_for_register(struct intel_display *display,
> > +					i915_reg_t reg, u32 mask, u32 value,
> > +					unsigned int timeout_us,
> > +					u32 (*read)(struct intel_display *display, i915_reg_t reg),
> > +					u32 *out_val, bool is_atomic)
> > +{
> > +	const ktime_t end = ktime_add_us(ktime_get_raw(), timeout_us);
> > +	int wait_max = 1000;
> > +	int wait = 10;
> > +	u32 reg_value;
> > +	int ret;
> > +
> > +	might_sleep_if(!is_atomic);
> > +
> > +	if (timeout_us <= 10) {
> > +		is_atomic = true;
> > +		wait = 1;
> > +	}
> > +
> > +	for (;;) {
> > +		bool expired = ktime_after(ktime_get_raw(), end);
> > +
> > +		/* guarantee the condition is evaluated after timeout expired */
> > +		barrier();
> > +
> > +		reg_value = read(display, reg);
> > +		if ((reg_value & mask) == value) {
> > +			ret = 0;
> > +			break;
> > +		}
> > +
> > +		if (expired) {
> > +			ret = -ETIMEDOUT;
> > +			break;
> > +		}
> > +
> > +		if (is_atomic)
> > +			udelay(wait);
> > +		else
> > +			usleep_range(wait, wait << 1);
> > +
> > +		if (wait < wait_max)
> > +			wait <<= 1;
> > +	}
> > +
> > +	if (out_val)
> > +		*out_val = reg_value;
> > +
> > +	return ret;
> > +}
> > +
> > +static int intel_de_wait_for_register(struct intel_display *display,
> > +				      i915_reg_t reg, u32 mask, u32 value,
> > +				      unsigned int fast_timeout_us,
> > +				      unsigned int slow_timeout_us,
> > +				      u32 (*read)(struct intel_display *display, i915_reg_t reg),
> > +				      u32 *out_value, bool is_atomic)
> > +{
> > +	int ret;
> > +
> > +	if (fast_timeout_us)
> > +		ret = __intel_de_wait_for_register(display, reg, mask, value,
> > +						   fast_timeout_us, read,
> > +						   out_value, is_atomic);
> > +
> > +	if (ret && slow_timeout_us)
> > +		ret = __intel_de_wait_for_register(display, reg, mask, value,
> > +						   slow_timeout_us, read,
> > +						   out_value, is_atomic);
> > +
> > +	return ret;
> > +}
> > +
> >  int intel_de_wait_us(struct intel_display *display, i915_reg_t reg,
> >  		     u32 mask, u32 value, unsigned int timeout_us,
> >  		     u32 *out_value)
> > @@ -15,8 +90,10 @@ int intel_de_wait_us(struct intel_display *display, i915_reg_t reg,
> >  
> >  	intel_dmc_wl_get(display, reg);
> >  
> > -	ret = __intel_wait_for_register(__to_uncore(display), reg, mask,
> > -					value, timeout_us, 0, out_value);
> > +	ret = intel_de_wait_for_register(display, reg, mask, value,
> > +					 timeout_us, 0,
> > +					 intel_de_read,
> > +					 out_value, false);
> >  
> >  	intel_dmc_wl_put(display, reg);
> >  
> > @@ -31,8 +108,10 @@ int intel_de_wait_ms(struct intel_display *display, i915_reg_t reg,
> >  
> >  	intel_dmc_wl_get(display, reg);
> >  
> > -	ret = __intel_wait_for_register(__to_uncore(display), reg, mask,
> > -					value, 2, timeout_ms, out_value);
> > +	ret = intel_de_wait_for_register(display, reg, mask, value,
> > +					 2, timeout_ms * 1000,
> > +					 intel_de_read,
> > +					 out_value, false);
> >  
> >  	intel_dmc_wl_put(display, reg);
> >  
> > @@ -43,16 +122,20 @@ int intel_de_wait_fw_ms(struct intel_display *display, i915_reg_t reg,
> >  			u32 mask, u32 value, unsigned int timeout_ms,
> >  			u32 *out_value)
> >  {
> > -	return __intel_wait_for_register_fw(__to_uncore(display), reg, mask,
> > -					    value, 2, timeout_ms, out_value);
> > +	return intel_de_wait_for_register(display, reg, mask, value,
> > +					  2, timeout_ms * 1000,
> > +					  intel_de_read_fw,
> > +					  out_value, false);
> >  }
> >  
> >  int intel_de_wait_fw_us_atomic(struct intel_display *display, i915_reg_t reg,
> >  			       u32 mask, u32 value, unsigned int timeout_us,
> >  			       u32 *out_value)
> >  {
> > -	return __intel_wait_for_register_fw(__to_uncore(display), reg, mask,
> > -					    value, timeout_us, 0, out_value);
> > +	return intel_de_wait_for_register(display, reg, mask, value,
> > +					  timeout_us, 0,
> > +					  intel_de_read_fw,
> > +					  out_value, true);
> >  }
> >  
> >  int intel_de_wait_for_set_us(struct intel_display *display, i915_reg_t reg,
> > diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> > index a8cfd65119e0..08d7ab933672 100644
> > --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> > +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> > @@ -98,37 +98,6 @@ static inline u32 intel_uncore_rmw(struct intel_uncore *uncore,
> >  	return xe_mmio_rmw32(__compat_uncore_to_mmio(uncore), reg, clear, set);
> >  }
> >  
> > -static inline int
> > -__intel_wait_for_register(struct intel_uncore *uncore, i915_reg_t i915_reg,
> > -			  u32 mask, u32 value, unsigned int fast_timeout_us,
> > -			  unsigned int slow_timeout_ms, u32 *out_value)
> > -{
> > -	struct xe_reg reg = XE_REG(i915_mmio_reg_offset(i915_reg));
> > -	bool atomic;
> > -
> > -	/*
> > -	 * Replicate the behavior from i915 here, in which sleep is not
> > -	 * performed if slow_timeout_ms == 0. This is necessary because
> > -	 * of some paths in display code where waits are done in atomic
> > -	 * context.
> > -	 */
> > -	atomic = !slow_timeout_ms && fast_timeout_us > 0;
> > -
> > -	return xe_mmio_wait32(__compat_uncore_to_mmio(uncore), reg, mask, value,
> > -			      fast_timeout_us + 1000 * slow_timeout_ms,
> > -			      out_value, atomic);
> > -}
> > -
> > -static inline int
> > -__intel_wait_for_register_fw(struct intel_uncore *uncore, i915_reg_t i915_reg,
> > -			     u32 mask, u32 value, unsigned int fast_timeout_us,
> > -			     unsigned int slow_timeout_ms, u32 *out_value)
> > -{
> > -	return __intel_wait_for_register(uncore, i915_reg, mask, value,
> > -					 fast_timeout_us, slow_timeout_ms,
> > -					 out_value);
> > -}
> > -
> >  static inline u32 intel_uncore_read_fw(struct intel_uncore *uncore,
> >  				       i915_reg_t i915_reg)
> >  {
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
