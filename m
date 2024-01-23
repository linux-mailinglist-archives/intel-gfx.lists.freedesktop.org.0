Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6F78389B0
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 09:53:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFCC310E0D5;
	Tue, 23 Jan 2024 08:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B19D010E0D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 08:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705999997; x=1737535997;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iWql9CBnYSlRbTVhWyEsheG6q51bqKTKNB0VfI1auPs=;
 b=EsrhBZeT5Shd3sWfoP88mBuQ29usWLwuJJmbJj8x0hrierwS3Ppa7PMy
 TFTY42lltk+aqxP08jmmwK/Tdgz2CGxPia1xKPEM+lOlYQhZWp7wdOUFz
 9bgWd0hHlRQjmSk0NzQD8Q5iASDI2qJ6zZCRFuORrdExCwxI5M8lnGJS9
 71TGBe8qTigBRAVREJK7Y/GFG0o1uiqR5FUgz5+iccs6jkaYPyF1pcpGQ
 6WiSxKuiwmdorMuXMY3mH+n/Db4BknquGoDIVBb9Kz6Own5Z7k09/wf2q
 6gh+490E972GbFm8//3fm0CdG3HwN3lPnw6vSvQi897wJgTBJZBmawhmy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="432618341"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; d="scan'208";a="432618341"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 00:53:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="820016245"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; d="scan'208";a="820016245"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 23 Jan 2024 00:53:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Jan 2024 10:53:12 +0200
Date: Tue, 23 Jan 2024 10:53:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915: Try to preserve the current shared_dpll for
 fastset on type-c ports
Message-ID: <Za9-eGDz8a0Pb92f@intel.com>
References: <20240118142436.25928-1-ville.syrjala@linux.intel.com>
 <SN7PR11MB6750086D0923AAE3C0356894E3752@SN7PR11MB6750.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SN7PR11MB6750086D0923AAE3C0356894E3752@SN7PR11MB6750.namprd11.prod.outlook.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 22, 2024 at 08:50:46AM +0000, Kandpal, Suraj wrote:
> > Subject: [PATCH] drm/i915: Try to preserve the current shared_dpll for fastset
> > on type-c ports
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Currently icl_compute_tc_phy_dplls() assumes that the active PLL will be the
> > TC PLL (as opposed to the TBT PLL). The actual PLL will be selected during the
> > modeset enable sequence, but we need to put *something* into the
> > crtc_state->shared_dpll already during compute_config().
> > 
> > The downside of assuming one PLL or the other is that we'll fail to fastset if the
> > assumption doesn't match what was in use previously. So let's instead keep
> > the same PLL that was in use previously (assuming there was one). This should
> > allow fastset to work again when using TBT PLL, at least in the steady state.
> > 
> > Now, assuming we want keep the same PLL may not be entirely correct either.
> > But we should be covered by the typ-c link reset handling which will force a full
> 
> Small typo *type-c
> 
> > modeset by flagging connectors_changed=true which means the resulting
> > modeset can't be converted into a fastset even if the full crtc state looks
> > identical.
> > 
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> LGTM.
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

I took that as Reviewed-by and pushed to drm-intel-next. Thanks.

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index ef57dad1a9cb..1008e18177c9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -3308,6 +3308,8 @@ static int icl_compute_tc_phy_dplls(struct
> > intel_atomic_state *state,
> >  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> >  	struct intel_crtc_state *crtc_state =
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > +	const struct intel_crtc_state *old_crtc_state =
> > +		intel_atomic_get_old_crtc_state(state, crtc);
> >  	struct icl_port_dpll *port_dpll =
> >  		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> >  	struct skl_wrpll_params pll_params = {}; @@ -3326,7 +3328,11 @@
> > static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
> >  		return ret;
> > 
> >  	/* this is mainly for the fastset check */
> > -	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
> > +	if (old_crtc_state->shared_dpll &&
> > +	    old_crtc_state->shared_dpll->info->id == DPLL_ID_ICL_TBTPLL)
> > +		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
> > +	else
> > +		icl_set_active_port_dpll(crtc_state,
> > ICL_PORT_DPLL_MG_PHY);
> > 
> >  	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(i915, NULL,
> >  							 &port_dpll-
> > >hw_state);
> > --
> > 2.41.0
> 

-- 
Ville Syrjälä
Intel
