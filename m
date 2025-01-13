Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3E6A0BF04
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 18:40:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2096F10E75D;
	Mon, 13 Jan 2025 17:40:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L83J2Wtz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17DE910E75D;
 Mon, 13 Jan 2025 17:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736790011; x=1768326011;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=8jsW2RNvA0Wkm/cebRcBXtCgOqFneQBv6jbuZZZ8C1s=;
 b=L83J2WtzTJTdCWxclypPIF4Ew1yDCVtyudfKY4JvvYOBbcZB/+YLofGz
 MvC1cjQqRpio6M+zzzl97XMh1s9yUWKH2bO04GJmM06YGsxBVac3dOkcF
 xvVXe1Z7a4ZOq32PS6V40Y+SpxPsFez95l/8NheTKr5n6eStXtNgeZewr
 6YSV6WlI1Y1YqGRbPvn+NgUiz42iDlDGT89M+5i1WT1OjagzWPPUevkpr
 1I9v8jOYDVVLRvmimFAgy6lHUkRuuEUPX95Pi/3u+6SI/QDDs6pF09Pxn
 5qjwWOOw6hiWNDyShax1DIwH6ouPJlEsGB3l4jEXSy7pXl8z2cjSAncwe g==;
X-CSE-ConnectionGUID: bStuKbk3SpKD7PvlIVuSug==
X-CSE-MsgGUID: AH7KDOHJSl+1LzrVLicSgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="36753265"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="36753265"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 09:40:11 -0800
X-CSE-ConnectionGUID: qLmUnOcNTPCy0QOWH0uGzw==
X-CSE-MsgGUID: nhgU9t9ZQG6kqzuAnxfBAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104418580"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 09:40:10 -0800
Date: Mon, 13 Jan 2025 19:40:59 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe/dp: Enable DP tunneling
Message-ID: <Z4VQK2mRtmeT_t6I@ideak-desk.fi.intel.com>
References: <20250113154832.1004369-1-imre.deak@intel.com>
 <87cygqis8l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87cygqis8l.fsf@intel.com>
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

On Mon, Jan 13, 2025 at 06:38:34PM +0200, Jani Nikula wrote:
> On Mon, 13 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> > Enable the DP tunneling functionality in the xe driver.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_tunnel.h |  5 +++--
> >  drivers/gpu/drm/xe/Kconfig                     | 14 ++++++++++++++
> >  drivers/gpu/drm/xe/Makefile                    |  3 +++
> >  3 files changed, 20 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > index e9314cf25a193..7a91b4945eb8d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > @@ -20,7 +20,8 @@ struct intel_dp;
> >  struct intel_encoder;
> >  struct intel_link_bw_limits;
> >  
> > -#if IS_ENABLED(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)
> > +#if (defined(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)) || \
> > +	(defined(CONFIG_DRM_XE_DP_TUNNEL) && !defined(I915))
> 
> Please retain IS_ENABLED for checking kconfig symbols.

Ok, missed that, will change it.

> >  int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct drm_modeset_acquire_ctx *ctx);
> >  void intel_dp_tunnel_disconnect(struct intel_dp *intel_dp);
> > @@ -127,6 +128,6 @@ intel_dp_tunnel_mgr_init(struct intel_display *display)
> >  
> >  static inline void intel_dp_tunnel_mgr_cleanup(struct intel_display *display) {}
> >  
> > -#endif /* CONFIG_DRM_I915_DP_TUNNEL */
> > +#endif /* CONFIG_DRM_I915_DP_TUNNEL || CONFIG_DRM_XE_DP_TUNNEL */
> >  
> >  #endif /* __INTEL_DP_TUNNEL_H__ */
> > diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
> > index b51a2bde73e29..50cf80df51900 100644
> > --- a/drivers/gpu/drm/xe/Kconfig
> > +++ b/drivers/gpu/drm/xe/Kconfig
> > @@ -59,6 +59,20 @@ config DRM_XE_DISPLAY
> >  	help
> >  	  Disable this option only if you want to compile out display support.
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
> 
> I'm sort of wondering why we have this (and the i915 one) as
> user-selectable config options at all. Is it ever reasonable for the
> user to disable this if USB4 is enabled?

On platforms that don't support DP tunneling, while supporting other
USB4 functionality (or for systems w/o any TypeC/DP connectors) it would
make sense to disable this option.

> BR,
> Jani.
> 
> 
> >  config DRM_XE_FORCE_PROBE
> >  	string "Force probe xe for selected Intel hardware IDs"
> >  	depends on DRM_XE
> > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> > index 5c97ad6ed7385..81f63258a7e19 100644
> > --- a/drivers/gpu/drm/xe/Makefile
> > +++ b/drivers/gpu/drm/xe/Makefile
> > @@ -301,6 +301,9 @@ ifeq ($(CONFIG_DEBUG_FS),y)
> >  		i915-display/intel_pipe_crc.o
> >  endif
> >  
> > +xe-$(CONFIG_DRM_XE_DP_TUNNEL) += \
> > +	i915-display/intel_dp_tunnel.o
> > +
> >  obj-$(CONFIG_DRM_XE) += xe.o
> >  obj-$(CONFIG_DRM_XE_KUNIT_TEST) += tests/
> 
> -- 
> Jani Nikula, Intel
