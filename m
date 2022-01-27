Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEBE49EEF2
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 00:43:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97BEB10E41C;
	Thu, 27 Jan 2022 23:43:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B419110E3F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 23:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643327021; x=1674863021;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9FkxlF0Qp8ET8EIL0cnz/JHFGqnO+ILGeiaCdLD3JhU=;
 b=h+DVludx4UX8KNDuUucx/vJSFntMfs+KQFdN+GtUvFDqxAaOUNoUxQPr
 ceTJZ7Z+AqwB43XlOWjR7bQ4CkLzrb5AvXcyfwv9dSAQln/1OnnU1WscV
 rjmWkt1ziPfzuKjyVoeAl9YF/TNi2fvag1GJ4tJGWjFt9VcQevA9svAU6
 xs/QDJCqySijcRtLuUWCEbJR0CEB72t8CXYQBauY91i83A4B51u035Iqh
 trHvPVqXoJSiOkiIxp6lh3ch+sw0BsSQwYbrFqV7T8V4EOak3PHVsFYgv
 wpqFwIBlitxaysSAsq1uKC9mFaBUsKpCMDgEz95rK31wReuKSjSbABljl A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="226973768"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="226973768"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 15:43:41 -0800
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="521448535"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 15:43:40 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 15:43:28 -0800
Message-Id: <20220127234334.4016964-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v3 0/6] Second round of i915_reg.h splitting
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Let's continue to split our giant i915_reg.h file into more logical
domain-specific headers.  In addition to a bunch of register definition
segregation, the final patch of this series ensures that i915_reg.h is
only #include'd from .c files that truly need its definitions (and
removes all of the places it was included by other headers).  This
significantly reduces how much of the driver code gets rebuilt after a
modifications to i915_reg.h.

There's still more work to do after this series (especially moving
display registers to their own header(s)).  We'll also need to do a lot
of cleanup of the definitions themselves in a future series --- for now
the definitions have mostly been moved to new locations as-is without
modification to order, coding-style, etc.

Assuming CI comes back clean, we'll probably want to merge this through
a topic branch that can be applied to both drm-intel-next and
drm-intel-gt-next to avoid major conflicts.


v2:
 - Drop 'inline' from reg_in_range_table()
 - Add missing #include to intel_pxp_irq.c

v3:
 - Split on OA register range (Umesh)
 - Correct whitespace mistakes (Lucas/checkpatch)
 - Resolve minor rebase conflicts

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>

