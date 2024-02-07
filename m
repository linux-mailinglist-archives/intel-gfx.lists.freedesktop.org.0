Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D200984CE61
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 16:49:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2323D10E6EE;
	Wed,  7 Feb 2024 15:48:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K4+V7s1k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CE4B10E6EE
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 15:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707320937; x=1738856937;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PoD7wwo5SeSvVWp2uLvJqNhQQ4QGTQygaSh+VXQ0eto=;
 b=K4+V7s1kJPHPy4Dt71ecxZC5xzbZkN1nRQ17jNN75K4f/qWhrvF2FCRB
 TlFOhXpZ9WQeBo5s23Nq8vuJlP7hxC6/lUmBE6uoAi9Bg7EtKnAcnEaYM
 YNG4KEUZ7py5s3o5QygxP/eTJZo0BjPe9X/+ZR8F5wiUkgW5PwBmfZa7i
 UJKPpovDHRzTDHjiPQ+rSD2PvZF+fO3UtwboKVoV9wtFg8RoZsehZUQ0o
 5rTyRSY/k9Cf0Fi85GYy1jrTuM/VMhgSXG0lJX2VigC/ExMpKKnxnue9A
 9sZbkvDkxDTT6HRwZ/hWF2TfZVZk/aM/DhhKSbIskdOVUkwh1zuvCQwDm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="894860"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; 
   d="scan'208";a="894860"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 07:48:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="32440784"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.66.155])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 07:48:55 -0800
Date: Wed, 7 Feb 2024 17:49:14 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915: Prevent HW access during init from SDVO TV
 get_modes hook
Message-ID: <ZcOmelDv30dLPZN2@ideak-desk.fi.intel.com>
References: <20240206153910.1758057-1-imre.deak@intel.com>
 <20240206153910.1758057-2-imre.deak@intel.com>
 <47fac05618fb85725f9c0cfa694fb601c82b2a7f.camel@intel.com>
 <236599ca2b3982045a2515d4eaef16a2f23cefd5.camel@intel.com>
 <ZcOPVGlO+QAcysLP@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZcOPVGlO+QAcysLP@ideak-desk.fi.intel.com>
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

On Wed, Feb 07, 2024 at 04:10:28PM +0200, Imre Deak wrote:
> On Wed, Feb 07, 2024 at 03:45:15PM +0200, Hogander, Jouni wrote:
> > On Wed, 2024-02-07 at 15:26 +0200, Hogander, Jouni wrote:
> > > On Tue, 2024-02-06 at 17:39 +0200, Imre Deak wrote:
> > > > Prevent accessing the HW from the SDVO/TV get_modes connector hook.
> > > > Returning 0 from the hook will make the caller -
> > > > drm_helper_probe_single_connector_modes() - keep the previously
> > > > detected
> > > > mode list of the connector.
> > >
> >
> > > I don't see where this is done? Not sure if looking at wrong place,
> > > but I see it tries using some override edid and in case that fails
> > > as well uses drm_add_modes_noedid?
> 
> Some default and EDID override modes are also added to the connector
> mode list, similarly to when the HW access in intel_sdvo_get_tv_modes()
> fails (along with any modes specified via the kernel command line, which
> happens unconditionally, see drm_helper_probe_add_cmdline_mode()).
> 
> All the modes detected by the encoder detect and the connector get_modes
> hooks gets added to the drm_connector::probed_modes list. From this
> __drm_helper_update_and_validate() will copy any new modes to the
> drm_connector::modes list (which will be returned to user space/kernel
> client). Thus, returning 0 from the above TV connector get_modes hook
> will preserve the list of modes on the drm_connector::modes list from an
> earlier encoder detect/connector get_modes call.

Drat, I realized the above is not quite correct. All the modes on
drm_connector:modes will be flagged as MODE_STALE and removed by
drm_mode_prune_invalid(). This means if get_modes() returns 0 only the
default/override modes will be returned, not the ones detected in an
earlier detect/get_modes call. I think this is ok, matching the case
where HW access fails, but needs at least a clarficiation in the
comment. Thanks for questioning it..

> 
> > >
> > > >
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_sdvo.c | 4 ++++
> > > >  1 file changed, 4 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > > > b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > > > index 2571ef5a1b211..ccea0efbd136f 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > > > @@ -2287,6 +2287,7 @@ static const struct drm_display_mode
> > > > sdvo_tv_modes[] = {
> > > >  static int intel_sdvo_get_tv_modes(struct drm_connector
> > > > *connector)
> > >
> > > I see intel_sdvo_get_tv_modes is called from intel_sdvo_get_modes.
> > > Why
> > > there is no need to do the same in intel_sdvo_get_lvds_modes and
> > > intel_sdvo_get_ddc_modes as well?
> > 
> > It seems you are taking care of intel_svdo_get_ddc_modes in next patch.
> > Intel_svdo_get_lvds_modes doesn't touch the hw -> nothing to do there.
> > 
> > >
> > > BR,
> > >
> > > Jouni Högander
> > >
> > > >  {
> > > >         struct intel_sdvo *intel_sdvo =
> > > > intel_attached_sdvo(to_intel_connector(connector));
> > > > +       struct drm_i915_private *i915 = to_i915(intel_sdvo-
> > > > > base.base.dev);
> > > >         struct intel_sdvo_connector *intel_sdvo_connector =
> > > >                 to_intel_sdvo_connector(connector);
> > > >         const struct drm_connector_state *conn_state = connector-
> > > > > state;
> > > > @@ -2298,6 +2299,9 @@ static int intel_sdvo_get_tv_modes(struct
> > > > drm_connector *connector)
> > > >         DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
> > > >                       connector->base.id, connector->name);
> > > >
> > > > +       if (!intel_display_driver_check_access(i915))
> > > > +               return 0;
> > > > +
> > > >         /*
> > > >          * Read the list of supported input resolutions for the
> > > > selected TV
> > > >          * format.
> > >
> > 
