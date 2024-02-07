Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFA884CC74
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 15:16:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FC7B10E3C5;
	Wed,  7 Feb 2024 14:15:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dSKR0syx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7070410E3C5
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 14:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707315358; x=1738851358;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kL3+/0R0+PkOy2CURimOPRa2dTk4p3dwgLqyxfOfyTs=;
 b=dSKR0syx9VMApHZE2Hh2NtoH1sgeQ5r/csaK6cFuOmbpq55iLuwRjXWs
 GK2NEAEdwh8qas2Rxp2YGkPd6Tl5j48WkV//USCXalFs7vtIB0UD/r92F
 zSAG9wFxNWZXEFjPUikBg6xB2vU9FY/+nQS+/79VqQi9yNQvi7ZPpvC7/
 bL/2UqWjKJE/VwCYXCCAyxFDQziW2VQTZ9mcm9djfVtwb9jLkDnCC+XqG
 YvBEpZainjgFpnB5HBgphT9FdazXyltX4li4vNYvQwFLciIfCtdwqTbOo
 Nxqm9FchbR47NcFVvY1+qfo80huF+G+c+01jxSihjLxrSlWkULcauY00R g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="1130021"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; 
   d="scan'208";a="1130021"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 06:15:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="24583796"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.66.155])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 06:15:55 -0800
Date: Wed, 7 Feb 2024 16:16:13 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915: Prevent HW access during init from SDVO TV
 get_modes hook
Message-ID: <ZcOQrSdCVpZIL8xR@ideak-desk.fi.intel.com>
References: <20240206153910.1758057-1-imre.deak@intel.com>
 <20240206153910.1758057-2-imre.deak@intel.com>
 <47fac05618fb85725f9c0cfa694fb601c82b2a7f.camel@intel.com>
 <236599ca2b3982045a2515d4eaef16a2f23cefd5.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <236599ca2b3982045a2515d4eaef16a2f23cefd5.camel@intel.com>
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

On Wed, Feb 07, 2024 at 03:45:15PM +0200, Hogander, Jouni wrote:
> On Wed, 2024-02-07 at 15:26 +0200, Hogander, Jouni wrote:
> > On Tue, 2024-02-06 at 17:39 +0200, Imre Deak wrote:
> > > Prevent accessing the HW from the SDVO/TV get_modes connector hook.
> > > Returning 0 from the hook will make the caller -
> > > drm_helper_probe_single_connector_modes() - keep the previously
> > > detected
> > > mode list of the connector.
> >
> > I don't see where this is done? Not sure if looking at wrong place,
> > but
> > I see it tries using some override edid and in case that fails as
> > well
> > uses drm_add_modes_noedid?
> >
> > >
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_sdvo.c | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > > b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > > index 2571ef5a1b211..ccea0efbd136f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > > @@ -2287,6 +2287,7 @@ static const struct drm_display_mode
> > > sdvo_tv_modes[] = {
> > >  static int intel_sdvo_get_tv_modes(struct drm_connector
> > > *connector)
> >
> > I see intel_sdvo_get_tv_modes is called from intel_sdvo_get_modes.
> > Why there is no need to do the same in intel_sdvo_get_lvds_modes and
> > intel_sdvo_get_ddc_modes as well?
> 
> It seems you are taking care of intel_svdo_get_ddc_modes in next patch.
> Intel_svdo_get_lvds_modes doesn't touch the hw -> nothing to do there.

Yes, all the connectors that read out an EDID - vs. the TV connector
which doesn't - is handled by the next patch. And yes, the connectors
which don't access the HW in the get_modes hook doesn't need this check.
Btw, I think all the connectors should work - eventually - in this way:
access the HW only in the encoder detect hook and from the get_modes
hook only return the detected mode list w/o accessing the HW. DP-SST and
HDMI do already the correct thing wrt. this.

> 
> >
> > BR,
> >
> > Jouni Högander
> >
> > >  {
> > >         struct intel_sdvo *intel_sdvo =
> > > intel_attached_sdvo(to_intel_connector(connector));
> > > +       struct drm_i915_private *i915 = to_i915(intel_sdvo-
> > > > base.base.dev);
> > >         struct intel_sdvo_connector *intel_sdvo_connector =
> > >                 to_intel_sdvo_connector(connector);
> > >         const struct drm_connector_state *conn_state = connector-
> > > > state;
> > > @@ -2298,6 +2299,9 @@ static int intel_sdvo_get_tv_modes(struct
> > > drm_connector *connector)
> > >         DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
> > >                       connector->base.id, connector->name);
> > >
> > > +       if (!intel_display_driver_check_access(i915))
> > > +               return 0;
> > > +
> > >         /*
> > >          * Read the list of supported input resolutions for the
> > > selected TV
> > >          * format.
> >
> 
