Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCF07288F8
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 21:48:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1044110E119;
	Thu,  8 Jun 2023 19:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A10210E119
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 19:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686253722; x=1717789722;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PgjpMcg9WD/TPLiWHKFdi5u7gjsvLiVhTyUy8rdAAPA=;
 b=Zpzqe0IO1c0SfgIygKT4R/fkyeCzo1z6TdwZuk4pTtQPjN8YPh1Lrnxf
 qORFixxZYmw5ncFtSmtpK2+DJzmqRKEBFY/OuFuOYZLaq1zrwG2umqker
 nugGrXncnvdOVy148mLo+bdJ7ekQnr5ITyxtncRqZ21aij6dZhgSCb3mf
 +fXBT5JxGgrj/upvjR1IhFHPe5gOCewdpFzzmYwhs4US9cGBsbUkMn2nl
 qjdadzDyC0khXQS08Hp5VIMS6/F2Anwt7dcH5jt++lwXLmvfkKDIMLowX
 nVK7syFMozyq8so/H02G9AU12/po0H8TgpjQwxmYr12HSfG7CGEADwxBD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="421002065"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="421002065"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 12:48:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="854470341"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="854470341"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 08 Jun 2023 12:48:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 22:48:38 +0300
Date: Thu, 8 Jun 2023 22:48:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZIIwlpYuGQAYQNYK@intel.com>
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
 <20230531134806.23065-7-ville.syrjala@linux.intel.com>
 <87edmudiz5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87edmudiz5.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 6/7] drm/i915: Init DDI outputs based on
 port_mask on skl+
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 02, 2023 at 05:41:50PM +0300, Jani Nikula wrote:
> On Wed, 31 May 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Instead of listing every platform's possible DDI outputs
> > in intel_setup_outputs() just loop over the new port_mask
> > to achieve the same thing.
> 
> For posterity, I think I rejected a patch from Lucas generalizing the
> initialization in the past. I think that used the VBT child device list
> directly, and I wanted to preserve a clear way to check what the
> supported ports for a platform were. I think having the ports in runtime
> info now covers that concern. And with this, I'm open to using the child
> device list as it can now be cross-checked against the runtime info.
> 
> >
> > HSW/BDW were left as is since they still look at the straps
> > as well.
> >
> > DSI is still a mess. For now just check for the relevant
> > platforms explicitly.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 80 ++++----------------
> >  1 file changed, 13 insertions(+), 67 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index d3fc498c82c1..12f2e3897595 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7387,73 +7387,19 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
> >  	if (!HAS_DISPLAY(dev_priv))
> >  		return;
> >  
> > -	if (IS_METEORLAKE(dev_priv)) {
> > -		intel_ddi_init(dev_priv, PORT_A);
> > -		intel_ddi_init(dev_priv, PORT_B);
> > -		intel_ddi_init(dev_priv, PORT_TC1);
> > -		intel_ddi_init(dev_priv, PORT_TC2);
> > -		intel_ddi_init(dev_priv, PORT_TC3);
> > -		intel_ddi_init(dev_priv, PORT_TC4);
> > -	} else if (IS_DG2(dev_priv)) {
> > -		intel_ddi_init(dev_priv, PORT_A);
> > -		intel_ddi_init(dev_priv, PORT_B);
> > -		intel_ddi_init(dev_priv, PORT_C);
> > -		intel_ddi_init(dev_priv, PORT_D_XELPD);
> > -		intel_ddi_init(dev_priv, PORT_TC1);
> > -	} else if (IS_ALDERLAKE_P(dev_priv)) {
> > -		intel_ddi_init(dev_priv, PORT_A);
> > -		intel_ddi_init(dev_priv, PORT_B);
> > -		intel_ddi_init(dev_priv, PORT_TC1);
> > -		intel_ddi_init(dev_priv, PORT_TC2);
> > -		intel_ddi_init(dev_priv, PORT_TC3);
> > -		intel_ddi_init(dev_priv, PORT_TC4);
> > -		icl_dsi_init(dev_priv);
> > -	} else if (IS_ALDERLAKE_S(dev_priv)) {
> > -		intel_ddi_init(dev_priv, PORT_A);
> > -		intel_ddi_init(dev_priv, PORT_TC1);
> > -		intel_ddi_init(dev_priv, PORT_TC2);
> > -		intel_ddi_init(dev_priv, PORT_TC3);
> > -		intel_ddi_init(dev_priv, PORT_TC4);
> > -	} else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv)) {
> > -		intel_ddi_init(dev_priv, PORT_A);
> > -		intel_ddi_init(dev_priv, PORT_B);
> > -		intel_ddi_init(dev_priv, PORT_TC1);
> > -		intel_ddi_init(dev_priv, PORT_TC2);
> > -	} else if (DISPLAY_VER(dev_priv) >= 12) {
> > -		intel_ddi_init(dev_priv, PORT_A);
> > -		intel_ddi_init(dev_priv, PORT_B);
> > -		intel_ddi_init(dev_priv, PORT_TC1);
> > -		intel_ddi_init(dev_priv, PORT_TC2);
> > -		intel_ddi_init(dev_priv, PORT_TC3);
> > -		intel_ddi_init(dev_priv, PORT_TC4);
> > -		intel_ddi_init(dev_priv, PORT_TC5);
> > -		intel_ddi_init(dev_priv, PORT_TC6);
> > -		icl_dsi_init(dev_priv);
> > -	} else if (IS_JSL_EHL(dev_priv)) {
> > -		intel_ddi_init(dev_priv, PORT_A);
> > -		intel_ddi_init(dev_priv, PORT_B);
> > -		intel_ddi_init(dev_priv, PORT_C);
> > -		intel_ddi_init(dev_priv, PORT_D);
> > -		icl_dsi_init(dev_priv);
> > -	} else if (DISPLAY_VER(dev_priv) == 11) {
> > -		intel_ddi_init(dev_priv, PORT_A);
> > -		intel_ddi_init(dev_priv, PORT_B);
> > -		intel_ddi_init(dev_priv, PORT_C);
> > -		intel_ddi_init(dev_priv, PORT_D);
> > -		intel_ddi_init(dev_priv, PORT_E);
> > -		intel_ddi_init(dev_priv, PORT_F);
> > -		icl_dsi_init(dev_priv);
> > -	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> > -		intel_ddi_init(dev_priv, PORT_A);
> > -		intel_ddi_init(dev_priv, PORT_B);
> > -		intel_ddi_init(dev_priv, PORT_C);
> > -		vlv_dsi_init(dev_priv);
> > -	} else if (DISPLAY_VER(dev_priv) >= 9) {
> > -		intel_ddi_init(dev_priv, PORT_A);
> > -		intel_ddi_init(dev_priv, PORT_B);
> > -		intel_ddi_init(dev_priv, PORT_C);
> > -		intel_ddi_init(dev_priv, PORT_D);
> > -		intel_ddi_init(dev_priv, PORT_E);
> > +	if (DISPLAY_VER(dev_priv) >= 9) {
> > +		enum port port;
> > +
> > +		for_each_port_masked(port, DISPLAY_RUNTIME_INFO(dev_priv)->port_mask)
> > +			intel_ddi_init(dev_priv, port);
> > +
> > +		/* FIXME do something about DSI */
> > +		if (IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv) ||
> > +		    DISPLAY_VER(dev_priv) == 11)
> > +			icl_dsi_init(dev_priv);
> 
> This reflects current code, but apparently commit e341c618acde
> ("drm/i915/adl_s: Initialize display for ADL-S") stopped initializing
> DSI for ADL-S. It does support DSI.

Not according to bspec. The diagram does still show the
DSI transcoders being present but the PHY is missing.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> > +
> > +		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> > +			vlv_dsi_init(dev_priv);
> >  	} else if (HAS_DDI(dev_priv)) {
> >  		u32 found;
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
