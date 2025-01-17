Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D548CA150B4
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 14:43:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1889110EAF3;
	Fri, 17 Jan 2025 13:43:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mYH7vh8o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67B0410E30E;
 Fri, 17 Jan 2025 13:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737121388; x=1768657388;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=CoGiWG2rW9MhhjNE/JY6kpIzHHm3L79+3ov3VN5lFnc=;
 b=mYH7vh8oUyXz+h5LCZr3YadIruHQ8bITMQgQLCTuyywrBjk0ywnCMubh
 yRHfPnH+hCkaFSHzmxYMwq1i28gZSXQzPCZoLWu6hGrTluB63LisOKGqJ
 N+QL45uoDdn9i1zUDkijnzyJgaqGNM9T+/ixZIx7XCor7HcW33jjq/XPK
 mjgT8HaVN/LoEIRqt7StmQOQLfimi7v7qvHgm0ZzZo+21rePz1kjVVRZD
 GWrJva79+dIJBtImoIs+IuZp702S1Wd/VU/S0voyLA1pBtDdBJguN5/F5
 NQERHlcGi1TffQKcJtNzJFCvM1r8dPJvW74BuJPLhjWUwGKVtZk9sGDKW A==;
X-CSE-ConnectionGUID: fGFRWg3BTy23Uhvx0eymOQ==
X-CSE-MsgGUID: sVtPAzU6QWKkeVEhtHNAlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="48969789"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="48969789"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 05:43:08 -0800
X-CSE-ConnectionGUID: ZeyrZKKnSque87rv7g/0Lw==
X-CSE-MsgGUID: 3TtJU7tQRqus0uaM0orHbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="105863753"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 05:43:06 -0800
Date: Fri, 17 Jan 2025 15:43:56 +0200
From: Imre Deak <imre.deak@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/xe/dp: Enable DP tunneling
Message-ID: <Z4penNQp6END713d@ideak-desk.fi.intel.com>
References: <20250113154832.1004369-1-imre.deak@intel.com>
 <7yf2cupxywnzqcrfrvqeoqfa4tphosvofdcoiqfyngp4svyh6t@3opldfjkgohj>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7yf2cupxywnzqcrfrvqeoqfa4tphosvofdcoiqfyngp4svyh6t@3opldfjkgohj>
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

On Thu, Jan 16, 2025 at 02:32:21PM -0600, Lucas De Marchi wrote:
> On Mon, Jan 13, 2025 at 05:48:32PM +0200, Imre Deak wrote:
> > Enable the DP tunneling functionality in the xe driver.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> > drivers/gpu/drm/i915/display/intel_dp_tunnel.h |  5 +++--
> > drivers/gpu/drm/xe/Kconfig                     | 14 ++++++++++++++
> > drivers/gpu/drm/xe/Makefile                    |  3 +++
> > 3 files changed, 20 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > index e9314cf25a193..7a91b4945eb8d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > @@ -20,7 +20,8 @@ struct intel_dp;
> > struct intel_encoder;
> > struct intel_link_bw_limits;
> > 
> > -#if IS_ENABLED(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)
> > +#if (defined(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)) || \
> > +	(defined(CONFIG_DRM_XE_DP_TUNNEL) && !defined(I915))
> > 
> > int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct drm_modeset_acquire_ctx *ctx);
> > void intel_dp_tunnel_disconnect(struct intel_dp *intel_dp);
> > @@ -127,6 +128,6 @@ intel_dp_tunnel_mgr_init(struct intel_display *display)
> > 
> > static inline void intel_dp_tunnel_mgr_cleanup(struct intel_display *display) {}
> > 
> > -#endif /* CONFIG_DRM_I915_DP_TUNNEL */
> > +#endif /* CONFIG_DRM_I915_DP_TUNNEL || CONFIG_DRM_XE_DP_TUNNEL */
> > 
> > #endif /* __INTEL_DP_TUNNEL_H__ */
> > diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
> > index b51a2bde73e29..50cf80df51900 100644
> > --- a/drivers/gpu/drm/xe/Kconfig
> > +++ b/drivers/gpu/drm/xe/Kconfig
> > @@ -59,6 +59,20 @@ config DRM_XE_DISPLAY
> > 	help
> > 	  Disable this option only if you want to compile out display support.
> > 
> > +config DRM_XE_DP_TUNNEL
> > +	bool "Enable DP tunnel support"
> > +	depends on DRM_XE
> > +	depends on USB4
> > +	select DRM_DISPLAY_DP_TUNNEL
> > +	default y
> > +	help
> > +	  Choose this option to detect DP tunnels and enable the Bandwidth
> > +	  Allocation mode for such tunnels. This allows using the maximum
> > +	  resolution allowed by the link BW on all displays sharing the
> > +	  link BW, for instance on a Thunderbolt link.
> > +
> > +	  If in doubt say "Y".
> > +
> > config DRM_XE_FORCE_PROBE
> > 	string "Force probe xe for selected Intel hardware IDs"
> > 	depends on DRM_XE
> > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> > index 5c97ad6ed7385..81f63258a7e19 100644
> > --- a/drivers/gpu/drm/xe/Makefile
> > +++ b/drivers/gpu/drm/xe/Makefile
> > @@ -301,6 +301,9 @@ ifeq ($(CONFIG_DEBUG_FS),y)
> > 		i915-display/intel_pipe_crc.o
> > endif
> > 
> > +xe-$(CONFIG_DRM_XE_DP_TUNNEL) += \
> > +	i915-display/intel_dp_tunnel.o
> 
> something looks wrong here. We shouldn't build anything in i915-display/ if
> we don't have DRM_XE_DISPLAY. Are you missing a
> 
> 	depends on XE_DISPLAY
> ?

Yes, thanks for spotting that, I missed the possibility for a
non-display build. Will follow up with a fix for this.

> and in fact, with the .config I get:
> 
> In file included from
> ../drivers/gpu/drm/i915/display/intel_display_core.h:23,
> from ../drivers/gpu/drm/i915/display/intel_dp_tunnel.c:9:
> ../drivers/gpu/drm/i915/display/intel_display_power.h:12:10: fatal error:
> intel_wakeref.h: No such file or directory       12 | #include
> "intel_wakeref.h"
> 
> because we don't setup the right include directories.
> We used to test in CI a display-disabled build, not sure what happened
> with that.
> 
> Lucas De Marchi
> 
> > +
> > obj-$(CONFIG_DRM_XE) += xe.o
> > obj-$(CONFIG_DRM_XE_KUNIT_TEST) += tests/
> > 
> > -- 
> > 2.44.2
> > 
