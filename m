Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 239CF6CD774
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 12:13:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7806310E525;
	Wed, 29 Mar 2023 10:13:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4D7410E525
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 10:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680084830; x=1711620830;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XPrsAXTnF4AbQw35BmUJnOx3SQdsoEyv1mZlHfBwMkw=;
 b=anJydQNPFkBvxiIgTYUYMgxHoJJxpGKvmvwmS/uOLSYygVT+siLX1on/
 Y7vFMmUiRpnL6o9NqyoT4rRPzi/Jb3nag7rRIz7qm/qJf9CdbZFU6pUrA
 uDaQEcrZ8yBCwsp9ZEbXgn49qP5PRpTZnY3U7F/VFeekIa7XAy9TYv0s6
 9GVb/3xVT+0lrY9FIn+IbuZ6W26zqHAJFqkciL0/fSfLsidZlKnfpGlr0
 Yq9V9coAxnlLgjdOtx9JkOigSkkKVLVXlkTdWK/8cfcMVJefATYMwaECc
 rg/2sWmC9DyCWKCBUFYSKRzFmymEMxBZaqyH7Ylf2XM7x7tDvUzcLgCY7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="340856303"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="340856303"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 03:13:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="716830395"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="716830395"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 29 Mar 2023 03:13:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 13:13:47 +0300
Date: Wed, 29 Mar 2023 13:13:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <ZCQPW63Qf0WsyFJ9@intel.com>
References: <20230220164718.23117-1-ville.syrjala@linux.intel.com>
 <02587a9825173367ef41b1409512e80df8818cf7.camel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <02587a9825173367ef41b1409512e80df8818cf7.camel@redhat.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Get HDR DPCD refresh timeout from
 VBT
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

On Tue, Mar 28, 2023 at 04:09:33PM -0400, Lyude Paul wrote:
> BTW - I just started catching up with my email, is this waiting on me or was
> someone else able to review it?

commit fe82b93fc101 ("drm/i915: Get HDR DPCD refresh timeout from VBT")

> 
> On Mon, 2023-02-20 at 18:47 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Grab the HDR DPCD refresh timeout (time we need to wait after
> > writing the sourc OUI before the HDR DPCD registers are ready)
> > from the VBT.
> > 
> > Windows doesn't even seem to have any default value for this,
> > which is perhaps a bit weird since the VBT value is documented
> > as TGL+ and I thought the HDR backlight stuff might already be
> > used on earlier platforms. To play it safe I left the old
> > hardcoded 30ms default in place. Digging through some internal
> > stuff that seems to have been a number given by the vendor for
> > one particularly slow TCON. Although I did see 50ms mentioned
> > somewhere as well.
> > 
> > Let's also include the value in the debug print to ease
> > debugging, and toss in the customary connector id+name as well.
> > 
> > The TGL Thinkpad T14 I have sets this to 0 btw. So the delay
> > is now gone on this machine:
> >  [CONNECTOR:308:eDP-1] Detected Intel HDR backlight interface version 1
> >  [CONNECTOR:308:eDP-1] Using Intel proprietary eDP backlight controls
> >  [CONNECTOR:308:eDP-1] SDR backlight is controlled through PWM
> >  [CONNECTOR:308:eDP-1] Using native PCH PWM for backlight control (controller=0)
> >  [CONNECTOR:308:eDP-1] Using AUX HDR interface for backlight control (range 0..496)
> >  [CONNECTOR:308:eDP-1] Performing OUI wait (0 ms)
> > 
> > Cc: Lyude Paul <lyude@redhat.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c          | 6 ++++++
> >  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c            | 9 +++++++--
> >  3 files changed, 14 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index f35ef3675d39..f16887aed56d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -1084,6 +1084,12 @@ parse_lfp_backlight(struct drm_i915_private *i915,
> >  		panel->vbt.backlight.min_brightness = entry->min_brightness;
> >  	}
> >  
> > +	if (i915->display.vbt.version >= 239)
> > +		panel->vbt.backlight.hdr_dpcd_refresh_timeout =
> > +			DIV_ROUND_UP(backlight_data->hdr_dpcd_refresh_timeout[panel_type], 100);
> > +	else
> > +		panel->vbt.backlight.hdr_dpcd_refresh_timeout = 30;
> > +
> >  	drm_dbg_kms(&i915->drm,
> >  		    "VBT backlight PWM modulation frequency %u Hz, "
> >  		    "active %s, min brightness %u, level %u, controller %u\n",
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 748b0cd411fa..76f47ba3be45 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -326,6 +326,7 @@ struct intel_vbt_panel_data {
> >  	struct {
> >  		u16 pwm_freq_hz;
> >  		u16 brightness_precision_bits;
> > +		u16 hdr_dpcd_refresh_timeout;
> >  		bool present;
> >  		bool active_low_pwm;
> >  		u8 min_brightness;	/* min_brightness/255 of max */
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index b77bd4565864..3734e7567230 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2293,10 +2293,15 @@ intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
> >  
> >  void intel_dp_wait_source_oui(struct intel_dp *intel_dp)
> >  {
> > +	struct intel_connector *connector = intel_dp->attached_connector;
> >  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >  
> > -	drm_dbg_kms(&i915->drm, "Performing OUI wait\n");
> > -	wait_remaining_ms_from_jiffies(intel_dp->last_oui_write, 30);
> > +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Performing OUI wait (%u ms)\n",
> > +		    connector->base.base.id, connector->base.name,
> > +		    connector->panel.vbt.backlight.hdr_dpcd_refresh_timeout);
> > +
> > +	wait_remaining_ms_from_jiffies(intel_dp->last_oui_write,
> > +				       connector->panel.vbt.backlight.hdr_dpcd_refresh_timeout);
> >  }
> >  
> >  /* If the device supports it, try to set the power state appropriately */
> 
> -- 
> Cheers,
>  Lyude Paul (she/her)
>  Software Engineer at Red Hat

-- 
Ville Syrjälä
Intel
