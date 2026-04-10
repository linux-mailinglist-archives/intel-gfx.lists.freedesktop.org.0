Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4K+gAUCt2GljgwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 09:56:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1963D3A74
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 09:56:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D742710E8E8;
	Fri, 10 Apr 2026 07:56:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dMs116rI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FB3610E8E1;
 Fri, 10 Apr 2026 07:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775807804; x=1807343804;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vNtvUOk2PDog8fnczodDF3+jiFbC1miklrDkAHNYYHE=;
 b=dMs116rIzhvVkJAycUmqFT25tHjXejV+73K9vnbtJdLsGPxSd47YR4gA
 SEsKomzAyLpNIqleMt7avyoOJVndEGscgD7C9511u6gZ/Xi18UDSXWdL+
 +jd7TIQz6eGTfi0O1A2Oi6aReSB2IKkwHkfSKYFlGPkui6zCRvcKiKm6e
 jjH5gQCMp4/2UWaG7l30rLSk8XLBdZNQO86+Oe0wvHfHYBGci2H7IoOBG
 hRlhLEWRbe6E9+M50KBDdvFNELGwde11FSPY2EZdhBI2VLDJ3ZRKhF3qJ
 0E/6iGm1P/Z2n9ja5UDeywUmcvT+fdcwnIqkKDL0Hw42notlkwsEwrihW Q==;
X-CSE-ConnectionGUID: pbJnTgnTTOuwrklHp8cwrA==
X-CSE-MsgGUID: N1sTs9SqTE279qjn19BK0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="77008636"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="77008636"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:56:44 -0700
X-CSE-ConnectionGUID: cSSdt7i6TFODpF0kzRuu3g==
X-CSE-MsgGUID: DOlCHl52QrmkvKMizNX6Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="259484975"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.89])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:56:40 -0700
Date: Fri, 10 Apr 2026 10:56:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 4/4] drm/i915/reset: Add "display_reset_count" debugfs file
Message-ID: <aditNTEpluzhV_IE@intel.com>
References: <20260410073500.32308-1-ville.syrjala@linux.intel.com>
 <20260410073500.32308-5-ville.syrjala@linux.intel.com>
 <b059bb9ef0df9a2ab98ee9e4f900f8e6e3e82e57@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b059bb9ef0df9a2ab98ee9e4f900f8e6e3e82e57@intel.com>
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
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 5C1963D3A74
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 10:42:23AM +0300, Jani Nikula wrote:
> On Fri, 10 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Expose the number of display resets performed in a new
> > "display_reset_count" debugfs file. kms_busy can use this to
> > confirm that the kernel actually took the full display reset path.
> >
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Jouni Högander <jouni.hogander@intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_core.h    |  4 ++++
> >  drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 ++
> >  drivers/gpu/drm/i915/display/intel_display_reset.c   | 10 ++++++++++
> >  drivers/gpu/drm/i915/display/intel_display_reset.h   |  2 ++
> >  drivers/gpu/drm/xe/Makefile                          |  1 +
> >  5 files changed, 19 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index 9e77003addd0..38535d1056d1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -556,6 +556,10 @@ struct intel_display {
> >  		unsigned long mask;
> >  	} quirks;
> >  
> > +	struct {
> > +		u32 count;
> > +	} reset;
> > +
> >  	struct {
> >  		/* restore state for suspend/resume and display reset */
> >  		struct drm_atomic_state *modeset_state;
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index f244a2b5d139..81bef000a4e3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -27,6 +27,7 @@
> >  #include "intel_display_power.h"
> >  #include "intel_display_power_well.h"
> >  #include "intel_display_regs.h"
> > +#include "intel_display_reset.h"
> >  #include "intel_display_rpm.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dmc.h"
> > @@ -838,6 +839,7 @@ void intel_display_debugfs_register(struct intel_display *display)
> >  
> >  	intel_bios_debugfs_register(display);
> >  	intel_cdclk_debugfs_register(display);
> > +	intel_display_reset_debugfs_register(display);
> >  	intel_dmc_debugfs_register(display);
> >  	intel_dp_test_debugfs_register(display);
> >  	intel_fbc_debugfs_register(display);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> > index ca15dc18ef0f..79c2e77ca137 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> > @@ -3,6 +3,8 @@
> >   * Copyright © 2023 Intel Corporation
> >   */
> >  
> > +#include <linux/debugfs.h>
> > +
> >  #include <drm/drm_atomic_helper.h>
> >  #include <drm/drm_print.h>
> >  
> > @@ -66,6 +68,7 @@ void intel_display_reset_prepare(struct intel_display *display)
> >  		return;
> >  	}
> >  
> > +	display->reset.count++;
> >  	display->restore.modeset_state = state;
> >  	state->acquire_ctx = ctx;
> >  }
> > @@ -114,3 +117,10 @@ void intel_display_reset_finish(struct intel_display *display, bool test_only)
> >  	drm_modeset_acquire_fini(ctx);
> >  	mutex_unlock(&display->drm->mode_config.mutex);
> >  }
> > +
> > +void intel_display_reset_debugfs_register(struct intel_display *display)
> > +{
> > +	debugfs_create_u32("display_reset_count", 0400,
> > +			   display->drm->debugfs_root,
> > +			   &display->reset.count);
> 
> I'm wondering about the names of the debugfs files. We've used the i915_
> prefix so far, but it's obviously misleading nowadays. I've started
> using intel_ in some places.
> 
> I primarily worry about the potential clash with drm core debugfs files,
> which leads to failures to create the file, and clash with other
> drivers, where the files are created all right, but the contents differ
> driver to driver.

Fair point. I suppose I'll just stick an "intel_" prefix on it.

Another option could be use a subdirectory to separate the driver
specific stuff from the core stuff, but dunno if we want to start
down that path. And I guess we'd then need similar subdirectories
inside the crtc/connector/etc. subdirectories.

> 
> *shrug*
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
> > index a8aa7729d33f..b88c330a3441 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> > @@ -15,4 +15,6 @@ bool intel_display_reset_test(struct intel_display *display);
> >  void intel_display_reset_prepare(struct intel_display *display);
> >  void intel_display_reset_finish(struct intel_display *display, bool test_only);
> >  
> > +void intel_display_reset_debugfs_register(struct intel_display *display);
> > +
> >  #endif /* __INTEL_RESET_H__ */
> > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> > index 110fef511fe2..1a85dfe457f0 100644
> > --- a/drivers/gpu/drm/xe/Makefile
> > +++ b/drivers/gpu/drm/xe/Makefile
> > @@ -262,6 +262,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
> >  	i915-display/intel_display_power.o \
> >  	i915-display/intel_display_power_map.o \
> >  	i915-display/intel_display_power_well.o \
> > +	i915-display/intel_display_reset.o \
> >  	i915-display/intel_display_rpm.o \
> >  	i915-display/intel_display_rps.o \
> >  	i915-display/intel_display_trace.o \
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
