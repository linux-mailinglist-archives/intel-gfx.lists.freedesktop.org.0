Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C16F972421
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 23:03:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7634C10E6BC;
	Mon,  9 Sep 2024 21:03:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C0Slj1a7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42E1D10E6BC;
 Mon,  9 Sep 2024 21:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725915822; x=1757451822;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fn8luDenR2IwksfqD35vFcQIzrQUrJeqT76yn2MZCBk=;
 b=C0Slj1a7tKfN+CqTPg2YVXb73AwmaVjJqz8OchF12MEwCy5I61Us+RPy
 Ch3IsRfzYtskfwgvs6ebwq8od3tbDrR3mN3O8I4ibjTF/59gqewLMJNZP
 77eAEofb3ZlggygjirzObUnf7r8sE/6I7uBvWUUXBpVdhBDxVh/DWXQX1
 LGHC7MnjMUqRPvEKLc6gJQO2n2mSirvoMFsUT+6R1RUmr50yMZhIbXrIQ
 TVXuSAAa7USSgs32T9CbHeLSbrLxyfY/q9zw4Ms/V6XRJ0Tf+OYpHD1+K
 NcXJ6Gb7sFuuPWChqiB8oWuEGcuPGSh00ZgrlBBToNSuo+p1ONIDFGN4T g==;
X-CSE-ConnectionGUID: IFsMTeEJT4aoRrAA2kFJnw==
X-CSE-MsgGUID: pFTDCbfgQVqapAygJuIX2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="28378057"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="28378057"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 14:03:42 -0700
X-CSE-ConnectionGUID: QL9mNGy5TKmezJvTcCuNTA==
X-CSE-MsgGUID: dGAdrKjwRkuE+pxwRiUfgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="66844439"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Sep 2024 14:03:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2024 00:03:39 +0300
Date: Tue, 10 Sep 2024 00:03:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/11] drm/i915: split out display regs
Message-ID: <Zt9iq8wJg1neQWct@intel.com>
References: <cover.1725908151.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1725908151.git.jani.nikula@intel.com>
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

On Mon, Sep 09, 2024 at 09:58:51PM +0300, Jani Nikula wrote:
> We've split out register macros from i915_reg.h functionally, but it has
> slowed down quite a bit. At this stage, split out all the display regs
> from i915_reg.h.
> 
> The first ten patches are manual style cleanup, primarily to help the
> automation to do the split in patch 11.
> 
> This should pave the way for further cleanups.
> 
> BR,
> Jani.
> 
> 
> Jani Nikula (11):
>   drm/i915/reg: fix transcoder timing register style
>   drm/i915/reg: fix g4x pipe data/link m/n register style
>   drm/i915/reg: fix pipe conf, stat etc. register style
>   drm/i915/reg: fix pipe data/link m/n register style
>   drm/i915/reg: fix SKL scaler register style
>   drm/i915/reg: fix PCH transcoder timing and data/link m/n style
>   drm/i915/reg: fix DIP CTL register style
>   drm/i915/reg: fix small register style issues here and there
>   drm/i915/reg: remove unused DSI register macros
>   drm/i915/reg: remove superfluous whitespace
>   drm/i915: split out display regs from i915_reg.h

The last patch had some confusion which probably needs looking at,
and one earlier patch has tabs and spaces mixed up a bit.

Apart from those the series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/display/g4x_dp.c         |    1 +
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |    1 +
>  drivers/gpu/drm/i915/display/hsw_ips.c        |    1 +
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |    2 +
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |    1 +
>  drivers/gpu/drm/i915/display/icl_dsi.c        |    1 +
>  .../gpu/drm/i915/display/intel_backlight.c    |    2 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     |    1 +
>  drivers/gpu/drm/i915/display/intel_bw.c       |    3 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |    3 +-
>  .../gpu/drm/i915/display/intel_combo_phy.c    |    1 +
>  drivers/gpu/drm/i915/display/intel_crt.c      |    1 +
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |    2 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |    1 +
>  drivers/gpu/drm/i915/display/intel_display.c  |    3 +-
>  .../drm/i915/display/intel_display_debugfs.c  |    1 +
>  .../drm/i915/display/intel_display_device.c   |    6 +-
>  .../gpu/drm/i915/display/intel_display_irq.c  |    2 +
>  .../drm/i915/display/intel_display_power.c    |    1 +
>  .../i915/display/intel_display_power_map.c    |    5 +-
>  .../i915/display/intel_display_power_well.c   |    1 +
>  .../gpu/drm/i915/display/intel_display_regs.h | 2986 ++++++++++++++++
>  .../gpu/drm/i915/display/intel_display_wa.c   |    1 +
>  drivers/gpu/drm/i915/display/intel_dmc.c      |    1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |    4 +-
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |    1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |    3 +-
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c |    1 +
>  drivers/gpu/drm/i915/display/intel_dpll.c     |    1 +
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    1 +
>  .../gpu/drm/i915/display/intel_dpt_common.c   |    1 +
>  drivers/gpu/drm/i915/display/intel_drrs.c     |    1 +
>  drivers/gpu/drm/i915/display/intel_dsb.c      |    1 +
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |    3 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c      |    1 +
>  drivers/gpu/drm/i915/display/intel_fbc.c      |    3 +
>  drivers/gpu/drm/i915/display/intel_fdi.c      |    3 +-
>  .../drm/i915/display/intel_fifo_underrun.c    |    1 +
>  drivers/gpu/drm/i915/display/intel_gmbus.c    |    1 +
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |    1 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |    1 +
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  |    1 +
>  drivers/gpu/drm/i915/display/intel_lspcon.c   |    3 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |    3 +-
>  .../drm/i915/display/intel_modeset_setup.c    |    3 +-
>  drivers/gpu/drm/i915/display/intel_overlay.c  |    2 +
>  drivers/gpu/drm/i915/display/intel_panel.c    |    1 +
>  .../gpu/drm/i915/display/intel_pch_display.c  |    1 +
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |    1 +
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c |    1 +
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |    1 +
>  drivers/gpu/drm/i915/display/intel_pps.c      |    1 +
>  drivers/gpu/drm/i915/display/intel_psr.c      |    1 +
>  drivers/gpu/drm/i915/display/intel_psr_regs.h |    1 +
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |    1 +
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |    1 +
>  drivers/gpu/drm/i915/display/intel_tc.c       |    1 +
>  drivers/gpu/drm/i915/display/intel_vblank.c   |    1 +
>  drivers/gpu/drm/i915/display/intel_vga.c      |    2 +
>  drivers/gpu/drm/i915/display/intel_vrr.c      |    3 +-
>  drivers/gpu/drm/i915/display/skl_scaler.c     |    1 +
>  .../drm/i915/display/skl_universal_plane.c    |    4 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  |    1 +
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |    1 +
>  drivers/gpu/drm/i915/gvt/display.c            |    1 +
>  drivers/gpu/drm/i915/gvt/fb_decoder.c         |    1 +
>  drivers/gpu/drm/i915/gvt/handlers.c           |    1 +
>  drivers/gpu/drm/i915/gvt/interrupt.c          |    1 +
>  drivers/gpu/drm/i915/gvt/mmio.c               |    1 +
>  drivers/gpu/drm/i915/i915_reg.h               | 3016 +----------------
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |    1 +
>  71 files changed, 3098 insertions(+), 3016 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_regs.h
> 
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
