Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D6E764020
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 22:07:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A41B10E4C1;
	Wed, 26 Jul 2023 20:07:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5F1C10E4B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 20:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690402023; x=1721938023;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F5ze9R5LFhjR9UTIxVZNlZ4qOnGEa5o7G1nfJQEHaUs=;
 b=jCy/W00ymahjLMpib84p3XbB+svEnOh+oYtlfEVNByLCj764OGpqT6EN
 l1Hypynvp0nkbfbMj38LN3+FhgS5p5fvpO/OLEHWFrHNa5p6YOz+zWytV
 DkO7Esd5wgw5QBARRoZiuDeAXFUSb8OvGNf6iJ/dMS8Mgg/YB0FCqHVXg
 kKhP0x/GS2If7761mV8aRwG3V42T6SWVG0noDE95LCBtEJBMp6irnVt6X
 D/Zkzwfk8m6lyP+3HY2pVvO6Bvg7Dw827allTAw6a67CDcGHOZQbClYfP
 wp3dUaGYjVCXV0zRu9Hv3LlAxL/ekYwvy0dT9zZjh3EWgLNcBvvgzlVNb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="399057721"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="399057721"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 13:07:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="720614448"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="720614448"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga007.jf.intel.com with ESMTP; 26 Jul 2023 13:07:00 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 01:36:43 +0530
Message-Id: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 00/14] Replace acronym with full platform
 name in defines.
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
This series covers Haswell, Broadwell, Skylake, Kabylake, Coffeelake,
Cometlake, Rocketlake, Jasperlake, Elkhartlake, Tigerlake, Alderlake,
platform define.This way there is a consistent pattern 
to how platforms are referred.splitting to per paltform for easier 
cherrypicks, if needed.

v2:
 - Reordered patches by incrementing platform generations.(Anusha)
 - Changeed the commit subject with lowercase platform names.
v3:
 - The IS_PLATFORM_(DISPLAY/MEDIA/GRAPHICS)_STEPS replace with Unrolled
 format. i.e. IS_PLATFORM_FULL_NAME () && IS_DISPLAY_STEPS()

v4:
 - Removed the MTL platform from the renaming series (Mat Ropper)
 - Removed the unused display steps macro.
 - Resolved conflicts.

Anusha Srivatsa (1):
  drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN defines

Dnyaneshwar Bhadane (13):
  drm/i915/hsw: s/HSW/HASWELL for platform/subplatform defines
  drm/i915/bdw: s/BDW/BROADWELL for platform/subplatform defines
  drm/i915/skl: s/SKL/SKYLAKE for platform/subplatform defines
  Follow consistent naming convention. Replace KBL with KABYLAKE.Replace
    IS_KBL_GRAPHICS_STEP with IS_KABYLAKE () && IS_GRAPHICS_STEP().
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

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Anusha Srivatsa <Anusha.Srivatsa@intel.com>
Cc: matthew Atwood <matthew.s.atwood@intel.com>

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

