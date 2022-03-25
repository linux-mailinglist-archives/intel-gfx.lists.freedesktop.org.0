Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF444E7A2C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 19:06:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59D910E765;
	Fri, 25 Mar 2022 18:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29FD110E765
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648231585; x=1679767585;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BIpzi8NQkJiCAdtKkuBdhTkO+RW3tZwmiCAj7nmniUQ=;
 b=AQrigXzkBmJ1X09cZVwrnbXanXESekxO50zF1QaHmvBW6NWCDBDtM7bU
 XYprqjqybvwNOH/10R6MSv8tMNKqH9h21f5mUw2KpqB9YO+NZ5iqPHJBz
 zSj4q6Cmc64wxmU8Cpasme7PTkr0rdOzNdA7XnoPrVEDsL4avFjIUOM6p
 /82MODsMkdV2+qoHhH3N6HTOitu3rNUwv5zaPCGX0zw3VupvUahb16xeq
 V0lGYYh00SYRoCb8eHY3HnVZ3TfnNwJewpTWxEVyICp9zkMAfQr+Nws2n
 SVIF2O06kun1pFIDa+epzOoqPtFSKH4BckXZpDvhMzfgka2TURDbGNkBc Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10297"; a="257517798"
X-IronPort-AV: E=Sophos;i="5.90,211,1643702400"; d="scan'208";a="257517798"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 11:06:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,211,1643702400"; d="scan'208";a="638294353"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by FMSMGA003.fm.intel.com with SMTP; 25 Mar 2022 11:06:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Mar 2022 20:06:21 +0200
Date: Fri, 25 Mar 2022 20:06:21 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <Yj4Enb2O9PKwAM75@intel.com>
References: <20220322214616.160640-1-jose.souza@intel.com>
 <20220322214616.160640-3-jose.souza@intel.com>
 <YjxWPf9gjpH1yNA9@intel.com>
 <07d6d22e699a9aa0b3c60cce76f711bd578b620a.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <07d6d22e699a9aa0b3c60cce76f711bd578b620a.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/display/adlp: Fix
 programing of PIPE_MBUS_DBOX_CTL
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

