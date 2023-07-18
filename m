Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D0B75763F
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 10:11:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 276C510E2E9;
	Tue, 18 Jul 2023 08:11:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 424BB10E2E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 08:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689667884; x=1721203884;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QihpAaOsfjzDcj1J63YP9sCH8suMBFeH31dES1xQp94=;
 b=kSQiFEPXfIVP+oVZVRhWckY4tWXE39xS8hUroxr1idpajkyy7t3Alzke
 GEdSGg9BIuJQz9PU9/1QMahBk4fqFAIAY3CWg2sBy8/pMfRKHm4YQfzWY
 eJiP/JxhuXBN0HPzwbg4NLhW66aPzR1yoCgTPWcU55lpo4tiNN8KY0Xeb
 Zj3wZIdla9vdM8h7K9lNp92fewDQf2ApQOwKnC5fD3ObYNQucmao+2Jla
 MJi3EcT4kEkk1FensQ8Fe4uzbFVPuSpq0+ALowH01HyQbwBgMW4/HAwS5
 1uPW/rTsX1LYty2naBKLGygOSMMnWqNxyWsznK7OtqC4yJO+cmfOJ3Vb6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="369696468"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="369696468"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 01:11:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="723517967"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="723517967"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga002.jf.intel.com with ESMTP; 18 Jul 2023 01:11:20 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 13:41:00 +0530
Message-Id: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v4 00/15] Replace acronym with full platform name in
 defines.
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
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Replacing the acronym used in platform/sub platform defines.
This series covers Haswell, Broawell, Skylake, Kabylake, Coffeelake,
Cometlake, Rocketlake, Jasperlake, Elkhartlake, Tigerlake, Alderlake,
Meteorlake platoform define.This way there is a consistent pattern 
to how platforms are referred.splitting to per paltform for easier 
cherrypicks, if needed.

v2:
 - Reordered patches by incrementing platform generations.(Anusha)
 - Changeed the commit subject with lowercase platform names.
v3:
 - The IS_PLATFORM_(DISPLAY/MEDIA/GRAPHICS)_STEPS replace with Unrolled
 format. i.e. IS_PLATFORM_FULL_NAME () && IS_DISPLAY_STEPS()

Anusha Srivatsa (5):
  drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and graphics step
  drm/i915/rplp: s/ADLP/ALDERLAKE_P for RPLP defines
  drm/i915/rplu: s/ADLP/ALDERLAKE_P in RPLU defines
  drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN defines
  drm/i915/adls: s/ADLS/ALDERLAKE_S in platform and subplatform defines

Dnyaneshwar Bhadane (10):
  drm/i915/hsw: s/HSW/HASWELL for platform/subplatform defines
  drm/i915/bdw: s/BDW/BROADWELL for platform/subplatform defines
  drm/i915/skl: s/SKL/SKYLAKE for platform/subplatform defines
  drm/i915/kbl: s/KBL/KABYLAKE for platform/subplatform defines
  drm/i915/cfl: s/CFL/COFFEELAKE for platform/subplatform defines
  drm/i915/cml: s/CML/COMETLAKE for platform/subplatform defines
  drm/i915/rkl: s/RKL/ROCKETLAKE for platform/subplatform defines
  drm/i915/jsl: s/JSL/JASPERLAKE for platform/subplatform defines
  drm/i915/tgl: s/TGL/TIGERLAKE for platform/subplatform defines
  drm/i915/mtl: s/MTL/METEORLAKE for platform/subplatform defines

 drivers/gpu/drm/i915/display/icl_dsi.c        |   5 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  14 +--
 .../gpu/drm/i915/display/intel_combo_phy.c    |   7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   7 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |  10 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   9 +-
 .../drm/i915/display/intel_display_device.c   |   2 +-
 .../drm/i915/display/intel_display_device.h   |   2 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   4 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  33 +++---
 drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  21 ++--
 .../drm/i915/display/skl_universal_plane.c    |  10 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   2 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  10 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   3 +-
 .../drm/i915/gt/intel_execlists_submission.c  |   3 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |   4 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |   4 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |   3 +-
 drivers/gpu/drm/i915/gt/intel_sseu.c          |   2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  60 +++++-----
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   7 +-
 .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.c   |   2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   6 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |   2 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               | 104 +++++++++---------
 drivers/gpu/drm/i915/i915_perf.c              |   6 +-
 drivers/gpu/drm/i915/intel_clock_gating.c     |   4 +-
 drivers/gpu/drm/i915/intel_step.c             |  10 +-
 drivers/gpu/drm/i915/soc/intel_pch.c          |  18 +--
 38 files changed, 210 insertions(+), 181 deletions(-)

-- 
2.34.1

