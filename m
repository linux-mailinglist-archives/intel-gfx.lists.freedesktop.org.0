Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A77CF6C36D1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 17:20:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35DA610E2DA;
	Tue, 21 Mar 2023 16:20:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46FA410E2DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 16:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679415599; x=1710951599;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=L6zKYyhrSDX3p70W1a1h8ftJ/9WL4KfPS3eIrpIEbGk=;
 b=YkkdCOL40P2XkmSj33I1c1K1sDYfmrnYlNxVbJHtRULs1A4U6SMQI8J5
 q7YF2tR7XMSQ9+3xRSbDBIG8W4UCFzV6oNLefCwJIY7e3u8DVPjec8uwZ
 70lb9jveWP/htlkurEKyegdouWkOCv73LVgu5dnt/S0GLt3Z+fAAU/j/e
 o8dtNKKZuyx29lJrQWwee/lC7s1h+U3TvWmcXJWzpKuOObvMC/yKdQdRP
 SOIOAcBNaHS0wiTayIeH8r8zuMGP+tieB/Xz2aC+KsJgEO9pGqAb/O3M5
 H/TMxWpeGvNQhHriA9DxJUEwmjycXtL5AXdfOs2zdgXTIJVSXFtTC0QZw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="322832841"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="322832841"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 09:19:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="714050014"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="714050014"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 21 Mar 2023 09:19:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Mar 2023 18:19:55 +0200
Date: Tue, 21 Mar 2023 18:19:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZBnZK7wUDL4E8dCB@intel.com>
References: <20230320165945.3564891-1-jouni.hogander@intel.com>
 <20230320165945.3564891-3-jouni.hogander@intel.com>
 <ZBnOluYrXFmh3pKT@intel.com>
 <5185349806b66aa911f507cc432c9d0433e5065d.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5185349806b66aa911f507cc432c9d0433e5065d.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 2/4] drm/i915/psr: Fix Wa_16013835468 and
 Wa_14015648006
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

On Tue, Mar 21, 2023 at 03:57:11PM +0000, Hogander, Jouni wrote:
> Thank you Ville for checking my patch. Please see my responses below.
> 
> On Tue, 2023-03-21 at 17:34 +0200, Ville Syrjälä wrote:
> > On Mon, Mar 20, 2023 at 06:59:43PM +0200, Jouni Högander wrote:
> > > PSR WM optimization should be disabled based on any wm level being
> > > disabled. Currently it's disabled always when using delayed vblank.
> > > Also same WA should be applied for ICL as well
> > > 
> > > Bspec: 71580
> > > 
> > > v2:
> > >  - set/clear chicken bit in post_plane_update
> > >  - apply for ICL as well
> > > 
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_types.h    |  1 +
> > >  drivers/gpu/drm/i915/display/intel_psr.c      | 67 ++++++++++++---
> > > ----
> > >  drivers/gpu/drm/i915/display/skl_watermark.c  |  7 +-
> > >  3 files changed, 50 insertions(+), 25 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index c32bfba06ca1..60504c390408 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1152,6 +1152,7 @@ struct intel_crtc_state {
> > >         bool has_psr2;
> > >         bool enable_psr2_sel_fetch;
> > >         bool req_psr2_sdp_prior_scanline;
> > > +       bool wm_level_disabled;
> > >         u32 dc3co_exitline;
> > >         u16 su_y_granularity;
> > >         struct drm_dp_vsc_sdp psr_vsc;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 8dbf452d63c2..1050d777a108 100644
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
> > > @@ -1362,7 +1350,7 @@ static void intel_psr_disable_locked(struct
> > > intel_dp *intel_dp)
> > >          * Wa_14015648006
> > >          */
> > >         if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > > -           IS_DISPLAY_VER(dev_priv, 12, 13))
> > > +           IS_DISPLAY_VER(dev_priv, 11, 13))
> > >                 intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> > >                              wa_16013835468_bit_get(intel_dp), 0);
> > >  
> > > @@ -1941,33 +1929,64 @@ void intel_psr_pre_plane_update(struct
> > > intel_atomic_state *state,
> > >         }
> > >  }
> > >  
> > > +/*
> > > + * Wa_16013835468
> > > + * Wa_14015648006
> > > + */
> > > +static void wa_16013835468(struct intel_dp *intel_dp, bool
> > > wm_level_disabled)
> > > +{
> > > +       struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > > +
> > > +       if (!IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) &&
> > > +           !IS_DISPLAY_VER(dev_priv, 11, 13))
> > > +               return;
> > 
> > This is still confusing the two different workarounds,
> > and actually losing the one about the delayed vblank.
> 
> This is only one Wa. There are two lineage numbers describing same
> workaround.
> 
> Can you please point me out the delayed vblank wa description? I can't
> find it from Bspec? Original implementation is referring lineages
> 1601383546 and 14015648006. Neither of these are about delayed vblank
> specifically.

I thought I already copy pasted the quote from the spec
in an earlier reply?

1601383546:
"Display underrun when using delayed vblank with PSR2. Workaround: If
 using PSR2 on transcoder A with delayed vblank, set bit 0x46430[23]=0x1.
 If using PSR2 on transcoder B with delayed vblank, set bit
 0x46430[24]=0x1."

