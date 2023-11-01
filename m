Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6A37DDE8D
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 10:37:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53DE610E68C;
	Wed,  1 Nov 2023 09:37:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9507410E68C
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 09:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698831466; x=1730367466;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Oaz6TWEZ1J2eG42F9WTC52a6CSV59T0ZOCGXY70YatM=;
 b=bGAgzd7+zGcOaIxpk4TYuiKVTMN38mFgAtmmy6k5496NUsF+IhQNHm57
 acqHSCqxS+L45RRCwui/P+pHJyfs4hGFi4LNmmQLVvvkqE8jd+02XX9Lq
 ikNiOYrWnDEAeAmBMMa+30z8M2sM4oji/cquS2zfHwjX4WIr1OA0Cr+l5
 a/HCzhHsvMOXSldgCaBAmOAIsggfZUHr2yPRnUVsyTF0rhTro19zH8UQl
 nx2tGH9bzr/UR9lrqTVdFqBNleBL9VLRD995oQN5WSObDAoDYnMSnPTIb
 g0ljgPtQkAVbBXquVHeRtRDIaE8m8yUvaJT8FfnV08qhbGTnl0krPKn9f A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="452753204"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; d="scan'208";a="452753204"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 02:37:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="754429347"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; d="scan'208";a="754429347"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 01 Nov 2023 02:37:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Nov 2023 11:37:43 +0200
Date: Wed, 1 Nov 2023 11:37:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZUIcZ53JmK3fnMfC@intel.com>
References: <20231101085757.148899-1-mika.kahola@intel.com>
 <b92440da672bc058d1f6dfcdaf73d1e54ff95b61.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b92440da672bc058d1f6dfcdaf73d1e54ff95b61.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Support PSR entry VSC
 packet to be transmitted one frame earlier
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

