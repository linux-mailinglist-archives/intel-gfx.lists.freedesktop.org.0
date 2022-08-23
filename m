Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6734D59E40F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 15:28:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24D2810E482;
	Tue, 23 Aug 2022 13:28:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13BA210E345
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 13:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661261278; x=1692797278;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=d3Yl2eBegttWzvSR8vJmPs5AwJW/A0JCT3h440akMXg=;
 b=njNuWSchAlVRjNYSSlblvAMQkSC5r5RWrX5Y4u8kN0yKK1JTMk08FAzG
 qZP2re2Su23cius9Gr3sCiYuLEa5pvmpxF8c4huj36kPzVWmx9m5yg92Z
 OsvrlQwTd3RPOe/Lohrm5sQPuevb5H65KfwraV2V8zQphtEg6TrbJcLlM
 XI3qoLYaTaeMuUHxcZeIj4diVhViqHug2VITluCgxR1My/gEEoxB8QCuK
 hZEOwzVeY1LnTtv8g6xYm4LvYe/XghlQ3Y0h3JM4LWdiDzXLvOE8lWNbP
 yk6vH09p1P7ONrlgjPgMGgBCueXU1WoXvjSuwkO3SmBHqDeMWXyqtd/bb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294968711"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="294968711"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 06:27:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="638655544"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.59])
 by orsmga008.jf.intel.com with SMTP; 23 Aug 2022 06:27:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Aug 2022 16:27:50 +0300
Date: Tue, 23 Aug 2022 16:27:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YwTV1oc0FK/RBsQ6@intel.com>
References: <20220803052944.28069-1-animesh.manna@intel.com>
 <87les5eoct.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87les5eoct.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pps: added get_pps_idx() hook as
 part of pps_get_register() cleanup
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

On Wed, Aug 03, 2022 at 11:13:38AM +0300, Jani Nikula wrote:
> On Wed, 03 Aug 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> > To support dual LFP two instances of pps added from display gen12 onwards.
> > Few older platform like VLV also has dual pps support but handling is
> > different. So added separate hook get_pps_idx() to formulate which pps
> > instance to used for a soecific LFP on a specific platform.
> >
> > Simplified pps_get_register() which use get_pps_idx() hook to derive the
> > pps instance and get_pps_idx() will be initialized at pps_init().
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c     |  5 ++++
> >  drivers/gpu/drm/i915/display/intel_bios.h     |  1 +
> >  .../drm/i915/display/intel_display_types.h    |  2 ++
> >  drivers/gpu/drm/i915/display/intel_pps.c      | 25 ++++++++++++++-----
> >  4 files changed, 27 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 51dde5bfd956..42315615a728 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -611,6 +611,11 @@ static int opregion_get_panel_type(struct drm_i915_private *i915,
> >  	return intel_opregion_get_panel_type(i915);
> >  }
> >  
> > +bool intel_bios_is_lfp2(struct intel_encoder *encoder)
> > +{
> > +	return encoder->devdata && encoder->devdata->child.handle == DEVICE_HANDLE_LFP2;
> > +}
> 
> AFAICS the encoder never really needs to know whether it's "lfp1" or
> "lfp2". It needs to know the pps controller number.
> 
> > +
> >  static int vbt_get_panel_type(struct drm_i915_private *i915,
> >  			      const struct intel_bios_encoder_data *devdata,
> >  			      const struct edid *edid)
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> > index e47582b0de0a..aea72a87ea2c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> > @@ -251,6 +251,7 @@ bool intel_bios_is_lspcon_present(const struct drm_i915_private *i915,
> >  				  enum port port);
> >  bool intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
> >  					enum port port);
> > +bool intel_bios_is_lfp2(struct intel_encoder *encoder);
> >  enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv, enum port port);
> >  bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
> >  			       struct intel_crtc_state *crtc_state,
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 0da9b208d56e..95f71a572b07 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1723,6 +1723,8 @@ struct intel_dp {
> >  
> >  	/* When we last wrote the OUI for eDP */
> >  	unsigned long last_oui_write;
> > +
> > +	int (*get_pps_idx)(struct intel_dp *intel_dp);
> 
> Making this a function pointer should be a separate step. Please don't
> try to do too many things at once. Rule of thumb, one change per patch.
> 
> Also, this should be placed near the other function pointer members in
> struct intel_dp.
> 
> >  };
> >  
> >  enum lspcon_vendor {
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> > index 1b21a341962f..c9cdb302d318 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -231,6 +231,17 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
> >  	return backlight_controller;
> >  }
> >  
> > +static int
> > +gen12_power_sequencer_idx(struct intel_dp *intel_dp)
> > +{
> > +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> > +
> > +	if (intel_bios_is_lfp2(encoder))
> > +		return 1;
> 
> This is actually not how this works. The bxt_power_sequencer_idx()
> matches bspec 20149: "PWM and PPS are assumed to be aligned to be from
> same block and not mismatch" i.e. the backlight controller id and the
> pps id are the same. There are no requirements to map lfp# and pps
> controller like this, even if it might be true in the common case.
> 
> The problem is we need the information *before* we call
> intel_bios_init_panel().
> 
> It's a catch-22. We need the pps id to read the panel EDID, and we need
> the panel EDID to choose the correct panel type in VBT, which we need to
> get the pps id from the VBT.
> 
> This is highlighted in [1]. The 2nd eDP (which is not even physically
> present, only in the VBT, *sigh*) screws up the PPS for the 1st during
> init.
> 
> I think Ville had some ideas here.

What a mess.

I guess for the panel_type!=255 cases we could just
initialize the panel specific stuff earlier.

The hardest case to solve would be dual panel with
panel_type==255. For that not sure we can much more than to
read out the state of each PPS from the hardware and try to
guess if one of the enabled ones corresponds to our current
panel, and then try to do the EDID read(s).

Or maybe we could just take a shortcut and reject dual
panel + panel_type=255 combos entirely. Or did we already
run into such cases?

-- 
Ville Syrjälä
Intel
