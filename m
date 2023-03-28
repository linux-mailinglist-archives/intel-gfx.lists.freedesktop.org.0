Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2166CBDFA
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 13:40:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 885CC10E033;
	Tue, 28 Mar 2023 11:40:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C9F10E033
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 11:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680003622; x=1711539622;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dtlm1xLr2OKlaek7xFSpQPcD7zn8mdQLlZA4VIr/mBk=;
 b=RXDPb9z0MGPmJY0fs2MgwP3hfiYpkBRJkxWpMV3NAQlgOfemhCmHxVbF
 w3AjDP1aTAIzrwOSFj9ltanBd8W2A/qZaJ33lbxnWNrzicz29M6BzyMLV
 ghjOQ15yscXUyEiKKEyYwBSPwHn2BqA61lIxH9kJrtr+TNoRvAAzBfroo
 HsJl5iDdd1MzKvkoormN9DAdNTkYkAYkUztYa4HQHZ8+v5I3Gh5O8Fib2
 W3HHRRMVdwPs025NHI1s4K3ZuZjJQ99SeC0/zhDOP6rM6xgVgSWFKIjY7
 nun3oV4yaS6+fwOGAGTMGtRX1ZWp/zzUTbiGmbcMzH0VWn/gYQJt1dQV9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="320194066"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="320194066"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 04:40:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="686396267"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="686396267"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 28 Mar 2023 04:40:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Mar 2023 14:40:19 +0300
Date: Tue, 28 Mar 2023 14:40:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZCLSIxgr4U7xsO9g@intel.com>
References: <20230322103412.123943-1-jouni.hogander@intel.com>
 <20230322103412.123943-3-jouni.hogander@intel.com>
 <ZCLMvr4fridshPiA@intel.com>
 <2ff543070fbe6419ee76124ddac483b1cc3288f1.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2ff543070fbe6419ee76124ddac483b1cc3288f1.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v5 2/6] drm/i915/psr: Modify/fix
 Wa_16013835468 and prepare for Wa_14015648006
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

