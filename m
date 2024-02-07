Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB62A84CC5D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 15:10:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52D4E10E7B1;
	Wed,  7 Feb 2024 14:10:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QXVHpy7N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3430F10E7B1
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 14:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707315026; x=1738851026;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=j843jgXoR6XcCoOSu+O6Nh8qjblrrlKM20LRppKsAMk=;
 b=QXVHpy7N2QO4oW8AHp9jwBXY+gDln3gSvX5TSkduRlO4Ho3pGhXHlxxZ
 1/3QQ9Iaive5hLTCHcTAgE82YQufPsHJY2jRk9epJnmPIbLVnyrTmiQGP
 IeWOz1s5wD+UL8zKmQmjri45BIBgixSIGv/gNpZYFh8fB/Q0drLjRnuNg
 oW5ALupz4dBBYieLBdkAsRjfroSand/2v4QdR2JmHcTo8WzkGhBmnYyon
 3831de2qGWMxzwnPBI+n8WtbNYhZ1g7EKctOwc5gs4JObTwKyuNPzGK+K
 4bcv2csbnyWRTytblPt3Tmvf5sKEZCMNUAwwey4A7sjVrbObP58gquc3I g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="3982725"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; 
   d="scan'208";a="3982725"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 06:10:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; 
   d="scan'208";a="1337340"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.66.155])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 06:10:23 -0800
Date: Wed, 7 Feb 2024 16:10:28 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915: Prevent HW access during init from SDVO TV
 get_modes hook
Message-ID: <ZcOPVGlO+QAcysLP@ideak-desk.fi.intel.com>
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
>
> > I don't see where this is done? Not sure if looking at wrong place,
> > but I see it tries using some override edid and in case that fails
> > as well uses drm_add_modes_noedid?

Some default and EDID override modes are also added to the connector
mode list, similarly to when the HW access in intel_sdvo_get_tv_modes()
fails (along with any modes specified via the kernel command line, which
happens unconditionally, see drm_helper_probe_add_cmdline_mode()).

All the modes detected by the encoder detect and the connector get_modes
hooks gets added to the drm_connector::probed_modes list. From this
__drm_helper_update_and_validate() will copy any new modes to the
drm_connector::modes list (which will be returned to user space/kernel
client). Thus, returning 0 from the above TV connector get_modes hook
will preserve the list of modes on the drm_connector::modes list from an
earlier encoder detect/connector get_modes call.

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
> > Why
> > there is no need to do the same in intel_sdvo_get_lvds_modes and
> > intel_sdvo_get_ddc_modes as well?
> 
> It seems you are taking care of intel_svdo_get_ddc_modes in next patch.
> Intel_svdo_get_lvds_modes doesn't touch the hw -> nothing to do there.
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
