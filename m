Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 468954177CE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 17:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19EB66EE51;
	Fri, 24 Sep 2021 15:32:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6749B6EE4C
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 15:32:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="287765350"
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="287765350"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 08:31:57 -0700
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="476185349"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 08:31:56 -0700
Date: Fri, 24 Sep 2021 18:31:52 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <20210924153152.GD1452431@ideak-desk.fi.intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-5-imre.deak@intel.com>
 <f56fd922c9b349cee458be9edcbe028cab178fd6.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f56fd922c9b349cee458be9edcbe028cab178fd6.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915/tc: Check for DP-alt,
 legacy sinks before taking PHY ownership
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

On Fri, Sep 24, 2021 at 03:30:07AM +0300, Souza, Jose wrote:
> On Tue, 2021-09-21 at 03:23 +0300, Imre Deak wrote:
> > On ADL-P the PHY ready/complete flag is always set even in TBT-alt mode.
> > To avoid taking the PHY ownership and the following spurious "PHY sudden
> > disconnect" messages on this platform when connecting the PHY in TBT
> > mode, check if there is any DP-alt or legacy sink connected before
> > taking the ownership.
> > 
> > Cc: José Roberto de Souza <jose.souza@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_tc.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> > index 0d3555437b0b1..1f76c11d70834 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > @@ -432,6 +432,13 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
> >  		goto out_set_tbt_alt_mode;
> >  	}
> >  
> > +	if (!(tc_port_live_status_mask(dig_port) &
> > +	      (BIT(TC_PORT_DP_ALT) | BIT(TC_PORT_LEGACY)))) {
> > +		drm_dbg_kms(&i915->drm, "Port %s: nothing is connected\n",
> > +			    dig_port->tc_port_name);
> 
> Misleading log, it could have actual TBT connected and it would print
> nothing is connected.

Yes, missed that case. Will change that to print live_status_mask()
instead.

> Could you also add a comment in tc_phy_status_complete() about the TBT
> behavior on adl-p?

It means a different thing than what it means on previous platforms, can
add a note about this. 

> Fixing the above:
> Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
> 
> > +		goto out_set_tbt_alt_mode;
> > +	}
> > +
> >  	if (!tc_phy_take_ownership(dig_port, true) &&
> >  	    !drm_WARN_ON(&i915->drm, dig_port->tc_legacy_port))
> >  		goto out_set_tbt_alt_mode;
> 
