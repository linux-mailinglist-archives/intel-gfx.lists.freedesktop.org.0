Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00566822F0D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 15:00:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B97E010E064;
	Wed,  3 Jan 2024 14:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5613710E064
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 14:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704290418; x=1735826418;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VeYjDa/OY0LHaYt3iqfFC4inncwZ+L9A5F7xreIa5t4=;
 b=DdPSnVTgs47R9ddRtBInPpXdZzf4QgK7JeR5dO0Scd9gXgKIyr/T+qSP
 +Zny01JLkOx/LjsnHNVdm6BY5KNHwVXmZTfk1BorKGr9szUSHsA8ksO8u
 IUFrZmhojKZjaY+KC/QkWFap+b3eYLLWRd5sO6X4wLijey23d+e6A2jAy
 SSn7o3iE9gygjZdECZDTdyP3VbG2wHOqAPOX8qr4AH6T/k80+ErokpJvt
 pNO80ZedPfuQAyJL4ankpejSJ/JbeDzUOCeKPXQfJuW6/XxSFdXHn0LHj
 9GfNRLaDnXCLVaGZAT3EgpyhCW8delOs62d4A0N542EAfI8xEgI8FKpkQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="10610664"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="10610664"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 06:00:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="808835714"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="808835714"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 06:00:15 -0800
Date: Wed, 3 Jan 2024 16:00:26 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Fix the PSR debugfs entries wrt. MST
 connectors
Message-ID: <ZZVoekU4A/YJZXDw@ideak-desk.fi.intel.com>
References: <20240103110029.2408342-1-imre.deak@intel.com>
 <8c206b5963fa88890a62db33a5d4a34513025a1f.camel@intel.com>
 <ZZVC4XwaAbSGnpqF@ideak-desk.fi.intel.com>
 <769a9b24f6c938abb5131f4036e59c6fdce6739c.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <769a9b24f6c938abb5131f4036e59c6fdce6739c.camel@intel.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 03, 2024 at 01:37:08PM +0200, Hogander, Jouni wrote:
> > > > [...]
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > index 494d08817d71e..b5b9340e505e3 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > @@ -3310,11 +3310,8 @@ void
> > > > intel_psr_connector_debugfs_add(struct
> > > > intel_connector *connector)
> > > >         struct drm_i915_private *i915 = to_i915(connector->base.dev);
> > > >         struct dentry *root = connector->base.debugfs_entry;
> > > >
> > > > -       if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
> > > > {
> > > > -               if (!(HAS_DP20(i915) &&
> > > > -                     connector->base.connector_type == DRM_MODE_CONNECTOR_DisplayPort))
> > > > -                       return;
> > > > -       }
> > > > +       if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
> > > > +               return;
> > >
> > > Would it be possible to disable it only for MST connector? I think
> > > this is disabling it also for DP SST, no?
> >
> > Yes, it keeps it enabled only for eDP. It could be enabled for SST as
> > well yes, but I thought as a fix the above is better, adding support
> > for other connector types as a follow up.
> 
> if (connector->mst_port || !(HAS_DP20(i915) &&
> connectorbase.connector_type == DRM_MODE_CONNECTOR_DisplayPort))
>     return;
> 
> Is it possible to use this instead?

Looking through it I don't see a problem on SST connectors either, so
I'd rather leave the entries enabled for them on all platforms, that is

	if ((connector_type != DRM_MODE_CONNECTOR_eDP &&
	     connector_type != DRM_MODE_CONNECTOR_DisplayPort) ||
	    connector->mst_port)
		return;

> BR,
> 
> Jouni Högander
> 
> >
> > > BR,
> > >
> > > Jouni Högander
> > > >
> > > >         debugfs_create_file("i915_psr_sink_status", 0444, root,
> > > >                             connector,
> > > > &i915_psr_sink_status_fops);
> > >
> 
