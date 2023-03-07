Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FE66AE1F3
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 15:13:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BDFC10E4A1;
	Tue,  7 Mar 2023 14:13:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1307C10E4A1
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 14:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678198432; x=1709734432;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Uof6kFWjsmG3IRobeBPkLBcoIQ804mCc1RwK/Gb4MpY=;
 b=KEwzxQYJ9b+7a/wFXBtGFKbrGeeL/GseDlcPgYWJCG+n+JR5MaeCYQPd
 RYZGyBsbFhDn6I2yAK6rtAj7gWj4E9QvswwqP2NNxo0VAS4dkel5qEQhi
 rozD5OqLvIsKH39f/45yKtWhfYYf3Vaft57sK9cM17WBouOdIUG1GiaPj
 SV5+jRT1KPkG8GNidVS/ZALHE0+8nWmIprpu2wO68dXj5Hk560BXjiaMi
 0G0maUIETnm62Q8mLTwCRSn+RuJkdFa1nENHTvB9D97HHqzKll/Dcn53K
 CVHX2okTpQWiZ5rJ5mUuFPXhpZLut4/OLnqirJnNcVSieA5x5lHDeGFag w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="324162792"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="324162792"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 06:13:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="676582915"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="676582915"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 07 Mar 2023 06:13:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Mar 2023 16:13:48 +0200
Date: Tue, 7 Mar 2023 16:13:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZAdGnBD7WiO/ubdb@intel.com>
References: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
 <20230306152841.6563-2-ville.syrjala@linux.intel.com>
 <87a60osqaf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87a60osqaf.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Add belts and suspenders
 locking for seamless M/N changes
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

On Tue, Mar 07, 2023 at 02:24:08PM +0200, Jani Nikula wrote:
> On Mon, 06 Mar 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Add some (probably overkill) locking to protect the vblank
> > timestamping constants updates during seamless M/N fastsets.
> >
> > As everything should be naturally aligned I think the individual
> > pieces should probably end up updating atomically enough. So this
> > is only really meant to guarantee everyone sees a consistent whole.
> >
> > All the drm_vblank.c usage is covered by vblank_time_lock,
> > and uncore.lock will take care of __intel_get_crtc_scanline()
> > that can also be called from outside the core vblank functionality.
> 
> The patch seems to do what it says on the box, but I increasingly
> dislike the use of uncore.lock for anything other than the nuts and
> bolts of uncore.

Yeah, it's not really great. Hence the TODO I left behind there.

> 
> BR,
> Jani.
> 
> >
> > Currently only crtc_clock and framedur_ns can change, but in
> > the future might fastset also across eg. vtotal/vblank_end
> > changes, so let's just grab the locks across the whole thing.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++++++-
> >  1 file changed, 23 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index a1fbdf32bd21..020320468967 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5908,6 +5908,8 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >  	struct drm_display_mode adjusted_mode;
> > +	int vmax_vblank_start = 0;
> > +	unsigned long irqflags;
> >  
> >  	drm_mode_init(&adjusted_mode, &crtc_state->hw.adjusted_mode);
> >  
> > @@ -5915,11 +5917,28 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
> >  		adjusted_mode.crtc_vtotal = crtc_state->vrr.vmax;
> >  		adjusted_mode.crtc_vblank_end = crtc_state->vrr.vmax;
> >  		adjusted_mode.crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
> > -		crtc->vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
> > +		vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
> >  	}
> >  
> > +	/*
> > +	 * Belts and suspenders locking to guarantee everyone sees 100%
> > +	 * consistent state during fastset seamless refresh rate changes.
> > +	 *
> > +	 * vblank_time_lock takes care of all drm_vblank.c stuff, and
> > +	 * uncore.lock takes care of __intel_get_crtc_scanline() which
> > +	 * may get called elsewhere as well.
> > +	 *
> > +	 * TODO maybe just protect everything (including
> > +	 * __intel_get_crtc_scanline()) with vblank_time_lock?
> > +	 * Need to audit everything to make sure it's safe.
> > +	 */
> > +	spin_lock_irqsave(&dev_priv->drm.vblank_time_lock, irqflags);
> > +	spin_lock(&dev_priv->uncore.lock);
> > +
> >  	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
> >  
> > +	crtc->vmax_vblank_start = vmax_vblank_start;
> > +
> >  	crtc->mode_flags = crtc_state->mode_flags;
> >  
> >  	/*
> > @@ -5963,6 +5982,9 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
> >  	} else {
> >  		crtc->scanline_offset = 1;
> >  	}
> > +
> > +	spin_unlock(&dev_priv->uncore.lock);
> > +	spin_unlock_irqrestore(&dev_priv->drm.vblank_time_lock, irqflags);
> >  }
> >  
> >  /*
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
