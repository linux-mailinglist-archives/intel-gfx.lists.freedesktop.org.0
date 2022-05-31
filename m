Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B55C25396A9
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 21:03:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BF4A10E426;
	Tue, 31 May 2022 19:03:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02DC910E426
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 19:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654023786; x=1685559786;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=stRC12UDL/wbQLLVLcK4yYlHG+XNuvKcL+6y/NNKMxc=;
 b=HJfKF9vmgMtOq5Q1zwutpLQlVqUzL6YGZ/856nKArBUmP0oM74iiUylG
 y9kMGHxzGCYaaL1cAs/c7fyCY5giBBgntY+pcxyQ3qd1NgAttPnVaLObp
 lEr/3m2fL4x0NC2x+3uoLhABW5bQ2c0T5Ey7oXvkEzCMBzlzDDuVtJwZy
 HyKeWUYH8PQalKZlu5h6J+BGD072qBXXIZTYaT6ALlyn5BeleJrloj7eJ
 y5cj6ui1ik2+j19dIyJrjCY94IjHEJULBILrNJ0khpLi8vBrp+m4P35oI
 BDtAzaxlZnq9h4yc/tEH/gU9UObQdLmZCqhsb98VQF5kVIOp86HqDrWf1 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="336014368"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="336014368"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 12:03:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="667055056"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by FMSMGA003.fm.intel.com with SMTP; 31 May 2022 12:03:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 May 2022 22:03:01 +0300
Date: Tue, 31 May 2022 22:03:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YpZmZRtGFwcH/I2P@intel.com>
References: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
 <20220527204949.2264-6-ville.syrjala@linux.intel.com>
 <87fskrrxgn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87fskrrxgn.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/bios: Define more BDB contents
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

On Mon, May 30, 2022 at 03:55:52PM +0300, Jani Nikula wrote:
> On Fri, 27 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Add a bunch of new struff we're missing in various BDB blocks.
> >
> > TODO: Bunch of these might actually need to be taken
> > into use...
> 
> Cc: Jouni, Lyude for some HDR backlight stuff below.
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 50 ++++++++++++++++---
> >  1 file changed, 43 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > index 39109f204c6d..be99f585b1d0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > @@ -564,7 +564,9 @@ struct bdb_driver_features {
> >  	u16 tbt_enabled:1;
> >  	u16 psr_enabled:1;
> >  	u16 ips_enabled:1;
> > -	u16 reserved3:4;
> > +	u16 reserved3:1;
> > +	u16 dmrrs_enabled:1;
> 
> Should we start logging the version ranges here too, since it's obsolete
> from 228. Kinda duplicating the info though. *shrug*.
> 
> > +	u16 reserved4:2;
> >  	u16 pc_feature_valid:1;
> >  } __packed;
> >  
> > @@ -666,6 +668,16 @@ struct edp_full_link_params {
> >  	u8 vswing:4;
> >  } __packed;
> >  
> > +struct edp_apical_params {
> > +	u32 panel_oui;
> > +	u32 dpcd_base_address;
> > +	u32 dpcd_idridix_control_0;
> > +	u32 dpcd_option_select;
> > +	u32 dpcd_backlight;
> > +	u32 ambient_light;
> > +	u32 backlight_scale;
> > +} __packed;
> > +
> >  struct bdb_edp {
> >  	struct edp_power_seq power_seqs[16];
> >  	u32 color_depth;
> > @@ -681,6 +693,9 @@ struct bdb_edp {
> >  	struct edp_pwm_delays pwm_delays[16];			/* 186 */
> >  	u16 full_link_params_provided;				/* 199 */
> >  	struct edp_full_link_params full_link_params[16];	/* 199 */
> > +	u16 apical_enable;					/* 203 */
> > +	struct edp_apical_params apical_params[16];		/* 203 */
> > +	u16 edp_fast_link_training_rate[16];			/* 224 */
> 
> Another eDP port link rate param would go here? Could be added in
> another patch.

LOL+sigh. There is already a max link rate in the child dev but
naturally it's only specified using three bits so it's not in any
way future proof, or even capable of handling intermediate link rates.
I suppose that is the reason they added this second thing.

Oh and there's also two ways to specify the fast link training
rate as well. Man, I love VBT.

I was going to type up a quick patch but looks like there's
another chicken vs. egg situation due to panel_type again.
That is, we currently do the set_*_rates() stuff before the
per-panel VBT parsing. So I'll need to figure out if there's
anything preventing us from initializing the source rates
after the per-panel VBT parsing has been done...

-- 
Ville Syrjälä
Intel