On Wed, Nov 01, 2023 at 09:28:51AM +0000, Hogander, Jouni wrote:
> On Wed, 2023-11-01 at 10:57 +0200, Mika Kahola wrote:
> > Display driver shall read DPCD 00071h[3:1] during configuration
> > to get PSR setup time. This register provides the setup time
> > requirement on the VSC SDP entry packet. If setup time cannot be
> > met with the current timings
> > (e.g., PSR setup time + other blanking requirements > blanking time),
> > driver should enable sending VSC SDP one frame earlier before sending
> > the capture frame.
> > 
> > BSpec: 69895 (PSR Entry Setup Frames 17:16)
> > 
> > v2: Write frames before su entry to correct register (Ville, Jouni)
> >     Move frames before su entry calculation to it's own function
> > (Ville, Jouni)
> >     Rename PSR Entry Setup Frames register to indicate Lunarlake
> > specificity (Jouni)
> > 
> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 77 ++++++++++++++---
> > --
> >  drivers/gpu/drm/i915/display/intel_psr_regs.h |  2 +
> >  3 files changed, 62 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 65ea37fe8cff..a0bcab6f2bec 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1710,6 +1710,7 @@ struct intel_psr {
> >         u32 dc3co_exitline;
> >         u32 dc3co_exit_delay;
> >         struct delayed_work dc3co_work;
> > +       u8 entry_setup_frames;
> >  };
> >  
> >  struct intel_dp {
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index ecd24a0b86cb..c9e6651fb3b2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -592,6 +592,9 @@ static void intel_psr_enable_sink(struct intel_dp
> > *intel_dp)
> >         if (intel_dp->psr.req_psr2_sdp_prior_scanline)
> >                 dpcd_val |= DP_PSR_SU_REGION_SCANLINE_CAPTURE;
> >  
> > +       if (intel_dp->psr.entry_setup_frames > 0)
> > +               dpcd_val |= DP_PSR_FRAME_CAPTURE;
> > +
> >         drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, dpcd_val);
> >  
> >         drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
> > DP_SET_POWER_D0);
> > @@ -690,6 +693,9 @@ static void hsw_activate_psr1(struct intel_dp
> > *intel_dp)
> >         if (DISPLAY_VER(dev_priv) >= 8)
> >                 val |= EDP_PSR_CRC_ENABLE;
> >  
> > +       if (DISPLAY_VER(dev_priv) >= 20)
> > +               val |= LNL_EDP_PSR_ENTRY_SETUP_FRAMES(intel_dp-
> > >psr.entry_setup_frames);
> > +
> >         intel_de_rmw(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder),
> >                      ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
> >  }
> > @@ -727,11 +733,27 @@ static int psr2_block_count(struct intel_dp
> > *intel_dp)
> >         return psr2_block_count_lines(intel_dp) / 4;
> >  }
> >  
> > +static u8 get_frames_before_su_entry(struct intel_dp *intel_dp)
> > +{
> > +       u8 frames_before_su_entry;
> > +
> > +       frames_before_su_entry = max_t(u8,
> > +                                      intel_dp-
> > >psr.sink_sync_latency + 1,
> > +                                      2);
> > +
> > +       /* Entry setup frames must be at least 1 less than frames
> > before SU entry */
> > +       if (intel_dp->psr.entry_setup_frames >=
> > frames_before_su_entry)
> > +               frames_before_su_entry += 1;
> 
> Comment above and the code are not matching. This would match:
> 
> frames_before_su_entry = intel_dp->psr.entry_setup_frames + 1;
> 
> > +
> > +       return frames_before_su_entry;
> > +}
> > +
> >  static void hsw_activate_psr2(struct intel_dp *intel_dp)
> >  {
> >         struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> >         enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
> >         u32 val = EDP_PSR2_ENABLE;
> > +       u32 psr_val = 0;
> >  
> >         val |=
> > EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> >  
> > @@ -741,7 +763,8 @@ static void hsw_activate_psr2(struct intel_dp
> > *intel_dp)
> >         if (DISPLAY_VER(dev_priv) >= 10 && DISPLAY_VER(dev_priv) <=
> > 12)
> >                 val |= EDP_Y_COORDINATE_ENABLE;
> >  
> > -       val |= EDP_PSR2_FRAME_BEFORE_SU(max_t(u8, intel_dp-
> > >psr.sink_sync_latency + 1, 2));
> > +       val |=
> > EDP_PSR2_FRAME_BEFORE_SU(get_frames_before_su_entry(intel_dp));
> > +
> >         val |= intel_psr2_get_tp_time(intel_dp);
> >  
> >         if (DISPLAY_VER(dev_priv) >= 12) {
> > @@ -785,6 +808,9 @@ static void hsw_activate_psr2(struct intel_dp
> > *intel_dp)
> >         if (intel_dp->psr.req_psr2_sdp_prior_scanline)
> >                 val |= EDP_PSR2_SU_SDP_SCANLINE;
> >  
> > +       if (DISPLAY_VER(dev_priv) >= 20)
> > +               psr_val |= LNL_EDP_PSR_ENTRY_SETUP_FRAMES(intel_dp-
> > >psr.entry_setup_frames);
> > +
> >         if (intel_dp->psr.psr2_sel_fetch_enabled) {
> >                 u32 tmp;
> >  
> > @@ -798,7 +824,7 @@ static void hsw_activate_psr2(struct intel_dp
> > *intel_dp)
> >          * PSR2 HW is incorrectly using EDP_PSR_TP1_TP3_SEL and BSpec
> > is
> >          * recommending keep this bit unset while PSR2 is enabled.
> >          */
> > -       intel_de_write(dev_priv, psr_ctl_reg(dev_priv,
> > cpu_transcoder), 0);
> > +       intel_de_write(dev_priv, psr_ctl_reg(dev_priv,
> > cpu_transcoder), psr_val);
> >  
> >         intel_de_write(dev_priv, EDP_PSR2_CTL(cpu_transcoder), val);
> >  }
> > @@ -1066,6 +1092,36 @@ static bool _compute_psr2_wake_times(struct
> > intel_dp *intel_dp,
> >         return true;
> >  }
> >  
> > +static void intel_psr_set_entry_setup_frames(struct intel_dp
> > *intel_dp,
> 
> You need to convert this into
> 
> static bool intel_psr_set_entry_setup_frames(struct intel_dp *intel_dp,
> 						const struct
> drm_display_mode *adjusted_mode)

Just make a proper function that returns the number
of frames we need.

> 
> > +                                            const struct
> > drm_display_mode *adjusted_mode)
> > +{
> > +       struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > +       int psr_setup_time = drm_dp_psr_setup_time(intel_dp-
> > >psr_dpcd);
> > +
> > +       intel_dp->psr.entry_setup_frames = 0;
> > +
> > +       if (psr_setup_time < 0) {
> > +               drm_dbg_kms(&dev_priv->drm,
> > +                           "PSR condition failed: Invalid PSR setup
> > time (0x%02x)\n",
> > +                           intel_dp->psr_dpcd[1]);
> > +               return;
> 
> and return false here.
> 
> > +       }
> > +
> > +       if (intel_usecs_to_scanlines(adjusted_mode, psr_setup_time) >
> > +           adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay
> > - 1) {
> > +               if (DISPLAY_VER(dev_priv) >= 20) {
> > +                       intel_dp->psr.entry_setup_frames = 1;
> > +                       drm_dbg_kms(&dev_priv->drm,
> > +                                   "PSR setup entry frames: %d\n",
> > +                                   intel_dp-
> > >psr.entry_setup_frames);
> > +               } else {
> > +                       drm_dbg_kms(&dev_priv->drm,
> > +                                   "PSR condition failed: PSR setup
> > time (%d us) too long\n",
> > +                                   psr_setup_time);
> > +               }
> 
> and here as well.
> 
> > +       }
> 
> and return true here.
> 
> > +}
> > +
> >  static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
> >                                     struct intel_crtc_state
> > *crtc_state)
> >  {
> > @@ -1213,7 +1269,6 @@ void intel_psr_compute_config(struct intel_dp
> > *intel_dp,
> >         struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> >         const struct drm_display_mode *adjusted_mode =
> >                 &crtc_state->hw.adjusted_mode;
> > -       int psr_setup_time;
> >  
> >         /*
> >          * Current PSR panels don't work reliably with VRR enabled
> > @@ -1242,21 +1297,7 @@ void intel_psr_compute_config(struct intel_dp
> > *intel_dp,
> >                 return;
> >         }
> >  
> > -       psr_setup_time = drm_dp_psr_setup_time(intel_dp->psr_dpcd);
> > -       if (psr_setup_time < 0) {
> > -               drm_dbg_kms(&dev_priv->drm,
> > -                           "PSR condition failed: Invalid PSR setup
> > time (0x%02x)\n",
> > -                           intel_dp->psr_dpcd[1]);
> > -               return;
> > -       }
> > -
> > -       if (intel_usecs_to_scanlines(adjusted_mode, psr_setup_time) >
> > -           adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay
> > - 1) {
> > -               drm_dbg_kms(&dev_priv->drm,
> > -                           "PSR condition failed: PSR setup time (%d
> > us) too long\n",
> > -                           psr_setup_time);
> > -               return;
> > -       }
> > +       intel_psr_set_entry_setup_frames(intel_dp, adjusted_mode);
> 
> and have:
> 
> if (!intel_psr_set_entry_setup_frames(intel_dp, adjusted_mode))
> 	return;
> 
> BR,
> 
> Jouni Högander
> >  
> >         crtc_state->has_psr = true;
> >         crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp,
> > crtc_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > index d39951383c92..efe4306b37e0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > @@ -35,6 +35,8 @@
> >  #define  
> > EDP_PSR_MIN_LINK_ENTRY_TIME_0_LINES  REG_FIELD_PREP(EDP_PSR_MIN_LINK_
> > ENTRY_TIME_MASK, 3)
> >  #define   EDP_PSR_MAX_SLEEP_TIME_MASK          REG_GENMASK(24, 20)
> >  #define  
> > EDP_PSR_MAX_SLEEP_TIME(x)            REG_FIELD_PREP(EDP_PSR_MAX_SLEEP
> > _TIME_MASK, (x))
> > +#define   LNL_EDP_PSR_ENTRY_SETUP_FRAMES_MASK  REG_GENMASK(17, 16)
> > +#define  
> > LNL_EDP_PSR_ENTRY_SETUP_FRAMES(x)    REG_FIELD_PREP(LNL_EDP_PSR_ENTRY
> > _SETUP_FRAMES_MASK, (x))
> >  #define   EDP_PSR_SKIP_AUX_EXIT                        REG_BIT(12)
> >  #define   EDP_PSR_TP_MASK                      REG_BIT(11)
> >  #define  
> > EDP_PSR_TP_TP1_TP2                   REG_FIELD_PREP(EDP_PSR_TP_MASK,
> > 0)
> 

-- 
Ville Syrjälä
Intel
