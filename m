Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F051FA154A0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 17:46:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 885BD10E30A;
	Fri, 17 Jan 2025 16:46:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RPKV4xZ3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5A1110E30A;
 Fri, 17 Jan 2025 16:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737132362; x=1768668362;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=smtMEKMFg2joDxqGpvogsGor0llzvrHrJmlRezXQmmA=;
 b=RPKV4xZ3fpGUeCRVXUJq8UcFdbbigJrBudrsM7fgGV+MHQa1c2cD95nW
 Vc7d9paGLd0KkkK6uEdUUlc3bgCJw4jG3a8b0YauhtFUDa+O/PBILIKK2
 G2SLrzN5eL4s1WylPs64yjybylBQ8JKU47u1/+8+fPcBwxY2pxfQLCEgM
 JsIjbKv0iunpqbA5vq6UDwSBh054CwyuJW+hpQ8O0+n6Y/tbtZWG2t317
 t/YkjoS5I6NQqJrL8LNB75ZaPbZAmtyLCpnGX6qUSN2KAihyP/bTrUPHV
 YcqG3JmYJmOEJRM24EAwQCS47bM2y1hFoE4jA6MkruVj7MzfdPYhimZ4v Q==;
X-CSE-ConnectionGUID: HirwiqWxTbqZPQ3vUPue6A==
X-CSE-MsgGUID: +1123Ho5RlWDdLUzF/6StQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37262734"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="37262734"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 08:46:02 -0800
X-CSE-ConnectionGUID: Rl6b7NIdSSKkkMx13nDUVQ==
X-CSE-MsgGUID: nDd46iHvToS2GDktnSs0Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="106024735"
Received: from ldmartin-desk2.corp.intel.com (HELO ldmartin-desk2)
 ([10.125.109.133])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 08:46:01 -0800
Date: Fri, 17 Jan 2025 10:45:56 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/xe/dp: Enable DP tunneling
Message-ID: <v5e2tnq6b7fr6rmi2mg24bf2x7jbljguce47s63ucugpvbiupa@z6r5kfxz6wth>
References: <20250113154832.1004369-1-imre.deak@intel.com>
 <87cygqis8l.fsf@intel.com>
 <Z4VQK2mRtmeT_t6I@ideak-desk.fi.intel.com>
 <7br5fcyxwpapyyd646rqyja47wjxmgpnhvyramt64kumqevyua@codb2qklp2hu>
 <Z4p9jbQqkgRDb-HA@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <Z4p9jbQqkgRDb-HA@ideak-desk.fi.intel.com>
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

On Fri, Jan 17, 2025 at 05:55:57PM +0200, Imre Deak wrote:
>On Thu, Jan 16, 2025 at 02:38:34PM -0600, Lucas De Marchi wrote:
>> On Mon, Jan 13, 2025 at 07:40:59PM +0200, Imre Deak wrote:
>> > On Mon, Jan 13, 2025 at 06:38:34PM +0200, Jani Nikula wrote:
>> > > On Mon, 13 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
>> > > > Enable the DP tunneling functionality in the xe driver.
>> > > >
>> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
>> > > > ---
>> > > >  drivers/gpu/drm/i915/display/intel_dp_tunnel.h |  5 +++--
>> > > >  drivers/gpu/drm/xe/Kconfig                     | 14 ++++++++++++++
>> > > >  drivers/gpu/drm/xe/Makefile                    |  3 +++
>> > > >  3 files changed, 20 insertions(+), 2 deletions(-)
>> > > >
>> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
>> > > > index e9314cf25a193..7a91b4945eb8d 100644
>> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
>> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
>> > > > @@ -20,7 +20,8 @@ struct intel_dp;
>> > > >  struct intel_encoder;
>> > > >  struct intel_link_bw_limits;
>> > > >
>> > > > -#if IS_ENABLED(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)
>> > > > +#if (defined(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)) || \
>> > > > +	(defined(CONFIG_DRM_XE_DP_TUNNEL) && !defined(I915))
>> > >
>> > > Please retain IS_ENABLED for checking kconfig symbols.
>> >
>> > Ok, missed that, will change it.
>> >
>> > > >  int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct drm_modeset_acquire_ctx *ctx);
>> > > >  void intel_dp_tunnel_disconnect(struct intel_dp *intel_dp);
>> > > > @@ -127,6 +128,6 @@ intel_dp_tunnel_mgr_init(struct intel_display *display)
>> > > >
>> > > >  static inline void intel_dp_tunnel_mgr_cleanup(struct intel_display *display) {}
>> > > >
>> > > > -#endif /* CONFIG_DRM_I915_DP_TUNNEL */
>> > > > +#endif /* CONFIG_DRM_I915_DP_TUNNEL|| CONFIG_DRM_XE_DP_TUNNEL */
>> > > >
>> > > >  #endif /* __INTEL_DP_TUNNEL_H__ */
>> > > > diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
>> > > > index b51a2bde73e29..50cf80df51900 100644
>> > > > --- a/drivers/gpu/drm/xe/Kconfig
>> > > > +++ b/drivers/gpu/drm/xe/Kconfig
>> > > > @@ -59,6 +59,20 @@ config DRM_XE_DISPLAY
>> > > >  	help
>> > > >  	  Disable this option only if you want to compile out display support.
>> > > >
>> > > > +config DRM_XE_DP_TUNNEL
>> > > > +	bool "Enable DP tunnel support"
>> > > > +	depends on DRM_XE
>> > > > +	depends on USB4
>> > > > +	select DRM_DISPLAY_DP_TUNNEL
>> > > > +	default y
>> > > > +	help
>> > > > +	  Choose this option to detect DP tunnels and enable the Bandwidth
>> > > > +	  Allocation mode for such tunnels. This allows using the maximum
>> > > > +	  resolution allowed by the link BW on all displays sharing the
>> > > > +	  link BW, for instance on a Thunderbolt link.
>> > > > +
>> > > > +	  If in doubt say "Y".
>> > > > +
>> > >
>> > > I'm sort of wondering why we have this (and the i915 one) as
>> > > user-selectable config options at all. Is it ever reasonable for the
>> > > user to disable this if USB4 is enabled?
>> >
>> > On platforms that don't support DP tunneling, while supporting other
>> > USB4 functionality (or for systems w/o any TypeC/DP connectors) it would
>> > make sense to disable this option.
>>
>> isn't this too fine grained? if we expose every single functionality of
>> the driver like this we will bury distros on configs and exponentially
>> explode the testing combination. And yes, this broke the build for me.
>
>The tunneling functionality depends on USB4, BW allocation could fail
>without that. The option being user selectable also makes sense to me,
>as it has a size (~30kB) and runtime overhead (detecting tunnels and
>allocating/freeing BW), only required if the user has a dock/multiple
>displays.

I will leave this up to the display maintainers - I still think it's too
fine grained to have this option as user selectable and worse, in 2
drivers.... does the user have to know which driver officially support
that hardware to enable one and disable the other? 

Lucas De Marchi
