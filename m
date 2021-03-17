Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D7C33F7BF
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 19:02:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62E936E24D;
	Wed, 17 Mar 2021 18:02:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EEC46E24D
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 18:02:50 +0000 (UTC)
IronPort-SDR: cAqk3lz1xQiIhr66NJMFINNwyV4oWMqOckLixnXy326hT+VEVwDy6rHkn77rZBuPGpx2pbK9kc
 kuhwq0O5zE7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="188883395"
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="188883395"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 11:02:49 -0700
IronPort-SDR: hyhgjS7Xaez2dNU327OdcHGmB+f6+k+wXOesc6nX9h2U4ntOfSZkvxtEIGAOA14bk3pq3Oubht
 rccIfZYwcsVw==
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="412750481"
Received: from jpferrer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.46.99])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 11:02:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, "Srivatsa\,
 Anusha" <anusha.srivatsa@intel.com>
In-Reply-To: <20210312204632.GU2690983@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
 <20210311223632.3191939-5-matthew.d.roper@intel.com>
 <0ab0e465266142399f71824e011d2a21@intel.com>
 <20210312204632.GU2690983@mdroper-desk1.amr.corp.intel.com>
Date: Wed, 17 Mar 2021 20:02:43 +0200
Message-ID: <87a6r1odz0.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/56] drm/i915: Convert INTEL_GEN() to
 DISPLAY_VER() as appropriate in intel_pm.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 Mar 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Fri, Mar 12, 2021 at 12:42:27PM -0800, Srivatsa, Anusha wrote:
>> 
>> 
>> > -----Original Message-----
>> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt
>> > Roper
>> > Sent: Thursday, March 11, 2021 2:36 PM
>> > To: intel-gfx@lists.freedesktop.org
>> > Subject: [Intel-gfx] [PATCH 04/56] drm/i915: Convert INTEL_GEN() to
>> > DISPLAY_VER() as appropriate in intel_pm.c
>> > 
>> > Although most of the code in this file is display-related (watermarks), there's
>> > some functions that are not (e.g., clock gating).  Thus we need to do the
>> > conversions to DISPLAY_VER() manually here rather than using Coccinelle.
>> > 
>> > In the near-future we'll probably want to think about moving watermark
>> > logic out of intel_pm.c and into watermark-specific files under the display/
>> > directory.
>> > 
>> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>> 
>> Any reason Patch 4 and Patch 5 are not one single patch? It looks like
>> both replace INTEL_GEN() with DISPLAY_VER() where necessary... 
>
> They're manually changing different sections of the driver (parts which
> can't be done in an automated manner), so I wanted to make it easier to
> review the two parts separately.

Also definitely smaller pieces rather than the big ones!

BR,
Jani.


