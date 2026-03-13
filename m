Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AASkKj4ntGl7hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 16:03:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1788E285804
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 16:03:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB8F910E467;
	Fri, 13 Mar 2026 15:03:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h0+I7Idq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9187C10E467;
 Fri, 13 Mar 2026 15:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773414202; x=1804950202;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=SY5iUxQoaBhoZ4n4+4KS7+JoRWrfB6H4DNnhKN+XFqI=;
 b=h0+I7IdqIf7+ndDEBSM31ut9+JFE49U541wKKV1uuVNl4QbdPg1hj/LF
 ZJLAE8GYOGLhNHikznLwSpvWucSLhDsp5rUo9UI+t6zx6AgGZmD6WVH3k
 IUl67YTAmwWf/+hKkZ/OsU7dxvYOUtoEMFIOEtJmNSdtlEjhtpc6gh6+M
 g+5Oc2GVr3RGjdjj0TYYlbQFWhwpF7ELLCOKvNtpDUL3vuCs4Zg6w5sT2
 nhx7HQ05gQGnRfjVpH4P0xTFB4sB2e4CisKMcxixoeseZtuMY1xPIoCZF
 W9NM1QUPT/vNE+e4jpNU7Ob2f8CboRisbJafAaZYMiESTM+wH1EN4kWJa A==;
X-CSE-ConnectionGUID: aRInOvXBSO2EeCBfdADvMQ==
X-CSE-MsgGUID: NT9InMprTa6GCk3UP/rpDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="78413885"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="78413885"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 08:03:22 -0700
X-CSE-ConnectionGUID: 9fy4A4xIRxaN8/AUtqhMaA==
X-CSE-MsgGUID: YjbcJ7RFT3COHEUrweLesw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="221133008"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 08:03:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915/de: Implement register polling in the
 display code
In-Reply-To: <20260313111028.25159-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260313111028.25159-1-ville.syrjala@linux.intel.com>
 <20260313111028.25159-4-ville.syrjala@linux.intel.com>
Date: Fri, 13 Mar 2026 17:03:16 +0200
Message-ID: <c642aab2724d1db478cdcd3af623117e6f9dad5c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 1788E285804
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The plan is to move all the mmio stuff into the display code itself.
> As a first step implement the register polling in intel_de.c.
>
> Currently i915 and xe implement this stuff in slightly different
> ways, so there are some functional changes here. Try to go for a
> reasonable middle ground between the i915 and xe implementations:
> - the exponential backoff limit is the simpler approach taken
>   by i915 (=3D=3D just clamp the max sleep duration to 1 ms)

The fact that xe has no upper limit is just bonkers, and with a suitable
sleep value the exponential backoff can be really bad, the timeout
happening almost 2x later than it should. Also, there's a bunch of quick
hammering reads with small timeouts at first, which aren't at all
necessary with longer timeouts. There are downsides to the exponential
backoff because of it's behaviour.

i915 also doesn't actually clamp the max, it'll double if the wait is
under the "max", but the doubling is okay to go over the max. Ditto in
this patch.

> - the fast vs. slow timeout handling is similar to i915 where
>   we first try the fast timeout and then again the slow timeout
>   if the condition still isn't satisfied. xe just adds up the
>   timeouts together, which is a bit weird.

Side note, IMO the fast vs. slow must remain an implementation detail
and not leak outside of intel_de.c. If it really matters, I think it's
more obvious to do it the way gmbus_wait() currently does it, i.e. first
atomic then regular in the call site itself. If the wait functions are
too complex, we either end up with too many functions or functions with
too many parameters, and anyway calls sites end up having to use
poll_timeout_us() directly.

> - the atomic wait variant uses udelay() like xe, whereas i915
>   has no udelay()s in its atomic loop. As a compromise go for a
>   fixed 1 usec delay  for short waits, instead of the somewhat
>   peculiar xe behaviour where it effectively just does one
>   iteration of the loop.

Overall I really prefer having separate functions for atomic and
non-atomic, similar to poll_timeout_us() and poll_timeout_us_atomic(). I
think it's so much easier to reason with the code with that than having
atomic as parameter.

> - keep the "use udelay() for < 10 usec waits" logic (which
>   more or less mirrors fsleep()), but include an explicit
>   might_sleep() even for these short waits when called from
>   a non-atomic intel_de_wait*() function. This should prevent
>   people from calling the non-atomic functions from the wrong
>   place.

Another difference between i915/xe and poll_timeout_us() is the range
for usleep_range(), which is *also* different from fsleep().

