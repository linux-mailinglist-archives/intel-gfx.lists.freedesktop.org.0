Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3B9A32D32
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 18:17:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92B3210E944;
	Wed, 12 Feb 2025 17:17:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bn60qNS4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65C4210E944;
 Wed, 12 Feb 2025 17:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739380624; x=1770916624;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ly9lbAvPbrgBcA5iKNSHfsiP6/Mi318FxXgcgsytJf8=;
 b=bn60qNS459U7preUDht7FvHmnhIbtDd5P38qTT/hfXMF6zmQoTWr2RIj
 pbg4rzldggaIqiQ8U3oi6f1pCeKvAf3qo9LqCSFhPutdyx/9iSZo7Zo+m
 iOB4DEjfeG39Dql9j9Nnf7A+tdBrdAPIQSyVTyAPQ8A1SGmKi9Wx7BwYc
 50+S427DADT+jey30w16xvWpNCnPfWVdJVZGuSmZUuMo0Xw71HXFnFbAN
 0Lxwkb6ax+taV1RKfyFTvJ52pHFX/oOuAP/xssnFe8F/q8C5EkgjliEgj
 mBwAHIxIw5kkO4aEOUJExXCGrbLI3dAmk+NctMG1OZSwY5obUybezJQ77 w==;
X-CSE-ConnectionGUID: MvmwPHn6TFuARs46TfqhOw==
X-CSE-MsgGUID: E2O8AKV2SHWh+peqsta72w==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="57454532"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="57454532"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 09:17:04 -0800
X-CSE-ConnectionGUID: x6m4+/k5QXaAVxjoDCFSKw==
X-CSE-MsgGUID: Y9+tsRJzTlyxk1fvrzvn5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113088248"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 09:17:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 19:17:00 +0200
Date: Wed, 12 Feb 2025 19:17:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/14] drm/i915/display: conversions to struct
 intel_display
Message-ID: <Z6zXjEfwCj8BxQSh@intel.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1739378095.git.jani.nikula@intel.com>
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

On Wed, Feb 12, 2025 at 06:36:29PM +0200, Jani Nikula wrote:
> Convert a bunch of files and functions to struct intel display.
> 
> The approach is to mostly convert a file, then see what the stragglers
> are, convert those too, and repeat.
> 
> The PCH checks are starting to become a big straggler for further
> conversions.

Aye. I wonder if we should in fact change all the HAS_PCH_FOO()
stuff to some kind of "south display type" thing. The current
situation is a bit of a mess due to:
- DG1/2 declare some kind of fake PCH type
- BXT/GLK don't declare one and yet we still use many
  PCH/south display registers

Anyways, series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> BR,
> Jani.
> 
> Jani Nikula (14):
>   drm/i915/dp: convert g4x_dp.[ch] to struct intel display
>   drm/i915/hdmi: convert g4x_hdmi.[ch] to struct intel_display
>   drm/i915/ips: convert hsw_ips.c to struct intel_display
>   drm/i915/display: convert assert_transcoder*() to struct intel_display
>   drm/i915/display: convert assert_port_valid() to struct intel_display
>   drm/i915/hpd: drop dev_priv parameter from intel_hpd_pin_default()
>   drm/i915/display: convert
>     intel_set_{cpu,pch}_fifo_underrun_reporting() to intel_display
>   drm/i915/sdvo: convert intel_sdvo.[ch] to struct intel_display
>   drm/i915/display: convert intel_cpu_transcoder_mode_valid() to
>     intel_display
>   drm/i915/display: convert intel_mode_valid_max_plane_size() to
>     intel_display
>   drm/i915/dsi: convert platform checks to display->platform.<platform>
>     style
>   drm/i915/combo-phy: convert intel_combo_phy.[ch] to struct
>     intel_display
>   drm/i915/display: convert intel_fifo_underrun.[ch] to struct
>     intel_display
>   drm/i915/display: convert i915_pipestat_enable_mask() to struct
>     intel_display
> 
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  99 +++---
>  drivers/gpu/drm/i915/display/g4x_dp.h         |  14 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       | 154 +++++----
>  drivers/gpu/drm/i915/display/g4x_hdmi.h       |   6 +-
>  drivers/gpu/drm/i915/display/hsw_ips.c        |  26 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  21 +-
>  .../gpu/drm/i915/display/intel_combo_phy.c    | 180 ++++++-----
>  .../gpu/drm/i915/display/intel_combo_phy.h    |   8 +-
>  drivers/gpu/drm/i915/display/intel_crt.c      |  21 +-
>  drivers/gpu/drm/i915/display/intel_crtc.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  11 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 155 ++++-----
>  drivers/gpu/drm/i915/display/intel_display.h  |  10 +-
>  .../gpu/drm/i915/display/intel_display_irq.c  |  37 +--
>  .../gpu/drm/i915/display/intel_display_irq.h  |   5 +-
>  .../drm/i915/display/intel_display_power.c    |   5 +-
>  .../i915/display/intel_display_power_well.c   |   3 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   5 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   5 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  30 +-
>  drivers/gpu/drm/i915/display/intel_dsi.c      |   8 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c      |   8 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c      |   3 +-
>  .../drm/i915/display/intel_fifo_underrun.c    | 181 ++++++-----
>  .../drm/i915/display/intel_fifo_underrun.h    |  18 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   5 +-
>  drivers/gpu/drm/i915/display/intel_hotplug.c  |   4 +-
>  drivers/gpu/drm/i915/display/intel_hotplug.h  |   3 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   6 +-
>  .../drm/i915/display/intel_modeset_setup.c    |   6 +-
>  .../gpu/drm/i915/display/intel_pch_display.c  |   4 +-
>  drivers/gpu/drm/i915/display/intel_pps.c      |  11 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     | 293 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_sdvo.h     |  10 +-
>  drivers/gpu/drm/i915/display/intel_tv.c       |   6 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   8 +-
>  36 files changed, 671 insertions(+), 700 deletions(-)
> 
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
