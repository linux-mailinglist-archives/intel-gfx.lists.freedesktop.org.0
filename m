Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7373F616089
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:08:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6633710E461;
	Wed,  2 Nov 2022 10:08:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 694B510E461
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667383710; x=1698919710;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K5DRM2/JKJUw760zJL0lQnsHPFtblyy60rECY/IiogQ=;
 b=UUUjPYqcV3hgLd8N5CZ0RWg9ezWeFox+KrbUY+cXQqkFMm0WECDUZgMX
 RF2T43HCkwx6Gk0N7e54F81W/U3YcGAFTGSU2ldQlyz2rMpQNpTN6NE//
 tE6rczFgItHWU7QjrWWwJ7ZSq1GG7VLy0+aFXUdq7C5sLVlxTYGZIdoFI
 oGY5v2bSrmn3BFADAU+r0Uw3PezTVEYszS4/tUA1Lk9DC9dfAr3nZg6g8
 7vJETJieZ8nmobULZY48kBS/5TnZmhHq9l4cmuKVdZBxvOliyhJY92Ao8
 463r8ljFpX+8E4xan3nf48n6/ucScqBuTe/+/vVdg8ltw2HvSk5LNAsHY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="371455364"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="371455364"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:08:29 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="636726967"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="636726967"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:08:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 12:08:08 +0200
Message-Id: <cover.1667383630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 00/16] drm/i915: header cleanups, again
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I've had most of this laying around for a while, throttling the firehose
of refactors a bit. Maybe it's time?

BR,
Jani.

Jani Nikula (16):
  drm/i915/gmbus: move GPIO enum to gmbus
  drm/i915: reduce includes in intel_connector.h
  drm/i915: reduce includes in intel_fifo_underrun.h
  drm/i915: un-inline icl_hdr_plane_mask() to simplify includes
  drm/i915/dpio: un-inline the vlv phy/channel mapping functions
  drm/i915/dpio: move dpio_channel and dpio_phy enums to
    intel_dpio_phy.h
  drm/i915: reduce includes in intel_display_power.h
  drm/i915/display: reduce the includes in intel_dvo_dev.h
  drm/i915/display: reduce includes in intel_hdmi.h
  drm/i915/display: reduce includes in g4x_dp.h includes
  drm/i915/irq: make gen2_irq_init()/gen2_irq_reset() static
  drm/i915/reg: move masked field helpers to i915_reg_defs.h
  drm/i915/reg: move pick even and pick to reg defs
  drm/i915: split out intel_display_reg_defs.h
  drm/i915: stop including i915_irq.h from i915_trace.h
  drm/i915/display: move struct intel_link_m_n to intel_display_types.h

 drivers/gpu/drm/i915/display/g4x_dp.c         |  1 +
 drivers/gpu/drm/i915/display/g4x_dp.h         |  2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  1 +
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  4 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
 drivers/gpu/drm/i915/display/icl_dsi_regs.h   |  2 +-
 .../gpu/drm/i915/display/intel_audio_regs.h   |  2 +-
 .../gpu/drm/i915/display/intel_backlight.c    |  1 +
 .../drm/i915/display/intel_backlight_regs.h   |  2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  1 +
 drivers/gpu/drm/i915/display/intel_color.c    |  1 +
 .../gpu/drm/i915/display/intel_combo_phy.c    |  1 +
 .../gpu/drm/i915/display/intel_connector.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  2 +
 drivers/gpu/drm/i915/display/intel_cursor.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +
 drivers/gpu/drm/i915/display/intel_display.h  | 39 +----------
 .../drm/i915/display/intel_display_debugfs.c  |  2 +
 .../drm/i915/display/intel_display_power.h    |  3 +-
 .../i915/display/intel_display_power_well.h   |  2 +-
 .../drm/i915/display/intel_display_reg_defs.h | 53 ++++++++++++++
 .../drm/i915/display/intel_display_types.h    | 54 +++-----------
 drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  1 +
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 43 ++++++++++++
 drivers/gpu/drm/i915/display/intel_dpio_phy.h | 19 ++++-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  1 +
 drivers/gpu/drm/i915/display/intel_drrs.c     |  1 +
 drivers/gpu/drm/i915/display/intel_dsb.c      |  1 +
 drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
 drivers/gpu/drm/i915/display/intel_dvo_dev.h  |  8 +--
 drivers/gpu/drm/i915/display/intel_fdi.c      |  1 +
 .../drm/i915/display/intel_fifo_underrun.h    |  3 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 22 +++++-
 .../gpu/drm/i915/display/intel_hdcp_regs.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  1 +
 drivers/gpu/drm/i915/display/intel_hdmi.h     |  8 +--
 .../gpu/drm/i915/display/intel_lpe_audio.c    |  2 +
 drivers/gpu/drm/i915/display/intel_lspcon.c   |  1 +
 drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
 .../gpu/drm/i915/display/intel_mg_phy_regs.h  |  2 +-
 .../drm/i915/display/intel_modeset_setup.c    |  1 +
 drivers/gpu/drm/i915/display/intel_panel.c    |  1 +
 .../gpu/drm/i915/display/intel_pch_display.c  |  1 +
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  1 +
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |  2 +
 drivers/gpu/drm/i915/display/intel_pps.c      |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      |  1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  1 +
 .../drm/i915/display/intel_snps_phy_regs.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  1 +
 drivers/gpu/drm/i915/display/intel_sprite.h   |  9 +--
 drivers/gpu/drm/i915/display/intel_tv.c       |  2 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  1 +
 drivers/gpu/drm/i915/display/intel_vga.c      |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |  1 +
 drivers/gpu/drm/i915/display/skl_scaler.c     |  2 +
 .../drm/i915/display/skl_universal_plane.c    |  7 ++
 .../drm/i915/display/skl_universal_plane.h    |  1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
 drivers/gpu/drm/i915/display/vlv_dsi_regs.h   |  2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  1 +
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +
 .../drm/i915/gt/intel_execlists_submission.c  |  1 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  1 +
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  1 +
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  1 +
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  1 +
 drivers/gpu/drm/i915/gvt/display.c            |  2 +
 drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
 drivers/gpu/drm/i915/gvt/mmio.c               |  1 +
 drivers/gpu/drm/i915/gvt/mmio_context.c       |  1 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |  1 +
 drivers/gpu/drm/i915/i915_irq.c               | 10 +--
 drivers/gpu/drm/i915/i915_irq.h               |  9 ---
 drivers/gpu/drm/i915/i915_perf.c              |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 70 +------------------
 drivers/gpu/drm/i915/i915_reg_defs.h          | 30 +++++++-
 drivers/gpu/drm/i915/i915_trace.h             |  1 -
 drivers/gpu/drm/i915/intel_device_info.c      |  3 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
 drivers/gpu/drm/i915/intel_uncore.c           |  1 +
 drivers/gpu/drm/i915/vlv_sideband.c           |  2 +
 93 files changed, 290 insertions(+), 204 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_reg_defs.h

-- 
2.34.1

