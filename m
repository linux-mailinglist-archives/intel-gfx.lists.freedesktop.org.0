Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 501218C9B27
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 12:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C419810E1DD;
	Mon, 20 May 2024 10:23:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z0RfvPY1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E2A210E1DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 10:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716200637; x=1747736637;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=0vQaa8YymI+8l1HuXCwUw2XY5sBrtbP/5eZfC/jngqo=;
 b=Z0RfvPY1Nxz4zL+YUl0yA1fqeX3FzyClTq4dQzPX8e0HP3D8hWrBrIqA
 cBSKabnfd6SeEmstXBoH1TVc9kJOjN+/BZ7sSgKSGAp69kMiD1SlWhA+p
 wpkdGwrGTpZCKIypsEA2LaQxn7Jlh02ZJvX23EzpOGR5CpJd0bF7wLC9v
 jNK06L5m7O7XzPgDhAgfUENzyBVzvdmGCZbWIDIzhJV4YWFl+5lBjQ81S
 lOp6epEaQ4MbMladRiuxHsELlZcwrCB37kpxn5844h9YZlmS/1OfNmFMB
 eq8rTKEMo+8EWgUCL8RukEdrh7+DJtl+S1EN4W6JSVcKQZqIZZEWMcgQl Q==;
X-CSE-ConnectionGUID: MMCuztXJTKiRQJtENP2FXg==
X-CSE-MsgGUID: 5EvW8kKLTf+mauXduVDdTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="12431854"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="12431854"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 03:23:57 -0700
X-CSE-ConnectionGUID: JJu4NyGNRi+N6usCDXoXjA==
X-CSE-MsgGUID: OIya+h61SISKoJWSTZ//TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="55723904"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 03:23:55 -0700
Date: Mon, 20 May 2024 13:23:59 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/hdcp: Check mst_port to determine connector
 type
Message-ID: <Zkskv5pWUlxYj2KC@ideak-desk.fi.intel.com>
References: <20240507035037.1025012-1-suraj.kandpal@intel.com>
 <20240507035037.1025012-3-suraj.kandpal@intel.com>
 <ZkdSNa0Cb1EpwpUB@ideak-desk.fi.intel.com>
 <SN7PR11MB6750DAD5AAD6759070FCD197E3E92@SN7PR11MB6750.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN7PR11MB6750DAD5AAD6759070FCD197E3E92@SN7PR11MB6750.namprd11.prod.outlook.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 20, 2024 at 06:58:19AM +0300, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Deak, Imre <imre.deak@intel.com>
> > Sent: Friday, May 17, 2024 6:19 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Borah, Chaitanya Kumar
> > <chaitanya.kumar.borah@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> > Subject: Re: [PATCH 2/2] drm/i915/hdcp: Check mst_port to determine
> > connector type
> >
> > On Tue, May 07, 2024 at 09:20:37AM +0530, Suraj Kandpal wrote:
> > > Check mst_port field in intel_connector to check connector type rather
> > > than rely on encoder as it may not be attached to connector at times.
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > > index 551c862ed7a6..2edffe62f360 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > > @@ -693,7 +693,7 @@ int intel_dp_hdcp_get_remote_capability(struct
> > > intel_connector *connector,
> > >
> > >     *hdcp_capable = false;
> > >     *hdcp2_capable = false;
> > > -   if (!intel_encoder_is_mst(connector->encoder))
> > > +   if (!connector->mst_port)
> >
> > I suppose this fixes
> > https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10898
> >
> > Could you add the Closes: line for it?
> >
> 
> Sure Imre will add that.
> 
> > Can this function be called for anything else than an MST connector?
> >
> > Afaics it's only called from
> >
> > intel_connector_info() ->
> >       intel_hdcp_info(..., remote_req = true)
> >
> > only for MST connectors, which makes sense since only MST connectors would
> > have remote caps. In that case it would be enough to simply remove the
> > encoder check which leads to the NULL deref in case the output is disabled.
> 
> Right this function is not invoked from anywhere but hdcp_info() since
> this was Created just to have a sense of the actual HDCP capability of
> remote monitor rather than having to display the first monitor's HDCP
> capability and repeating it for the second monitor specially when in
> daisy chain setup.

I meant that it's strange to check connector->mst_port in
intel_connector_info() and then check the same condition again in the
above function, which is always true and thus redundant. In any case the
change does fix the issue, so on the patchset:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> Regards,
> Suraj Kandpal
> 
> > >             return -EINVAL;
> > >
> > >     aux = &connector->port->aux;
> > > --
> > > 2.43.2
> > >