On Thu, Mar 24, 2022 at 12:58:32PM +0000, Souza, Jose wrote:
> On Thu, 2022-03-24 at 13:30 +0200, Ville Syrjälä wrote:
> > On Tue, Mar 22, 2022 at 02:46:15PM -0700, José Roberto de Souza wrote:
> > > PIPE_MBUS_DBOX_CTL was only being programmed when a pipe is being
> > > enabled but that could potentially cause issues as it could have
> > > mismatching values while pipes are being enabled.
> > > 
> > > So here moving the PIPE_MBUS_DBOX_CTL programming of all pipes to be
> > > executed before the function that enables all pipes, leaving all pipes
> > > with a matching A_CREDIT value.
> > > 
> > > While at it, also moving it to intel_pm.c as we are trying to reduce
> > > the gigantic size of it and intel_pm.c have other MBUS programing
> > > sequences.
> > > 
> > > v2:
> > > - do not program PIPE_MBUS_DBOX_CTL if pipe will not be active or
> > > when it do not needs modeset
> > > - remove the checks to wait a vblank
> > > 
> > > BSpec: 49213
> > > BSpec: 50343
> > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 37 +--------------
> > >  drivers/gpu/drm/i915/intel_pm.c              | 47 ++++++++++++++++++++
> > >  drivers/gpu/drm/i915/intel_pm.h              |  1 +
> > >  3 files changed, 49 insertions(+), 36 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 424cd7e9afe60..ef5076b5e7027 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -1824,35 +1824,6 @@ static void glk_pipe_scaler_clock_gating_wa(struct drm_i915_private *dev_priv,
> > >  	intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe), val);
> > >  }
> > >  
> > > -static void icl_pipe_mbus_enable(struct intel_crtc *crtc, bool joined_mbus)
> > > -{
> > > -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > > -	enum pipe pipe = crtc->pipe;
> > > -	u32 val;
> > > -
> > > -	val = intel_de_read(dev_priv, PIPE_MBUS_DBOX_CTL(pipe));
> > > -	val &= ~MBUS_DBOX_A_CREDIT_MASK;
> > > -	/* Wa_22010947358:adl-p */
> > > -	if (IS_ALDERLAKE_P(dev_priv))
> > > -		val |= joined_mbus ? MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
> > > -	else
> > > -		val |= MBUS_DBOX_A_CREDIT(2);
> > > -
> > > -	val &= ~(MBUS_DBOX_BW_CREDIT_MASK | MBUS_DBOX_B_CREDIT_MASK);
> > > -	if (IS_ALDERLAKE_P(dev_priv)) {
> > > -		val |= MBUS_DBOX_BW_CREDIT(2);
> > > -		val |= MBUS_DBOX_B_CREDIT(8);
> > > -	} else if (DISPLAY_VER(dev_priv) >= 12) {
> > > -		val |= MBUS_DBOX_BW_CREDIT(2);
> > > -		val |= MBUS_DBOX_B_CREDIT(12);
> > > -	} else {
> > > -		val |= MBUS_DBOX_BW_CREDIT(1);
> > > -		val |= MBUS_DBOX_B_CREDIT(8);
> > > -	}
> > > -
> > > -	intel_de_write(dev_priv, PIPE_MBUS_DBOX_CTL(pipe), val);
> > > -}
> > > -
> > >  static void hsw_set_linetime_wm(const struct intel_crtc_state *crtc_state)
> > >  {
> > >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > > @@ -1988,13 +1959,6 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
> > >  
> > >  	intel_initial_watermarks(state, crtc);
> > >  
> > > -	if (DISPLAY_VER(dev_priv) >= 11) {
> > > -		const struct intel_dbuf_state *dbuf_state =
> > > -				intel_atomic_get_new_dbuf_state(state);
> > > -
> > > -		icl_pipe_mbus_enable(crtc, dbuf_state->joined_mbus);
> > > -	}
> > > -
> > >  	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> > >  		intel_crtc_vblank_on(new_crtc_state);
> > >  
> > > @@ -8599,6 +8563,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
> > >  	intel_encoders_update_prepare(state);
> > >  
> > >  	intel_dbuf_pre_plane_update(state);
> > > +	intel_mbus_dbox_update(state);
> > >  
> > >  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> > >  		if (new_crtc_state->do_async_flip)
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > index e60c02d760ffa..cf290bb704221 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -8258,3 +8258,50 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
> > >  	gen9_dbuf_slices_update(dev_priv,
> > >  				new_dbuf_state->enabled_slices);
> > >  }
> > > +
> > > +void intel_mbus_dbox_update(struct intel_atomic_state *state)
> > > +{
> > > +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> > > +	struct intel_crtc_state *new_crtc_state;
> > > +	struct intel_dbuf_state *new_dbuf_state;
> > > +	struct intel_crtc *crtc;
> > > +	int i;
> > > +
> > > +	if (DISPLAY_VER(i915) < 11 || !state->modeset)
> > > +		return;
> > > +
> > > +	if (HAS_MBUS_JOINING(i915))
> > > +		new_dbuf_state = intel_atomic_get_dbuf_state(state);
> > > +
> > > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> > > +		u32 val;
> > > +
> > > +		if (!new_crtc_state->hw.active ||
> > > +		    !intel_crtc_needs_modeset(new_crtc_state))
> > > +			continue;
> > > +
> > > +		val = intel_de_read(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe));
> > > +		val &= ~MBUS_DBOX_A_CREDIT_MASK;
> > > +		/* Wa_22010947358:adl-p */
> > > +		if (IS_ALDERLAKE_P(i915))
> > > +			val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
> > > +							     MBUS_DBOX_A_CREDIT(4);
> > 
> > Hmm. I'm not super happy with the assumption that the dbuf state
> > is there. When reading this it's not immediately obvious why this
> > works.
> 
> If there is a modeset it is guarantee that dbuf state will be present in state:

Only if we had some crtcs in the state prior to the ddb computation.
That seems like a very fragile and non-obvious thing to rely on.

I can't even immediately say whether there might already be some way
to get past the ddb calculation w/o any crtcs, and then something else
(cdclk/bw/etc.) adds a bunch of crtcs into the state.

So this kind of magic coupling between the difference states is not
a great idea if the aim is to keep the code obviously correct.

-- 
Ville Syrjälä
Intel
