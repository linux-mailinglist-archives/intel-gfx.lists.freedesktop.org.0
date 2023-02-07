Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB1D68D203
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 10:05:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF5410E0F5;
	Tue,  7 Feb 2023 09:05:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3198610E0F5
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 09:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675760731; x=1707296731;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5rz3BKJk+xfsVr39DoHuZAyfge+YqMpufA/zsj04J8E=;
 b=BMwVFl2lE/de32LRxj+4PdRfox3EaodGXvX1xpFVT4z5hoBThGNZ71hF
 8gDMunfTjOd7q6GmrX5dZy01kH0bIezmN6AuoFCIvxUKI0wWxSmCiKVKu
 Tv/Ro3cKDkgucKoFaN5YyOKalfvoonWeWFWFz/pKn4wV7ucweR+XCUr1b
 dt7EG13CxilSlkvh+JycOpuCD3kEIHiJXJkgvhsFVJEVN5M22X0oxW7tv
 hrFosl1kfZ63joVkz1yO9SKgc0Y1r5U7boZCn14PthJlDjkz6tsdTpBoz
 8f6bvUnZ0Xng5dRWlwy/f3NLbgTiS3vSUw4bpmFzMiD+XCiv/twuKDJmz w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="309103551"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="309103551"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 01:05:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="616743959"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="616743959"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga003.jf.intel.com with SMTP; 07 Feb 2023 01:05:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Feb 2023 11:05:27 +0200
Date: Tue, 7 Feb 2023 11:05:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+IUV8OBG0P2mt2b@intel.com>
References: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
 <20230207064337.18697-2-ville.syrjala@linux.intel.com>
 <877cwtzw93.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <877cwtzw93.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Fix VBT DSI DVO port handling
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

On Tue, Feb 07, 2023 at 10:59:36AM +0200, Jani Nikula wrote:
> On Tue, 07 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Turns out modern (icl+) VBTs still declare their DSI ports
> > as MIPI-A and MIPI-C despite the PHYs now being A and B.
> > Remap appropriately to allow the panels declared as MIPI-C
> > to work.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8016
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 33 ++++++++++++++++-------
> >  1 file changed, 23 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index e6ca51232dcf..06a2d98d2277 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -2467,6 +2467,22 @@ static enum port dvo_port_to_port(struct drm_i915_private *i915,
> >  					  dvo_port);
> >  }
> >  
> > +static enum port
> > +dsi_dvo_port_to_port(struct drm_i915_private *i915, u8 dvo_port)
> > +{
> > +	switch (dvo_port) {
> > +	case DVO_PORT_MIPIA:
> > +		return PORT_A;
> 
> I think I would add:
> 
> 	case DVO_PORT_MIPIB:
> 		if (DISPLAY_VER(i915) >= 11)
> 			return PORT_B;
> 		else
> 			return PORT_NONE;
> 
> just in case.

Looks like Windows doesn't expect MIPI-B to be used ever.
So I'm tempted to leave it out as well.

> 
> With that,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > +	case DVO_PORT_MIPIC:
> > +		if (DISPLAY_VER(i915) >= 11)
> > +			return PORT_B;
> > +		else
> > +			return PORT_C;
> > +	default:
> > +		return PORT_NONE;
> > +	}
> > +}
> > +
> >  static int parse_bdb_230_dp_max_link_rate(const int vbt_max_link_rate)
> >  {
> >  	switch (vbt_max_link_rate) {
> > @@ -3442,19 +3458,16 @@ bool intel_bios_is_dsi_present(struct drm_i915_private *i915,
> >  
> >  		dvo_port = child->dvo_port;
> >  
> > -		if (dvo_port == DVO_PORT_MIPIA ||
> > -		    (dvo_port == DVO_PORT_MIPIB && DISPLAY_VER(i915) >= 11) ||
> > -		    (dvo_port == DVO_PORT_MIPIC && DISPLAY_VER(i915) < 11)) {
> > -			if (port)
> > -				*port = dvo_port - DVO_PORT_MIPIA;
> > -			return true;
> > -		} else if (dvo_port == DVO_PORT_MIPIB ||
> > -			   dvo_port == DVO_PORT_MIPIC ||
> > -			   dvo_port == DVO_PORT_MIPID) {
> > +		if (dsi_dvo_port_to_port(i915, dvo_port) == PORT_NONE) {
> 
> Yeah that monstrosity should've been a separate function a long time ago!
> 
> >  			drm_dbg_kms(&i915->drm,
> >  				    "VBT has unsupported DSI port %c\n",
> >  				    port_name(dvo_port - DVO_PORT_MIPIA));
> > +			continue;
> >  		}
> > +
> > +		if (port)
> > +			*port = dsi_dvo_port_to_port(i915, dvo_port);
> > +		return true;
> >  	}
> >  
> >  	return false;
> > @@ -3539,7 +3552,7 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
> >  		if (!(child->device_type & DEVICE_TYPE_MIPI_OUTPUT))
> >  			continue;
> >  
> > -		if (child->dvo_port - DVO_PORT_MIPIA == encoder->port) {
> > +		if (dsi_dvo_port_to_port(i915, child->dvo_port) == encoder->port) {
> >  			if (!devdata->dsc)
> >  				return false;
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
