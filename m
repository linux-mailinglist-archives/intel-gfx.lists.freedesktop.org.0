Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E558BB99428
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 11:56:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7565510E6D7;
	Wed, 24 Sep 2025 09:56:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mrDb2PjZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 885FD10E6D8;
 Wed, 24 Sep 2025 09:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758707803; x=1790243803;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NMrBsXfSII1QWTHnh/rGw8CR80i4206V13AIqpXjlc0=;
 b=mrDb2PjZr6Z9hodAeJWzgxSJZMXdGUgx9lQEKv3p2IAGBChhSeOTlcvz
 eAqJ83lbFDZRwn5Wyuo+6TrR91trS0C6ItdlD0irfy+eD2iUhxDA9pIa8
 WU4TCY+BzZvUNgNMseP2xEZem4/hNivrhnTC2lZj914eLWQvNUYTNPdxV
 f+GUwz8/exrAIPjzs2vIW+XFJYqqi9oo+la3gDF4FqsIN12kY5tqHPP6d
 voi9dia60WhGDvg3dQmtMECAo4TaAn29FmgmMavhkenttkSQFpJxYTIQe
 kjmB6bi4Cs4W9TKHNmJ2a1+0djYV93/teubvLPiQuCcGPeSupM0JLwpvf A==;
X-CSE-ConnectionGUID: DVYDsJ5HQJuSuJQzYWvj0g==
X-CSE-MsgGUID: AmdcNnudTTKKXB5yVtNKfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="86442978"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="86442978"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 02:56:42 -0700
X-CSE-ConnectionGUID: QRFqIOnYT/axahSPHjSsaQ==
X-CSE-MsgGUID: xbQ4w9koTyCUORu2sKHFfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176285170"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.144])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 02:56:41 -0700
Date: Wed, 24 Sep 2025 12:56:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 06/20] drm/i915/cdclk: Extract dg2_power_well_count()
Message-ID: <aNPAVg9USFz9rf93@intel.com>
References: <20250923171943.7319-7-ville.syrjala@linux.intel.com>
 <20250924061602.2837-1-ville.syrjala@linux.intel.com>
 <30933726eb345cbf6ea9b1dcbfc0ad890d31e0d7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <30933726eb345cbf6ea9b1dcbfc0ad890d31e0d7@intel.com>
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

On Wed, Sep 24, 2025 at 12:05:56PM +0300, Jani Nikula wrote:
> On Wed, 24 Sep 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Extract the code to determine the DG2 pipe power well count
> > into a small helper. I'll have other uses for this later.
> >
> > TODO: need to move this power well stuff out from the cdclk code...
> >
> > v2: Don't lose the early return from intel_cdclk_pcode_pre_notify()
> >     (kernel test robot)
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 33 +++++++++++++---------
> >  1 file changed, 19 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 05d9f488895e..f190cfb85a34 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2591,6 +2591,12 @@ static void intel_set_cdclk(struct intel_display *display,
> >  	}
> >  }
> >  
> > +static bool dg2_power_well_count(struct intel_display *display,
> > +				 const struct intel_cdclk_state *cdclk_state)
> > +{
> > +	return display->platform.dg2 ? hweight8(cdclk_state->active_pipes) : 0;
> > +}
> > +
> >  static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
> >  {
> >  	struct intel_display *display = to_intel_display(state);
> > @@ -2603,16 +2609,16 @@ static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
> >  
> >  	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> >  				 &new_cdclk_state->actual) &&
> > -				 new_cdclk_state->active_pipes ==
> > -				 old_cdclk_state->active_pipes)
> > +	    dg2_power_well_count(display, old_cdclk_state) ==
> > +	    dg2_power_well_count(display, old_cdclk_state))
> 
> Both have old_cdclk_state, making this always true.

doh

> 
> Side note, perhaps the whole function should be renamed
> dg2_cdclk_pcode_pre_notify(), because the additional dg2 check in
> dg2_power_well_count() felt weird until I realized this is all dg2 only.

Yeah, the whole thing should really be moved out from the cdclk
code completely. This is essentially a variant of pmdemand,
just through the pcode mailbox instead of using dedicated
pmdemand registers (which internally will get sent over
to pcode anyway). But the actual pmdemand code is also borked
in various ways, so that too will need a lot of work :/

I can cook up a patch to rename these in the meantime.

-- 
Ville Syrjälä
Intel
