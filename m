Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D80C18CD6A5
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 17:05:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F29B110EA8D;
	Thu, 23 May 2024 15:05:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FSdAryYr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5618F10EAB9
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 15:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716476746; x=1748012746;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=oeu8C+5Lvipl7MmWY1Eacb1pTTuUCY0w5G5GC2DzT7A=;
 b=FSdAryYrVMAq9lVGNvsrcv0omJAGNAX/Tg2z4exvdNAaC3ovi+om3ZEl
 bWZ1+8BnGmlnhr77/pPYJMfrNTuvTPidglnymEHB2pjtwyU+pNyXYB4sy
 Cpe6GSImthgjg6mOM0qoob4jR9lmJ1wBQ11jP8syBwlZ+Qgi8u4wuDjWF
 6pOvD5yrl3TYI6VeYd3XWdR2QE/Kdi8ySxXA3kb3bLbiT/+2uJoQORXZ3
 U0Ik+zqHQlReEaINiQJ4lm/WZoNAMS93G7CTEACCf9WvPE5gAUBwjIc1m
 +I6PychntdBmrY5MKXPLa5LQpopDIKSZMXg+SIUZCvoaoCSF6mb8yUGMS A==;
X-CSE-ConnectionGUID: RxqGdEUsSD2OU3CkadAzIg==
X-CSE-MsgGUID: lJeS3HtATyKZOKTVHANrPg==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="13032838"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="13032838"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 08:05:45 -0700
X-CSE-ConnectionGUID: 1dIOOyeFT9qS4t+F5nxK5Q==
X-CSE-MsgGUID: 7V3tXwAZRx6yoPjXyZweog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33674013"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 May 2024 08:05:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 May 2024 18:05:42 +0300
Date: Thu, 23 May 2024 18:05:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Imre Deak <imre.deak@gmail.com>
Subject: Re: [PATCH v2 09/21] drm/i915/dp: Pass atomic state to link training
 function
Message-ID: <Zk9bRqyAO65TCGa2@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-10-imre.deak@intel.com>
 <Zk9VjSQabtvW94Cn@intel.com>
 <Zk9XCIog87m339ik@ideak-desk.fi.intel.com>
 <Zk9YkraTFqoyXeJo@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zk9YkraTFqoyXeJo@intel.com>
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

On Thu, May 23, 2024 at 05:54:10PM +0300, Ville Syrjälä wrote:
> On Thu, May 23, 2024 at 05:47:36PM +0300, Imre Deak wrote:
> > On Thu, May 23, 2024 at 05:41:17PM +0300, Ville Syrjälä wrote:
> > > On Mon, May 20, 2024 at 09:58:07PM +0300, Imre Deak wrote:
> > > > From: Imre Deak <imre.deak@gmail.com>
> > > > 
> > > > The next patch adds sending a modeset-retry uevent after a link training
> > > > failure to all MST connectors on link. This requires the atomic state,
> > > > so pass it to intel_dp_start_link_train(). In case of SST where
> > > > retraining still happens by calling this function directly instead of a
> > > > modeset commit the atomic state is not available and NULL is passed
> > > > instead. This is ok, since in this case the encoder's only DP connector
> > > > is available from intel_dp->attached_connector not requiring the atomic
> > > > state.
> > > > 
> > > > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/g4x_dp.c                 | 2 +-
> > > >  drivers/gpu/drm/i915/display/intel_ddi.c              | 6 +++---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c               | 2 +-
> > > >  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 4 +++-
> > > >  drivers/gpu/drm/i915/display/intel_dp_link_training.h | 4 +++-
> > > >  5 files changed, 11 insertions(+), 7 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> > > > index 4363e32a834df..0d7424a7581e6 100644
> > > > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> > > > @@ -707,7 +707,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
> > > >  	intel_dp_configure_protocol_converter(intel_dp, pipe_config);
> > > >  	intel_dp_check_frl_training(intel_dp);
> > > >  	intel_dp_pcon_dsc_configure(intel_dp, pipe_config);
> > > > -	intel_dp_start_link_train(intel_dp, pipe_config);
> > > > +	intel_dp_start_link_train(state, intel_dp, pipe_config);
> > > >  	intel_dp_stop_link_train(intel_dp, pipe_config);
> > > >  }
> > > >  
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > index 86358ec27e685..58e57a7704811 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > @@ -2586,7 +2586,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
> > > >  	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
> > > >  	 *     (timeout after 800 us)
> > > >  	 */
> > > > -	intel_dp_start_link_train(intel_dp, crtc_state);
> > > > +	intel_dp_start_link_train(state, intel_dp, crtc_state);
> > > >  
> > > >  	/* 6.n Set DP_TP_CTL link training to Normal */
> > > >  	if (!is_trans_port_sync_mode(crtc_state))
> > > > @@ -2728,7 +2728,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
> > > >  	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
> > > >  	 *     (timeout after 800 us)
> > > >  	 */
> > > > -	intel_dp_start_link_train(intel_dp, crtc_state);
> > > > +	intel_dp_start_link_train(state, intel_dp, crtc_state);
> > > >  
> > > >  	/* 7.k Set DP_TP_CTL link training to Normal */
> > > >  	if (!is_trans_port_sync_mode(crtc_state))
> > > > @@ -2795,7 +2795,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
> > > >  						   to_intel_connector(conn_state->connector),
> > > >  						   crtc_state);
> > > >  	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
> > > > -	intel_dp_start_link_train(intel_dp, crtc_state);
> > > > +	intel_dp_start_link_train(state, intel_dp, crtc_state);
> > > >  	if ((port != PORT_A || DISPLAY_VER(dev_priv) >= 9) &&
> > > >  	    !is_trans_port_sync_mode(crtc_state))
> > > >  		intel_dp_stop_link_train(intel_dp, crtc_state);
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 7c824c5a13346..1f0b7cceea2dc 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -5214,7 +5214,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
> > > >  
> > > >  		intel_dp_check_frl_training(intel_dp);
> > > >  		intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
> > > > -		intel_dp_start_link_train(intel_dp, crtc_state);
> > > > +		intel_dp_start_link_train(NULL, intel_dp, crtc_state);
> > > 
> > > I was going to suggest s/crtc_state/crtc/ for this, but the state==NULL
> > > definitiely makes that impossible. I think we need to document each and
> > > every function where the atomic state may be NULL and thus needs to be
> > > passed the crtc_state as well. Otherwise someone (probably me) is likely
> > > going to attempt some cleanups which will then explode, or someone will
> > > just attempt to dig out something from the full atomic state (eg.
> > > state->base.dev).
> > 
> > This is meant to be a temporary solution, for maybe a few weeks after
> > this gets merged after which retraining should be switched over to be a
> > modeset in all cases; but agreed it's better to document that in
> > intel_dp_start_link_train(), will add that.
> 
> The documentation should go all the way to the bottom IMO.
> Anything that gets passed the state by this guy can now also
> end up with state==NULL.

Hmm. Is there some could_be_null(state) trick we could use to tell the
compiler/static analyzers that this indeed may be NULL? Would
essentially need some kind of nop NULL check I suppose.

-- 
Ville Syrjälä
Intel