Matt Roper (6):
  drm/i915/perf: Move OA regs to their own header
  drm/i915/perf: Express OA register ranges with i915_range
  drm/i915: Parameterize R_PWR_CLK_STATE register definition
  drm/i915: Parameterize MI_PREDICATE registers
  drm/i915: Move GT registers to their own header file
  drm/i915: Only include i915_reg.h from .c files

 drivers/gpu/drm/i915/display/g4x_hdmi.h       |    2 +-
 drivers/gpu/drm/i915/display/intel_atomic.c   |    1 +
 drivers/gpu/drm/i915/display/intel_bios.c     |    1 +
 drivers/gpu/drm/i915/display/intel_bw.c       |    1 +
 drivers/gpu/drm/i915/display/intel_crt.h      |    2 +-
 drivers/gpu/drm/i915/display/intel_ddi.h      |    2 +-
 drivers/gpu/drm/i915/display/intel_de.h       |    1 -
 .../drm/i915/display/intel_display_power.h    |    1 -
 drivers/gpu/drm/i915/display/intel_dmc.h      |    2 +-
 drivers/gpu/drm/i915/display/intel_dp.h       |    2 -
 drivers/gpu/drm/i915/display/intel_dsb.h      |    2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |    1 +
 drivers/gpu/drm/i915/display/intel_dvo_dev.h  |    2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.h     |    2 -
 drivers/gpu/drm/i915/display/intel_lvds.h     |    2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.h     |    2 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |    1 +
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |    1 +
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |    1 +
 .../i915/gem/selftests/i915_gem_client_blt.c  |    3 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |    3 +-
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c      |    1 +
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |    1 +
 drivers/gpu/drm/i915/gt/gen7_renderclear.c    |    1 +
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |    3 +-
 drivers/gpu/drm/i915/gt/intel_engine.h        |    1 -
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |    1 +
 drivers/gpu/drm/i915/gt/intel_engine_regs.h   |   26 +
 .../drm/i915/gt/intel_execlists_submission.c  |    1 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |    1 +
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |    2 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |    3 +-
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |    2 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |    2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |    2 +
 drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c     |    1 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 1543 +++++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.c           |    1 +
 drivers/gpu/drm/i915/gt/intel_llc.c           |    1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           |    1 +
 drivers/gpu/drm/i915/gt/intel_mocs.c          |    2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |    2 +
 drivers/gpu/drm/i915/gt/intel_rc6.h           |    2 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c   |    1 +
 drivers/gpu/drm/i915/gt/intel_reset.c         |    2 +
 .../gpu/drm/i915/gt/intel_ring_submission.c   |    1 +
 drivers/gpu/drm/i915/gt/intel_rps.c           |    1 +
 drivers/gpu/drm/i915/gt/intel_sseu.c          |    3 +-
 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c  |    1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |    1 +
 .../gpu/drm/i915/gt/intel_workarounds_types.h |    2 +-
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |    1 -
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |    1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |    1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |    1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h    |    2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |    2 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |    1 +
 drivers/gpu/drm/i915/gt/uc/intel_huc.h        |    2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |    1 +
 drivers/gpu/drm/i915/gvt/aperture_gm.c        |    1 +
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |    1 +
 drivers/gpu/drm/i915/gvt/display.c            |    1 +
 drivers/gpu/drm/i915/gvt/dmabuf.c             |    1 +
 drivers/gpu/drm/i915/gvt/edid.c               |    1 +
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |    1 +
 drivers/gpu/drm/i915/gvt/gtt.c                |    2 +
 drivers/gpu/drm/i915/gvt/handlers.c           |    2 +
 drivers/gpu/drm/i915/gvt/interrupt.c          |    1 +
 drivers/gpu/drm/i915/gvt/interrupt.h          |    2 +-
 drivers/gpu/drm/i915/gvt/mmio.c               |    3 +
 drivers/gpu/drm/i915/gvt/mmio_context.c       |    1 +
 drivers/gpu/drm/i915/gvt/mmio_context.h       |    1 -
 drivers/gpu/drm/i915/gvt/scheduler.c          |    2 +
 drivers/gpu/drm/i915/i915_cmd_parser.c        |    6 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |    1 +
 drivers/gpu/drm/i915/i915_drv.h               |    1 -
 drivers/gpu/drm/i915/i915_gpu_error.c         |    1 +
 drivers/gpu/drm/i915/i915_irq.c               |    1 +
 drivers/gpu/drm/i915/i915_pci.c               |    1 +
 drivers/gpu/drm/i915/i915_perf.c              |  136 +-
 drivers/gpu/drm/i915/i915_perf_oa_regs.h      |  137 ++
 drivers/gpu/drm/i915/i915_perf_types.h        |    2 +-
 drivers/gpu/drm/i915/i915_pmu.c               |    1 +
 drivers/gpu/drm/i915/i915_reg.h               | 2057 -----------------
 drivers/gpu/drm/i915/i915_reg_defs.h          |    4 +
 drivers/gpu/drm/i915/i915_sysfs.c             |    1 +
 drivers/gpu/drm/i915/intel_dram.c             |    1 +
 drivers/gpu/drm/i915/intel_pcode.c            |    1 +
 drivers/gpu/drm/i915/intel_pm.c               |    1 +
 drivers/gpu/drm/i915/intel_pm.h               |    1 -
 drivers/gpu/drm/i915/intel_sbi.c              |    1 +
 drivers/gpu/drm/i915/intel_uncore.c           |    1 +
 drivers/gpu/drm/i915/intel_uncore.h           |    2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      |    1 +
 drivers/gpu/drm/i915/vlv_sideband.c           |    1 +
 drivers/gpu/drm/i915/vlv_suspend.c            |    2 +
 97 files changed, 1899 insertions(+), 2141 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_regs.h
 create mode 100644 drivers/gpu/drm/i915/i915_perf_oa_regs.h

-- 
2.34.1

