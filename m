Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAA14E63C0
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 13:59:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3252610E94E;
	Thu, 24 Mar 2022 12:59:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32F5B10E957
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 12:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648126795; x=1679662795;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CInwlKVlZK5FmDz0eRIAgbQorVK0jPGfE26IYqTD8UY=;
 b=SgLqsnR6AlLX2zFI0/MMOPT2PGNzgJmTgrqVaE1h+pgXwWqSyw2T7k3Z
 +IEjPK1LBCWWLazscV/wssRoGkBketiarlYP3rRDQvHKHJD1TVvNTBPwa
 37y/OIGuXQpKp65VLo7BQg/CCfMrqYPHkKQV3NNnLR/fMJGmJ5H83uVVP
 6GgY6dZyhFGXxuJExtFbhPRyDnazuxiN4mUnhQTkJ+xLZumxfie6oVdFF
 2M+EtieE8Ll/pDqOmfSa5PmrPdgPlHXfGCpmyWrAG8VmvvXubI7NDAMgZ
 Kx6zCBXNSS9Ks3ZckgRAv2X7RRCgr7r/AsurY6uvQDBCcBKmO6O/HfBzy A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="258557170"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="258557170"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 05:59:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="693314046"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga001.fm.intel.com with SMTP; 24 Mar 2022 05:59:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Mar 2022 14:59:52 +0200
Date: Thu, 24 Mar 2022 14:59:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <YjxrSMhea/d7BHKs@intel.com>
References: <20220324110959.1857869-1-uma.shankar@intel.com>
 <YjxZCqrQ9Rxw4CJx@intel.com>
 <c64a4e50252543319fc638e63fffffa5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c64a4e50252543319fc638e63fffffa5@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [v3] drm/i915/display: Extend DP HDR support to hsw+
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

On Thu, Mar 24, 2022 at 11:58:15AM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Thursday, March 24, 2022 5:12 PM
> > To: Shankar, Uma <uma.shankar@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [v3] drm/i915/display: Extend DP HDR support to hsw+
> > 
> > On Thu, Mar 24, 2022 at 04:39:59PM +0530, Uma Shankar wrote:
> > > HSW+ platforms are able to send out HDR Metadata SDP DIP
> > > packet as GMP. Hence, extending the support for HDR on DP encoders for
> > > the same.
> > >
> > > v2: Limited to non eDP ports on hsw/bdw and removed it for lspcon as
> > > it is done separately (suggested by Ville)
> > >
> > > v3: Added helper and limited eDP restriction to port A (Ville)
> > >
> > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5389
> > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 22 +++++++++++++++++++++-
> > >  1 file changed, 21 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 9e19165fd175..c993d82c7ec9 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -4913,6 +4913,26 @@ bool intel_dp_is_port_edp(struct drm_i915_private
> > *dev_priv, enum port port)
> > >  	return intel_bios_is_port_edp(dev_priv, port);  }
> > >
> > > +static bool
> > > +has_gamut_metadata_dip(struct drm_i915_private *dev_priv,
> > 
> > s/dev_priv/i915/ for modern style
> 
> Ok, will update
> 
> > 
> > > +		       struct intel_dp *intel_dp, enum port port) {
> > > +	if (intel_bios_is_lspcon_present(dev_priv, port))
> > > +		return false;
> > > +
> > > +	if (DISPLAY_VER(dev_priv) >= 10 && !IS_GEMINILAKE(dev_priv))
> > > +		return true;
> > 
> > DISPLAY_VER >= 11
> > 
> > > +
> > > +	if (port == PORT_A && intel_dp_is_edp(intel_dp))
> > 
> > The is_edp check is still wrong. Should be just port==A.
> > Also allows you to drop the intel_dp argument to the function.
> 
> In the register description for VIDEO_DIP_CTL, (Bspec:7748)
> BitField: VDIP Enable GMP
> [BDW, SKL, BXT, KBL, KBLH, GLK, GLV, CFL, WHL, AML, CML, CNL, LKFR]
> GMP is not supported on transcoder EDP going to DDI A.
> 
> That's why was checking for eDP. But port A check should be good enough.

Transcoder EDP is hardwired to DDI A. Despite the name it has
nothing to do with eDP vs. DP.

Having the eDP check would be just wrong because it would then
attach the property to DDI A when it is used as an external DP
port. And yes, such machines do in fact exist.

> Will drop it.
> 
> > > +		return false;
> > > +
> > > +	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv) ||
> > > +	    IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 9)
> > > +		return true;
> > 
> > The IS_GLK check is redundant.
> 
> Yeah will drop it.
> 
> > > +
> > > +	return false;
> > > +}
> > > +
> > >  static void
> > >  intel_dp_add_properties(struct intel_dp *intel_dp, struct
> > > drm_connector *connector)  { @@ -4939,7 +4959,7 @@
> > > intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
> > >  		intel_attach_dp_colorspace_property(connector);
> > >  	}
> > >
> > > -	if (IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 11)
> > > +	if (has_gamut_metadata_dip(dev_priv, intel_dp, port))
> > >  		drm_object_attach_property(&connector->base,
> > >  					   connector->dev-
> > >mode_config.hdr_output_metadata_property,
> > >  					   0);
> > > --
> > > 2.25.1
> > 
> > --
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
