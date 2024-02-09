Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D4484F518
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 13:18:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DA4910EBA4;
	Fri,  9 Feb 2024 12:18:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I2+hzrtZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4238510EBA4
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 12:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707481124; x=1739017124;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/5S4ywvKnE8cPvhJv5JuVK3MVWQnL4zhPThBu6vkJhI=;
 b=I2+hzrtZcMwhQ6UbhLEYDDmo1/AYNYi8UjgrgISy0MfUi1YIBMfSm+Ee
 jJJqeDT+Ik7PzEbiwQlKIciHDSMT12dXbHqOv0+fVRnzMM+6vnFP4S0Ef
 RwzgC+vKMaLAiVmYZ0dZqZK7GJ4ql80Zts/qP4bQHekYkovH2RtpLvEIt
 T9yOQf5Z9E+kL0G9ODwTTz8PjZs2PL2TTb/zR4HfJytmZO0q8ThUcW2xi
 Ar2RM4SBDHyaODmuIBPmLmEUMD1Z38c3+PiTUQKxpBeOUrcru0e4au7Gy
 9iw5kR/fmsllGFUjWfBEg1/FJy3Z/RgoWOE2WgFJU1MPKw6MDdR850FxW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1563420"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="1563420"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 04:18:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="825126661"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; d="scan'208";a="825126661"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 09 Feb 2024 04:18:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Feb 2024 14:18:39 +0200
Date: Fri, 9 Feb 2024 14:18:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/display: Force full modeset for eDP
Message-ID: <ZcYYHw85Kasgr48A@intel.com>
References: <20240206070937.197986-1-mika.kahola@intel.com>
 <20240206070937.197986-3-mika.kahola@intel.com>
 <87a5oaatws.fsf@intel.com>
 <MW4PR11MB7054254B4B9C319878D99FCBEF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZcYVTcvE4Z3mo88U@intel.com>
 <MW4PR11MB7054E5C5391F47516CA1B31BEF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <MW4PR11MB7054E5C5391F47516CA1B31BEF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
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

On Fri, Feb 09, 2024 at 12:13:02PM +0000, Kahola, Mika wrote:
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Friday, February 9, 2024 2:07 PM
> > To: Kahola, Mika <mika.kahola@intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>; intel-gfx@lists.freedesktop.org
> > Subject: Re: [PATCH 2/2] drm/i915/display: Force full modeset for eDP
> > 
> > On Fri, Feb 09, 2024 at 11:55:58AM +0000, Kahola, Mika wrote:
> > > > -----Original Message-----
> > > > From: Jani Nikula <jani.nikula@linux.intel.com>
> > > > Sent: Friday, February 9, 2024 11:06 AM
> > > > To: Kahola, Mika <mika.kahola@intel.com>;
> > > > intel-gfx@lists.freedesktop.org
> > > > Cc: Kahola, Mika <mika.kahola@intel.com>
> > > > Subject: Re: [PATCH 2/2] drm/i915/display: Force full modeset for
> > > > eDP
> > > >
> > > > On Tue, 06 Feb 2024, Mika Kahola <mika.kahola@intel.com> wrote:
> > > > > Force full modeset for eDP when booting up. GOP programs PLL
> > > > > parameters and hence, we would be able to use fastset for eDP.
> > > > > However, with fastset we are not setting PLL values from the
> > > > > driver and rely that GOP and driver PLL values match.
> > > > > We have discovered that with some of the panels this is not true
> > > > > and hence we would need to program PLL values by the driver. The
> > > > > patch suggests a workaround as enabling full modeset when booting
> > > > > up. This way we force the driver to write the PLL values to the hw.
> > > >
> > > > No. We want to avoid full modesets if possible, both in general and at probe.
> > > >
> > > > And when we do end up with modesets, the decision needs to be based
> > > > on changes in the state that we can't write to the hardware without a modeset.
> > > >
> > > > We can't unconditionally force a modeset on eDP panels at probe.
> > >
> > > Thanks! Just wondering what the options here might be? With fastest we end up having a mismatch with one PLL value with a
> > few panels.
> > 
> > You seem to be stuck in some infinite loop. If your PLL parameters are mismatching that should prevent the fastset, but then I
> > guess you added some hack to allow the fastset despite the mismatch, and now you're trying to undo that hack by blindly forcing a
> > full modeset?
> 
> That's right, I found myself to be between a rock and a hard place. I did discard the fastest but found out that we cannot do that.

If you discarded it then why are you not already getting the full
modeset you want?

> Here, another hack is introduced to force the full modeset to ensure that the driver programs these PLL values. As Jani already mentioned,  this is a no go option as well.
> 
> > 
> > >
> > > Should we try identify the panels and setup some sort of quirks for these problematic panels or what would be the best solution?
> > >
> > > -Mika-
> > >
> > > >
> > > >
> > > > BR,
> > > > Jani.
> > > >
> > > > >
> > > > > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++++
> > > > >  1 file changed, 13 insertions(+)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > index ab415f41924d..9699ded1eb5f 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > @@ -3319,6 +3319,7 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
> > > > >  	 * of crtc_state->dsc, we have no way to ensure reliable fastset.
> > > > >  	 * Remove once we have readout for DSC.
> > > > >  	 */
> > > > > +
> > > > >  	if (crtc_state->dsc.compression_enable) {
> > > > >  		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset due to DSC being enabled\n",
> > > > >  			    encoder->base.base.id, encoder->base.name); @@ -3326,6
> > > > > +3327,18 @@ bool intel_dp_initial_fastset_check(struct
> > > > > +intel_encoder *encoder,
> > > > >  		fastset = false;
> > > > >  	}
> > > > >
> > > > > +	/*
> > > > > +	 * FIXME hack to force full modeset for eDP as not always BIOS written PLL
> > > > > +	 * values does not match with the ones defined in the driver code
> > > > > +	 */
> > > > > +	if (!crtc_state->uapi.mode_changed &&
> > > > > +	    intel_dp_is_edp(intel_dp)) {
> > > > > +		drm_dbg_kms(&i915->drm, "Forcing full modeset for eDP\n");
> > > > > +		crtc_state->uapi.mode_changed = true;
> > > > > +		fastset = false;
> > > > > +	}
> > > > > +
> > > > > +
> > > > >  	return fastset;
> > > > >  }
> > > >
> > > > --
> > > > Jani Nikula, Intel
> > 
> > --
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
