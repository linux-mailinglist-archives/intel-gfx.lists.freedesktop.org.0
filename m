Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF234F97C1
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 16:13:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE5BF10F204;
	Fri,  8 Apr 2022 14:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 335D910F201
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 14:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649427209; x=1680963209;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ay6YrZWze4zy4lt0YXIr7u0HDuH3taAX8NHnfGTc00s=;
 b=aBehyQoHhMQ0szGmObJsvV7KyaQOzrB8kMIFnoC+bC/t/42B4kWY7Otf
 0Fs/eCbiqFiPz4VlhHlz11s2uiuR1yo3wTNZLSE/tCHwrxGF+/3r+ObCs
 oXKfi7c363UDNuOsag6QWwC91FWE9nKR/8NwsS44sRo5lT6HaLTi9mDUv
 YkLmY8kcw4o2mzsZJu0P3ygGCGmeLbbNnGhPBtC6iCKGXC8U0oqwQuosY
 RuuiBoncyeXxg9r/pUAg5CdMsjbQ1xO31PYHd04v0FYDVAJDU7pVFlnXz
 yeObhAvi5Vb8bMp9MuzFY50kJZXrawpO44aDS+zqPBxUUKcgj5QE2IbiM g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="260438353"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="260438353"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 07:13:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="550513981"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga007.jf.intel.com with SMTP; 08 Apr 2022 07:13:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Apr 2022 17:13:25 +0300
Date: Fri, 8 Apr 2022 17:13:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YlBDBUiQf5+snxh1@intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-18-ville.syrjala@linux.intel.com>
 <875ynk4wdv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <875ynk4wdv.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 17/22] drm/i915/bios: Refactor panel_type
 code
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

On Thu, Apr 07, 2022 at 08:49:00PM +0300, Jani Nikula wrote:
> On Tue, 05 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Make the panel type code a bit more abstract along the
> > lines of the source of the panel type. For the moment
> > we have three classes: OpRegion, VBT, fallback.
> > Well introduce another one shortly.
> >
> > We can now also print out all the different panel types,
> > and indicate which one we ultimately selected. Could help
> > with debugging.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 47 ++++++++++++++++-------
> >  1 file changed, 34 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 26839263abf0..feef5aa97398 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -606,25 +606,46 @@ static int vbt_panel_type(struct drm_i915_private *i915)
> >  	return lvds_options->panel_type;
> >  }
> >  
> > +enum panel_type {
> > +	PANEL_TYPE_OPREGION,
> > +	PANEL_TYPE_VBT,
> > +	PANEL_TYPE_FALLBACK,
> > +};
> > +
> >  static int get_panel_type(struct drm_i915_private *i915)
> >  {
> > -	int ret;
> > +	struct {
> > +		const char *name;
> > +		int panel_type;
> > +	} panel_types[] = {
> > +		[PANEL_TYPE_OPREGION] = { .name = "OpRegion", .panel_type = -1, },
> > +		[PANEL_TYPE_VBT] = { .name = "VBT", .panel_type = -1, },
> > +		[PANEL_TYPE_FALLBACK] = { .name = "fallback", .panel_type = 0, },
> > +	};
> > +	int i;
> >  
> > -	ret = intel_opregion_get_panel_type(i915);
> > -	if (ret >= 0) {
> > -		drm_WARN_ON(&i915->drm, ret > 0xf);
> > -		drm_dbg_kms(&i915->drm, "Panel type: %d (OpRegion)\n", ret);
> > -		return ret;
> > -	}
> > +	panel_types[PANEL_TYPE_OPREGION].panel_type = intel_opregion_get_panel_type(i915);
> > +	panel_types[PANEL_TYPE_VBT].panel_type = vbt_panel_type(i915);
> 
> I'd probably add a function pointer in the array, to be able to call
> these nicely in the loop. Needs a static wrapper function for
> intel_opregion_get_panel_type() in the follow-up to eat the edid
> parameter, but I think it's worth it.

Sure.

> 
> > +
> > +	for (i = 0; i < ARRAY_SIZE(panel_types); i++) {
> > +		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf);
> 
> I know that's loud, but it's kind of annoying that the out of bounds
> value still goes through here.
> 
> >  
> > -	ret = vbt_panel_type(i915);
> > -	if (ret >= 0) {
> > -		drm_WARN_ON(&i915->drm, ret > 0xf);
> > -		drm_dbg_kms(&i915->drm, "Panel type: %d (VBT)\n", ret);
> > -		return ret;
> > +		if (panel_types[i].panel_type >= 0)
> > +			drm_dbg_kms(&i915->drm, "Panel type (%s): %d\n",
> > +				    panel_types[i].name, panel_types[i].panel_type);
> >  	}
> >  
> > -	return 0; /* fallback */
> > +	if (panel_types[PANEL_TYPE_OPREGION].panel_type >= 0)
> > +		i = PANEL_TYPE_OPREGION;
> > +	else if (panel_types[PANEL_TYPE_VBT].panel_type >= 0)
> > +		i = PANEL_TYPE_VBT;
> > +	else
> > +		i = PANEL_TYPE_FALLBACK;
> 
> At this stage, we could set this in the loop too, but dunno how
> complicated that gets with the pnpid match rules.

I don't think the PNPID stuff really lends itself well to a loop
since it needs to consider both the VBT and PNPID pane types at
the same time.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > +
> > +	drm_dbg_kms(&i915->drm, "Selected panel type (%s): %d\n",
> > +		    panel_types[i].name, panel_types[i].panel_type);
> > +
> > +	return panel_types[i].panel_type;
> >  }
> >  
> >  /* Parse general panel options */
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
