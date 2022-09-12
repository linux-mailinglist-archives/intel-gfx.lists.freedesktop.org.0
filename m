Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1C35B5F6F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 19:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C6C810E11A;
	Mon, 12 Sep 2022 17:36:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A10B10E11A
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 17:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663004208; x=1694540208;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/T4O2C6798L41/VwQKB1UByA5SID5Ge+ZfvNPpldaBw=;
 b=chfF4oj3x5frj1kZZpBpNQmAFNfLPUrvyZFtw42Hfi7xmoXLMvYag2sM
 +Ej6xZ3MN6bbIes1I0qqAOp3FHbd7kWhE6Lv5i2lR4cMLUpueeiAeWELC
 1irmFkOnbEOxW+Lx87yn0lD1DSY0AWmsjC5VvvTYlN1ZVaKiUjMJlsX9Y
 iQIW1M10lVUpQTf7FFj8fWle1yuSaa/3GTR9S1SOA73ZTgYi/tI6t5PDq
 p95IvoD9Y5brBOYume1G8brUBC8jIqUd6RRB7PrYW8tsiCeIE9I0jCe48
 zfS/LzC5GwSXJvl1sEJwZV4gs+PDJ4jVObWppfKW6laEXWdXFdyK8k16J A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="280946041"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="280946041"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 10:36:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="618632984"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 12 Sep 2022 10:36:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 20:36:44 +0300
Date: Mon, 12 Sep 2022 20:36:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yx9uLFjGyyjHc/fD@intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
 <20220912111814.17466-14-ville.syrjala@linux.intel.com>
 <87fsgw6bs3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87fsgw6bs3.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 13/15] drm/i915: Don't init eDP if we can't
 find a fixed mode
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

On Mon, Sep 12, 2022 at 03:02:36PM +0300, Jani Nikula wrote:
> On Mon, 12 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > In the unlikely case of not finding a fixed mode don't register
> > the eDP connector. I think there are some places where we'd oops
> > if we didn't have a fixed mode for eDP so presumable this doesn't
> > typically happen. But better safe than sorry.
> 
> I think this is fine as the first step. ISTR there are provisions in the
> DP spec for adding some default mode if all else fails, maybe we should
> look into adding something like that?

I have no idea if eDP panels would support even the 640x480
fallback mode. My hunch is no, but might be interesting to
test if someone is willing to risk their eDP panel... 

I have a feeling we should also just remove the current VBT
fixed mode fallback. I think the Windows driver has no such 
thing, though should probably double check that.

> 
> Guaranteeing we always have a fixed mode for eDP opens up possibilities
> for some further cleanup if we want. We have some "is edp and fixed
> mode" style conditions.

Yeah. Though I'm not sure if we'd want to go with
if (edp) or if (fixed_mode) in those cases. I have
occasionally pondered about exposing a user configurable
fixed_mode for external displays as well. Would let users
run their external display with a specific mode and
use the pfit to scale things instead of relying on the
display having a decent scaler.

> 
> Up to and including this patch in the series,

I think I'll skip it for now.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks.

> 
> 
> >
> > Also pimp the debugs with the encoder id+name. I think dumping
> > the encoder rather than the connector provides more information
> > here (eg. to match again the port information in the VBT).
> >
> > We can also drop the extra check from intel_edp_add_properties().
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++----
> >  1 file changed, 9 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 7b4ffb74c94c..8fe48634eb9d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5197,9 +5197,6 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
> >  
> >  	intel_attach_scaling_mode_property(&connector->base);
> >  
> > -	if (!fixed_mode)
> > -		return;
> > -
> >  	drm_connector_set_panel_orientation_with_quirk(&connector->base,
> >  						       i915->display.vbt.orientation,
> >  						       fixed_mode->hdisplay,
> > @@ -5272,7 +5269,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
> >  	if (!has_dpcd) {
> >  		/* if this fails, presume the device is a ghost */
> >  		drm_info(&dev_priv->drm,
> > -			 "failed to retrieve link info, disabling eDP\n");
> > +			 "[ENCODER:%d:%s] failed to retrieve link info, disabling eDP\n",
> > +			 encoder->base.base.id, encoder->base.name);
> >  		goto out_vdd_off;
> >  	}
> >  
> > @@ -5318,6 +5316,13 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
> >  
> >  	mutex_unlock(&dev->mode_config.mutex);
> >  
> > +	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
> > +		drm_info(&dev_priv->drm,
> > +			 "[ENCODER:%d:%s] failed to find fixed mode for the panel, disabling eDP\n",
> > +			 encoder->base.base.id, encoder->base.name);
> > +		goto out_vdd_off;
> > +	}
> > +
> >  	intel_panel_init(intel_connector);
> >  
> >  	intel_edp_backlight_setup(intel_dp, intel_connector);
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