>
>
> Matt
>
>> 
>> Anusha 
>> > ---
>> >  drivers/gpu/drm/i915/intel_pm.c | 132 ++++++++++++++++----------------
>> >  1 file changed, 66 insertions(+), 66 deletions(-)
>> > 
>> > diff --git a/drivers/gpu/drm/i915/intel_pm.c
>> > b/drivers/gpu/drm/i915/intel_pm.c index 854ffecd98d9..2616b1845719
>> > 100644
>> > --- a/drivers/gpu/drm/i915/intel_pm.c
>> > +++ b/drivers/gpu/drm/i915/intel_pm.c
>> > @@ -2339,7 +2339,7 @@ static void i9xx_update_wm(struct intel_crtc
>> > *unused_crtc)
>> > 
>> >  	if (IS_I945GM(dev_priv))
>> >  		wm_info = &i945_wm_info;
>> > -	else if (!IS_GEN(dev_priv, 2))
>> > +	else if (DISPLAY_VER(dev_priv) != 2)
>> >  		wm_info = &i915_wm_info;
>> >  	else
>> >  		wm_info = &i830_a_wm_info;
>> > @@ -2353,7 +2353,7 @@ static void i9xx_update_wm(struct intel_crtc
>> > *unused_crtc)
>> >  			crtc->base.primary->state->fb;
>> >  		int cpp;
>> > 
>> > -		if (IS_GEN(dev_priv, 2))
>> > +		if (DISPLAY_VER(dev_priv) == 2)
>> >  			cpp = 4;
>> >  		else
>> >  			cpp = fb->format->cpp[0];
>> > @@ -2368,7 +2368,7 @@ static void i9xx_update_wm(struct intel_crtc
>> > *unused_crtc)
>> >  			planea_wm = wm_info->max_wm;
>> >  	}
>> > 
>> > -	if (IS_GEN(dev_priv, 2))
>> > +	if (DISPLAY_VER(dev_priv) == 2)
>> >  		wm_info = &i830_bc_wm_info;
>> > 
>> >  	fifo_size = dev_priv->display.get_fifo_size(dev_priv, PLANE_B); @@ -
>> > 2380,7 +2380,7 @@ static void i9xx_update_wm(struct intel_crtc
>> > *unused_crtc)
>> >  			crtc->base.primary->state->fb;
>> >  		int cpp;
>> > 
>> > -		if (IS_GEN(dev_priv, 2))
>> > +		if (DISPLAY_VER(dev_priv) == 2)
>> >  			cpp = 4;
>> >  		else
>> >  			cpp = fb->format->cpp[0];
>> > @@ -2652,9 +2652,9 @@ static u32 ilk_compute_fbc_wm(const struct
>> > intel_crtc_state *crtc_state,  static unsigned int  ilk_display_fifo_size(const
>> > struct drm_i915_private *dev_priv)  {
>> > -	if (INTEL_GEN(dev_priv) >= 8)
>> > +	if (DISPLAY_VER(dev_priv) >= 8)
>> >  		return 3072;
>> > -	else if (INTEL_GEN(dev_priv) >= 7)
>> > +	else if (DISPLAY_VER(dev_priv) >= 7)
>> >  		return 768;
>> >  	else
>> >  		return 512;
>> > @@ -2664,10 +2664,10 @@ static unsigned int
>> > ilk_plane_wm_reg_max(const struct drm_i915_private *dev_priv,
>> >  		     int level, bool is_sprite)
>> >  {
>> > -	if (INTEL_GEN(dev_priv) >= 8)
>> > +	if (DISPLAY_VER(dev_priv) >= 8)
>> >  		/* BDW primary/sprite plane watermarks */
>> >  		return level == 0 ? 255 : 2047;
>> > -	else if (INTEL_GEN(dev_priv) >= 7)
>> > +	else if (DISPLAY_VER(dev_priv) >= 7)
>> >  		/* IVB/HSW primary/sprite plane watermarks */
>> >  		return level == 0 ? 127 : 1023;
>> >  	else if (!is_sprite)
>> > @@ -2681,7 +2681,7 @@ ilk_plane_wm_reg_max(const struct
>> > drm_i915_private *dev_priv,  static unsigned int
>> > ilk_cursor_wm_reg_max(const struct drm_i915_private *dev_priv, int level)  {
>> > -	if (INTEL_GEN(dev_priv) >= 7)
>> > +	if (DISPLAY_VER(dev_priv) >= 7)
>> >  		return level == 0 ? 63 : 255;
>> >  	else
>> >  		return level == 0 ? 31 : 63;
>> > @@ -2689,7 +2689,7 @@ ilk_cursor_wm_reg_max(const struct
>> > drm_i915_private *dev_priv, int level)
>> > 
>> >  static unsigned int ilk_fbc_wm_reg_max(const struct drm_i915_private
>> > *dev_priv)  {
>> > -	if (INTEL_GEN(dev_priv) >= 8)
>> > +	if (DISPLAY_VER(dev_priv) >= 8)
>> >  		return 31;
>> >  	else
>> >  		return 15;
>> > @@ -2717,7 +2717,7 @@ static unsigned int ilk_plane_wm_max(const struct
>> > drm_i915_private *dev_priv,
>> >  		 * FIFO size is only half of the self
>> >  		 * refresh FIFO size on ILK/SNB.
>> >  		 */
>> > -		if (INTEL_GEN(dev_priv) <= 6)
>> > +		if (DISPLAY_VER(dev_priv) <= 6)
>> >  			fifo_size /= 2;
>> >  	}
>> > 
>> > @@ -2852,7 +2852,7 @@ static void intel_read_wm_latency(struct
>> > drm_i915_private *dev_priv,  {
>> >  	struct intel_uncore *uncore = &dev_priv->uncore;
>> > 
>> > -	if (INTEL_GEN(dev_priv) >= 9) {
>> > +	if (DISPLAY_VER(dev_priv) >= 9) {
>> >  		u32 val;
>> >  		int ret, i;
>> >  		int level, max_level = ilk_wm_max_level(dev_priv); @@ -
>> > 2944,14 +2944,14 @@ static void intel_read_wm_latency(struct
>> > drm_i915_private *dev_priv,
>> >  		wm[2] = (sskpd >> 12) & 0xFF;
>> >  		wm[3] = (sskpd >> 20) & 0x1FF;
>> >  		wm[4] = (sskpd >> 32) & 0x1FF;
>> > -	} else if (INTEL_GEN(dev_priv) >= 6) {
>> > +	} else if (DISPLAY_VER(dev_priv) >= 6) {
>> >  		u32 sskpd = intel_uncore_read(uncore, MCH_SSKPD);
>> > 
>> >  		wm[0] = (sskpd >> SSKPD_WM0_SHIFT) & SSKPD_WM_MASK;
>> >  		wm[1] = (sskpd >> SSKPD_WM1_SHIFT) & SSKPD_WM_MASK;
>> >  		wm[2] = (sskpd >> SSKPD_WM2_SHIFT) & SSKPD_WM_MASK;
>> >  		wm[3] = (sskpd >> SSKPD_WM3_SHIFT) & SSKPD_WM_MASK;
>> > -	} else if (INTEL_GEN(dev_priv) >= 5) {
>> > +	} else if (DISPLAY_VER(dev_priv) >= 5) {
>> >  		u32 mltr = intel_uncore_read(uncore, MLTR_ILK);
>> > 
>> >  		/* ILK primary LP0 latency is 700 ns */ @@ -2967,7 +2967,7
>> > @@ static void intel_fixup_spr_wm_latency(struct drm_i915_private
>> > *dev_priv,
>> >  				       u16 wm[5])
>> >  {
>> >  	/* ILK sprite LP0 latency is 1300 ns */
>> > -	if (IS_GEN(dev_priv, 5))
>> > +	if (DISPLAY_VER(dev_priv) == 5)
>> >  		wm[0] = 13;
>> >  }
>> > 
>> > @@ -2975,18 +2975,18 @@ static void intel_fixup_cur_wm_latency(struct
>> > drm_i915_private *dev_priv,
>> >  				       u16 wm[5])
>> >  {
>> >  	/* ILK cursor LP0 latency is 1300 ns */
>> > -	if (IS_GEN(dev_priv, 5))
>> > +	if (DISPLAY_VER(dev_priv) == 5)
>> >  		wm[0] = 13;
>> >  }
>> > 
>> >  int ilk_wm_max_level(const struct drm_i915_private *dev_priv)  {
>> >  	/* how many WM levels are we expecting */
>> > -	if (INTEL_GEN(dev_priv) >= 9)
>> > +	if (DISPLAY_VER(dev_priv) >= 9)
>> >  		return 7;
>> >  	else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
>> >  		return 4;
>> > -	else if (INTEL_GEN(dev_priv) >= 6)
>> > +	else if (DISPLAY_VER(dev_priv) >= 6)
>> >  		return 3;
>> >  	else
>> >  		return 2;
>> > @@ -3012,7 +3012,7 @@ static void intel_print_wm_latency(struct
>> > drm_i915_private *dev_priv,
>> >  		 * - latencies are in us on gen9.
>> >  		 * - before then, WM1+ latency values are in 0.5us units
>> >  		 */
>> > -		if (INTEL_GEN(dev_priv) >= 9)
>> > +		if (DISPLAY_VER(dev_priv) >= 9)
>> >  			latency *= 10;
>> >  		else if (level > 0)
>> >  			latency *= 5;
>> > @@ -3105,7 +3105,7 @@ static void ilk_setup_wm_latency(struct
>> > drm_i915_private *dev_priv)
>> >  	intel_print_wm_latency(dev_priv, "Sprite", dev_priv-
>> > >wm.spr_latency);
>> >  	intel_print_wm_latency(dev_priv, "Cursor", dev_priv-
>> > >wm.cur_latency);
>> > 
>> > -	if (IS_GEN(dev_priv, 6)) {
>> > +	if (DISPLAY_VER(dev_priv) == 6) {
>> >  		snb_wm_latency_quirk(dev_priv);
>> >  		snb_wm_lp3_irq_quirk(dev_priv);
>> >  	}
>> > @@ -3176,7 +3176,7 @@ static int ilk_compute_pipe_wm(struct
>> > intel_crtc_state *crtc_state)
>> >  	usable_level = max_level;
>> > 
>> >  	/* ILK/SNB: LP2+ watermarks only w/o sprites */
>> > -	if (INTEL_GEN(dev_priv) <= 6 && pipe_wm->sprites_enabled)
>> > +	if (DISPLAY_VER(dev_priv) <= 6 && pipe_wm->sprites_enabled)
>> >  		usable_level = 1;
>> > 
>> >  	/* ILK/SNB/IVB: LP1+ watermarks only w/o scaling */ @@ -3318,12
>> > +3318,12 @@ static void ilk_wm_merge(struct drm_i915_private *dev_priv,
>> >  	int last_enabled_level = max_level;
>> > 
>> >  	/* ILK/SNB/IVB: LP1+ watermarks only w/ single pipe */
>> > -	if ((INTEL_GEN(dev_priv) <= 6 || IS_IVYBRIDGE(dev_priv)) &&
>> > +	if ((DISPLAY_VER(dev_priv) <= 6 || IS_IVYBRIDGE(dev_priv)) &&
>> >  	    config->num_pipes_active > 1)
>> >  		last_enabled_level = 0;
>> > 
>> >  	/* ILK: FBC WM must be disabled always */
>> > -	merged->fbc_wm_enabled = INTEL_GEN(dev_priv) >= 6;
>> > +	merged->fbc_wm_enabled = DISPLAY_VER(dev_priv) >= 6;
>> > 
>> >  	/* merge each WM1+ level */
>> >  	for (level = 1; level <= max_level; level++) { @@ -3354,7 +3354,7 @@
>> > static void ilk_wm_merge(struct drm_i915_private *dev_priv,
>> >  	 * What we should check here is whether FBC can be
>> >  	 * enabled sometime later.
>> >  	 */
>> > -	if (IS_GEN(dev_priv, 5) && !merged->fbc_wm_enabled &&
>> > +	if (DISPLAY_VER(dev_priv) == 5 && !merged->fbc_wm_enabled &&
>> >  	    intel_fbc_is_active(dev_priv)) {
>> >  		for (level = 2; level <= max_level; level++) {
>> >  			struct intel_wm_level *wm = &merged->wm[level];
>> > @@ -3411,7 +3411,7 @@ static void ilk_compute_wm_results(struct
>> > drm_i915_private *dev_priv,
>> >  		if (r->enable)
>> >  			results->wm_lp[wm_lp - 1] |= WM1_LP_SR_EN;
>> > 
>> > -		if (INTEL_GEN(dev_priv) >= 8)
>> > +		if (DISPLAY_VER(dev_priv) >= 8)
>> >  			results->wm_lp[wm_lp - 1] |=
>> >  				r->fbc_val << WM1_LP_FBC_SHIFT_BDW;
>> >  		else
>> > @@ -3422,7 +3422,7 @@ static void ilk_compute_wm_results(struct
>> > drm_i915_private *dev_priv,
>> >  		 * Always set WM1S_LP_EN when spr_val != 0, even if the
>> >  		 * level is disabled. Doing otherwise could cause underruns.
>> >  		 */
>> > -		if (INTEL_GEN(dev_priv) <= 6 && r->spr_val) {
>> > +		if (DISPLAY_VER(dev_priv) <= 6 && r->spr_val) {
>> >  			drm_WARN_ON(&dev_priv->drm, wm_lp != 1);
>> >  			results->wm_lp_spr[wm_lp - 1] = WM1S_LP_EN | r-
>> > >spr_val;
>> >  		} else
>> > @@ -3612,7 +3612,7 @@ static void ilk_write_wm_values(struct
>> > drm_i915_private *dev_priv,
>> >  	    previous->wm_lp_spr[0] != results->wm_lp_spr[0])
>> >  		intel_uncore_write(&dev_priv->uncore, WM1S_LP_ILK,
>> > results->wm_lp_spr[0]);
>> > 
>> > -	if (INTEL_GEN(dev_priv) >= 7) {
>> > +	if (DISPLAY_VER(dev_priv) >= 7) {
>> >  		if (dirty & WM_DIRTY_LP(2) && previous->wm_lp_spr[1] !=
>> > results->wm_lp_spr[1])
>> >  			intel_uncore_write(&dev_priv->uncore,
>> > WM2S_LP_IVB, results->wm_lp_spr[1]);
>> >  		if (dirty & WM_DIRTY_LP(3) && previous->wm_lp_spr[2] !=
>> > results->wm_lp_spr[2]) @@ -3660,14 +3660,14 @@ static bool
>> > skl_needs_memory_bw_wa(struct drm_i915_private *dev_priv)  static bool
>> > intel_has_sagv(struct drm_i915_private *dev_priv)  {
>> > -	return (IS_GEN9_BC(dev_priv) || INTEL_GEN(dev_priv) >= 10) &&
>> > +	return (IS_GEN9_BC(dev_priv) || DISPLAY_VER(dev_priv) >= 10) &&
>> >  		dev_priv->sagv_status != I915_SAGV_NOT_CONTROLLED;  }
>> > 
>> >  static void
>> >  skl_setup_sagv_block_time(struct drm_i915_private *dev_priv)  {
>> > -	if (INTEL_GEN(dev_priv) >= 12) {
>> > +	if (DISPLAY_VER(dev_priv) >= 12) {
>> >  		u32 val = 0;
>> >  		int ret;
>> > 
>> > @@ -3680,17 +3680,17 @@ skl_setup_sagv_block_time(struct
>> > drm_i915_private *dev_priv)
>> >  		}
>> > 
>> >  		drm_dbg(&dev_priv->drm, "Couldn't read SAGV block
>> > time!\n");
>> > -	} else if (IS_GEN(dev_priv, 11)) {
>> > +	} else if (DISPLAY_VER(dev_priv) == 11) {
>> >  		dev_priv->sagv_block_time_us = 10;
>> >  		return;
>> > -	} else if (IS_GEN(dev_priv, 10)) {
>> > +	} else if (DISPLAY_VER(dev_priv) == 10) {
>> >  		dev_priv->sagv_block_time_us = 20;
>> >  		return;
>> > -	} else if (IS_GEN(dev_priv, 9)) {
>> > +	} else if (DISPLAY_VER(dev_priv) == 9) {
>> >  		dev_priv->sagv_block_time_us = 30;
>> >  		return;
>> >  	} else {
>> > -		MISSING_CASE(INTEL_GEN(dev_priv));
>> > +		MISSING_CASE(DISPLAY_VER(dev_priv));
>> >  	}
>> > 
>> >  	/* Default to an unusable block time */ @@ -3797,7 +3797,7 @@
>> > void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
>> >  	if (!new_bw_state)
>> >  		return;
>> > 
>> > -	if (INTEL_GEN(dev_priv) < 11 && !intel_can_enable_sagv(dev_priv,
>> > new_bw_state)) {
>> > +	if (DISPLAY_VER(dev_priv) < 11 && !intel_can_enable_sagv(dev_priv,
>> > +new_bw_state)) {
>> >  		intel_disable_sagv(dev_priv);
>> >  		return;
>> >  	}
>> > @@ -3848,7 +3848,7 @@ void intel_sagv_post_plane_update(struct
>> > intel_atomic_state *state)
>> >  	if (!new_bw_state)
>> >  		return;
>> > 
>> > -	if (INTEL_GEN(dev_priv) < 11 && intel_can_enable_sagv(dev_priv,
>> > new_bw_state)) {
>> > +	if (DISPLAY_VER(dev_priv) < 11 && intel_can_enable_sagv(dev_priv,
>> > +new_bw_state)) {
>> >  		intel_enable_sagv(dev_priv);
>> >  		return;
>> >  	}
>> > @@ -3936,7 +3936,7 @@ static bool intel_crtc_can_enable_sagv(const struct
>> > intel_crtc_state *crtc_state
>> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> > 
>> > -	if (INTEL_GEN(dev_priv) >= 12)
>> > +	if (DISPLAY_VER(dev_priv) >= 12)
>> >  		return tgl_crtc_can_enable_sagv(crtc_state);
>> >  	else
>> >  		return skl_crtc_can_enable_sagv(crtc_state);
>> > @@ -3945,7 +3945,7 @@ static bool intel_crtc_can_enable_sagv(const struct
>> > intel_crtc_state *crtc_state  bool intel_can_enable_sagv(struct
>> > drm_i915_private *dev_priv,
>> >  			   const struct intel_bw_state *bw_state)  {
>> > -	if (INTEL_GEN(dev_priv) < 11 &&
>> > +	if (DISPLAY_VER(dev_priv) < 11 &&
>> >  	    bw_state->active_pipes && !is_power_of_2(bw_state-
>> > >active_pipes))
>> >  		return false;
>> > 
>> > @@ -3998,7 +3998,7 @@ static int intel_compute_sagv_mask(struct
>> > intel_atomic_state *state)
>> >  		 * latter from the plane commit hooks (especially in the
>> > legacy
>> >  		 * cursor case)
>> >  		 */
>> > -		pipe_wm->use_sagv_wm = INTEL_GEN(dev_priv) >= 12 &&
>> > +		pipe_wm->use_sagv_wm = DISPLAY_VER(dev_priv) >= 12 &&
>> >  				       intel_can_enable_sagv(dev_priv,
>> > new_bw_state);
>> >  	}
>> > 
>> > @@ -4022,7 +4022,7 @@ static int intel_dbuf_size(struct drm_i915_private
>> > *dev_priv)
>> > 
>> >  	drm_WARN_ON(&dev_priv->drm, ddb_size == 0);
>> > 
>> > -	if (INTEL_GEN(dev_priv) < 11)
>> > +	if (DISPLAY_VER(dev_priv) < 11)
>> >  		return ddb_size - 4; /* 4 blocks for bypass path allocation */
>> > 
>> >  	return ddb_size;
>> > @@ -4277,7 +4277,7 @@ skl_ddb_get_hw_plane_state(struct
>> > drm_i915_private *dev_priv,
>> >  					      val & PLANE_CTL_ORDER_RGBX,
>> >  					      val & PLANE_CTL_ALPHA_MASK);
>> > 
>> > -	if (INTEL_GEN(dev_priv) >= 11) {
>> > +	if (DISPLAY_VER(dev_priv) >= 11) {
>> >  		val = intel_uncore_read(&dev_priv->uncore,
>> > PLANE_BUF_CFG(pipe, plane_id));
>> >  		skl_ddb_entry_init_from_hw(dev_priv, ddb_y, val);
>> >  	} else {
>> > @@ -4601,9 +4601,9 @@ static u8 skl_compute_dbuf_slices(struct intel_crtc
>> > *crtc, u8 active_pipes)
>> >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> >  	enum pipe pipe = crtc->pipe;
>> > 
>> > -	if (IS_GEN(dev_priv, 12))
>> > +	if (DISPLAY_VER(dev_priv) == 12)
>> >  		return tgl_compute_dbuf_slices(pipe, active_pipes);
>> > -	else if (IS_GEN(dev_priv, 11))
>> > +	else if (DISPLAY_VER(dev_priv) == 11)
>> >  		return icl_compute_dbuf_slices(pipe, active_pipes);
>> >  	/*
>> >  	 * For anything else just return one slice yet.
>> > @@ -4796,7 +4796,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state
>> > *state,
>> >  	if (!crtc_state->hw.active)
>> >  		return 0;
>> > 
>> > -	if (INTEL_GEN(dev_priv) >= 11)
>> > +	if (DISPLAY_VER(dev_priv) >= 11)
>> >  		total_data_rate =
>> >  			icl_get_total_relative_data_rate(state, crtc);
>> >  	else
>> > @@ -4910,7 +4910,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state
>> > *state,
>> > 
>> >  		/* Gen11+ uses a separate plane for UV watermarks */
>> >  		drm_WARN_ON(&dev_priv->drm,
>> > -			    INTEL_GEN(dev_priv) >= 11 && uv_total[plane_id]);
>> > +			    DISPLAY_VER(dev_priv) >= 11 &&
>> > uv_total[plane_id]);
>> > 
>> >  		/* Leave disabled planes at (0,0) */
>> >  		if (total[plane_id]) {
>> > @@ -4957,7 +4957,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state
>> > *state,
>> >  			 * Wa_1408961008:icl, ehl
>> >  			 * Underruns with WM1+ disabled
>> >  			 */
>> > -			if (IS_GEN(dev_priv, 11) &&
>> > +			if (DISPLAY_VER(dev_priv) == 11 &&
>> >  			    level == 1 && wm->wm[0].plane_en) {
>> >  				wm->wm[level].plane_res_b = wm-
>> > >wm[0].plane_res_b;
>> >  				wm->wm[level].plane_res_l = wm-
>> > >wm[0].plane_res_l; @@ -5006,7 +5006,7 @@ skl_wm_method1(const
>> > struct drm_i915_private *dev_priv, u32 pixel_rate,
>> >  	wm_intermediate_val = latency * pixel_rate * cpp;
>> >  	ret = div_fixed16(wm_intermediate_val, 1000 * dbuf_block_size);
>> > 
>> > -	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
>> > +	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
>> >  		ret = add_fixed16_u32(ret, 1);
>> > 
>> >  	return ret;
>> > @@ -5086,7 +5086,7 @@ skl_compute_wm_params(const struct
>> > intel_crtc_state *crtc_state,
>> >  	wp->cpp = format->cpp[color_plane];
>> >  	wp->plane_pixel_rate = plane_pixel_rate;
>> > 
>> > -	if (INTEL_GEN(dev_priv) >= 11 &&
>> > +	if (DISPLAY_VER(dev_priv) >= 11 &&
>> >  	    modifier == I915_FORMAT_MOD_Yf_TILED  && wp->cpp == 1)
>> >  		wp->dbuf_block_size = 256;
>> >  	else
>> > @@ -5120,7 +5120,7 @@ skl_compute_wm_params(const struct
>> > intel_crtc_state *crtc_state,
>> >  					   wp->y_min_scanlines,
>> >  					   wp->dbuf_block_size);
>> > 
>> > -		if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
>> > +		if (DISPLAY_VER(dev_priv) >= 10 ||
>> > IS_GEMINILAKE(dev_priv))
>> >  			interm_pbpl++;
>> > 
>> >  		wp->plane_blocks_per_line = div_fixed16(interm_pbpl, @@ -
>> > 5130,7 +5130,7 @@ skl_compute_wm_params(const struct intel_crtc_state
>> > *crtc_state,
>> >  					   wp->dbuf_block_size);
>> > 
>> >  		if (!wp->x_tiled ||
>> > -		    INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
>> > +		    DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
>> >  			interm_pbpl++;
>> > 
>> >  		wp->plane_blocks_per_line = u32_to_fixed16(interm_pbpl);
>> > @@ -5169,7 +5169,7 @@ skl_compute_plane_wm_params(const struct
>> > intel_crtc_state *crtc_state,
>> > 
>> >  static bool skl_wm_has_lines(struct drm_i915_private *dev_priv, int level)  {
>> > -	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
>> > +	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
>> >  		return true;
>> > 
>> >  	/* The number of lines are ignored for the level 0 watermark. */ @@
>> > -5222,7 +5222,7 @@ static void skl_compute_plane_wm(const struct
>> > intel_crtc_state *crtc_state,
>> >  		     (wp->plane_bytes_per_line / wp->dbuf_block_size < 1)) {
>> >  			selected_result = method2;
>> >  		} else if (latency >= wp->linetime_us) {
>> > -			if (IS_GEN(dev_priv, 9) &&
>> > +			if (DISPLAY_VER(dev_priv) == 9 &&
>> >  			    !IS_GEMINILAKE(dev_priv))
>> >  				selected_result = min_fixed16(method1,
>> > method2);
>> >  			else
>> > @@ -5263,7 +5263,7 @@ static void skl_compute_plane_wm(const struct
>> > intel_crtc_state *crtc_state,
>> >  		}
>> >  	}
>> > 
>> > -	if (INTEL_GEN(dev_priv) >= 11) {
>> > +	if (DISPLAY_VER(dev_priv) >= 11) {
>> >  		if (wp->y_tiled) {
>> >  			int extra_lines;
>> > 
>> > @@ -5302,7 +5302,7 @@ static void skl_compute_plane_wm(const struct
>> > intel_crtc_state *crtc_state,
>> >  	result->min_ddb_alloc = max(min_ddb_alloc, res_blocks) + 1;
>> >  	result->plane_en = true;
>> > 
>> > -	if (INTEL_GEN(dev_priv) < 12)
>> > +	if (DISPLAY_VER(dev_priv) < 12)
>> >  		result->can_sagv = latency >= dev_priv->sagv_block_time_us;
>> > }
>> > 
>> > @@ -5359,7 +5359,7 @@ static void skl_compute_transition_wm(struct
>> > drm_i915_private *dev_priv,
>> >  	if (IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv))
>> >  		return;
>> > 
>> > -	if (INTEL_GEN(dev_priv) >= 11)
>> > +	if (DISPLAY_VER(dev_priv) >= 11)
>> >  		trans_min = 4;
>> >  	else
>> >  		trans_min = 14;
>> > @@ -5422,7 +5422,7 @@ static int skl_build_plane_wm_single(struct
>> > intel_crtc_state *crtc_state,
>> >  	skl_compute_transition_wm(dev_priv, &wm->trans_wm,
>> >  				  &wm->wm[0], &wm_params);
>> > 
>> > -	if (INTEL_GEN(dev_priv) >= 12) {
>> > +	if (DISPLAY_VER(dev_priv) >= 12) {
>> >  		tgl_compute_sagv_wm(crtc_state, &wm_params, wm);
>> > 
>> >  		skl_compute_transition_wm(dev_priv, &wm-
>> > >sagv.trans_wm, @@ -5544,7 +5544,7 @@ static int
>> > skl_build_pipe_wm(struct intel_atomic_state *state,
>> >  		if (plane->pipe != crtc->pipe)
>> >  			continue;
>> > 
>> > -		if (INTEL_GEN(dev_priv) >= 11)
>> > +		if (DISPLAY_VER(dev_priv) >= 11)
>> >  			ret = icl_build_plane_wm(crtc_state, plane_state);
>> >  		else
>> >  			ret = skl_build_plane_wm(crtc_state, plane_state);
>> > @@ -5605,7 +5605,7 @@ void skl_write_plane_wm(struct intel_plane
>> > *plane,
>> >  	skl_write_wm_level(dev_priv, PLANE_WM_TRANS(pipe, plane_id),
>> >  			   skl_plane_trans_wm(pipe_wm, plane_id));
>> > 
>> > -	if (INTEL_GEN(dev_priv) >= 11) {
>> > +	if (DISPLAY_VER(dev_priv) >= 11) {
>> >  		skl_ddb_entry_write(dev_priv,
>> >  				    PLANE_BUF_CFG(pipe, plane_id), ddb_y);
>> >  		return;
>> > @@ -6135,7 +6135,7 @@ static void ilk_program_watermarks(struct
>> > drm_i915_private *dev_priv)
>> >  	ilk_wm_merge(dev_priv, &config, &max, &lp_wm_1_2);
>> > 
>> >  	/* 5/6 split only in single pipe config on IVB+ */
>> > -	if (INTEL_GEN(dev_priv) >= 7 &&
>> > +	if (DISPLAY_VER(dev_priv) >= 7 &&
>> >  	    config.num_pipes_active == 1 && config.sprites_enabled) {
>> >  		ilk_compute_wm_maximums(dev_priv, 1, &config,
>> > INTEL_DDB_PART_5_6, &max);
>> >  		ilk_wm_merge(dev_priv, &config, &max, &lp_wm_5_6); @@
>> > -6221,7 +6221,7 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>> > 
>> >  		skl_wm_level_from_reg_val(val, &wm->trans_wm);
>> > 
>> > -		if (INTEL_GEN(dev_priv) >= 12) {
>> > +		if (DISPLAY_VER(dev_priv) >= 12) {
>> >  			wm->sagv.wm0 = wm->wm[0];
>> >  			wm->sagv.trans_wm = wm->trans_wm;
>> >  		}
>> > @@ -6748,7 +6748,7 @@ void ilk_wm_get_hw_state(struct
>> > drm_i915_private *dev_priv)
>> >  	hw->wm_lp[2] = intel_uncore_read(&dev_priv->uncore,
>> > WM3_LP_ILK);
>> > 
>> >  	hw->wm_lp_spr[0] = intel_uncore_read(&dev_priv->uncore,
>> > WM1S_LP_ILK);
>> > -	if (INTEL_GEN(dev_priv) >= 7) {
>> > +	if (DISPLAY_VER(dev_priv) >= 7) {
>> >  		hw->wm_lp_spr[1] = intel_uncore_read(&dev_priv->uncore,
>> > WM2S_LP_IVB);
>> >  		hw->wm_lp_spr[2] = intel_uncore_read(&dev_priv->uncore,
>> > WM3S_LP_IVB);
>> >  	}
>> > @@ -7649,15 +7649,15 @@ void intel_init_pm(struct drm_i915_private
>> > *dev_priv)
>> >  		skl_setup_sagv_block_time(dev_priv);
>> > 
>> >  	/* For FIFO watermark updates */
>> > -	if (INTEL_GEN(dev_priv) >= 9) {
>> > +	if (DISPLAY_VER(dev_priv) >= 9) {
>> >  		skl_setup_wm_latency(dev_priv);
>> >  		dev_priv->display.compute_global_watermarks =
>> > skl_compute_wm;
>> >  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>> >  		ilk_setup_wm_latency(dev_priv);
>> > 
>> > -		if ((IS_GEN(dev_priv, 5) && dev_priv->wm.pri_latency[1] &&
>> > +		if ((DISPLAY_VER(dev_priv) == 5 && dev_priv-
>> > >wm.pri_latency[1] &&
>> >  		     dev_priv->wm.spr_latency[1] && dev_priv-
>> > >wm.cur_latency[1]) ||
>> > -		    (!IS_GEN(dev_priv, 5) && dev_priv->wm.pri_latency[0] &&
>> > +		    (DISPLAY_VER(dev_priv) != 5 && dev_priv-
>> > >wm.pri_latency[0] &&
>> >  		     dev_priv->wm.spr_latency[0] && dev_priv-
>> > >wm.cur_latency[0])) {
>> >  			dev_priv->display.compute_pipe_wm =
>> > ilk_compute_pipe_wm;
>> >  			dev_priv->display.compute_intermediate_wm = @@
>> > -7700,12 +7700,12 @@ void intel_init_pm(struct drm_i915_private
>> > *dev_priv)
>> >  			dev_priv->display.update_wm = NULL;
>> >  		} else
>> >  			dev_priv->display.update_wm = pnv_update_wm;
>> > -	} else if (IS_GEN(dev_priv, 4)) {
>> > +	} else if (DISPLAY_VER(dev_priv) == 4) {
>> >  		dev_priv->display.update_wm = i965_update_wm;
>> > -	} else if (IS_GEN(dev_priv, 3)) {
>> > +	} else if (DISPLAY_VER(dev_priv) == 3) {
>> >  		dev_priv->display.update_wm = i9xx_update_wm;
>> >  		dev_priv->display.get_fifo_size = i9xx_get_fifo_size;
>> > -	} else if (IS_GEN(dev_priv, 2)) {
>> > +	} else if (DISPLAY_VER(dev_priv) == 2) {
>> >  		if (INTEL_NUM_PIPES(dev_priv) == 1) {
>> >  			dev_priv->display.update_wm = i845_update_wm;
>> >  			dev_priv->display.get_fifo_size = i845_get_fifo_size;
>> > --
>> > 2.25.4
>> > 
>> > _______________________________________________
>> > Intel-gfx mailing list
>> > Intel-gfx@lists.freedesktop.org
>> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
