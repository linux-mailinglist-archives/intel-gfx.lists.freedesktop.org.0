Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 977AB213052
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 02:05:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 529BE6E866;
	Fri,  3 Jul 2020 00:05:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B097C6E866
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 00:05:07 +0000 (UTC)
IronPort-SDR: N8ZmViihLRK/JpP0HDsVEqX8Z4zIWsdwihAlgZztKaDomNkAK2//BgHjvj/rxqz2DtLQtmMiRg
 jvPppawvnkcg==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="135338062"
X-IronPort-AV: E=Sophos;i="5.75,306,1589266800"; d="scan'208";a="135338062"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 17:05:06 -0700
IronPort-SDR: 7OjVo32AsQRbVl3F9S5Sh5X7Jw+YApCroFQxrbLtNqucv0JOPUsmpeeoEDsAyik5SNCoyZAmER
 VkNFTV0MTAQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,306,1589266800"; d="scan'208";a="304405359"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga004.fm.intel.com with ESMTP; 02 Jul 2020 17:05:06 -0700
Date: Thu, 2 Jul 2020 17:06:45 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200703000645.GB1225@intel.com>
References: <20200702221818.29094-1-matthew.s.atwood@intel.com>
 <81c8ff248ea40be27ea51152fcef200c5f3c6a77.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <81c8ff248ea40be27ea51152fcef200c5f3c6a77.camel@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/dp: Correctly advertise
 HBR3 for GEN11+"
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 02, 2020 at 03:34:36PM -0700, Souza, Jose wrote:
> On Thu, 2020-07-02 at 15:18 -0700, Matt Atwood wrote:
> > The initial CI results did not include a TGL system which includes a
> > panel that is having issues with patch. Revert while we triage.
> > 
> > This reverts commit 680c45c767f63e35f063d3ea04f388a9f7ae7079.
> 
> Missing the Signed-off-by line also the commit references should follow this format "2850748ef876 ("drm/i915: Pull i915_vma_pin under the vm-
> >mutex")".
> Please CC me in the updated version.

Arent these references for the Fixes , I see that revert references have always been a full SHA like
Matt has in his patch?

Can you review his v2?

Regards
Manasi

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 28 +++++++++++++++----------
> >  1 file changed, 17 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index a5ab405d3a12..d6295eb20b63 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -137,8 +137,6 @@ static const u8 valid_dsc_slicecount[] = {1, 2, 4};
> >   *
> >   * If a CPU or PCH DP output is attached to an eDP panel, this function
> >   * will return true, and false otherwise.
> > - *
> > - * This function is not safe to use prior to encoder type being set.
> >   */
> >  bool intel_dp_is_edp(struct intel_dp *intel_dp)
> >  {
> > @@ -8159,6 +8157,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
> >  		     intel_encoder->base.name))
> >  		return false;
> >  
> > +	intel_dp_set_source_rates(intel_dp);
> > +
> >  	intel_dp->reset_link_params = true;
> >  	intel_dp->pps_pipe = INVALID_PIPE;
> >  	intel_dp->active_pipe = INVALID_PIPE;
> > @@ -8174,22 +8174,28 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
> >  		 */
> >  		drm_WARN_ON(dev, intel_phy_is_tc(dev_priv, phy));
> >  		type = DRM_MODE_CONNECTOR_eDP;
> > -		intel_encoder->type = INTEL_OUTPUT_EDP;
> > -
> > -		/* eDP only on port B and/or C on vlv/chv */
> > -		if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
> > -				      IS_CHERRYVIEW(dev_priv)) &&
> > -				port != PORT_B && port != PORT_C))
> > -			return false;
> >  	} else {
> >  		type = DRM_MODE_CONNECTOR_DisplayPort;
> >  	}
> >  
> > -	intel_dp_set_source_rates(intel_dp);
> > -
> >  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> >  		intel_dp->active_pipe = vlv_active_pipe(intel_dp);
> >  
> > +	/*
> > +	 * For eDP we always set the encoder type to INTEL_OUTPUT_EDP, but
> > +	 * for DP the encoder type can be set by the caller to
> > +	 * INTEL_OUTPUT_UNKNOWN for DDI, so don't rewrite it.
> > +	 */
> > +	if (type == DRM_MODE_CONNECTOR_eDP)
> > +		intel_encoder->type = INTEL_OUTPUT_EDP;
> > +
> > +	/* eDP only on port B and/or C on vlv/chv */
> > +	if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
> > +			      IS_CHERRYVIEW(dev_priv)) &&
> > +			intel_dp_is_edp(intel_dp) &&
> > +			port != PORT_B && port != PORT_C))
> > +		return false;
> > +
> >  	drm_dbg_kms(&dev_priv->drm,
> >  		    "Adding %s connector on [ENCODER:%d:%s]\n",
> >  		    type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
