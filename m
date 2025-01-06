Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E406BA022AA
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 11:09:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F8F110E144;
	Mon,  6 Jan 2025 10:09:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XrLhNsjH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABAEB10E144
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2025 10:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736158155; x=1767694155;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=77WurGxsjSAUJ8u+n7zIq4qbW+WaUzgn1DSBsNlwWbs=;
 b=XrLhNsjHU6dqLmS85zeSQsePB6l9o01INla4CXXSy3NJal/ODoA6T+bd
 VFGwA7OzISByAIfaVMnEDV3MHAUTrTctoGj8GKj9biM9jj/CiP/OB+tIy
 vnjFbIdFniee8e+6zx+fFhLBFH6ofgVZ8JhOjPrVVb77vXiWj91fWU3IU
 WN//urIpIRnkWPY5hAU3Iafy5+Zyw/hNMqLLmzoHVvWWkqnqiBirsB9+2
 wyRP4qK0V1y/koiplhx7wYsrvZzJq2dqsGmZekGVg8VInC82MU9wznQhc
 2FNg7qqcT81migTM9iEY8tNl1DfqSctj0O75IhpsF54yzDZBKBiUsQDN5 A==;
X-CSE-ConnectionGUID: f1BapTZTT0y1sbr14P1+Ew==
X-CSE-MsgGUID: +ejshSF+TaKiWKANCE4smg==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="36459647"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="36459647"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 02:09:15 -0800
X-CSE-ConnectionGUID: XbU/AX+vSdmiV31j8PwEHw==
X-CSE-MsgGUID: ZhfzWUioRgy6sxHmwZoDbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="107370407"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by orviesa004.jf.intel.com with ESMTP; 06 Jan 2025 02:09:13 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: andi.shyti@intel.com,
	Nitin Gote <nitin.r.gote@intel.com>
Subject: [PATCH v1 0/8] Fix all typos in i915
Date: Mon,  6 Jan 2025 16:00:29 +0530
Message-Id: <20250106103037.1401847-1-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Fix all typos in i915 reported by codespell tool.

Nitin Gote (8):
  drm/i915/gt: fix typos in i915/gt files.
  drm/i915/gvt: fix typos in i915/gvt files
  drm/i915/gem: fix typos in i915/gem files
  drm/i915/pxp: fix typos in i915/pxp files
  drm/i915/selftests: fix typos in i915/selftests files
  drm/i915/soc: fix typos in i915/soc files
  drm/i915/display: fix typos in i915/display files
  drm/i915: fix typos in drm/i915 files

 drivers/gpu/drm/i915/display/dvo_ns2501.c     |  2 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  6 +--
 drivers/gpu/drm/i915/display/icl_dsi.c        |  4 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_color.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 10 ++--
 .../drm/i915/display/intel_display_debugfs.c  |  2 +-
 .../drm/i915/display/intel_display_power.c    |  4 +-
 .../i915/display/intel_display_power_well.h   |  4 +-
 .../drm/i915/display/intel_display_types.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
 .../drm/i915/display/intel_dp_link_training.c |  4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_dp_test.c  |  4 +-
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_dvo_dev.h  |  2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |  2 +-
 .../drm/i915/display/intel_fifo_underrun.c    |  2 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  8 ++--
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  6 +--
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_link_bw.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  | 12 +++--
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  8 ++--
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  4 +-
 .../gpu/drm/i915/display/intel_sdvo_regs.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  2 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  2 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     | 48 +++++++++----------
 .../drm/i915/display/skl_universal_plane.c    |  4 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  4 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  6 +--
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_region.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  |  2 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  2 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  2 +-
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c      |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  8 ++--
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  4 +-
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_migrate.c       |  4 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps_types.h     |  4 +-
 drivers/gpu/drm/i915/gt/intel_sa_media.c      |  2 +-
 drivers/gpu/drm/i915/gt/intel_sseu.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  2 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  2 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  2 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  2 +-
 drivers/gpu/drm/i915/gt/selftest_rc6.c        |  2 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c        |  2 +-
 drivers/gpu/drm/i915/gt/shaders/README        |  6 +--
 .../drm/i915/gt/shaders/clear_kernel/hsw.asm  |  2 +-
 .../drm/i915/gt/shaders/clear_kernel/ivb.asm  |  2 +-
 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h |  4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  2 +-
 .../drm/i915/gt/uc/selftest_guc_hangcheck.c   |  2 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  4 +-
 drivers/gpu/drm/i915/gvt/dmabuf.c             |  2 +-
 drivers/gpu/drm/i915/gvt/edid.c               |  2 +-
 drivers/gpu/drm/i915/gvt/gtt.c                |  2 +-
 drivers/gpu/drm/i915/gvt/gvt.h                |  8 ++--
 drivers/gpu/drm/i915/gvt/handlers.c           |  6 +--
 drivers/gpu/drm/i915/gvt/kvmgt.c              |  2 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c       |  6 +--
 drivers/gpu/drm/i915/gvt/scheduler.c          |  6 +--
 drivers/gpu/drm/i915/gvt/vgpu.c               |  6 +--
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 drivers/gpu/drm/i915/i915_gem.c               |  2 +-
 drivers/gpu/drm/i915/i915_irq.c               |  2 +-
 drivers/gpu/drm/i915/i915_module.c            |  2 +-
 drivers/gpu/drm/i915/i915_perf.c              |  6 +--
 drivers/gpu/drm/i915/i915_pmu.h               |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               |  4 +-
 drivers/gpu/drm/i915/i915_request.c           |  2 +-
 drivers/gpu/drm/i915/i915_request.h           |  4 +-
 drivers/gpu/drm/i915/i915_vma.c               |  8 ++--
 drivers/gpu/drm/i915/intel_clock_gating.c     |  2 +-
 drivers/gpu/drm/i915/intel_gvt.c              |  2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  2 +-
 drivers/gpu/drm/i915/intel_runtime_pm.c       |  2 +-
 drivers/gpu/drm/i915/intel_runtime_pm.h       |  2 +-
 drivers/gpu/drm/i915/intel_uncore.c           |  2 +-
 .../drm/i915/pxp/intel_pxp_cmd_interface_43.h |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  2 +-
 drivers/gpu/drm/i915/selftests/i915_gem.c     |  2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  6 +--
 drivers/gpu/drm/i915/selftests/i915_vma.c     |  2 +-
 drivers/gpu/drm/i915/soc/intel_pch.c          |  2 +-
 119 files changed, 213 insertions(+), 207 deletions(-)

-- 
2.25.1