>  
> > 
> > > +
> > > +       if (intel_dp->psr.enabled && wm_level_disabled)
> > > +               intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
> > > +                            wa_16013835468_bit_get(intel_dp));
> > > +       else
> > > +               intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> > > +                            wa_16013835468_bit_get(intel_dp), 0);
> > > +}
> > > +
> > >  static void _intel_psr_post_plane_update(const struct
> > > intel_atomic_state *state,
> > > -                                        const struct
> > > intel_crtc_state *crtc_state)
> > > +                                        const struct
> > > intel_crtc_state *old_crtc_state,
> > > +                                        const struct
> > > intel_crtc_state *new_crtc_state)
> > 
> > The rename reduces the signal-to-noise ratio near zero.
> 
> Can you please elaborate this a bit more? What would you suggest? I
> need to use both, old and new state to detect difference in
> wm_level_disabled. I want to set/clear the chicken bit only when
> necessary.

I would either just always set/clear the chicken bit (dunno if
there's any real point in optimizing it out), or split the rename
to a separate patch.

> 
> > 
> > >  {
> > >         struct drm_i915_private *dev_priv = to_i915(state-
> > > >base.dev);
> > >         struct intel_encoder *encoder;
> > >  
> > > -       if (!crtc_state->has_psr)
> > > +       if (!new_crtc_state->has_psr)
> > >                 return;
> > >  
> > >         for_each_intel_encoder_mask_with_psr(state->base.dev,
> > > encoder,
> > > -                                            crtc_state-
> > > >uapi.encoder_mask) {
> > > +                                            new_crtc_state-
> > > >uapi.encoder_mask) {
> > >                 struct intel_dp *intel_dp =
> > > enc_to_intel_dp(encoder);
> > >                 struct intel_psr *psr = &intel_dp->psr;
> > >                 bool keep_disabled = false;
> > >  
> > >                 mutex_lock(&psr->lock);
> > >  
> > > -               drm_WARN_ON(&dev_priv->drm, psr->enabled &&
> > > !crtc_state->active_planes);
> > > +               drm_WARN_ON(&dev_priv->drm, psr->enabled &&
> > > +                           !new_crtc_state->active_planes);
> > >  
> > >                 keep_disabled |= psr->sink_not_reliable;
> > > -               keep_disabled |= !crtc_state->active_planes;
> > > +               keep_disabled |= !new_crtc_state->active_planes;
> > >  
> > >                 if (!psr->enabled && !keep_disabled)
> > > -                       intel_psr_enable_locked(intel_dp,
> > > crtc_state);
> > > +                       intel_psr_enable_locked(intel_dp,
> > > new_crtc_state);
> > > +
> > > +               /*
> > > +                * Wa_16013835468
> > > +                * Wa_14015648006
> > > +                */
> > > +               if (old_crtc_state->wm_level_disabled !=
> > > +                   new_crtc_state->wm_level_disabled)
> > > +                       wa_16013835468(intel_dp,
> > > +                                      new_crtc_state-
> > > >wm_level_disabled);
> > >  
> > >                 /* Force a PSR exit when enabling CRC to avoid CRC
> > > timeouts */
> > > -               if (crtc_state->crc_enabled && psr->enabled)
> > > +               if (new_crtc_state->crc_enabled && psr->enabled)
> > >                         psr_force_hw_tracking_exit(intel_dp);
> > >  
> > >                 mutex_unlock(&psr->lock);
> > > @@ -1977,15 +1996,17 @@ static void
> > > _intel_psr_post_plane_update(const struct intel_atomic_state
> > > *state,
> > >  void intel_psr_post_plane_update(const struct intel_atomic_state
> > > *state)
> > >  {
> > >         struct drm_i915_private *dev_priv = to_i915(state-
> > > >base.dev);
> > > -       struct intel_crtc_state *crtc_state;
> > > +       struct intel_crtc_state *new_crtc_state, *old_crtc_state;
> > >         struct intel_crtc *crtc;
> > >         int i;
> > >  
> > >         if (!HAS_PSR(dev_priv))
> > >                 return;
> > >  
> > > -       for_each_new_intel_crtc_in_state(state, crtc, crtc_state,
> > > i)
> > > -               _intel_psr_post_plane_update(state, crtc_state);
> > > +       for_each_oldnew_intel_crtc_in_state(state, crtc,
> > > old_crtc_state,
> > > +                                           new_crtc_state, i)
> > > +               _intel_psr_post_plane_update(state, old_crtc_state,
> > > +                                            new_crtc_state);
> > >  }
> > >  
> > >  static int _psr2_ready_for_pipe_update_locked(struct intel_dp
> > > *intel_dp)
> > > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > index 50a9a6adbe32..afb751c024ba 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > @@ -2273,9 +2273,12 @@ static int skl_wm_check_vblank(struct
> > > intel_crtc_state *crtc_state)
> > >                 return level;
> > >  
> > >         /*
> > > -        * FIXME PSR needs to toggle
> > > LATENCY_REPORTING_REMOVED_PIPE_*
> > > +        * PSR needs to toggle LATENCY_REPORTING_REMOVED_PIPE_*
> > >          * based on whether we're limited by the vblank duration.
> > > -        *
> > > +        */
> > > +       crtc_state->wm_level_disabled = level < i915-
> > > >display.wm.num_levels - 1;
> > > +
> > > +       /*
> > >          * FIXME also related to skl+ w/a 1136 (also unimplemented
> > > as of
> > >          * now) perhaps?
> > >          */
> > > -- 
> > > 2.34.1
> > 
> 

-- 
Ville Syrjälä
Intel
