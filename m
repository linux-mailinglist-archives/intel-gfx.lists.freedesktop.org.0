Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC729616513
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 15:25:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A653C10E192;
	Wed,  2 Nov 2022 14:25:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A99F10E192
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 14:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667399144; x=1698935144;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=h4lDr2I5Zl1u2NSAFR9Eav2BTZ534aB2iLgi1cTz25g=;
 b=aRAfZlIcoJ2rfB9LZAaRpDd6kePggvnrXIEpdkMyk5LI+FdS1j7NQcLu
 zRjdbTENMV4RWjgLMfqPS5U6ehrOH3RnmtgMnLdUu0MVLVGShbHUe2Hc9
 psLBxKL1tVj9ogF80tzjUA0Ow7/djbFfc7rXg7pywfo5QPlh9fqWPTO/w
 tncj5eg6z0/dUIqRbTaLlSjHMwrUQmSFh0fLKwWeAREiVY72RMXN0Wz44
 Xzy69Mmiv0R/m5qfue7Bgjzz5NHqYatbNRR6bL3jtWvNToLhD2d/MtZmb
 UQnIvQ+fjxi+Iqzk4Euj+ephqw4+ogc5sx38VJGEQ67Rp3gQ4Y9WrLYtd A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="373644078"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="373644078"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 07:19:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="665572778"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="665572778"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 02 Nov 2022 07:19:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Nov 2022 16:19:00 +0200
Date: Wed, 2 Nov 2022 16:19:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y2J8VKKwymxnfiHU@intel.com>
References: <cover.1667383630.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1667383630.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v1 00/16] drm/i915: header cleanups, again
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 02, 2022 at 12:08:08PM +0200, Jani Nikula wrote:
> I've had most of this laying around for a while, throttling the firehose
> of refactors a bit. Maybe it's time?
> 
> BR,
> Jani.
> 
> Jani Nikula (16):
>   drm/i915/gmbus: move GPIO enum to gmbus
>   drm/i915: reduce includes in intel_connector.h
>   drm/i915: reduce includes in intel_fifo_underrun.h
>   drm/i915: un-inline icl_hdr_plane_mask() to simplify includes
>   drm/i915/dpio: un-inline the vlv phy/channel mapping functions
>   drm/i915/dpio: move dpio_channel and dpio_phy enums to
>     intel_dpio_phy.h
>   drm/i915: reduce includes in intel_display_power.h
>   drm/i915/display: reduce the includes in intel_dvo_dev.h
>   drm/i915/display: reduce includes in intel_hdmi.h
>   drm/i915/display: reduce includes in g4x_dp.h includes
>   drm/i915/irq: make gen2_irq_init()/gen2_irq_reset() static
>   drm/i915/reg: move masked field helpers to i915_reg_defs.h
>   drm/i915/reg: move pick even and pick to reg defs
>   drm/i915: split out intel_display_reg_defs.h
>   drm/i915: stop including i915_irq.h from i915_trace.h
>   drm/i915/display: move struct intel_link_m_n to intel_display_types.h

