Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D5941D494
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 09:33:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE25E6E342;
	Thu, 30 Sep 2021 07:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 850166E342
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 07:33:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="212204174"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="212204174"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 00:33:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="555553166"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 30 Sep 2021 00:33:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Sep 2021 10:33:26 +0300
Date: Thu, 30 Sep 2021 10:33:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YVVoRsOGI/RoUMFf@intel.com>
References: <20210927182455.27119-1-ville.syrjala@linux.intel.com>
 <20210927182455.27119-3-ville.syrjala@linux.intel.com>
 <20210929191752.GC2192289@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210929191752.GC2192289@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915: Generalize
 .set_signal_levels()
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

On Wed, Sep 29, 2021 at 10:17:52PM +0300, Imre Deak wrote:
> On Mon, Sep 27, 2021 at 09:24:48PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Currently .set_signal_levels() is only used by encoders in DP mode.
> > For most modern platforms there is no essential difference between
> > DP and HDMI, and both codepaths just end up calling the same function
> > under the hood. Let's get remove the need for that extra indirection
> > by moving .set_signal_levels() into the encoder from intel_dp.
> > Since we already plumb the crtc_state/etc. into .set_signal_levels()
> > the code will do the right thing for both DP and HDMI.
> 
> I wondered about the rational to add vfuncs to intel_digital_port or
> intel_encoder, I assume the latter needs less type casting.

I guess it's mostly been "do these make sense outside of HDMI/DP?".
But considering those are all mostly what's left it's becoming 
less importnat perhaps.

I was actually pondering if we migth split these up in to
a few different sets of vfuncs. So and encoder could have
pointers to phy_funcs, hpd_funcs, clock_funcs, etc.

> 
> > HSW/BDW/SKL are the only platforms that need a bit of care on
> > account of having to preload the hardware buf_trans register
> > with the full set of values. So we must still remember to call
> > hsw_prepare_{dp,hdmi}_ddi_buffers() to do said preloading, and
> > .set_signal_levels() will just end up selecting the correct entry
> > for DP, and also setting up the iboost magic for both DP and HDMI.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/g4x_dp.c         |  33 +++---
> >  drivers/gpu/drm/i915/display/intel_ddi.c      | 108 +++++++++---------
> >  .../drm/i915/display/intel_display_types.h    |   5 +-
> >  .../drm/i915/display/intel_dp_link_training.c |   5 +-
> >  4 files changed, 75 insertions(+), 76 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> > index 8e0620ae2ed1..e348f075a41d 100644
> > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
<snip>
> > @@ -1364,15 +1367,15 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
> >  		dig_port->dp.set_link_train = g4x_set_link_train;
> >  
> >  	if (IS_CHERRYVIEW(dev_priv))
> > -		dig_port->dp.set_signal_levels = chv_set_signal_levels;
> > +		intel_encoder->set_signal_levels = chv_set_signal_levels;
> >  	else if (IS_VALLEYVIEW(dev_priv))
> > -		dig_port->dp.set_signal_levels = vlv_set_signal_levels;
> > +		intel_encoder->set_signal_levels = vlv_set_signal_levels;
> 
> I suppose vlv,chv hdmi encoders could also use these, but that'd need deciphering
> the hard-coded values there.

My current plan is to extrct a buf_trans struct for each, and for now
I just populate an array of those and pass the array to the phy code.
In the future we might want to unify these with the rest of the
buf_trans infrastructure.

I was also pondering if we should just move the set_signal_level() funcs
from intel_ddi.c to some phy specific files entirely. And could perhaps
also move the related buf_trans tables there as well...

> 
> >  	else if (IS_IVYBRIDGE(dev_priv) && port == PORT_A)
> > -		dig_port->dp.set_signal_levels = ivb_cpu_edp_set_signal_levels;
> > +		intel_encoder->set_signal_levels = ivb_cpu_edp_set_signal_levels;
> >  	else if (IS_SANDYBRIDGE(dev_priv) && port == PORT_A)
> > -		dig_port->dp.set_signal_levels = snb_cpu_edp_set_signal_levels;
> > +		intel_encoder->set_signal_levels = snb_cpu_edp_set_signal_levels;
> >  	else
> > -		dig_port->dp.set_signal_levels = g4x_set_signal_levels;
> > +		intel_encoder->set_signal_levels = g4x_set_signal_levels;
> >  
> >  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv) ||
> >  	    (HAS_PCH_SPLIT(dev_priv) && port != PORT_A)) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 39bacef87ef2..4a22dcde66d9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
<snip>
> > @@ -2639,13 +2644,12 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
> >  
> >  	icl_program_mg_dp_mode(dig_port, crtc_state);
> >  
> > -	if (DISPLAY_VER(dev_priv) >= 11)
> > -		icl_ddi_vswing_sequence(encoder, crtc_state, level);
> > -	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> > -		bxt_ddi_vswing_sequence(encoder, crtc_state, level);
> > -	else
> > +	if ((DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv)) ||
> > +	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> 
> Could be DISPLAY_VER <= 9 && !IS_BXT ?

I guess I've become a bit partial to listing things a bit
more explicitly. But I must admit that this is a bit ugly in my
proposed form. So changing it might be a good idea.

> 
> >  		hsw_prepare_dp_ddi_buffers(encoder, crtc_state);
> >  
> > +	encoder->set_signal_levels(encoder, crtc_state);
> 
> hsw_set_signal_levels() wasn't called before, but writing DDI_BUF_CTL
> w/o enabling it is ok I think.

Ah right. Hmm. We haven't yet called intel_ddi_init_dp_buf_reg() so
this might go a bit wrong actually. So I think I need to reorder the
calls a bit and nuke the DDI_BUF_CTL_ENABLE from
intel_ddi_init_dp_buf_reg(). intel_ddi_prepare_link_retrain() already
sets that bit so it should kick in properly during link training.
But I'll have to double check the full flow to make sure I uderstand
the order of things.

> Maybe it's worth zeroing
> intel_dp->train_set already in intel_dp_set_link_params()?

I had a patch for that, but for some reason discarded it as
"not needed". But now that I think about it again we should
in fact do it because currently we only clear these at the
start of training a link segment, and what we leave in there
at the end will be the DPRX values. So the next modeset might
do the initial set_signal_levels() with stale values that don't
even make sense for our PHY (eg. if we had a case of LTTPR
supporting vswing/preemph 3 and our PHY not supporting those).
And considering we'll switch to vswing/preemph 0 anyway at
the start of the link training might as well program the PHY
accordingly from the start.

If we wanted to optimize things and reuse the values from the
last succesful link training I think we'd also have to store
these separately for LTTPRs, and we'd have to adjust the link
training code to not zero the stuff (unless there was a long 
hpd/etc.).

-- 
Ville Syrjälä
Intel
