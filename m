Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F715620B1
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 18:59:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE3C110EFC9;
	Thu, 30 Jun 2022 16:59:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F24710EF7F
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 16:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656608364; x=1688144364;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=brqQQWjANpjzi1TAo3xXJGBmp0mi4JvWxKAOtEBVgp0=;
 b=l3ZbXYJ0gYh7kDe15nnCF/sPVQSObeNrASzvDcziZrDul6I5PfFlkuOO
 UwoKCqYpKwDAZ1Zw8WLTCEt5cPkWiR/TXbsqCY2TBQrGF+SXdefD8DWo+
 iiTjq1fY1KdTOyp5PlhNsn1gIt3zNzCXhpsTcA9e8FOOUPonAL5evxREl
 P5AARS1qbTDvfTN0V5YeARLlThh33ThObayJKqF1tcBKj6zR8n4C7A3p6
 NboSHs5kJ5lQ9xP5z/GgFKyZk0jzx9SaH0Pinjmf5NKTVRGIdnbb5hlPT
 qcK307o8qHHIeRktDZ48NjloctsPgkxJ+9XQxhIl5XSLNwHxGymh3p1ao Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="346396177"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="346396177"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 09:59:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="647967481"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by fmsmga008.fm.intel.com with SMTP; 30 Jun 2022 09:59:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Jun 2022 19:59:20 +0300
Date: Thu, 30 Jun 2022 19:59:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <Yr3WaIHJM4/PWgJr@intel.com>
References: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
 <20220630150600.24611-4-ville.syrjala@linux.intel.com>
 <DM6PR11MB31778640DFA620D2E283AE5BBABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM6PR11MB31778640DFA620D2E283AE5BBABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Nuke PCH_JSP
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 30, 2022 at 03:55:57PM +0000, Murthy, Arun R wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Thursday, June 30, 2022 8:36 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Nuke PCH_JSP
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > JSP is based on ICP and we don't really need to differentiate between the
> > two. So let's just delcare JSP to be ICP.
> > 
> > The only slight change here is for Wa_14011294188 which we used to apply
> > for JSP but now we'll only apply to MCC. This should be fine since the issue
> > being dealt with was introduced in TGP and inherited into MCC. JSP being
> > derived from ICP should not need this workaround.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
> >  drivers/gpu/drm/i915/intel_pch.c                   | 3 ++-
> >  drivers/gpu/drm/i915/intel_pch.h                   | 4 +---
> >  3 files changed, 4 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index a9cb27f1c964..589af257edeb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -1608,7 +1608,7 @@ static void icl_display_core_init(struct
> > drm_i915_private *dev_priv,
> >  	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> > 
> >  	/* Wa_14011294188:ehl,jsl,tgl,rkl,adl-s */
> > -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_JSP &&
> > +	if (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP &&
> >  	    INTEL_PCH_TYPE(dev_priv) < PCH_DG1)
> >  		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D, 0,
> >  			     PCH_DPMGUNIT_CLOCK_GATE_DISABLE); diff --git
> > a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
> > index b45c504c6f03..0fec25be146a 100644
> > --- a/drivers/gpu/drm/i915/intel_pch.c
> > +++ b/drivers/gpu/drm/i915/intel_pch.c
> > @@ -128,7 +128,8 @@ intel_pch_type(const struct drm_i915_private
> > *dev_priv, unsigned short id)
> >  	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
> >  		drm_dbg_kms(&dev_priv->drm, "Found Jasper Lake PCH\n");
> >  		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
> > -		return PCH_JSP;
> > +		/* JSP is ICP compatible */
> > +		return PCH_ICP;
> >  	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
> >  	case INTEL_PCH_ADP2_DEVICE_ID_TYPE:
> >  	case INTEL_PCH_ADP3_DEVICE_ID_TYPE:
> > diff --git a/drivers/gpu/drm/i915/intel_pch.h
> > b/drivers/gpu/drm/i915/intel_pch.h
> > index 07f6f5517968..7c8ce9781d1a 100644
> > --- a/drivers/gpu/drm/i915/intel_pch.h
> > +++ b/drivers/gpu/drm/i915/intel_pch.h
> > @@ -22,8 +22,7 @@ enum intel_pch {
> >  	PCH_LPT,	/* Lynxpoint/Wildcatpoint PCH */
> >  	PCH_SPT,        /* Sunrisepoint/Kaby Lake PCH */
> >  	PCH_CNP,        /* Cannon/Comet Lake PCH */
> > -	PCH_ICP,	/* Ice Lake PCH */
> > -	PCH_JSP,	/* Jasper Lake PCH */
> > +	PCH_ICP,	/* Ice Lake/Jasper Lake PCH */
> 
> Only in i915_irq icp is used and in the rest of the i915 code icl is used leading to confusion.
> I would rather suggest to use ICL since most of the driver references it as icl and also change icp in i915_irq to icl.
> This is just my opinion, other can comment over here.

ICL is a CPU, ICP is a PCH.

-- 
Ville Syrjälä
Intel
