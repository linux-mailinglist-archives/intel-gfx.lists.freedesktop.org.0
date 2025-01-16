Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FB2A14348
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 21:32:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B0D10EA0B;
	Thu, 16 Jan 2025 20:32:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h89rVVhk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0050710E9F3;
 Thu, 16 Jan 2025 20:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737059542; x=1768595542;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=91V4YYnVNMm0vFZA66HrM0mVFuK4rb8dX1H32SZmUe8=;
 b=h89rVVhkZoa4l9QU5B9ctT8J4kCpbUlCDbRdQiM6oVB6L29j9I1Q2vi1
 QB3fJGb8dPbY5F4P3k0ISap4DPVApkkyp3yaHdAvaUbgoguiwDOy6UJg5
 MUcQQ4LlNdEiH4hkPGMhObPJILi9nWBOAqCBgIEPCaIAxjh19/7rqIGee
 jNdr0gl2Sv8yEISaoANsGSMpLcVOOfRjsU7bA25RNRnYQJ7Av56MpdSXN
 F5NJnSRyrXP1BjHp4mpBYsLnhFUQyXSr7peGk7Kr1ksMyWlTsAhM9/t8l
 hWADmwNuEdIFgiF/wjeSa9lQFeRkgikN280kbTxXfZ+ku+M9BGeG9vN5V w==;
X-CSE-ConnectionGUID: NoePyWotT1eFi8mMNbo5DQ==
X-CSE-MsgGUID: XWQpSB1ESmaiYaTT2C03rQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="48883678"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="48883678"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 12:32:21 -0800
X-CSE-ConnectionGUID: lOn8t6dwSSiHEDuZt8YZEw==
X-CSE-MsgGUID: OPZ5xs+ESkep1bmAPTVbDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110235540"
Received: from ldmartin-desk2.corp.intel.com (HELO ldmartin-desk2)
 ([10.125.109.57])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 12:32:21 -0800
Date: Thu, 16 Jan 2025 14:32:21 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/xe/dp: Enable DP tunneling
Message-ID: <7yf2cupxywnzqcrfrvqeoqfa4tphosvofdcoiqfyngp4svyh6t@3opldfjkgohj>
References: <20250113154832.1004369-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20250113154832.1004369-1-imre.deak@intel.com>
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

On Mon, Jan 13, 2025 at 05:48:32PM +0200, Imre Deak wrote:
>Enable the DP tunneling functionality in the xe driver.
>
>Signed-off-by: Imre Deak <imre.deak@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dp_tunnel.h |  5 +++--
> drivers/gpu/drm/xe/Kconfig                     | 14 ++++++++++++++
> drivers/gpu/drm/xe/Makefile                    |  3 +++
> 3 files changed, 20 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
>index e9314cf25a193..7a91b4945eb8d 100644
>--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
>+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
>@@ -20,7 +20,8 @@ struct intel_dp;
> struct intel_encoder;
> struct intel_link_bw_limits;
>
>-#if IS_ENABLED(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)
>+#if (defined(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)) || \
>+	(defined(CONFIG_DRM_XE_DP_TUNNEL) && !defined(I915))
>
> int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct drm_modeset_acquire_ctx *ctx);
> void intel_dp_tunnel_disconnect(struct intel_dp *intel_dp);
>@@ -127,6 +128,6 @@ intel_dp_tunnel_mgr_init(struct intel_display *display)
>
> static inline void intel_dp_tunnel_mgr_cleanup(struct intel_display *display) {}
>
>-#endif /* CONFIG_DRM_I915_DP_TUNNEL */
>+#endif /* CONFIG_DRM_I915_DP_TUNNEL || CONFIG_DRM_XE_DP_TUNNEL */
>
> #endif /* __INTEL_DP_TUNNEL_H__ */
>diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
>index b51a2bde73e29..50cf80df51900 100644
>--- a/drivers/gpu/drm/xe/Kconfig
>+++ b/drivers/gpu/drm/xe/Kconfig
>@@ -59,6 +59,20 @@ config DRM_XE_DISPLAY
> 	help
> 	  Disable this option only if you want to compile out display support.
>
>+config DRM_XE_DP_TUNNEL
>+	bool "Enable DP tunnel support"
>+	depends on DRM_XE
>+	depends on USB4
>+	select DRM_DISPLAY_DP_TUNNEL
>+	default y
>+	help
>+	  Choose this option to detect DP tunnels and enable the Bandwidth
>+	  Allocation mode for such tunnels. This allows using the maximum
>+	  resolution allowed by the link BW on all displays sharing the
>+	  link BW, for instance on a Thunderbolt link.
>+
>+	  If in doubt say "Y".
>+
> config DRM_XE_FORCE_PROBE
> 	string "Force probe xe for selected Intel hardware IDs"
> 	depends on DRM_XE
>diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>index 5c97ad6ed7385..81f63258a7e19 100644
>--- a/drivers/gpu/drm/xe/Makefile
>+++ b/drivers/gpu/drm/xe/Makefile
>@@ -301,6 +301,9 @@ ifeq ($(CONFIG_DEBUG_FS),y)
> 		i915-display/intel_pipe_crc.o
> endif
>
>+xe-$(CONFIG_DRM_XE_DP_TUNNEL) += \
>+	i915-display/intel_dp_tunnel.o

something looks wrong here. We shouldn't build anything in i915-display/ if
we don't have DRM_XE_DISPLAY. Are you missing a

	depends on XE_DISPLAY
?

and in fact, with the .config I get:

In file included from ../drivers/gpu/drm/i915/display/intel_display_core.h:23,                                          
                  from ../drivers/gpu/drm/i915/display/intel_dp_tunnel.c:9:                                              
../drivers/gpu/drm/i915/display/intel_display_power.h:12:10: fatal error: intel_wakeref.h: No such file or directory    
    12 | #include "intel_wakeref.h"                                                                                      

because we don't setup the right include directories.
We used to test in CI a display-disabled build, not sure what happened
with that.

Lucas De Marchi

>+
> obj-$(CONFIG_DRM_XE) += xe.o
> obj-$(CONFIG_DRM_XE_KUNIT_TEST) += tests/
>
>-- 
>2.44.2
>
