Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJMaBo8/F2qg9wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 21:01:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B855E9554
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 21:01:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D91E510E954;
	Wed, 27 May 2026 19:01:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cA8djDC2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC65F10E951;
 Wed, 27 May 2026 19:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779908492; x=1811444492;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NSeyidQHlrWJ9n9BA1A/Z7cWbn4apCY1Hyl6iOsLNkM=;
 b=cA8djDC2i2FbnUBZWpadu9FsPpH8fsChl4+1rhaUqxMfGQCGhUdrvSpw
 x8yEnOWFzkbwr1UaDWii8OZDyPlai9M8U1BzmdMhJ5JgdF7GscaCsFq8v
 Onn2vCpv01ERlsLX9BrBmnig10+TSH2zlLihb0CEwAYSVHq0ATuj7ls4t
 WxTRBtuCFLQ72c6SZQzhXen4fwKojK6b5lSCkb9Z8fDsdrYC0wsBSGbtv
 fyJSHLDaYN23bl0ersgiacVXW9OJ9dqFZHS9cgQOA0CzvIVuWOQRanWvJ
 Iv30nqOC+2/NzJGTI34i08XoIdAz4FIQWuCDfqL08uq4t11LxkNNNewAq Q==;
X-CSE-ConnectionGUID: DkIrKcvuQtCuA1MF0pI4lA==
X-CSE-MsgGUID: XvDq+/wwSKm/+9XB7dXgoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80602209"
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="80602209"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 12:01:31 -0700
X-CSE-ConnectionGUID: nth7k4vcTNiEKU/VBxMMJQ==
X-CSE-MsgGUID: lIEhfnAeTy2JghJLh7E3Lg==
X-ExtLoop1: 1
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.80])
 by fmviesa003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2026 12:01:30 -0700
Date: Wed, 27 May 2026 22:01:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/{i915, xe}: move xe display shutdown and pm
 hooks to intel_display_driver.c
