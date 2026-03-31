Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCLuDL+fy2loJgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 12:19:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CD3367CEA
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 12:19:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37F0710E905;
	Tue, 31 Mar 2026 10:19:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WcPY/1+0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8010510E905;
 Tue, 31 Mar 2026 10:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774952381; x=1806488381;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0CqLQulycl6ub3BKI2WyyXy1Bq5+fOPJSeHqGMIAWYk=;
 b=WcPY/1+0zbx62gCzCVDxnAUxYZNmVYaK15BMVykDpIDT7o3cLbi1yQ5T
 FAnLWmNIG0TNG82GDYWMuXQ+M4PraBcdUPyzWBgfD2at87kIwxvdGO5no
 Dnfdl+/aKScOoTOeEqmNUyAxliL0xsQUKHwhFSmr4XHNhShNUTiYse/r3
 gx1ayszf1n5lhQVW00krdGZBLI4Q3A5YBxnFhH07hYg3etF7N8uNMKChL
 UMESKSHG6J63QjslWDK2WZwEF5pU5JhENHdJ4X587hJnTcqnudQ9iA/py
 9DOOAGwBd74c86IsxoMgt5oz6hkA37EIZKQJ/jkOjtrk9dawBHzXbw260 A==;
X-CSE-ConnectionGUID: 3yHmbihuTr+4ANH5xRvcNA==
X-CSE-MsgGUID: Ka1XtwaZTc29IpTt4dQP3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75847663"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="75847663"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 03:19:40 -0700
X-CSE-ConnectionGUID: xZDCCDZuQRaHxyJeuXwqLg==
X-CSE-MsgGUID: 5Osby3SDTbOYiei9Ryb+Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="230797138"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 03:19:38 -0700
Date: Tue, 31 Mar 2026 13:19:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>
Cc: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com
Subject: Re: [PATCH 6/8] drm/i915/display: move HSW and BDW clock gating init
 to display
Message-ID: <acuftvIa8GY4i57d@intel.com>
References: <20260324143420.310800-1-luciano.coelho@intel.com>
 <20260324143420.310800-7-luciano.coelho@intel.com>
 <acK9lVDxOV_hXPiN@intel.com>
 <d916a82d01456ede8a080484998b74af19286df5.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d916a82d01456ede8a080484998b74af19286df5.camel@coelho.fi>
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
X-Spamd-Result: default: False [-0.78 / 15.00];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: A5CD3367CEA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 31, 2026 at 01:03:42PM +0300, Luca Coelho wrote:
> On Tue, 2026-03-24 at 18:36 +0200, Ville Syrjälä wrote:
> > On Tue, Mar 24, 2026 at 04:29:55PM +0200, Luca Coelho wrote:
> > > Move the HSW and BDW display clock gating programming into the display
> > > code.  In this case we need two different helpers, because the common
> > > code between these two is split in the middle.
> > > 
> > > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > > ---
> > >  .../i915/display/intel_display_clock_gating.c | 33 +++++++++++++++++++
> > >  .../i915/display/intel_display_clock_gating.h |  6 ++++
> > >  drivers/gpu/drm/i915/intel_clock_gating.c     | 31 +++--------------
> > >  3 files changed, 43 insertions(+), 27 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> > > index e3b7522b4101..0b2edf6acb79 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> > > @@ -123,3 +123,36 @@ void intel_display_glk_init_clock_gating(struct intel_display *display)
> > >  		       intel_de_read(display, GEN9_CLKGATE_DIS_0) |
> > >  		       PWM1_GATING_DIS | PWM2_GATING_DIS);
> > >  }
> > > +
> > > +static void
> > > +intel_display_hsw_init_clock_gating_common(struct intel_display *display,
> > > +					   u32 unmask_vbl)
> > 
> > Passing that as a parameter feels a bit obfuscated.
> > 
> > > +{
> > > +	enum pipe pipe;
> > > +
> > > +	/* WaPsrDPAMaskVBlankInSRD:hsw */
> > > +	intel_de_rmw(display, CHICKEN_PAR1_1, 0, HSW_MASK_VBL_TO_PIPE_IN_SRD);
> > > +
> > > +	for_each_pipe(display, pipe) {
> > > +		/* WaPsrDPRSUnmaskVBlankInSRD:hsw,bdw */
> > > +		intel_de_rmw(display, CHICKEN_PIPESL_1(pipe), 0, unmask_vbl);
> > 
> > If we want to share the function then I'd probably just do
> > a platform check here.
> 
> True, I'll skip passing it and just add the platform check in this
> function.
> 
> 
> > 
> > > +	}
> > > +}
> > > +
> > > +void intel_display_bdw_hsw_init_clock_gating(struct intel_display *display)
> > > +{
> > > +	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
> > > +	intel_de_rmw(display, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
> > > +}
> > 
> > Why do we have two different functions that shared by
> > both platforms?
> 
> It's because for BDW there is this one in between the two common calls:
> 
> 	/* WaSwitchSolVfFArbitrationPriority:bdw */
> 	intel_uncore_rmw(&i915->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
> 
> ...this is probably independent from the other two and it may be okay
> to move it before the common code, but I wanted to avoid that.
> 
> Do you think it's safe to change the order from:
> 
> 1. CHICKEN_PIPESL_1
> 2. GAM_ECOCHK
> 3. CHICKEN_PAR1_1
> 
> ...to this?
> 
> 1. GAM_ECOCHK
> 2. CHICKEN_PIPESL_1
> 3. CHICKEN_PAR1_1
> 
> If that's the case, then it can be simplified.

There shouldn't be any ordering requirements here. But if you're
a it paranoid then you could do the reordering as a separate
step, just in case someone has to bisect it.

-- 
Ville Syrjälä
Intel
