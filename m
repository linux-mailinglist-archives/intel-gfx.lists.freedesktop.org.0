Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFF176B651
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 15:53:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88D1E10E354;
	Tue,  1 Aug 2023 13:53:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB96110E34B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 13:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690898031; x=1722434031;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jKJwy6lLAu40oTfCxjoyHuMPpt8PvsC4tx+b+MISuL0=;
 b=byDRuUKWlfigK/VUl+3QZbOJz2fPkJEJ+dBga+DhGbLwkOh2CsH7R742
 iXjL/WlgxocJLUkaVrz2nVAPdbjidVJcOzSYyPG+yMMng3yPMqo+MQgRS
 iqXXnt4OIe0OAr2tPc+ciG5ZctGDsz0Q+mT14aQ0dDfklA/ArHoH7/IoB
 6aeoYGhtbjU4ANBR9POcbCZmLxwu9USiF9j62KGR0lz2LP9WDeVLv2A8U
 XX5fozRjTtrooJgl3/K8FJDDZX/WPFMyBvzU9VF5Qrxu4hpxHeFJHz66F
 78a9WaBsch2z6eASFhwiLzwD+7xhDsIoR64Zg34fZkoXGbbXvpwaQOVG4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="435629298"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="435629298"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 06:53:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="818803870"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="818803870"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Aug 2023 06:53:48 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Aug 2023 19:23:30 +0530
Message-Id: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 00/14] Replace acronym with full platform
 name in defines
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

Replacing the acronym used in platform/sub platform defines.
This series covers Haswell, Broadwell, Skylake, Kabylake, Coffeelake,
Cometlake, Rocketlake, Jasperlake, Elkhartlake, Tigerlake, Alderlake,
platoform define.This way there is a consistent pattern 
to how platforms are referred.splitting to per paltform for easier 
cherrypicks, if needed.

For the review comment and Reviewed by please refer the link below,
1 https://patchwork.freedesktop.org/series/121387
2 https://patchwork.freedesktop.org/series/119380

v2:
 - Reordered patches by incrementing platform generations.(Anusha)
 - Changeed the commit subject with lowercase platform names.
v3:
 - The IS_PLATFORM_(DISPLAY/MEDIA/GRAPHICS)_STEPS replace with Unrolled
 format. i.e. IS_PLATFORM_FULL_NAME () && IS_DISPLAY_STEPS()

v4:
 - Removed the MTL platform from the renaming series (Mat Ropper)
 - Removed the unused display steps macro.

v5:
 - Resolved valid checkpatch warning


Anusha Srivatsa (1):
  drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN defines

Dnyaneshwar Bhadane (13):
  drm/i915/hsw: s/HSW/HASWELL for platform/subplatform defines
  drm/i915/bdw: s/BDW/BROADWELL for platform/subplatform defines
  drm/i915/skl: s/SKL/SKYLAKE for platform/subplatform defines
  drm/i915/kbl: s/KBL/KABYLAKE for platform/subplatform defines
  drm/i915/cfl: s/CFL/COFFEELAKE for platform/subplatform defines
  drm/i915/cml: s/CML/COMETLAKE for platform/subplatform defines
  drm/i915/rkl: s/RKL/ROCKETLAKE for platform/subplatform defines
  drm/i915/jsl: s/JSL/JASPERLAKE for platform/subplatform defines
  drm/i915/tgl: s/TGL/TIGERLAKE for platform/subplatform defines
  drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and graphics step
  drm/i915/rplp: s/ADLP_RPLP/RAPTORLAKE_P for RPLP defines
  drm/i915/rplu: s/ADLP_RPLU/RAPTORLAKE_U in RPLU defines
  drm/i915/adls: s/ADLS_RPLS/RAPTORLAKE_S in platform and subplatform
    defines

 drivers/gpu/drm/i915/display/icl_dsi.c        |  5 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 14 +--
 .../gpu/drm/i915/display/intel_combo_phy.c    |  7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  7 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    | 10 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  7 +-
 .../drm/i915/display/intel_display_device.c   |  2 +-
 .../drm/i915/display/intel_display_device.h   |  2 +-
 .../drm/i915/display/intel_display_power.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 33 ++++---
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  3 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 10 +-
 .../drm/i915/display/skl_universal_plane.c    |  6 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  2 +-
 drivers/gpu/drm/i915/gt/intel_sseu.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 13 +--
 .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.c   |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  2 +-
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               | 94 +++++++------------
 drivers/gpu/drm/i915/intel_clock_gating.c     |  4 +-
 drivers/gpu/drm/i915/intel_step.c             | 10 +-
 drivers/gpu/drm/i915/soc/intel_pch.c          | 18 ++--
 28 files changed, 127 insertions(+), 142 deletions(-)

-- 
2.34.1

