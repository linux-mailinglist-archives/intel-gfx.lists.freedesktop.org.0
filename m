Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0821879FDB
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 00:51:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A3B910F24D;
	Tue, 12 Mar 2024 23:51:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m+7BNf1c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D77810F24A
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 23:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710287474; x=1741823474;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B+N8MfRV8RUecexmZcecKQY3MC2H4PCg6bi1V31uiHk=;
 b=m+7BNf1c4+QC568uPlUwav1IeNSyeu4btjbgEifZhrV0PoYVtmGgUtmy
 dEsFO1QRc2Ou7n7EPLLiULt/AN7TVqxDbaL88Dn096cI5hoWDvMZk3fFQ
 zufW/HcT7IYBce1LEUxqBhbFCqe/xnPpvHBD80HZoNPlghudYnRMhpG+K
 BzNQEKg7styZ4Hir/a5UfFEft3fTsPLnhULty66RHbzV/f1bNvHP0o7r+
 l0lid5o3JEsiMqt5kkthA4VfOLq+ZkMvj8HeUZj0YbQzEjj7O/fOhZLoA
 gxv9S6+T8gmS0D/FkNxslkUDatRFImFr6Ofba+QU2YctN4rLC7IPHt7iM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8848038"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="8848038"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 16:51:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="42715869"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 16:51:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH v2 0/6] drm/i915: cleanup dead code
Date: Tue, 12 Mar 2024 16:51:39 -0700
Message-ID: <20240312235145.2443975-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.43.0
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

Remove platforms that never had their PCI IDs added to the driver and
are of course marked with requiring force_probe. Note that most of the
code for those platforms is actually used by subsequent ones, so it's
not a huge amount of code being removed.

drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h is also changed on the
xe side, but that should be ok: the defines are there only for compat
reasons while building the display side (and none of these platforms
have display, so it's build-issue only).

v2: handle feedback from Rodrigo, Tvrtko and Matt Roper, mainly

    - Add a patch to remove XEHP_FWRANGES()
    - Split out a patch touching i915_pci.c, removing the version from
      the _FEATURES macros
    - Fix holes in the forcewake tables

Lucas De Marchi (6):
  drm/i915: Drop dead code for xehpsdv
  drm/i915: Remove XEHP_FWRANGES()
  drm/i915: Stop inheriting IP_VER(12, 50)
  drm/i915: Update IP_VER(12, 50)
  drm/i915: Drop dead code for pvc
  drm/i915: Remove special handling for !RCS_MASK()

 Documentation/gpu/rfc/i915_vm_bind.h          |  11 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   2 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |   4 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  |   8 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |   5 +-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  40 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  43 +-
 .../drm/i915/gt/intel_execlists_submission.c  |  10 +-
 drivers/gpu/drm/i915/gt/intel_gsc.c           |  15 -
 drivers/gpu/drm/i915/gt/intel_gt.c            |   4 +-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  52 +--
 drivers/gpu/drm/i915/gt/intel_gt_mcr.h        |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  59 ---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |  21 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c           |   2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  51 +--
 drivers/gpu/drm/i915/gt/intel_migrate.c       |  22 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  52 +--
 drivers/gpu/drm/i915/gt/intel_rps.c           |   6 +-
 drivers/gpu/drm/i915/gt/intel_sseu.c          |  13 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 183 +--------
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   6 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |   2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 -
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   4 -
 drivers/gpu/drm/i915/i915_debugfs.c           |  12 -
 drivers/gpu/drm/i915/i915_drv.h               |  13 -
 drivers/gpu/drm/i915/i915_getparam.c          |   4 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |   5 +-
 drivers/gpu/drm/i915/i915_hwmon.c             |   6 -
 drivers/gpu/drm/i915/i915_pci.c               |  61 +--
 drivers/gpu/drm/i915/i915_perf.c              |  19 +-
 drivers/gpu/drm/i915/i915_query.c             |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |   4 +-
 drivers/gpu/drm/i915/intel_clock_gating.c     |  26 +-
 drivers/gpu/drm/i915/intel_device_info.c      |   2 -
 drivers/gpu/drm/i915/intel_device_info.h      |   2 -
 drivers/gpu/drm/i915/intel_step.c             |  80 +---
 drivers/gpu/drm/i915/intel_uncore.c           | 380 +++++-------------
 drivers/gpu/drm/i915/selftests/intel_uncore.c |   3 -
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |   6 -
 43 files changed, 215 insertions(+), 1034 deletions(-)

-- 
2.43.0