Quickled scanned through the series. Nothing stood out as terrible.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  1 +
>  drivers/gpu/drm/i915/display/g4x_dp.h         |  2 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |  1 +
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |  4 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
>  drivers/gpu/drm/i915/display/icl_dsi_regs.h   |  2 +-
>  .../gpu/drm/i915/display/intel_audio_regs.h   |  2 +-
>  .../gpu/drm/i915/display/intel_backlight.c    |  1 +
>  .../drm/i915/display/intel_backlight_regs.h   |  2 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  1 +
>  drivers/gpu/drm/i915/display/intel_color.c    |  1 +
>  .../gpu/drm/i915/display/intel_combo_phy.c    |  1 +
>  .../gpu/drm/i915/display/intel_connector.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_crt.c      |  2 +
>  drivers/gpu/drm/i915/display/intel_cursor.c   |  3 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 +
>  drivers/gpu/drm/i915/display/intel_display.h  | 39 +----------
>  .../drm/i915/display/intel_display_debugfs.c  |  2 +
>  .../drm/i915/display/intel_display_power.h    |  3 +-
>  .../i915/display/intel_display_power_well.h   |  2 +-
>  .../drm/i915/display/intel_display_reg_defs.h | 53 ++++++++++++++
>  .../drm/i915/display/intel_display_types.h    | 54 +++-----------
>  drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 43 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_dpio_phy.h | 19 ++++-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  1 +
>  drivers/gpu/drm/i915/display/intel_drrs.c     |  1 +
>  drivers/gpu/drm/i915/display/intel_dsb.c      |  1 +
>  drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
>  drivers/gpu/drm/i915/display/intel_dvo_dev.h  |  8 +--
>  drivers/gpu/drm/i915/display/intel_fdi.c      |  1 +
>  .../drm/i915/display/intel_fifo_underrun.h    |  3 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c    | 22 +++++-
>  .../gpu/drm/i915/display/intel_hdcp_regs.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  1 +
>  drivers/gpu/drm/i915/display/intel_hdmi.h     |  8 +--
>  .../gpu/drm/i915/display/intel_lpe_audio.c    |  2 +
>  drivers/gpu/drm/i915/display/intel_lspcon.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
>  .../gpu/drm/i915/display/intel_mg_phy_regs.h  |  2 +-
>  .../drm/i915/display/intel_modeset_setup.c    |  1 +
>  drivers/gpu/drm/i915/display/intel_panel.c    |  1 +
>  .../gpu/drm/i915/display/intel_pch_display.c  |  1 +
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c |  2 +
>  drivers/gpu/drm/i915/display/intel_pps.c      |  2 +
>  drivers/gpu/drm/i915/display/intel_psr.c      |  1 +
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |  1 +
>  .../drm/i915/display/intel_snps_phy_regs.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_sprite.h   |  9 +--
>  drivers/gpu/drm/i915/display/intel_tv.c       |  2 +
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  1 +
>  drivers/gpu/drm/i915/display/intel_vga.c      |  1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c      |  1 +
>  drivers/gpu/drm/i915/display/skl_scaler.c     |  2 +
>  .../drm/i915/display/skl_universal_plane.c    |  7 ++
>  .../drm/i915/display/skl_universal_plane.h    |  1 +
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
>  drivers/gpu/drm/i915/display/vlv_dsi_regs.h   |  2 +-
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  1 +
>  .../drm/i915/gem/selftests/i915_gem_mman.c    |  1 +
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +
>  .../drm/i915/gt/intel_execlists_submission.c  |  1 +
>  drivers/gpu/drm/i915/gt/intel_gt.c            |  1 +
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  1 +
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  1 +
>  drivers/gpu/drm/i915/gt/intel_gtt.c           |  1 +
>  .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   |  1 +
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  1 +
>  drivers/gpu/drm/i915/gvt/cmd_parser.c         |  1 +
>  drivers/gpu/drm/i915/gvt/display.c            |  2 +
>  drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
>  drivers/gpu/drm/i915/gvt/mmio.c               |  1 +
>  drivers/gpu/drm/i915/gvt/mmio_context.c       |  1 +
>  drivers/gpu/drm/i915/i915_gpu_error.c         |  1 +
>  drivers/gpu/drm/i915/i915_irq.c               | 10 +--
>  drivers/gpu/drm/i915/i915_irq.h               |  9 ---
>  drivers/gpu/drm/i915/i915_perf.c              |  1 +
>  drivers/gpu/drm/i915/i915_reg.h               | 70 +------------------
>  drivers/gpu/drm/i915/i915_reg_defs.h          | 30 +++++++-
>  drivers/gpu/drm/i915/i915_trace.h             |  1 -
>  drivers/gpu/drm/i915/intel_device_info.c      |  3 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
>  drivers/gpu/drm/i915/intel_uncore.c           |  1 +
>  drivers/gpu/drm/i915/vlv_sideband.c           |  2 +
>  93 files changed, 290 insertions(+), 204 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> 
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
