Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 525BC62DD59
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 14:56:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EA8B10E60D;
	Thu, 17 Nov 2022 13:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4BCC10E601
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 13:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668693369; x=1700229369;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OOoUVL003hpMkJXM/dC1YcgGCBF7GTA4Nlr6jIAe+rY=;
 b=fJoAmFdXM14zRs3lKRDM7InmYwDtsjjkZ+x5poXbZ0rYmtQIr2hwdFXh
 acwEtw9a5wCVFH05lvGn04k45hl9w+uwqxDOHiIgIWiwQRbI7C8xahFim
 h105Hyj8nPOro++Aat1aMc/EJtamJameHq+HbB/ZO4Kg+cQiIzSC/G0Xc
 CtFtNUijUhtHNSuNcyiZfo3SFj6W1u0ajDzUeVZRPgDLgk4pCzwLAXmDU
 JXYgv3Z0dIGUt5jH1mxPM7CwZcZ1LKUyAYIZonlG1Rw29kk8Qpa/cjV+L
 uaBfUiKk98P4V1Q7ERvcdMjaXHzKWXUVD9IV5X9G+CHcshkxWrs3E3tM3 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="310484220"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="310484220"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 05:56:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="634059114"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="634059114"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 05:56:07 -0800
Date: Thu, 17 Nov 2022 15:56:03 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y3Y9cwKtm1n+ZF46@ideak-desk.fi.intel.com>
References: <20221114122251.21327-1-imre.deak@intel.com>
 <20221114122251.21327-10-imre.deak@intel.com>
 <Y3Y2I/JkAaTTzAHd@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y3Y2I/JkAaTTzAHd@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 9/9] drm/i915/mtl+: Don't enable the
 AUX_IO power for non-eDP port main links
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 17, 2022 at 03:24:51PM +0200, Ville Syrjälä wrote:
> On Mon, Nov 14, 2022 at 02:22:51PM +0200, Imre Deak wrote:
> > MTL+ requires the AUX_IO power for the main link only on eDP, so don't
> > enable it in other cases.
> > 
> > v2:
> > - Rebased on checking intel_encoder_can_psr() instead of crtc->has_psr.
> > 
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 0231b273e1673..9bf303e166e1a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -868,8 +868,9 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
> >  	 */
> >  	if (intel_encoder_can_psr(&dig_port->base))
> >  		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
> > -	else if (intel_crtc_has_dp_encoder(crtc_state) ||
> > -		 intel_phy_is_tc(i915, phy))
> > +	else if (DISPLAY_VER(i915) < 14 &&
> > +		 (intel_crtc_has_dp_encoder(crtc_state) ||
> 
> You want to keep that for now, and maybe remove later I guess?

Yes, according to
https://lore.kernel.org/intel-gfx/20221107170917.3566758-5-imre.deak@intel.com/T/#m49ef1ce586700e1

> Series looks OK to me.
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Thanks.

> 
> > +		  intel_phy_is_tc(i915, phy)))
> >  		return intel_aux_power_domain(dig_port);
> >  	else
> >  		return POWER_DOMAIN_INVALID;
> > -- 
> > 2.37.1
> 
> -- 
> Ville Syrjälä
> Intel