Message-ID: <ahc_hyDY5QDdWoG1@intel.com>
References: <cover.1779887154.git.jani.nikula@intel.com>
 <b5d9bda0d181b8e1bb0834a977d2b632416a4a2c.1779887154.git.jani.nikula@intel.com>
 <ahcG2uqriNbcB8qY@intel.com>
 <7bd1fbcda840f3f382f29e67592b587ab844905d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7bd1fbcda840f3f382f29e67592b587ab844905d@intel.com>
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
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 72B855E9554
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 27, 2026 at 07:35:32PM +0300, Jani Nikula wrote:
> On Wed, 27 May 2026, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Wed, May 27, 2026 at 04:06:25PM +0300, Jani Nikula wrote:
> >> Move the xe display glue code for shutdown and pm hooks from
> >> xe_display.c to intel_display_driver.c. This is a small step towards
> >> unifying the display interfaces between i915 and xe drivers. The code
> >> belongs in display, not in i915 or xe driver. Neither the xe nor i915
> >> core code should be calling deep into display functionality.
> >> 
> >> The high level functions are obviously modeled after the xe driver
> >> now. The i915 driver needs to start calling them as well. For this, they
> >> may need to be further changed and refactored, but this needs to happen
> >> in display side.
> >> 
> >> Clean up xe_display.c includes as many of them become unnecessary.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  .../drm/i915/display/intel_display_driver.c   | 189 ++++++++++++++++++
> >>  .../drm/i915/display/intel_display_driver.h   |  12 ++
> >>  drivers/gpu/drm/xe/display/xe_display.c       | 185 ++---------------
> >>  3 files changed, 214 insertions(+), 172 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> >> index d0729936f681..15ba4c2ac985 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> >> @@ -43,6 +43,7 @@
> >>  #include "intel_dp_tunnel.h"
> >>  #include "intel_dpll.h"
> >>  #include "intel_dpll_mgr.h"
> >> +#include "intel_encoder.h"
> >>  #include "intel_fb.h"
> >>  #include "intel_fbc.h"
> >>  #include "intel_fbdev.h"
> >> @@ -780,3 +781,191 @@ void intel_display_driver_resume(struct intel_display *display)
> >>  	if (state)
> >>  		drm_atomic_commit_put(state);
> >>  }
> >> +
> >> +/*
> >> + * FIXME: The below interfaces are currently only being called from the xe
> >> + * driver code. They need to be unified with the needs of the i915 driver hooks,
> >> + * and i915 needs to migrate over to them.
> >> + */
> >> +
> >> +void intel_display_driver_shutdown(struct intel_display *display)
> >> +{
> >> +	intel_display_power_disable(display);
> >> +	drm_client_dev_suspend(display->drm);
> >> +
> >> +	if (intel_display_device_present(display)) {
> >> +		drm_kms_helper_poll_disable(display->drm);
> >> +		intel_display_driver_disable_user_access(display);
> >> +		intel_display_driver_suspend(display);
> >> +	}
> >> +
> >> +	intel_display_flush_cleanup_work(display);
> >> +	intel_dp_mst_suspend(display);
> >> +	intel_encoder_block_all_hpds(display);
> >> +	intel_hpd_cancel_work(display);
> >> +
> >> +	if (intel_display_device_present(display))
> >> +		intel_display_driver_suspend_access(display);
> >> +
> >> +	intel_encoder_suspend_all(display);
> >> +	intel_encoder_shutdown_all(display);
> >> +
> >> +	intel_opregion_suspend(display, PCI_D3cold);
> >> +
> >> +	intel_dmc_suspend(display);
> >> +}
> >> +
> >> +void intel_display_driver_shutdown_late(struct intel_display *display)
> >> +{
> >> +	/*
> >> +	 * The only requirement is to reboot with display DC states disabled,
> >> +	 * for now leaving all display power wells in the INIT power domain
> >> +	 * enabled.
> >> +	 */
> >> +	intel_display_power_driver_remove(display);
> >> +}
> >> +
> >> +static bool suspend_to_idle(void)
> >> +{
> >> +#if IS_ENABLED(CONFIG_ACPI_SLEEP)
> >> +	if (acpi_target_system_state() < ACPI_STATE_S3)
> >> +		return true;
> >> +#endif
> >> +	return false;
> >> +}
> >> +
> >> +void intel_display_driver_pm_enable_d3cold(struct intel_display *display)
> >> +{
> >> +	/*
> >> +	 * We do a lot of poking in a lot of registers, make sure they work
> >> +	 * properly.
> >> +	 */
> >> +	intel_display_power_disable(display);
> >
> > This stuff is not meant for runtime pm. xe just has some
> > obnoxious hacks in its runtime pm code to allow it to call
> > incorrect functions from its runtime pm paths without
> > deadlocks/etc.
> >
> > I think the xe hacks need to be killed and runtime pm
> > implemented there *correctly* before we base any common
> > code on the xe implementation.
> >
> > We should perhaps start from the i915 implementation
> > instead. That might help properly highlight all the
> > bogus things that xe is doing.
> 
> There are a few reasons why I chose to start off with xe like this.
> 
> The granularity of functions are a fairly good starting point for a
> shared implementation. Simply moving them over from xe to display in a
> non-functional way reduces xe_display.c dependency deep into display
> functionality. It's forward progress with no risk for regressions.
> 
> Sure, we could define similar functions for i915 to call, but that's
> going to contain functional changes from about patch #1, because i915
> calls deep into display in a very scattered way. With the approach at
> hand, we can gradually move i915 over to the new stuff, even function by
> function, comparing the sequences, making small changes to either along
> the way, as the case may be.
> 
> >From my POV the end result is going to be the same. The difference is in
> the path we choose.
> 
> Of course, there's also the problem that I don't know for sure what all
> the hacks are that you refer to, or what implementing runtime PM
> correctly there means. The d3cold stuff (including those
> intel_display_power_disable/enable() calls) is hidden behind a flag that
> only gets called for xe, which I guess is a bit lame, but also isolates
> it from the rest.

The main issue is that xe calls the wrong things and thus ends up
calling runtime_pm_get/put() from within the runtime suspend/resume
hooks, which is completely wrong. IIRC that would normally just
deadlock but there is some hack deep in the guts of the xe that
skips the actual rpm stuff and just adjusts the refcount. And that
brings along an implicit assumption that the device is still awake
enough to actually work correctly for whatever the functions that
takes the rpm ref needs. So it all works by accident, not by design.
And it could very well break at any time by some innocent looking
change to any of those functions that shouldn't be even be called.

In i915, with its proper runtime pm implementation, we simply
can't call any of those things from the runtime pm hooks. So someone
will need to identify all those functions, come up with a proper way
to do what needs to be done, and then nuke the xe hacks. Only after
that we have any real chance of converting i915 to use that code.

The other direction might allow us to proceed a bit further in
the unification before the xe hacks need to be fixed, because
anything i915 calls will be safe to also call in xe.

I'm also not sure xe is even calling the right things in the right
order for the things that it should be calling. Comparing with the
i915 code should usually tell us that, but until the i915 bits have
been extracted to similar functions it's probably a bit hard to see
what the differences are.

-- 
Ville Syrjälä
Intel
