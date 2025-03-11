Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E119CA5CF17
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 20:15:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B21010E68B;
	Tue, 11 Mar 2025 19:15:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="htBfjXtx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45F0B10E2A9;
 Tue, 11 Mar 2025 19:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741720545; x=1773256545;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=YcUbMgMwmoJmH/2HHSSjysZyaPvjeFksfzY9FiQU5XI=;
 b=htBfjXtx7xNC5BJv5/MvVn62g10DH1Rxd14GiZzDQQWPgicSq9FZp3Ln
 PfRaYIpDz4KS9FCZXX76BL4F05Lf/aEJt87bcCJXcII0aNwlxnqPgIpkg
 uK4dWCx/8jCr689PGMkIiOazlmDM1wS5SZt0x4zc3XodcocupM/AUcrHC
 su2ncMCwwBT6N2IPiIhpwDO8qpX2hGNN7gjNtFc4HHTSPFCYaqPOi/QzE
 utyxJBBX+5QtIIOmHEa3X34MEMuH46Z/zf4hN606iRxZH4CmhfGD8L699
 84rw4lJkO0OEObtklHtzG+a8FDy39x6NfXpfpx3LUmfVorDu0LaplraaU A==;
X-CSE-ConnectionGUID: Dp1rvlPEQHilsKu3jJNniQ==
X-CSE-MsgGUID: KyVR1MScTiuNVE8ITigqzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42688039"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="42688039"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 12:15:44 -0700
X-CSE-ConnectionGUID: gdA1kr2GQxS+K47PFDm9xg==
X-CSE-MsgGUID: FH0A1InOSkmlQzeLzt9Mpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125611335"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 11 Mar 2025 12:15:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Mar 2025 21:15:41 +0200
Date: Tue, 11 Mar 2025 21:15:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 7/9] drm/i915/irq: convert intel_display_irq.[ch]
 interfaces to struct intel_display
Message-ID: <Z9CL3WH695G-j1w3@intel.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
 <df68cf79674a31bb55b641e29976052d380274a4.1741715981.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <df68cf79674a31bb55b641e29976052d380274a4.1741715981.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Mar 11, 2025 at 08:00:41PM +0200, Jani Nikula wrote:
> Going forward, struct intel_display is the main display device data
> pointer. Convert the external interfaces of intel_display_irq.[ch] to
> struct intel_display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |  24 ++-
>  .../drm/i915/display/intel_display_driver.c   |   2 +-
>  .../gpu/drm/i915/display/intel_display_irq.c  | 204 +++++++++---------
>  .../gpu/drm/i915/display/intel_display_irq.h  |  75 ++++---
>  .../i915/display/intel_display_power_well.c   |  12 +-
>  .../drm/i915/display/intel_fifo_underrun.c    |  27 +--
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  |  22 +-
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c |   3 +-
>  drivers/gpu/drm/i915/display/intel_tv.c       |   4 +-
>  .../drm/i915/display/skl_universal_plane.c    |   6 +-
>  drivers/gpu/drm/i915/gt/intel_rps.c           |   6 +-
>  drivers/gpu/drm/i915/i915_irq.c               |  98 +++++----
>  drivers/gpu/drm/xe/display/xe_display.c       |  12 +-
>  13 files changed, 263 insertions(+), 232 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> index 013295f66d56..5e8344fdfc28 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -630,84 +630,92 @@ vlv_primary_async_flip(struct intel_dsb *dsb,
>  static void
>  bdw_primary_enable_flip_done(struct intel_plane *plane)
>  {
> +	struct intel_display *display = to_intel_display(plane);
>  	struct drm_i915_private *i915 = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  
>  	spin_lock_irq(&i915->irq_lock);
> -	bdw_enable_pipe_irq(i915, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
> +	bdw_enable_pipe_irq(display, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>  
>  static void
>  bdw_primary_disable_flip_done(struct intel_plane *plane)
>  {
> +	struct intel_display *display = to_intel_display(plane);
>  	struct drm_i915_private *i915 = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  
>  	spin_lock_irq(&i915->irq_lock);
> -	bdw_disable_pipe_irq(i915, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
> +	bdw_disable_pipe_irq(display, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>  
>  static void
>  ivb_primary_enable_flip_done(struct intel_plane *plane)
>  {
> +	struct intel_display *display = to_intel_display(plane);
>  	struct drm_i915_private *i915 = to_i915(plane->base.dev);
>  
>  	spin_lock_irq(&i915->irq_lock);
> -	ilk_enable_display_irq(i915, DE_PLANE_FLIP_DONE_IVB(plane->i9xx_plane));
> +	ilk_enable_display_irq(display, DE_PLANE_FLIP_DONE_IVB(plane->i9xx_plane));
>  	spin_unlock_irq(&i915->irq_lock);

I was pondering if we could just suck the lock into these
guys. But at least the fifo underrun reporting code is using
some of these things and there there the lock is taken
further out. So sadly not as trivial as I was hoping.

-- 
Ville Syrjälä
Intel
