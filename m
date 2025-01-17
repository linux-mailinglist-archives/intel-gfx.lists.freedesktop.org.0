Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A922CA1534A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 16:55:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1505910EB22;
	Fri, 17 Jan 2025 15:55:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CU4QXM+B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 873CE10EB26;
 Fri, 17 Jan 2025 15:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737129309; x=1768665309;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=yloZtQttLVqQWTv0+fvza+PguvAf+6/Bp3hrzkxN4zo=;
 b=CU4QXM+BQHeMmd29xbqL6lxRgWg/wLmAsQabXbKTMaTM/fwkb9ALEmJh
 6YbTDkCObJ0dIm1BUvPywJ/6FyTuxNURk+ZRXM+t2uTyv1u7rTbVC0kt3
 R9ce5y+r9nQxlGXE/yeCVzoolxfbqlJYLTFip2Uwv5hvwmSHVrYyjGaEr
 9STcU8yaqils4dVLPUQCCdfmn86n++fVIuToTXtcd6Muc0ehJteZOKZEP
 swHmzw1GdNDkPXs0gZJKQ2xHHoMiLZ2O2tbO5H1p6BexnVGDfDW/4VbP1
 1qUWVNSmRBlTy29uYntGhkLQmfycRRzaMbfzv5lEDae2R4Xx0GRnPG1Ob g==;
X-CSE-ConnectionGUID: CFIOnTRUTEiFk8RjQmOR7g==
X-CSE-MsgGUID: LJ14mRXKT9WX/JU2XR7Fow==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="41495160"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="41495160"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 07:55:08 -0800
X-CSE-ConnectionGUID: eWNhFaqLTjOct1MP6HmX1g==
X-CSE-MsgGUID: BLJQPaZ3Spm8JOrWSleN4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136723730"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 07:55:06 -0800
Date: Fri, 17 Jan 2025 17:55:57 +0200
From: Imre Deak <imre.deak@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe/dp: Enable DP tunneling
Message-ID: <Z4p9jbQqkgRDb-HA@ideak-desk.fi.intel.com>
References: <20250113154832.1004369-1-imre.deak@intel.com>
 <87cygqis8l.fsf@intel.com>
 <Z4VQK2mRtmeT_t6I@ideak-desk.fi.intel.com>
 <7br5fcyxwpapyyd646rqyja47wjxmgpnhvyramt64kumqevyua@codb2qklp2hu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7br5fcyxwpapyyd646rqyja47wjxmgpnhvyramt64kumqevyua@codb2qklp2hu>
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

On Thu, Jan 16, 2025 at 02:38:34PM -0600, Lucas De Marchi wrote:
> On Mon, Jan 13, 2025 at 07:40:59PM +0200, Imre Deak wrote:
> > On Mon, Jan 13, 2025 at 06:38:34PM +0200, Jani Nikula wrote:
> > > On Mon, 13 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> > > > Enable the DP tunneling functionality in the xe driver.
> > > >
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp_tunnel.h |  5 +++--
> > > >  drivers/gpu/drm/xe/Kconfig                     | 14 ++++++++++++++
> > > >  drivers/gpu/drm/xe/Makefile                    |  3 +++
> > > >  3 files changed, 20 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > > > index e9314cf25a193..7a91b4945eb8d 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > > > @@ -20,7 +20,8 @@ struct intel_dp;
> > > >  struct intel_encoder;
> > > >  struct intel_link_bw_limits;
> > > >
> > > > -#if IS_ENABLED(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)
> > > > +#if (defined(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)) || \
> > > > +	(defined(CONFIG_DRM_XE_DP_TUNNEL) && !defined(I915))
> > > 
> > > Please retain IS_ENABLED for checking kconfig symbols.
> > 
> > Ok, missed that, will change it.
> > 
> > > >  int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct drm_modeset_acquire_ctx *ctx);
> > > >  void intel_dp_tunnel_disconnect(struct intel_dp *intel_dp);
> > > > @@ -127,6 +128,6 @@ intel_dp_tunnel_mgr_init(struct intel_display *display)
> > > >
> > > >  static inline void intel_dp_tunnel_mgr_cleanup(struct intel_display *display) {}
> > > >
> > > > -#endif /* CONFIG_DRM_I915_DP_TUNNEL */
> > > > +#endif /* CONFIG_DRM_I915_DP_TUNNEL || CONFIG_DRM_XE_DP_TUNNEL */
> > > >
> > > >  #endif /* __INTEL_DP_TUNNEL_H__ */
> > > > diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
> > > > index b51a2bde73e29..50cf80df51900 100644
> > > > --- a/drivers/gpu/drm/xe/Kconfig
> > > > +++ b/drivers/gpu/drm/xe/Kconfig
> > > > @@ -59,6 +59,20 @@ config DRM_XE_DISPLAY
> > > >  	help
> > > >  	  Disable this option only if you want to compile out display support.
> > > >
> > > > +config DRM_XE_DP_TUNNEL
> > > > +	bool "Enable DP tunnel support"
> > > > +	depends on DRM_XE
> > > > +	depends on USB4
> > > > +	select DRM_DISPLAY_DP_TUNNEL
> > > > +	default y
> > > > +	help
> > > > +	  Choose this option to detect DP tunnels and enable the Bandwidth
> > > > +	  Allocation mode for such tunnels. This allows using the maximum
> > > > +	  resolution allowed by the link BW on all displays sharing the
> > > > +	  link BW, for instance on a Thunderbolt link.
> > > > +
> > > > +	  If in doubt say "Y".
> > > > +
> > > 
> > > I'm sort of wondering why we have this (and the i915 one) as
> > > user-selectable config options at all. Is it ever reasonable for the
> > > user to disable this if USB4 is enabled?
> > 
> > On platforms that don't support DP tunneling, while supporting other
> > USB4 functionality (or for systems w/o any TypeC/DP connectors) it would
> > make sense to disable this option.
> 
> isn't this too fine grained? if we expose every single functionality of
> the driver like this we will bury distros on configs and exponentially
> explode the testing combination. And yes, this broke the build for me.

The tunneling functionality depends on USB4, BW allocation could fail
without that. The option being user selectable also makes sense to me,
as it has a size (~30kB) and runtime overhead (detecting tunnels and
allocating/freeing BW), only required if the user has a dock/multiple
displays.

> Lucas De Marchi
