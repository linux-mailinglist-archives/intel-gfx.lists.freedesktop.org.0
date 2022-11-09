Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD80622F41
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 16:43:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F85C10E5F0;
	Wed,  9 Nov 2022 15:42:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BE0A10E5F1
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 15:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668008576; x=1699544576;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zwoFH9aReI2j+ppA7qBdthpViU5YUjimNwAXKn1Rie0=;
 b=EGA4PvHet9uWEr0QnxMPnu6n4EyCPnAkfbsBaVa/rfVTQeQRFpp8EMC5
 l+QKNfuoZbyPTLmQsb/R9oJ9zvCHRDDH+SLWGJNvDv5bg7P3QI6el6a4u
 np/5rKEd6a/u5IEsfoaVbJnt1MJNJBwBf7PbknJ78Kd8aCx3OwR3GHNgH
 Co0o29yGANzsoBq14xvSmV4uL4fMrCOoPl9khKSEwSaYd1PNnJk/8HWS9
 UYp8fSn8tMe/OdPJyT0yJ7nU4RHDahgImlztvbBhEQNwJ+iNQ3lDrYSp0
 8qCpeZP/H3UoUGl+l7eIU6ko/UeifBgsWTD1O0wLrdbbt1uiguJ3davT8 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309720963"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="309720963"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 07:35:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="779381361"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="779381361"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 07:35:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 17:35:18 +0200
Message-Id: <cover.1668008071.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] drm/i915: header cleanups, cont'd
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
Cc: Jani Nikula <jani.nikula@intel.com>, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The remaining patches from [1], rebased.

I also realized this conflicts with what Lucas is doing so I'd like to
get feedback.

[1] https://patchwork.freedesktop.org/series/110404/

Jani Nikula (4):
  drm/i915/reg: move masked field helpers to i915_reg_defs.h
  drm/i915/reg: move pick even and pick to reg defs
  drm/i915: split out intel_display_reg_defs.h
  drm/i915: stop including i915_irq.h from i915_trace.h

 drivers/gpu/drm/i915/display/g4x_dp.c         |  1 +
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
 drivers/gpu/drm/i915/display/intel_crt.c      |  2 +
 drivers/gpu/drm/i915/display/intel_cursor.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 .../drm/i915/display/intel_display_debugfs.c  |  2 +
 .../drm/i915/display/intel_display_reg_defs.h | 53 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  1 +
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  1 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |  1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  1 +
 drivers/gpu/drm/i915/display/intel_drrs.c     |  1 +
 drivers/gpu/drm/i915/display/intel_dsb.c      |  1 +
 drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
 drivers/gpu/drm/i915/display/intel_fdi.c      |  1 +
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  2 +
 .../gpu/drm/i915/display/intel_hdcp_regs.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  1 +
 .../gpu/drm/i915/display/intel_lpe_audio.c    |  2 +
 drivers/gpu/drm/i915/display/intel_lspcon.c   |  1 +
 drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
 .../gpu/drm/i915/display/intel_mg_phy_regs.h  |  2 +-
 .../drm/i915/display/intel_modeset_setup.c    |  1 +
 drivers/gpu/drm/i915/display/intel_panel.c    |  1 +
 .../gpu/drm/i915/display/intel_pch_display.c  |  1 +
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  1 +
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |  2 +
 drivers/gpu/drm/i915/display/intel_pps.c      |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |  1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  1 +
 .../drm/i915/display/intel_snps_phy_regs.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  1 +
 drivers/gpu/drm/i915/display/intel_tv.c       |  2 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  1 +
 drivers/gpu/drm/i915/display/intel_vga.c      |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |  1 +
 drivers/gpu/drm/i915/display/skl_scaler.c     |  2 +
 .../drm/i915/display/skl_universal_plane.c    |  2 +
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
 drivers/gpu/drm/i915/gvt/mmio_context.c       |  1 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |  1 +
 drivers/gpu/drm/i915/i915_perf.c              |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 70 +------------------
 drivers/gpu/drm/i915/i915_reg_defs.h          | 30 +++++++-
 drivers/gpu/drm/i915/i915_trace.h             |  1 -
 drivers/gpu/drm/i915/intel_device_info.c      |  3 +-
 drivers/gpu/drm/i915/intel_uncore.c           |  1 +
 74 files changed, 166 insertions(+), 82 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_reg_defs.h

-- 
2.34.1

