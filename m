Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB3E488151
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jan 2022 05:41:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB8C9113609;
	Sat,  8 Jan 2022 04:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88025113604
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jan 2022 04:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641616861; x=1673152861;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MbBccMwY6uaZB963MGB8lh22tw3Rc7VvCCzdNildR1s=;
 b=W+2noiu1hUrIr8UoxyeDXM27nCibk64q107P7NaNuGO1JKLS1pEfI0As
 eQe0GCkVjAH3/itryZM49fYy44aC5cEQCR58y4J0wV9389n2AZsCTl6rm
 o66b8ygAjZkGKXgfAXA1UL2smUt5BjrHM7djlgpgNuEcNXfOfV/6uv2be
 CYFl+2ZpzfkgXut3M88ZZCzVYjzdzzIdGwoDhgdbd4gjUX2q77QCYwOjh
 YMR1A133lQZ4b6qSvwtci3Kh//6mhbz3OPJPcP+r8xESnYqHJXGGHjEjT
 TNoMB9/MBHlGzBu21fAAjJMtKau1h1ejLzu49vXUUbYPtxt6g3rh2Vrwu w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10220"; a="240533982"
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="240533982"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 20:41:00 -0800
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="668975708"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 20:41:00 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jan 2022 20:40:48 -0800
Message-Id: <20220108044055.3123418-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/7] Start cleaning up register definitions
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

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>

Matt Roper (7):
  drm/i915: Use parameterized GPR register definitions everywhere
  drm/i915: Parameterize PWRCTX_MAXCNT
  drm/i915: Parameterize ECOSKPD
  drm/i915: Use RING_PSMI_CTL rather than per-engine macros
  drm/i915: Replace GFX_MODE_GEN7 with RING_MODE_GEN7
  drm/i915/gt: Move engine registers to their own header
  drm/i915: Move SNPS PHY registers to their own header

 drivers/gpu/drm/i915/display/intel_snps_phy.c |   1 +
 .../drm/i915/display/intel_snps_phy_regs.h    |  73 ++++
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c      |   1 +
 drivers/gpu/drm/i915/gt/gen6_engine_cs.c      |   1 +
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   1 +
 drivers/gpu/drm/i915/gt/intel_engine_regs.h   | 197 ++++++++++
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
 drivers/gpu/drm/i915/i915_cmd_parser.c        |  69 ++--
 drivers/gpu/drm/i915/i915_gpu_error.c         |   1 +
 drivers/gpu/drm/i915/i915_perf.c              |   1 +
 drivers/gpu/drm/i915/i915_pmu.c               |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 354 +-----------------
 drivers/gpu/drm/i915/i915_reg_defs.h          |  98 +++++
 drivers/gpu/drm/i915/i915_request.c           |   1 +
 drivers/gpu/drm/i915/intel_pm.c               |  11 +-
 drivers/gpu/drm/i915/intel_uncore.c           |   2 +-
 35 files changed, 459 insertions(+), 420 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_snps_phy_regs.h
 create mode 100644 drivers/gpu/drm/i915/gt/intel_engine_regs.h
 create mode 100644 drivers/gpu/drm/i915/i915_reg_defs.h

-- 
2.34.1

