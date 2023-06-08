Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9404772890F
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 21:54:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCDBE10E013;
	Thu,  8 Jun 2023 19:54:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1B7B10E013
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686254093; x=1717790093;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UCLgsVfFnOGLhN7pX29pCae8ZwIE1XlHn2cfV1VN11w=;
 b=Dje+zA3C7/VQ/4z2xbLPrA2XcnMTHDsYck7d6T9tWDSAhRPopecjkqUS
 kZUQpPZARCqgrLZZH8888QEaZ3aTFz75VmJWd8OndfMNbNmZcQ62rQOtW
 Dxb8GPSJLOmY6Bz+zc/zKmJ5a5up2+1sZVG5GnJLDcVazQXb9kEXQnDe1
 0TtuvCDTRulIm3Xdn+Gun01ilaQpn/hgyIWdMUM7HS3f90RoF1TOU+TTO
 1eGmiCRaAIClLlH7zHV08wcr92Wf4NBcBkani5GMG/wnywsGSkfLgt0y1
 cBgGL02VBCNFivL3CYi5tvC25RFMIyFHYSC6d4rwMBuWJ3lVI6LN/Q51n w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="443787287"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="443787287"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 12:54:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="854471220"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="854471220"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 08 Jun 2023 12:54:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 22:54:50 +0300
Date: Thu, 8 Jun 2023 22:54:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZIIyCm1Nk2j6Wokq@intel.com>
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
 <20230531134806.23065-8-ville.syrjala@linux.intel.com>
 <87bkhxex3s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87bkhxex3s.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 7/7] drm/i915: Convert HSW/BDW to use
 port_mask for DDI probe
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

On Fri, Jun 02, 2023 at 05:51:19PM +0300, Jani Nikula wrote:
> On Wed, 31 May 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Make HSW/BDW use port_mask for output probing as well.
> > To achieve that the strap checks are moved into
> > intel_ddi_init() itself. Or should we move them to the
> > runtime port_mask init instead? Maybe not since the hardware
> > is still there, just not connected to anything.
> >
> > v2: Account for DDI-E in strap detection
> >     Keep to the old CRT->DDI init order
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c     | 29 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_display.c | 23 +++-------------
> >  2 files changed, 33 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 31001b9a29b0..d89a9b85a780 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4657,6 +4657,29 @@ static void intel_ddi_tc_encoder_shutdown_complete(struct intel_encoder *encoder
> >  #define port_tc_name(port) ((port) - PORT_TC1 + '1')
> >  #define tc_port_name(tc_port) ((tc_port) - TC_PORT_1 + '1')
> >  
> > +static bool port_strap_detected(struct drm_i915_private *i915, enum port port)
> > +{
> > +	/* straps not used on skl+ */
> > +	if (DISPLAY_VER(i915) >= 9)
> > +		return true;
> > +
> > +	switch (port) {
> > +	case PORT_A:
> > +		return intel_de_read(i915, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
> > +	case PORT_B:
> > +		return intel_de_read(i915, SFUSE_STRAP) & SFUSE_STRAP_DDIB_DETECTED;
> > +	case PORT_C:
> > +		return intel_de_read(i915, SFUSE_STRAP) & SFUSE_STRAP_DDIC_DETECTED;
> > +	case PORT_D:
> > +		return intel_de_read(i915, SFUSE_STRAP) & SFUSE_STRAP_DDID_DETECTED;
> > +	case PORT_E:
> > +		return true; /* no strap for DDI-E */
> > +	default:
> > +		MISSING_CASE(port);
> > +		return false;
> > +	}
> > +}
> > +
> >  void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> >  {
> >  	struct intel_digital_port *dig_port;
> > @@ -4665,6 +4688,12 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> >  	bool init_hdmi, init_dp;
> >  	enum phy phy = intel_port_to_phy(dev_priv, port);
> >  
> > +	if (!port_strap_detected(dev_priv, port)) {
> > +		drm_dbg_kms(&dev_priv->drm,
> > +			    "Port %c strap not detected\n", port_name(port));
> > +		return;
> > +	}
> > +
> >  	if (!assert_port_valid(dev_priv, port))
> >  		return;
> 
> I might have put this check first before the straps, so we get the
> invalid port message for bogus ports instead of MISSING_CASE().

That would trip assert_port_valid() when we try to init DDI D on
ULT/ULX machines.

Sadly I also have a one HSW ULT machine here where the VBT
(arguably incorrectly) declares that DDI D is present. So
even when we switch to VBT based init we need to do the strap
check first. I guess one option would be to remove the
MISSING_CASE() and just return true for all DDI E+.

> 
> Either way,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 12f2e3897595..1ae4854b275e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7387,9 +7387,12 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
> >  	if (!HAS_DISPLAY(dev_priv))
> >  		return;
> >  
> > -	if (DISPLAY_VER(dev_priv) >= 9) {
> > +	if (HAS_DDI(dev_priv)) {
> >  		enum port port;
> >  
> > +		if (intel_ddi_crt_present(dev_priv))
> > +			intel_crt_init(dev_priv);
> > +
> >  		for_each_port_masked(port, DISPLAY_RUNTIME_INFO(dev_priv)->port_mask)
> >  			intel_ddi_init(dev_priv, port);
> >  
> > @@ -7400,24 +7403,6 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
> >  
> >  		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  			vlv_dsi_init(dev_priv);
> > -	} else if (HAS_DDI(dev_priv)) {
> > -		u32 found;
> > -
> > -		if (intel_ddi_crt_present(dev_priv))
> > -			intel_crt_init(dev_priv);
> > -
> > -		/* Haswell uses DDI functions to detect digital outputs. */
> > -		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
> > -		if (found)
> > -			intel_ddi_init(dev_priv, PORT_A);
> > -
> > -		found = intel_de_read(dev_priv, SFUSE_STRAP);
> > -		if (found & SFUSE_STRAP_DDIB_DETECTED)
> > -			intel_ddi_init(dev_priv, PORT_B);
> > -		if (found & SFUSE_STRAP_DDIC_DETECTED)
> > -			intel_ddi_init(dev_priv, PORT_C);
> > -		if (found & SFUSE_STRAP_DDID_DETECTED)
> > -			intel_ddi_init(dev_priv, PORT_D);
> >  	} else if (HAS_PCH_SPLIT(dev_priv)) {
> >  		int found;
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
