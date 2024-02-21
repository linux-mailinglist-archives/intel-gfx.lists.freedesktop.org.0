Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A985585E87C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 20:57:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C7AE10E7CF;
	Wed, 21 Feb 2024 19:57:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D+w5sLwg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8885810E7CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 19:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708545465; x=1740081465;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3G9hmj87lsKhDjQJq9/z+GwATCqyCLCyWkIgHBeMo1M=;
 b=D+w5sLwg++vuPszDX8AWSnczHCu+dIkPO6MOi0aWL5qmDkBhqAbgz3Al
 JT5RTNySTjBKxuAv5mXtD4PSF/yj3F4RacdNJm97kdAnRdnmgs0HHTqez
 oNZqPWoufh0JxlN2Md/2PjaxJ/QBblhLLt1BdLXQPY4MOFLyF5FNvPuPM
 j0AsnG4IHzYt3Vu5VP1JZvYoSDmCbQ6JFFqYZhdtCkj2gNfs3sPhGxdf8
 CWY+toyCambZiKwhE7Z1ngcdY3yW0uo4S+uqRmoYP7bKHxf+22bHyzrKY
 A43FypDlQGm41ZR+DzpyK2Tsr4rH5k8AQqp4Lq9kwAJjtDOWz6txYUca8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="13858964"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="13858964"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 11:57:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="827401316"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="827401316"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 21 Feb 2024 11:57:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Feb 2024 21:57:40 +0200
Date: Wed, 21 Feb 2024 21:57:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Dongwon Kim <dongwon.kim@intel.com>
Subject: Re: [RFC v1 0/3] drm/i915: Add support for XRandR Border property
Message-ID: <ZdZVtCZb1cJ33tQT@intel.com>
References: <20240221085246.808287-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240221085246.808287-1-vivek.kasireddy@intel.com>
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

On Wed, Feb 21, 2024 at 12:47:53AM -0800, Vivek Kasireddy wrote:
> Some customers and users have expressed interest in adding borders
> (or margins) to certain displays in their multi-display configurations.
> To address this need, this patchset implements the XRandR Border
> property as defined here:
> https://cgit.freedesktop.org/xorg/proto/randrproto/tree/randrproto.txt#n2032
> 
> ---
> 
> Patchset overview:
> 
> Patch 1: Create skl_program_crtc_scaler() to program scaler for crtc
> Patch 2: Create and attach the Border property to DP and HDMI
> Patch 3: Implement Border property by enabling crtc scalar
> 
> This series is tested using following method:
> - Run the following xrandr command with different parameters:
> xrandr --output HDMI-3 --pos 1920x0 --mode 1280x1024 --fb 3840x2160 --scale 2.11x2.11 --set "Border" 150,0,150,0
> 
> The following patch was also added to the modesetting driver to
> implement the Border property:
> https://gitlab.freedesktop.org/Vivek/xserver/-/commit/62abfc438f0d17fe7f88bf2826c9784c2b36443b

I have an old branch implementing the margin properties:
https://github.com/vsyrjala/linux.git hdmi_margins_3

but it got stalled due to the scaler code being in a very poor state.
I started sketching some reworks there, but that got put on the
backburner due to other stuff:
https://github.com/vsyrjala/linux.git scaler_rework_2

I might have somehting more recent than that locally, but I'd have
to trawl through my branches to check what's the latest state.

> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> 
> Vivek Kasireddy (3):
>   drm/i915: Rename skl_pfit_enable() to skl_program_crtc_scaler()
>   drm/i915: Attach the Border property to DP and HDMI connectors
>   drm/i915: Apply border adjustments and enable scaler on the crtc
> 
>  drivers/gpu/drm/i915/display/intel_atomic.c   | 29 ++++++++++-
>  .../gpu/drm/i915/display/intel_connector.c    | 49 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_connector.h    |  3 ++
>  drivers/gpu/drm/i915/display/intel_display.c  | 25 ++++++++--
>  .../gpu/drm/i915/display/intel_display_core.h |  1 +
>  .../drm/i915/display/intel_display_types.h    |  6 +++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 11 +++++
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 11 +++++
>  drivers/gpu/drm/i915/display/skl_scaler.c     | 27 ++++++----
>  drivers/gpu/drm/i915/display/skl_scaler.h     |  3 +-
>  10 files changed, 149 insertions(+), 16 deletions(-)
> 
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
