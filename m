Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C8A56336E
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 14:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E67B210FE8B;
	Fri,  1 Jul 2022 12:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D51110FD76
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 12:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656678081; x=1688214081;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RzvWwFnkzYzbXAWFpHQTX3rH1+r3kBedB2JnHV7GLJQ=;
 b=md5XMNc6U/NrJ2Zz6i6VRo0/FJxF9O0s9UVhf4q4w/lwwkHgqe6QC1ee
 OTBQ2j1uzOuNqIgqpQBows9MpFj+cRUz7mpzXlWqWaiGTeGcB+SSxch/H
 Spm44WRRePViSe2ODTSK3N7q0c+e9lCoKGJXLmAaxb42e1QdGlWjUfb4U
 FlhCO8RX/8hBQdySZyJx8u2fsWWXcyvz+LA9xR2qi2qRC5/zt5hsWKf0p
 pPvbseAtj9kkrCTdokOwjT7jbFxFBbuQauttaQTLbD0jtrVE4RRemPSU2
 3mPI1PhcyROCNLCJu2nxUUCgsNmwB1x/0tQ0CZmgp2eeYVfI6i0kF+EfW Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="263039465"
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="263039465"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 05:21:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="681385440"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by FMSMGA003.fm.intel.com with SMTP; 01 Jul 2022 05:21:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Jul 2022 15:21:04 +0300
Date: Fri, 1 Jul 2022 15:21:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yr7msEAS9XwAtrVU@intel.com>
References: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
 <20220630150600.24611-3-ville.syrjala@linux.intel.com>
 <87fsjlnom8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87fsjlnom8.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Nuke PCH_MCC
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

On Fri, Jul 01, 2022 at 12:55:43PM +0300, Jani Nikula wrote:
> On Thu, 30 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > MCC is derived from TGP, and we have no real need to
> > differentiate between the two. Thus remove PCH_MCC and
> > just declare it to be PCH_TGP compatible.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c  | 2 +-
> >  drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
> >  drivers/gpu/drm/i915/intel_pch.c          | 3 ++-
> >  drivers/gpu/drm/i915/intel_pch.h          | 4 +---
> >  4 files changed, 5 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 272e1bf6006b..2330604b0bcc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4179,7 +4179,7 @@ static enum hpd_pin ehl_hpd_pin(struct drm_i915_private *dev_priv,
> >  	if (port == PORT_D)
> >  		return HPD_PORT_A;
> >  
> > -	if (HAS_PCH_MCC(dev_priv))
> > +	if (HAS_PCH_TGP(dev_priv))
> >  		return icl_hpd_pin(dev_priv, port);
> >  
> >  	return HPD_PORT_A + port - PORT_A;
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 1ae09431f53a..ebd91aa69dd2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -2852,7 +2852,7 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
> >  		ddc_pin = rkl_port_to_ddc_pin(dev_priv, port);
> >  	else if (DISPLAY_VER(dev_priv) == 9 && HAS_PCH_TGP(dev_priv))
> >  		ddc_pin = gen9bc_tgp_port_to_ddc_pin(dev_priv, port);
> > -	else if (HAS_PCH_MCC(dev_priv))
> > +	else if (IS_JSL_EHL(dev_priv) && HAS_PCH_TGP(dev_priv))
> >  		ddc_pin = mcc_port_to_ddc_pin(dev_priv, port);
> 
> Nitpick, mcc_ prefix is now an outlier here, and could be named after
> the CPU/PCH combo like above for gen 9 and TGP. But no big deal.

I want to rewrite these entirely. They should be doing 99% the same
thing as the foo_hpd_pin() functions, yet they are written in all
various kinds of different ways (none of which match the hpd_pin()
stuff).

Also while looking at that I stumbled on the VBT code doing a
slightly different variant of the same stuff using arrays. And on
top of that we have the VBT AUX CH mapping code as well, written
in yet another style. So I think I want to try to unify it all
to a common approach.

I'm thinking the array approach might be the easiest to parse for
mere mortals, so kinda leaning towards that. What do you think?

Although one hurdle between me and arrays for the VBT AUX CH stuff
is the VBT values which are shifted up into the upper nibble of
the byte. So using those directly would result in giant arrays
which are mostly empty. But I could redefine the VBT values as
just the upper four bits and shift down when parsing the VBT.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks.

> 
> 
> 
> >  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
> >  		ddc_pin = icl_port_to_ddc_pin(dev_priv, port);
> > diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
> > index 94446cac6605..b45c504c6f03 100644
> > --- a/drivers/gpu/drm/i915/intel_pch.c
> > +++ b/drivers/gpu/drm/i915/intel_pch.c
> > @@ -116,7 +116,8 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
> >  	case INTEL_PCH_MCC_DEVICE_ID_TYPE:
> >  		drm_dbg_kms(&dev_priv->drm, "Found Mule Creek Canyon PCH\n");
> >  		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
> > -		return PCH_MCC;
> > +		/* MCC is TGP compatible */
> > +		return PCH_TGP;
> >  	case INTEL_PCH_TGP_DEVICE_ID_TYPE:
> >  	case INTEL_PCH_TGP2_DEVICE_ID_TYPE:
> >  		drm_dbg_kms(&dev_priv->drm, "Found Tiger Lake LP PCH\n");
> > diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/intel_pch.h
> > index b7a8cf409d48..07f6f5517968 100644
> > --- a/drivers/gpu/drm/i915/intel_pch.h
> > +++ b/drivers/gpu/drm/i915/intel_pch.h
> > @@ -24,8 +24,7 @@ enum intel_pch {
> >  	PCH_CNP,        /* Cannon/Comet Lake PCH */
> >  	PCH_ICP,	/* Ice Lake PCH */
> >  	PCH_JSP,	/* Jasper Lake PCH */
> > -	PCH_MCC,        /* Mule Creek Canyon PCH */
> > -	PCH_TGP,	/* Tiger Lake PCH */
> > +	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
> >  	PCH_ADP,	/* Alder Lake PCH */
> >  
> >  	/* Fake PCHs, functionality handled on the same PCI dev */
> > @@ -69,7 +68,6 @@ enum intel_pch {
> >  #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
> >  #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
> >  #define HAS_PCH_JSP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_JSP)
> > -#define HAS_PCH_MCC(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MCC)
> >  #define HAS_PCH_TGP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_TGP)
> >  #define HAS_PCH_ICP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ICP)
> >  #define HAS_PCH_CNP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_CNP)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
