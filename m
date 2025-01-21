Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D79A1811C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 16:27:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1210E10E1E7;
	Tue, 21 Jan 2025 15:27:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PxTcUnyB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 918DC10E1FB;
 Tue, 21 Jan 2025 15:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737473264; x=1769009264;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=2ScYngx43+Vo+7fL7HuTQMTb9DxCGy5CtTn6l/84BYY=;
 b=PxTcUnyBBz8VB6cFfIcL+wXDO+sWZ/ntVXrZWhuDjLxTw+AN8dAZCi/m
 CBhRZFfsP/IcqU2Zt2ZyKXZdmsJOhbn8HvXqOeIKkvM8IJaNwzhqGpCw1
 rJTTIpMOTUagnYq6hVA/TIZjuOSvaGWtX6W4VyFTbBtMpP+4SqlyuyZmg
 3h15ka8y7d95n0r4ZqUWLtBOblwfi8R4t5NnRBRjFPyvB0ZUsLdzLgn9S
 XQXBhwvFtip1GtsHOF/wsmidl8B4oWm5GAtFbmBOM154SZiamqqpTpFqI
 LLh4h4g/649y/+a8bTDESlKCebvAUTC/LP6ix9S3PIrqBopYvadNdrvKR w==;
X-CSE-ConnectionGUID: ajvOTdNST7ePhx20QYscGQ==
X-CSE-MsgGUID: E1/0SUIMSrudjrpy4D9C4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="49307096"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="49307096"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 07:27:44 -0800
X-CSE-ConnectionGUID: 18t3f6oDQVSI7jUJ+yxv8A==
X-CSE-MsgGUID: WyvojPSJQJmAQWgEsTMNQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="106628092"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 07:27:42 -0800
Date: Tue, 21 Jan 2025 17:28:36 +0200
From: Imre Deak <imre.deak@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/xe/dp: Enable DP tunneling
Message-ID: <Z4-9JIZQjC1cGJsK@ideak-desk.fi.intel.com>
References: <20250113154832.1004369-1-imre.deak@intel.com>
 <87cygqis8l.fsf@intel.com>
 <Z4VQK2mRtmeT_t6I@ideak-desk.fi.intel.com>
 <7br5fcyxwpapyyd646rqyja47wjxmgpnhvyramt64kumqevyua@codb2qklp2hu>
 <Z4p9jbQqkgRDb-HA@ideak-desk.fi.intel.com>
 <v5e2tnq6b7fr6rmi2mg24bf2x7jbljguce47s63ucugpvbiupa@z6r5kfxz6wth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <v5e2tnq6b7fr6rmi2mg24bf2x7jbljguce47s63ucugpvbiupa@z6r5kfxz6wth>
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

On Fri, Jan 17, 2025 at 10:45:56AM -0600, Lucas De Marchi wrote:
> [...]
> > > > > > diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
> > > > > > index b51a2bde73e29..50cf80df51900 100644
> > > > > > --- a/drivers/gpu/drm/xe/Kconfig
> > > > > > +++ b/drivers/gpu/drm/xe/Kconfig
> > > > > > @@ -59,6 +59,20 @@ config DRM_XE_DISPLAY
> > > > > >  	help
> > > > > >  	  Disable this option only if you want to compile out display support.
> > > > > >
> > > > > > +config DRM_XE_DP_TUNNEL
> > > > > > +	bool "Enable DP tunnel support"
> > > > > > +	depends on DRM_XE
> > > > > > +	depends on USB4
> > > > > > +	select DRM_DISPLAY_DP_TUNNEL
> > > > > > +	default y
> > > > > > +	help
> > > > > > +	  Choose this option to detect DP tunnels and enable the Bandwidth
> > > > > > +	  Allocation mode for such tunnels. This allows using the maximum
> > > > > > +	  resolution allowed by the link BW on all displays sharing the
> > > > > > +	  link BW, for instance on a Thunderbolt link.
> > > > > > +
> > > > > > +	  If in doubt say "Y".
> > > > > > +
> > > > >
> > > > > I'm sort of wondering why we have this (and the i915 one) as
> > > > > user-selectable config options at all. Is it ever reasonable for the
> > > > > user to disable this if USB4 is enabled?
> > > >
> > > > On platforms that don't support DP tunneling, while supporting other
> > > > USB4 functionality (or for systems w/o any TypeC/DP connectors) it would
> > > > make sense to disable this option.
> > > 
> > > isn't this too fine grained? if we expose every single functionality of
> > > the driver like this we will bury distros on configs and exponentially
> > > explode the testing combination. And yes, this broke the build for me.
> > 
> > The tunneling functionality depends on USB4, BW allocation could fail
> > without that. The option being user selectable also makes sense to me,
> > as it has a size (~30kB) and runtime overhead (detecting tunnels and
> > allocating/freeing BW), only required if the user has a dock/multiple
> > displays.
> 
> I will leave this up to the display maintainers - I still think it's too
> fine grained to have this option as user selectable and worse, in 2
> drivers.... does the user have to know which driver officially support
> that hardware to enable one and disable the other?

All the display options should be configured at one place, but that's
only feasible with a separate display module (which is the goal afaik).

> Lucas De Marchi