On Tue, Mar 28, 2023 at 11:31:56AM +0000, Hogander, Jouni wrote:
> On Tue, 2023-03-28 at 14:17 +0300, Ville Syrjälä wrote:
> > On Wed, Mar 22, 2023 at 12:34:08PM +0200, Jouni Högander wrote:
> > > Wa_16013835468 is a separate from Wa_14015648006 and needs to be
> > > applied for TGL onwards. Fix this by removing all the references to
> > > Wa_14015648006 and apply Wa_16013835468 according to Bspec.
> > > 
> > > Also move workaround into separate function as a preparation for
> > > Wa_14015648006 implementation. Apply this workaround in post plane
> > > hook.
> > > 
> > > Bspec: 55378
> > > 
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_psr.c | 45 ++++++++++++++++----
> > > ----
> > >  1 file changed, 30 insertions(+), 15 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 8dbf452d63c2..e66677e0554b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -1173,18 +1173,6 @@ static void intel_psr_enable_source(struct
> > > intel_dp *intel_dp,
> > >                              intel_dp->psr.psr2_sel_fetch_enabled ?
> > >                              IGNORE_PSR2_HW_TRACKING : 0);
> > >  
> > > -       /*
> > > -        * Wa_16013835468
> > > -        * Wa_14015648006
> > > -        */
> > > -       if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > > -           IS_DISPLAY_VER(dev_priv, 12, 13)) {
> > > -               if (crtc_state->hw.adjusted_mode.crtc_vblank_start
> > > !=
> > > -                   crtc_state->hw.adjusted_mode.crtc_vdisplay)
> > > -                       intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> > > 0,
> > > -                                   
> > > wa_16013835468_bit_get(intel_dp));
> > > -       }
> > > -
> > >         if (intel_dp->psr.psr2_enabled) {
> > >                 if (DISPLAY_VER(dev_priv) == 9)
> > >                         intel_de_rmw(dev_priv,
> > > CHICKEN_TRANS(cpu_transcoder), 0,
> > > @@ -1359,10 +1347,8 @@ static void intel_psr_disable_locked(struct
> > > intel_dp *intel_dp)
> > >  
> > >         /*
> > >          * Wa_16013835468
> > > -        * Wa_14015648006
> > >          */
> > > -       if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > > -           IS_DISPLAY_VER(dev_priv, 12, 13))
> > > +       if (DISPLAY_VER(dev_priv) >= 12)
> > >                 intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> > >                              wa_16013835468_bit_get(intel_dp), 0);
> > >  
> > > @@ -1941,6 +1927,30 @@ void intel_psr_pre_plane_update(struct
> > > intel_atomic_state *state,
> > >         }
> > >  }
> > >  
> > > +/*
> > > + * Wa_16013835468
> > > + */
> > > +static void wm_optimization_wa(struct intel_dp *intel_dp,
> > > +                          const struct intel_crtc_state
> > > *crtc_state)
> > > +{
> > > +       struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > > +       bool set_wa_bit = false;
> > > +
> > > +       /* Wa_16013835468 */
> > > +       if (DISPLAY_VER(dev_priv) >= 12)
> > > +               set_wa_bit |= crtc_state-
> > > >hw.adjusted_mode.crtc_vblank_start !=
> > > +                       crtc_state->hw.adjusted_mode.crtc_vdisplay;
> > > +
> > > +       set_wa_bit &= intel_dp->psr.enabled;
> > > +
> > > +       if (set_wa_bit)
> > > +               intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
> > > +                            wa_16013835468_bit_get(intel_dp));
> > > +       else
> > > +               intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> > > +                            wa_16013835468_bit_get(intel_dp), 0);
> > > +}
> > > +
> > >  static void _intel_psr_post_plane_update(const struct
> > > intel_atomic_state *state,
> > >                                          const struct
> > > intel_crtc_state *crtc_state)
> > >  {
> > > @@ -1966,6 +1976,11 @@ static void
> > > _intel_psr_post_plane_update(const struct intel_atomic_state
> > > *state,
> > >                 if (!psr->enabled && !keep_disabled)
> > >                         intel_psr_enable_locked(intel_dp,
> > > crtc_state);
> > >  
> > > +               /*
> > > +                * Wa_16013835468
> > > +                */
> > > +               wm_optimization_wa(intel_dp, crtc_state);
> > 
> > Hmm. I think the correct thing would probably be to set the
> > bit in pre_plane_update() and clear it in post_plane_update().
> > Otherwise we risk running with the bit in the wrong position
> > for a while.
> 
> I see intel_update_watermarks being called in intel_display.c:
> intel_pre_plane_update. Is it ok to configure the bit before that is
> complete? This was the main reason to place it in
> pst_post_plane_update.

Yes. Setting the bit (to disable the magic optimization) is
fine any time. Clearing must only be done once we know it's
safe to do so.

Hmm. That actually makes me wonder about full modesets...
Either we need to always set the bit during full modeset
and then let the post_plane_update() clear it, or we need
to make sure we configure the bit correctly in
post_plane_update() regardless and do it before actually
enabling PSR.

Oh, and intel_update_watermarks()/etc. doesn't actually do
anything on skl+. On these platforms the watermarks are part
of the plane registers, and they are double buffered so no
magic pre/post sequence is needed to update them. Instead
they just get programmed alongside all the other double
buffered plane registers.

> 
> > 
> > > +
> > >                 /* Force a PSR exit when enabling CRC to avoid CRC
> > > timeouts */
> > >                 if (crtc_state->crc_enabled && psr->enabled)
> > >                         psr_force_hw_tracking_exit(intel_dp);
> > > -- 
> > > 2.34.1
> > 
> 

-- 
Ville Syrjälä
Intel
