Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CE73DF80D
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 00:40:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91C976E0FD;
	Tue,  3 Aug 2021 22:40:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C59CF6E0FD
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Aug 2021 22:40:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="213836903"
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="213836903"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 15:40:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="502587270"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 15:40:00 -0700
Date: Tue, 3 Aug 2021 15:39:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <20210803223959.GA1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210708211827.288601-1-jose.souza@intel.com>
 <20210708211827.288601-6-jose.souza@intel.com>
 <20210710054122.GS951094@mdroper-desk1.amr.corp.intel.com>
 <0bf83b6054ba81b387ea97b6dbbe2eba74677cd1.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0bf83b6054ba81b387ea97b6dbbe2eba74677cd1.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/display/adl_p: Correctly
 program MBUS DBOX A credits
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

On Tue, Aug 03, 2021 at 01:19:12PM -0700, Souza, Jose wrote:
> On Fri, 2021-07-09 at 22:41 -0700, Matt Roper wrote:
> > On Thu, Jul 08, 2021 at 02:18:26PM -0700, José Roberto de Souza wrote:
> > > Alderlake-P have different values for MBUS DBOX A credits depending
> > > if MBUS join is enabled or not.
> > > 
> > > BSpec: 50343
> > > BSpec: 54369
> > > Cc: Matt Atwood <matthew.s.atwood@intel.com>
> > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++----
> > >  1 file changed, 12 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 65ddb6ca16e67..fe380896eb99e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -3400,13 +3400,17 @@ static void glk_pipe_scaler_clock_gating_wa(struct drm_i915_private *dev_priv,
> > >  	intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe), val);
> > >  }
> > >  
> > > -static void icl_pipe_mbus_enable(struct intel_crtc *crtc)
> > > +static void icl_pipe_mbus_enable(struct intel_crtc *crtc, bool joined_mbus)
> > >  {
> > >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > >  	enum pipe pipe = crtc->pipe;
> > >  	u32 val;
> > >  
> > > -	val = MBUS_DBOX_A_CREDIT(2);
> > > +	/* Wa_22010947358:adl-p */
> > > +	if (IS_ALDERLAKE_P(dev_priv))
> > > +		val = joined_mbus ? MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
> > > +	else
> > > +		val = MBUS_DBOX_A_CREDIT(2);
> > 
> > If we're in single-pipe / joined-mbus mode, then we'll program the
> > credits to 6.  If we later turn on another pipe, reallocate the DDB, and
> > turn off joined-mbus mode, we'll set that other pipe's credits to 4
> > during the sequence of hsw_crtc_enable() -> icl_pipe_mbus_enable().  But
> > don't we also need to go back re-program the credits down to 4 on the
> > first pipe too (which is already enabled and won't be re-calling
> > hsw_crtc_enable())?
> > 
> > I might be missing something; it's been a while since I really looked at
> > any of the dbuf stuff...
> 
> skl_compute_ddb() is handling this cases, it will force a modeset in all pipes in cases like this.
> 

Ah, that's right.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> > 
> > 
> > Matt
> > 
> > >  
> > >  	if (DISPLAY_VER(dev_priv) >= 12) {
> > >  		val |= MBUS_DBOX_BW_CREDIT(2);
> > > @@ -3561,8 +3565,12 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
> > >  	if (dev_priv->display.initial_watermarks)
> > >  		dev_priv->display.initial_watermarks(state, crtc);
> > >  
> > > -	if (DISPLAY_VER(dev_priv) >= 11)
> > > -		icl_pipe_mbus_enable(crtc);
> > > +	if (DISPLAY_VER(dev_priv) >= 11) {
> > > +		const struct intel_dbuf_state *dbuf_state =
> > > +				intel_atomic_get_new_dbuf_state(state);
> > > +
> > > +		icl_pipe_mbus_enable(crtc, dbuf_state->joined_mbus);
> > > +	}
> > >  
> > >  	if (new_crtc_state->bigjoiner_slave)
> > >  		intel_crtc_vblank_on(new_crtc_state);
> > > -- 
> > > 2.32.0
> > > 
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > 
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
