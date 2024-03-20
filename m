Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A75880AF5
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 07:05:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA24710EC0D;
	Wed, 20 Mar 2024 06:05:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ul2n4FXe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BDB810EC0D
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 06:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710914718; x=1742450718;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ogKCqqGRkctt1HH+IZ17bqWUZuVCoThlIMz9CXA1454=;
 b=Ul2n4FXeePuu6xgbp9Xwv+p097Y29c4PZR2nFFuaXPgp2Ywf7PJL4xcl
 Ih85Bfc1EjkqZWk2+JWdRLA/0smoKpuUp0p6695+5mjNacRHsdZV0tpai
 vV8SOaMmbcaPcRpsS18bzcgDJOF7z8t44ZAS1G1R2oQFiXgApriyS9Eax
 K2q2seJPcQwGzO+ojeYy6Y578EoNL7g5HYaowpDagF2OTCQArDdIa/iPn
 kyuI1uY2cEVkx7QlKDGDgveOKNJ+54iXq5NfVEnwe8Iqc12Q0rtz5wGZ+
 5XPHFqPFNbz+oCySfJyRmHWLHu/zdm2wqKmkNf+lkSM9FfreMVEYlWvpu A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="28295578"
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; d="scan'208";a="28295578"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 23:05:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; d="scan'208";a="51485492"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 23:05:16 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [CI 0/6] drm/i915: cleanup dead code
Date: Tue, 19 Mar 2024 23:02:57 -0700
Message-ID: <20240320060543.4034215-1-lucas.demarchi@intel.com>
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

For CI coverage. No change from previous version except the rebase.
See 20240312235145.2443975-1-lucas.demarchi@intel.com
and 20240312235145.2443975-1-lucas.demarchi@intel.com for details.

I will probably wait the drm-next backmerge anyway so drm-intel-next and
drm-intel-gt-next are back in sync.

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
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 181 +--------
 .../gpu/drm/i915/gt/intel_workarounds.c.rej   |  18 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   6 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |   2 +-
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
 43 files changed, 232 insertions(+), 1032 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_workarounds.c.rej

-- 
2.43.0

