Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB41A1437C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 21:38:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8E7410E2DC;
	Thu, 16 Jan 2025 20:38:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZDgVB2eF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48E5710E2DC;
 Thu, 16 Jan 2025 20:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737059914; x=1768595914;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dNPxOF5uNuX3dt99Mo4OMiFFwaYrjMkwt+01LNximiI=;
 b=ZDgVB2eFb2KngOrL/lyXb6CRboyXXqetkM9y6wOuNO3rTyqLTP1YEwxg
 rNyh7o3rC0085u/YsnQf4V4olLJ1ayv05nEiEK+wTN4FWC0qaAbjc83Us
 KxSp6H5HkmeDCrI/Q3GUkmfJQlJrl5Xg76qKWWWjSISXvxiUXXRfAzCkW
 mXGL8VD2z1hrWnJSSsX/PbDd+gcvffSUngXxGkaszwBW0DAc8OBWvWAjN
 xF1TEjvRuroqYt9pFX340cXndX5aFxQ9AJVp3pCs3H+WB0HZnqyA+7EWm
 4zxanDUmjaxClqZJmYModf1buOomQSWhzOAAP/d7op3lJ14gtDAhj7kxI g==;
X-CSE-ConnectionGUID: VwkP5f22ReWIxtuJveoOpw==
X-CSE-MsgGUID: QsOk5WahQ6mKrb41j2Y2bQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="62841495"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="62841495"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 12:38:34 -0800
X-CSE-ConnectionGUID: fCd+KvyPSyOPmN0+HmTbjQ==
X-CSE-MsgGUID: VztcfQwQT3Sx9/moEiJJRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136474353"
Received: from ldmartin-desk2.corp.intel.com (HELO ldmartin-desk2)
 ([10.125.109.57])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 12:38:33 -0800
Date: Thu, 16 Jan 2025 14:38:34 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe/dp: Enable DP tunneling
Message-ID: <7br5fcyxwpapyyd646rqyja47wjxmgpnhvyramt64kumqevyua@codb2qklp2hu>
References: <20250113154832.1004369-1-imre.deak@intel.com>
 <87cygqis8l.fsf@intel.com>
 <Z4VQK2mRtmeT_t6I@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <Z4VQK2mRtmeT_t6I@ideak-desk.fi.intel.com>
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

On Mon, Jan 13, 2025 at 07:40:59PM +0200, Imre Deak wrote:
>On Mon, Jan 13, 2025 at 06:38:34PM +0200, Jani Nikula wrote:
>> On Mon, 13 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
>> > Enable the DP tunneling functionality in the xe driver.
>> >
>> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp_tunnel.h |  5 +++--
>> >  drivers/gpu/drm/xe/Kconfig                     | 14 ++++++++++++++
>> >  drivers/gpu/drm/xe/Makefile                    |  3 +++
>> >  3 files changed, 20 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
>> > index e9314cf25a193..7a91b4945eb8d 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
>> > @@ -20,7 +20,8 @@ struct intel_dp;
>> >  struct intel_encoder;
>> >  struct intel_link_bw_limits;
>> >
>> > -#if IS_ENABLED(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)
>> > +#if (defined(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)) || \
>> > +	(defined(CONFIG_DRM_XE_DP_TUNNEL) && !defined(I915))
>>
>> Please retain IS_ENABLED for checking kconfig symbols.
>
>Ok, missed that, will change it.
>
>> >  int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct drm_modeset_acquire_ctx *ctx);
>> >  void intel_dp_tunnel_disconnect(struct intel_dp *intel_dp);
>> > @@ -127,6 +128,6 @@ intel_dp_tunnel_mgr_init(struct intel_display *display)
>> >
>> >  static inline void intel_dp_tunnel_mgr_cleanup(struct intel_display *display) {}
>> >
>> > -#endif /* CONFIG_DRM_I915_DP_TUNNEL */
>> > +#endif /* CONFIG_DRM_I915_DP_TUNNEL || CONFIG_DRM_XE_DP_TUNNEL */
>> >
>> >  #endif /* __INTEL_DP_TUNNEL_H__ */
>> > diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
>> > index b51a2bde73e29..50cf80df51900 100644
>> > --- a/drivers/gpu/drm/xe/Kconfig
>> > +++ b/drivers/gpu/drm/xe/Kconfig
>> > @@ -59,6 +59,20 @@ config DRM_XE_DISPLAY
>> >  	help
>> >  	  Disable this option only if you want to compile out display support.
>> >
>> > +config DRM_XE_DP_TUNNEL
>> > +	bool "Enable DP tunnel support"
>> > +	depends on DRM_XE
>> > +	depends on USB4
>> > +	select DRM_DISPLAY_DP_TUNNEL
>> > +	default y
>> > +	help
>> > +	  Choose this option to detect DP tunnels and enable the Bandwidth
>> > +	  Allocation mode for such tunnels. This allows using the maximum
>> > +	  resolution allowed by the link BW on all displays sharing the
>> > +	  link BW, for instance on a Thunderbolt link.
>> > +
>> > +	  If in doubt say "Y".
>> > +
>>
>> I'm sort of wondering why we have this (and the i915 one) as
>> user-selectable config options at all. Is it ever reasonable for the
>> user to disable this if USB4 is enabled?
>
>On platforms that don't support DP tunneling, while supporting other
>USB4 functionality (or for systems w/o any TypeC/DP connectors) it would
>make sense to disable this option.

isn't this too fine grained? if we expose every single functionality of
the driver like this we will bury distros on configs and exponentially
explode the testing combination. And yes, this broke the build for me.

Lucas De Marchi
