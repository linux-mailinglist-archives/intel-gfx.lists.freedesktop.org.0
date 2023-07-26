Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB87763FB6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 21:33:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77B6B10E4AD;
	Wed, 26 Jul 2023 19:33:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA00610E4AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 19:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690400020; x=1721936020;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rWQ21Ox05VlrkKlLGhpO10cGAg6eeEye/lYmcYwNt/8=;
 b=ka3bOh9ECfEO9jPOHoB8P6mP65ViRvkj9eA7POUkJsWUrGjZFzyCds30
 j+rXrLVNTulXAoS/isjX8IKJWdoPc4eJcqs4NMtArCqMlPjV/1blmKilL
 Q9YnUe3cWDgokskr519zdpxRtTSGHWnS/SY/44JPZbcxKoJIqSCyldRK1
 +9gr7pTgHxkGTo552mmsHxJcGs687HWABu50ATH6shjp9MVLbcjz4VY2s
 VrY8pF6Mic2rBupXZbxUvPPxjqQOfCnwb4O5s3GQhBEtW6jn6MvymQ1Nw
 h6JUZnLd+qHU52NV1sQUHncpJ6cvNXaH7xvczc37qd7Sby125OzgEJfML A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="353013232"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="353013232"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 12:33:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="840383327"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="840383327"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2023 12:33:37 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 01:03:19 +0530
Message-Id: <20230726193333.2759197-1-dnyaneshwar.bhadane@intel.com>
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
platoform define.This way there is a consistent pattern 
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
  drm/i915/rplp: s/ADLP/ALDERLAKE_P for RPLP defines
  drm/i915/rplu: s/ADLP/ALDERLAKE_P in RPLU defines
  drm/i915/adls: s/ADLS/ALDERLAKE_S in platform and subplatform defines

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

