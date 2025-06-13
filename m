Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D38AD8EB7
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 16:09:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF68110E9C9;
	Fri, 13 Jun 2025 14:09:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P4XL6EP1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9DB610E9D6;
 Fri, 13 Jun 2025 14:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749823779; x=1781359779;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=a1J5uJb0F4JtqlAuqMQh+yhB/bFZcLNS1pJSPI+eAHI=;
 b=P4XL6EP1U89qpBZwFCPAergwOzXFWZzEytBam4YX0y8MBBvWGcmmqI+/
 OAXmZZCOZjUU46kLhiy2MNfgWiTG8QqYPODKONv8Vx/RP0Cvv7ihmIXXS
 FDAIIRX3tuRcnxnt8k/I8uviD4xcnVlVx60nS8eP8ie0L10JL6jvmGw0s
 Brt1gp/kZfHSd/5sXSaM5g6wqioEnt3AqtrdZZYsO8U9eQ/6CEa6gb4pM
 pz6nQW2ZRA5Z6Ik5Lv5cW7hrdBVdKpY41mV53jrup3DcWJFkh+9Mt8mAv
 IOdD3JtcbN/TyWvPeIBI+P/s+uSczMGxIO3KrtG87bVCn2G9C4mRQcYa/ w==;
X-CSE-ConnectionGUID: z2dWD8FsT5WWmkdscYjzAw==
X-CSE-MsgGUID: HE/sDlJiTR6X/bG7ZSCVMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11463"; a="51758811"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="51758811"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 07:09:38 -0700
X-CSE-ConnectionGUID: r8qTmlu/S5KZWcvlzszePA==
X-CSE-MsgGUID: mbTlLxkpS4yiW+Cp7F7XPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="153128372"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.161])
 by orviesa005.jf.intel.com with SMTP; 13 Jun 2025 07:09:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Jun 2025 17:09:35 +0300
Date: Fri, 13 Jun 2025 17:09:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/9] drm/i915/dmc: Reload pipe DMC state on TGL when
 enabling pipe A
Message-ID: <aEwxH9iOmOkGGiOo@intel.com>
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
 <20250611155241.24191-6-ville.syrjala@linux.intel.com>
 <DM4PR11MB6360BEA3323D523E9F2E856BF474A@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB6360BEA3323D523E9F2E856BF474A@DM4PR11MB6360.namprd11.prod.outlook.com>
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

On Thu, Jun 12, 2025 at 08:32:16PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Wednesday, June 11, 2025 9:23 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org
> > Subject: [PATCH 5/9] drm/i915/dmc: Reload pipe DMC state on TGL when
> > enabling pipe A
> 
> I guess its applicable for all pipes and not just limited to A.

Only pipe A has a DMC on these platforms.

> 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On TGL/derivatives the entire pipe DMC state (program + MMIO) is lost when
> > PG1 is disabled, and the main DMC does not restore any of it. Reload the state
> > when enabling a pipe.
> 
> It is just the TGL or any other platforms affected ?
> Current change looks fine though.
> 
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> 
> > The other option would be to not load the pipe DMC at all since it's only needed for
> > "fast LACE" (which we don't use) on these platforms. But let's keep it around just
> > in case we ever decide that "fast LACE" is something we want.
> 
> I agree, it's good to keep it.
> 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 331db28039db..fd99c4645260 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -599,6 +599,12 @@ static void dmc_load_program(struct intel_display
> > *display,
> >  	}
> >  }
> > 
> > +static bool need_pipedmc_load_program(struct intel_display *display) {
> > +	/* On TGL/derivatives pipe DMC state is lost when PG1 is disabled */
> > +	return DISPLAY_VER(display) == 12;
> > +}
> > +
> >  void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)  {
> >  	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe); @@ -606,6 +612,9
> > @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
> >  	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
> >  		return;
> > 
> > +	if (need_pipedmc_load_program(display))
> > +		dmc_load_program(display, dmc_id);
> > +
> >  	if (DISPLAY_VER(display) >= 20) {
> >  		intel_de_write(display, PIPEDMC_INTERRUPT(pipe),
> > pipedmc_interrupt_mask(display));
> >  		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe),
> > ~pipedmc_interrupt_mask(display));
> > --
> > 2.49.0
> 

-- 
Ville Syrjälä
Intel