i915/xe have:

	usleep_range(wait__, wait__ * 2);

iopoll has:

	usleep_range((__sleep_us >> 2) + 1, __sleep_us);

fsleep() has:

	usleep_range(usecs, usecs + (usecs >> max_slack_shift));

I'm inclined to think all of the non-atomic variants should just use
fsleep(), but especially changing iopoll might be risky.

> Eventually we may want to switch over to poll_timeout*(),
> but that lacks the exponential backoff, so a bit too
> radical to change in one go.

Yeah, *sigh*. I fear it'll be too radical to add exponential backoff in
iopoll too. But I'm not entirely sure doing 10, 20, 40, 80, 160, etc. us
waits first when the timeout is like 1000000 us makes any sense
either. It's just wasteful hammering. Maybe the initial wait should be
relative to the timeout/sleep instead of fixed.

I don't know, lots of talk here. And lots of stuff I don't actually like
about this *or* the existing implementations all that much. But since
this largely remains an implementation detail that can be changed, I
guess I'm fine.

In the long run I kind of do expect the atomic and non-atomic paths to
be split. Having them combined is what I dislike most. Plus they'd have
to be split for migrating to poll_timeout_us() and
poll_timeout_us_atomic() anyway.

As far as the change is concerned, I think it does what it says on the
box. Please take the comments into consideration, especially regarding
future changes, but I'm not insisting on any changes now.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_de.c       | 99 +++++++++++++++++--
>  .../drm/xe/compat-i915-headers/intel_uncore.h | 31 ------
>  2 files changed, 91 insertions(+), 39 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_de.c b/drivers/gpu/drm/i9=
15/display/intel_de.c
> index fce92535bd6a..6cbe50f3e2b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.c
> +++ b/drivers/gpu/drm/i915/display/intel_de.c
> @@ -3,10 +3,85 @@
>   * Copyright =C2=A9 2026 Intel Corporation
>   */
>=20=20
> +#include <linux/delay.h>
> +
>  #include <drm/drm_print.h>
>=20=20
>  #include "intel_de.h"
>=20=20
> +static int __intel_de_wait_for_register(struct intel_display *display,
> +					i915_reg_t reg, u32 mask, u32 value,
> +					unsigned int timeout_us,
> +					u32 (*read)(struct intel_display *display, i915_reg_t reg),
> +					u32 *out_val, bool is_atomic)
> +{
> +	const ktime_t end =3D ktime_add_us(ktime_get_raw(), timeout_us);
> +	int wait_max =3D 1000;
> +	int wait =3D 10;
> +	u32 reg_value;
> +	int ret;
> +
> +	might_sleep_if(!is_atomic);
> +
> +	if (timeout_us <=3D 10) {
> +		is_atomic =3D true;
> +		wait =3D 1;
> +	}
> +
> +	for (;;) {
> +		bool expired =3D ktime_after(ktime_get_raw(), end);
> +
> +		/* guarantee the condition is evaluated after timeout expired */
> +		barrier();
> +
> +		reg_value =3D read(display, reg);
> +		if ((reg_value & mask) =3D=3D value) {
> +			ret =3D 0;
> +			break;
> +		}
> +
> +		if (expired) {
> +			ret =3D -ETIMEDOUT;
> +			break;
> +		}
> +
> +		if (is_atomic)
> +			udelay(wait);
> +		else
> +			usleep_range(wait, wait << 1);
> +
> +		if (wait < wait_max)
> +			wait <<=3D 1;
> +	}
> +
> +	if (out_val)
> +		*out_val =3D reg_value;
> +
> +	return ret;
> +}
> +
> +static int intel_de_wait_for_register(struct intel_display *display,
> +				      i915_reg_t reg, u32 mask, u32 value,
> +				      unsigned int fast_timeout_us,
> +				      unsigned int slow_timeout_us,
> +				      u32 (*read)(struct intel_display *display, i915_reg_t reg),
> +				      u32 *out_value, bool is_atomic)
> +{
> +	int ret;
> +
> +	if (fast_timeout_us)
> +		ret =3D __intel_de_wait_for_register(display, reg, mask, value,
> +						   fast_timeout_us, read,
> +						   out_value, is_atomic);
> +
> +	if (ret && slow_timeout_us)
> +		ret =3D __intel_de_wait_for_register(display, reg, mask, value,
> +						   slow_timeout_us, read,
> +						   out_value, is_atomic);
> +
> +	return ret;
> +}
> +
>  int intel_de_wait_us(struct intel_display *display, i915_reg_t reg,
>  		     u32 mask, u32 value, unsigned int timeout_us,
>  		     u32 *out_value)
> @@ -15,8 +90,10 @@ int intel_de_wait_us(struct intel_display *display, i9=
15_reg_t reg,
>=20=20
>  	intel_dmc_wl_get(display, reg);
>=20=20
> -	ret =3D __intel_wait_for_register(__to_uncore(display), reg, mask,
> -					value, timeout_us, 0, out_value);
> +	ret =3D intel_de_wait_for_register(display, reg, mask, value,
> +					 timeout_us, 0,
> +					 intel_de_read,
> +					 out_value, false);
>=20=20
>  	intel_dmc_wl_put(display, reg);
>=20=20
> @@ -31,8 +108,10 @@ int intel_de_wait_ms(struct intel_display *display, i=
915_reg_t reg,
>=20=20
>  	intel_dmc_wl_get(display, reg);
>=20=20
> -	ret =3D __intel_wait_for_register(__to_uncore(display), reg, mask,
> -					value, 2, timeout_ms, out_value);
> +	ret =3D intel_de_wait_for_register(display, reg, mask, value,
> +					 2, timeout_ms * 1000,
> +					 intel_de_read,
> +					 out_value, false);
>=20=20
>  	intel_dmc_wl_put(display, reg);
>=20=20
> @@ -43,16 +122,20 @@ int intel_de_wait_fw_ms(struct intel_display *displa=
y, i915_reg_t reg,
>  			u32 mask, u32 value, unsigned int timeout_ms,
>  			u32 *out_value)
>  {
> -	return __intel_wait_for_register_fw(__to_uncore(display), reg, mask,
> -					    value, 2, timeout_ms, out_value);
> +	return intel_de_wait_for_register(display, reg, mask, value,
> +					  2, timeout_ms * 1000,
> +					  intel_de_read_fw,
> +					  out_value, false);
>  }
>=20=20
>  int intel_de_wait_fw_us_atomic(struct intel_display *display, i915_reg_t=
 reg,
>  			       u32 mask, u32 value, unsigned int timeout_us,
>  			       u32 *out_value)
>  {
> -	return __intel_wait_for_register_fw(__to_uncore(display), reg, mask,
> -					    value, timeout_us, 0, out_value);
> +	return intel_de_wait_for_register(display, reg, mask, value,
> +					  timeout_us, 0,
> +					  intel_de_read_fw,
> +					  out_value, true);
>  }
>=20=20
>  int intel_de_wait_for_set_us(struct intel_display *display, i915_reg_t r=
eg,
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/driv=
ers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> index a8cfd65119e0..08d7ab933672 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> @@ -98,37 +98,6 @@ static inline u32 intel_uncore_rmw(struct intel_uncore=
 *uncore,
>  	return xe_mmio_rmw32(__compat_uncore_to_mmio(uncore), reg, clear, set);
>  }
>=20=20
> -static inline int
> -__intel_wait_for_register(struct intel_uncore *uncore, i915_reg_t i915_r=
eg,
> -			  u32 mask, u32 value, unsigned int fast_timeout_us,
> -			  unsigned int slow_timeout_ms, u32 *out_value)
> -{
> -	struct xe_reg reg =3D XE_REG(i915_mmio_reg_offset(i915_reg));
> -	bool atomic;
> -
> -	/*
> -	 * Replicate the behavior from i915 here, in which sleep is not
> -	 * performed if slow_timeout_ms =3D=3D 0. This is necessary because
> -	 * of some paths in display code where waits are done in atomic
> -	 * context.
> -	 */
> -	atomic =3D !slow_timeout_ms && fast_timeout_us > 0;
> -
> -	return xe_mmio_wait32(__compat_uncore_to_mmio(uncore), reg, mask, value,
> -			      fast_timeout_us + 1000 * slow_timeout_ms,
> -			      out_value, atomic);
> -}
> -
> -static inline int
> -__intel_wait_for_register_fw(struct intel_uncore *uncore, i915_reg_t i91=
5_reg,
> -			     u32 mask, u32 value, unsigned int fast_timeout_us,
> -			     unsigned int slow_timeout_ms, u32 *out_value)
> -{
> -	return __intel_wait_for_register(uncore, i915_reg, mask, value,
> -					 fast_timeout_us, slow_timeout_ms,
> -					 out_value);
> -}
> -
>  static inline u32 intel_uncore_read_fw(struct intel_uncore *uncore,
>  				       i915_reg_t i915_reg)
>  {

--=20
Jani Nikula, Intel
