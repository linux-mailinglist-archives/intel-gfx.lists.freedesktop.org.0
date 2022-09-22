Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E165E6754
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 17:40:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B9A810E3D1;
	Thu, 22 Sep 2022 15:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70AA610E3D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 15:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663861244; x=1695397244;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qpC8auilXRTEtDDKGCJe+ZtNXrhUAmXqrFBMXx690qQ=;
 b=SUwTag28slXOHdiaJSf4TkVovMWGLoF/LrMLhT9QuDv3nrdHThrICtzy
 cLp2LlI1eLONAG2c5LA4dBEqXrXl0whBP7j5IQ6LUYCSQQd6A5nkzhSyG
 eeyWqwbxtqZgHha2mnbtO0kT9XPUwS7StnFYSo5CSVLgpZb5TrLfvnxBe
 WMCbHZugjA7R90XA1DX7qTzSGxGGIx84D7gc/WTqG/22hs+Lgqw3SzFka
 TMA5uZe6Q1Wnoi0hd3JYjJDx2xrIZiZUtbMMGbO/RyDiS77B/fVgaQ/Hs
 KLLjKc0wsZlynuMpwC1guusZ6xdgqse2DMNybJaYe6GxV9JmWLUzFwvOG A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="283387917"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="283387917"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 08:40:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="723714140"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 22 Sep 2022 08:40:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Sep 2022 18:40:40 +0300
Date: Thu, 22 Sep 2022 18:40:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YyyB+Ak0ICkDk/2K@intel.com>
References: <20220921211525.10675-1-ville.syrjala@linux.intel.com>
 <20220921211525.10675-2-ville.syrjala@linux.intel.com>
 <87pmfn62re.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87pmfn62re.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Force DPLL calculation for TC
 ports after readout
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 22, 2022 at 02:56:53PM +0300, Jani Nikula wrote:
> On Thu, 22 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > We always allocate two DPLLs (TC and TBT) for TC ports. This
> > is because we can't know ahead of time wherher we need to put
> > the PHY into DP-Alt or TBT mode.
> >
> > However during readout we can obviously only read out the state
> > of the DPLL that the port is actually using. Thus the state after
> > readout will not have both DPLLs populated.
> >
> > We run into problems if during readout the TC port is in DP-Alt
> > mode, but we then perform a modeset on the port without going
> > through the full .compute_config() machinery, and during said
> > modeset the port cannot be switched back into DP-Alt mode and
> > we need to take the TBT fallback path. Such a modeset can
> > happen eg. due to cdclk reprogramming.
> >
> > This wasn't a problem earlier because we did all the DPLL
> > calculations much later in the modeset. So even if flagged
> > a modeset very late we'd still have gone through the DPLL
> > calculations. But now all the DPLL calculations happen much
> > earlier and so we need to deal with it, or else we'll attempt
> > a modeset without a DPLL.
> >
> > To guarantee that we always have both DPLLs fully cal/ulated
> > for TC ports force a full modeset computation during the
> > initial commit.
> >
> > Reported-by: Lee Shawn C <shawn.c.lee@intel.com>
> > Fixes: b000abd3b3d2 ("drm/i915: Do .crtc_compute_clock() earlier")
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 15 +++++++++++++--
> >  1 file changed, 13 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 643832d55c28..6278b8ea5bf1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3600,10 +3600,21 @@ static void intel_ddi_sync_state(struct intel_encoder *encoder,
> >  static bool intel_ddi_initial_fastset_check(struct intel_encoder *encoder,
> >  					    struct intel_crtc_state *crtc_state)
> >  {
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> > +	bool ret = true;
> > +
> > +	if (intel_phy_is_tc(i915, phy)) {
> > +		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset to compute TC port DPLLs\n",
> > +			    encoder->base.base.id, encoder->base.name);
> > +		crtc_state->uapi.mode_changed = true;
> > +		ret = false;
> > +	}
> > +
> >  	if (intel_crtc_has_dp_encoder(crtc_state))
> > -		return intel_dp_initial_fastset_check(encoder, crtc_state);
> > +		ret &= intel_dp_initial_fastset_check(encoder, crtc_state);
> 
> I think there have been static checker warnings about mixing bitwise and
> boolean AND like this. I guess there's implicit type conversion to int
> and back to bool.

I guess I could rewite it something like

if (intel_crtc_has_dp_encoder() &&
    !intel_dp_initial_fastset_check())
	ret = false;

Hmm. Maybe I should also use a better name than 'ret'.
The true vs. false polarity used here makes that a bit confusing
to me. So calling it 'fastset' or something would probably be better.

> 
> BR,
> Jani.
> 
> >  
> > -	return true;
> > +	return ret;
> >  }
> >  
> >  static enum intel_output_type
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
