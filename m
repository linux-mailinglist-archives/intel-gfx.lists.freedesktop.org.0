Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 041734D454A
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 12:01:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BC5410E6D2;
	Thu, 10 Mar 2022 11:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78E210E6D2
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646910087; x=1678446087;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/44EiorRzeQBoYqB2TZa/Sa4JR4h2OkuF75Iu1yXriE=;
 b=KzkNjAm5K0b9BDB9zNeJEAcSUsb/Zbv6G506XUgZxNk1oFySs8fECYRs
 fgfBpjranwS0ipR/ABUU8+JyQe0smgyUhXFyznsayC2GMg3HFWZC24ULW
 DUzuLxXq6+ruJqcUZWQ6+pN8+zZCQmBoeFzZo7e+dovrWEVVWzqwa+NaM
 3NoRB7/u3TkxXAq88WORL+YT1RjtFUxnP86eUQzNgZCyP0uQYDu4rrhHR
 uaPDdUlODvvA4tVOqLQDXqoIILaiMhAZ+Cu0mMlOopGT548tfS7hPALAJ
 UObM2qBUweAaeKk95IrCl7M2xSV93Sq7X8PE/SalQSlpxGFDbNuLBASo+ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="255167435"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="255167435"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 03:01:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="547979039"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 10 Mar 2022 03:01:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 13:01:22 +0200
Date: Thu, 10 Mar 2022 13:01:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yinagk43Q4Z9e0lG@intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
 <20220310004802.16310-14-ville.syrjala@linux.intel.com>
 <875yomxfpt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <875yomxfpt.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 13/13] drm/i915: Implement static DRRS
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

On Thu, Mar 10, 2022 at 12:30:06PM +0200, Jani Nikula wrote:
> On Thu, 10 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Let's start supporting static DRRS by trying to match the refresh
> > rate the user has requested, assuming the panel supports suitable
> > timings.
> >
> > For now we stick to just our current two timings:
> > - fixed_mode: the panel's preferred mode
> > - downclock_mode: the lowest refresh rate mode we found
> > Some panels may support more timings than that, but we'll
> > have to convert our fixed_mode/downclock_mode pointers
> > into a full list before we can handle that.
> 
> So this won't fix panels with, say, a 120 Hz mode that isn't the panel's
> preferred mode?
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c    | 11 +++++++++++
> >  drivers/gpu/drm/i915/display/intel_drrs.c  |  8 +++++---
> >  drivers/gpu/drm/i915/display/intel_panel.c | 20 ++++++++++++++++++--
> >  3 files changed, 34 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index af659320c02e..9bd958377a54 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4599,6 +4599,17 @@ static int intel_dp_get_modes(struct drm_connector *connector)
> >  			num_modes++;
> >  		}
> >  	}
> > +	if (intel_dp_is_edp(intel_attached_dp(intel_connector)) &&
> > +	    intel_connector->panel.downclock_mode) {
> 
> I thought you wanted abstract access to connector->panel.downclock_mode
> in the previous patch.

This part is a bit different since here we just want to list all 
the supported modes. So we just duplicate our whole "fixed mode list"
which for now just comprises of fixed_mode and downclock_mode.

> 
> > +		struct drm_display_mode *mode;
> > +
> > +		mode = drm_mode_duplicate(connector->dev,
> > +					  intel_connector->panel.downclock_mode);
> > +		if (mode) {
> > +			drm_mode_probed_add(connector, mode);
> > +			num_modes++;
> > +		}
> > +	}
> >  
> >  	if (num_modes)
> >  		return num_modes;
> > diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> > index 5b2eb55c1340..dc1733c9abab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> > @@ -383,7 +383,7 @@ intel_drrs_init(struct intel_connector *connector,
> >  		return NULL;
> >  	}
> >  
> > -	if (dev_priv->vbt.drrs_type != DRRS_TYPE_SEAMLESS) {
> > +	if (dev_priv->vbt.drrs_type == DRRS_TYPE_NONE) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "[CONNECTOR:%d:%s] DRRS not supported according to VBT\n",
> >  			    connector->base.base.id, connector->base.name);
> > @@ -399,8 +399,10 @@ intel_drrs_init(struct intel_connector *connector,
> >  	}
> >  
> >  	drm_dbg_kms(&dev_priv->drm,
> > -		    "[CONNECTOR:%d:%s] seamless DRRS supported\n",
> > -		    connector->base.base.id, connector->base.name);
> > +		    "[CONNECTOR:%d:%s] %s DRRS supported\n",
> > +		    connector->base.base.id, connector->base.name,
> > +		    dev_priv->vbt.drrs_type == DRRS_TYPE_SEAMLESS ?
> > +		    "seamless" : "static");
> >  
> >  	return downclock_mode;
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> > index 127ad9643360..6ddbb69dcfdc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_panel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> > @@ -49,14 +49,30 @@ const struct drm_display_mode *
> >  intel_panel_fixed_mode(struct intel_connector *connector,
> >  		       const struct drm_display_mode *mode)
> >  {
> > -	return connector->panel.fixed_mode;
> > +	const struct drm_display_mode *fixed_mode = connector->panel.fixed_mode;
> > +	const struct drm_display_mode *downclock_mode = connector->panel.downclock_mode;
> > +
> > +	/* pick the one that is closer in terms of vrefresh */
> > +	/* FIXME make this a a list of modes so we can have more than two */
> 
> Indeed feels a bit hackish...
> 
> This being the last and arguably fairly simple part of the series, I do
> wonder about the pros and cons of merging this as an interim
> solution.

Shrug.

> 
> IIUC if the user wanted to do static/manual drrs while seamless is
> supported, this does not disable seamless when the user chooses
> preferred vrefresh and a downclock vrefresh is available. So you can
> choose lower vrefresh and stay there, but you can't choose higher
> vrefresh and stay there.

Disabling the seamless DRRS stuff is IMO an orthogonal issue. And I'm
not sure there is any point in disabling it actually. All the use cases
I can think of would just keep it in the high refresh rate mode all
the time anyway, and thus disabling it wouldn't achieve anything extra.
Also it's an i915 specific feature so coming up an acceptable uapi for
it is perhaps an uphill battle.

> > +	if (fixed_mode && downclock_mode &&
> > +	    abs(drm_mode_vrefresh(downclock_mode) - drm_mode_vrefresh(mode)) <
> > +	    abs(drm_mode_vrefresh(fixed_mode) - drm_mode_vrefresh(mode)))
> > +		return downclock_mode;
> > +	else
> > +		return fixed_mode;
> >  }
> >  
> >  const struct drm_display_mode *
> >  intel_panel_downclock_mode(struct intel_connector *connector,
> >  			   const struct drm_display_mode *fixed_mode)
> >  {
> > -	return connector->panel.downclock_mode;
> > +	const struct drm_display_mode *downclock_mode = connector->panel.downclock_mode;
> > +
> > +	if (downclock_mode &&
> > +	    drm_mode_vrefresh(downclock_mode) < drm_mode_vrefresh(fixed_mode))
> 
> With this use, I think the fixed_mode name here is a bit misleading. The
> downclock mode will always have a vrefresh lower than the fixed
> mode. But you're not always passing the fixed mode, right?

I was thinking of it as 'the thing we chose as our "fixed mode"'. But
we could just as well call it "adjusted_mode" I suppose.

> 
> > +		return downclock_mode;
> > +	else
> > +		return NULL;
> >  }
> >  
> >  int intel_panel_compute_config(struct intel_connector *connector,
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
