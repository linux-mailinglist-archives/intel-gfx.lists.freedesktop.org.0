Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9F3417775
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 17:24:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFA346E1D2;
	Fri, 24 Sep 2021 15:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E80976E1CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 15:24:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="222207112"
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="222207112"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 08:24:19 -0700
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="703887858"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 08:24:18 -0700
Date: Fri, 24 Sep 2021 18:24:15 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <20210924152415.GC1452431@ideak-desk.fi.intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-3-imre.deak@intel.com>
 <6f82ecb6ff1d3ce8606b8cfadd0605677d44125b.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6f82ecb6ff1d3ce8606b8cfadd0605677d44125b.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915/adlp/tc: Fix PHY connected
 check for Thunderbolt mode
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 24, 2021 at 02:18:30AM +0300, Souza, Jose wrote:
> On Tue, 2021-09-21 at 03:23 +0300, Imre Deak wrote:
> > On ADL-P the PHY ready (aka status complete on other platforms) flag is
> > always set, besides when a DP-alt, legacy sink is connected also when a
> > TBT sink is connected or nothing is connected. So assume the PHY to be
> > connected when both the TBT live status and PHY ready flags are set.
> > 
> > Cc: José Roberto de Souza <jose.souza@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_tc.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> > index 3ffece568ed98..7dc3696085c71 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > @@ -509,6 +509,10 @@ static bool icl_tc_phy_is_connected(struct intel_digital_port *dig_port)
> >  		return dig_port->tc_mode == TC_PORT_TBT_ALT;
> >  	}
> >  
> > +	/* On ADL-P the PHY complete flag is set in TBT mode as well. */
> > +	if (IS_ALDERLAKE_P(i915) && dig_port->tc_mode == TC_PORT_TBT_ALT)
> > +		return true;
> 
> I don't have hardware to test(My adl-p do not have TC ports enabled)
> but if phy complete/ready is set in TBT mode, this change makes sense.

The reg description has been updated now, it's a bit clearer. But yes,
that's what I see it's set regardless of something being connected or
not and regardless of what is connected.

> Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
> 
> > +
> >  	if (!tc_phy_is_owned(dig_port)) {
> >  		drm_dbg_kms(&i915->drm, "Port %s: PHY not owned\n",
> >  			    dig_port->tc_port_name);
> 
