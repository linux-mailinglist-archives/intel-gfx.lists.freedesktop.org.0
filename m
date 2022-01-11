Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D1848A707
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 06:16:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9321D10F906;
	Tue, 11 Jan 2022 05:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2411710F906
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 05:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641878165; x=1673414165;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WTPF/xsCxYiAOqlxbOa7P2C8XkLKtt83qNiXZzQe7jo=;
 b=QLGhHdbTGrDB19tyavgJL7JbU+z7HG5PEX/ynXoM0Xj8hJHpceUlGXAi
 qUKBX7tguij/9BLolkoTDgNJsxfbPQJCaUNzophB+40PNgKKyngLhEJrh
 t8PR38DIBeY4gMcgrItLUn794Ih6p8FLTqeVS66mPWQspgEOg8kzsFPMJ
 7KkooNK7TkdJFmiIRNQu16DIsbYEvZSG2r/h/x8bJFUpQ9AGoYUr9RNBA
 KuqPB1NACFJnmqSeL2kIQI4S9u0ry3hBeHvryXqdcbh2Jx1vHvhyLpINv
 ElK2PZ9gLz9AK8ViFcKF37cr3iSeJt6TCvIUDGh4iAdBJvdVub4za0Re8 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="243358336"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="243358336"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:04 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="474399141"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 21:15:49 -0800
Message-Id: <20220111051600.3429104-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 00/11] Start cleaning up register definitions
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Let's start splitting up and cleaning up parts of i915_reg.h.  Rather
than starting with dead code removal as we did in v1, this time we'll
switch a few macros to parameterized style, and then move a few types of
registers (engine registers, SNPS PHY registers) off to their own header
files.

v3:
 - Split out i915_reg_defs.h in its own patch
 - Also split out combo PHY and MG/DKL PHY sets of registers

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>

Matt Roper (11):
  drm/i915: Use parameterized GPR register definitions everywhere
  drm/i915: Parameterize PWRCTX_MAXCNT
  drm/i915: Parameterize ECOSKPD
  drm/i915: Use RING_PSMI_CTL rather than per-engine macros
  drm/i915: Replace GFX_MODE_GEN7 with RING_MODE_GEN7
  drm/i915: Introduce i915_reg_defs.h
  drm/i915/gt: Move engine registers to their own header
  drm/i915: Move SNPS PHY registers to their own header
  drm/i915: Move combo PHY registers to their own header
  drm/i915: Move TC PHY registers to their own header
  drm/i915: Drop unused _PORT3 and _PORT4 TC phy register offsets

 drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
 .../gpu/drm/i915/display/intel_combo_phy.c    |   1 +
 .../drm/i915/display/intel_combo_phy_regs.h   | 162 ++++
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +
 .../drm/i915/display/intel_display_power.c    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   1 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |   1 +
 .../drm/i915/display/intel_snps_phy_regs.h    |  75 ++
 drivers/gpu/drm/i915/display/intel_tc.c       |   1 +
 .../gpu/drm/i915/display/intel_tc_phy_regs.h  | 280 ++++++
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c      |   1 +
 drivers/gpu/drm/i915/gt/gen6_engine_cs.c      |   1 +
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   1 +
 drivers/gpu/drm/i915/gt/intel_engine_regs.h   | 197 ++++
 .../drm/i915/gt/intel_execlists_submission.c  |   1 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |   1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           |   1 +
 drivers/gpu/drm/i915/gt/intel_lrc_reg.h       |  15 -
 drivers/gpu/drm/i915/gt/intel_rc6.c           |   9 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |   1 +
 drivers/gpu/drm/i915/gt/intel_ring.c          |   1 +
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  11 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |   7 +-
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c  |   1 +
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c      |   1 +
 drivers/gpu/drm/i915/gt/selftest_rps.c        |   1 +
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   3 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |   1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |   4 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c       |   5 +-
 drivers/gpu/drm/i915/gvt/mmio_context.h       |   1 +
 drivers/gpu/drm/i915/i915_cmd_parser.c        |  69 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |   1 +
 drivers/gpu/drm/i915/i915_perf.c              |   1 +
 drivers/gpu/drm/i915/i915_pmu.c               |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 841 +-----------------
 drivers/gpu/drm/i915/i915_reg_defs.h          |  98 ++
 drivers/gpu/drm/i915/i915_request.c           |   1 +
 drivers/gpu/drm/i915/intel_pm.c               |  11 +-
 drivers/gpu/drm/i915/intel_uncore.c           |   2 +-
 44 files changed, 911 insertions(+), 907 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_snps_phy_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_tc_phy_regs.h
 create mode 100644 drivers/gpu/drm/i915/gt/intel_engine_regs.h
 create mode 100644 drivers/gpu/drm/i915/i915_reg_defs.h

-- 
2.34.1

