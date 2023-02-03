Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9E9689732
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 11:46:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A5EB10E762;
	Fri,  3 Feb 2023 10:46:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85BCE10E762
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 10:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675421177; x=1706957177;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FP9BsxSeK+/3iifwqLuExcFRg/ieQH0bOY54WF/9s4s=;
 b=LNMM93tpKg4iH/BQDEUS9MIpen2oPFAQBznd7jUHwMrdQPfQV+trOWTI
 dEnpPM2aDotJR8P+fx7TD4lhYpLOCVpRwfR4d2W1vOJLn4cEwFuCO259h
 3HsIwylwfBU+TGhXXgNmK6tw9ki0LI8jIVUoLxMbp69CsKCSBVT4dMOgI
 54GEFG682t9Jc1+7fGGUYDFX/Z7Z2jA7g2OuswbMmTpBV5bWrkL3wuhhH
 962OSOyPEN9ffmgVz8v7VF2ydfUSIWtQdL9/ef08v+VZWSoUgk/GyDHfO
 mJvD0jzeXvXnei+er5pZJ3rlg8dk1tTStJRy5HaZvyOM9fF4ku4Shvh7t A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="391113679"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="391113679"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 02:46:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="839579293"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="839579293"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga005.jf.intel.com with SMTP; 03 Feb 2023 02:46:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Feb 2023 12:46:13 +0200
Date: Fri, 3 Feb 2023 12:46:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <Y9zl9YewCmMIm03z@intel.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
 <20230118163040.29808-10-ville.syrjala@linux.intel.com>
 <PH7PR11MB59817DD854320014E9166729F9D79@PH7PR11MB5981.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH7PR11MB59817DD854320014E9166729F9D79@PH7PR11MB5981.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915/dsb: Don't use DSB to load
 the LUTs during full modeset
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 03, 2023 at 10:04:17AM +0000, Manna, Animesh wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Wednesday, January 18, 2023 10:01 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 09/13] drm/i915/dsb: Don't use DSB to load the
> > LUTs during full modeset
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Using the DSB for LUT loading during full modesets would require some
> > actual though. Let's just use mmio for the time being.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > b/drivers/gpu/drm/i915/display/intel_color.c
> > index f4a527a3c265..cab8dfd03853 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -1383,6 +1383,10 @@ void intel_color_prepare_commit(struct
> > intel_crtc_state *crtc_state)
> >  	/* FIXME DSB has issues loading LUTs, disable it for now */
> >  	return;
> > 
> > +	if (!crtc_state->hw.active ||
> > +	    intel_crtc_needs_modeset(crtc_state))
> > +		return;
> 
> Is it causing any issue ? Did not get the advantage of MMIO over DSB during modeset.

Integrating DSB usage into the modeset path would require actual
thought.

-- 
Ville Syrjälä
Intel
