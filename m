Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C56F785E19
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4275C10E479;
	Wed, 23 Aug 2023 17:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C9E210E0A9;
 Wed, 23 Aug 2023 17:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810555; x=1724346555;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N0EzR9GLPT9lJP4lLfzJcLXpCUjYQJqMpQOWrO3ijzs=;
 b=k4iN8wAR5PEC8hqfPm917PEcaKF4LxgbKUrLj4WqHa/9cSYCmM7lJtW4
 vu4X8nJ7rxrGOMmsmvRIH4robbMTYzHUG0GWAeu9JWIZUk0VMLz+OhL+k
 JDWbMSHbd1WYAsWvc0kTSi3pM3skxDqdv/GuXZAiZA5ELt47/LwRDYffy
 bbFtxytt9sTCKk9vE1ArO3rQl8gCbkl7lZndPFFk6O5mKevpoXl0Nvbej
 nZhxpK5nRhzzJ6HLk9oY6ARl9D6RQGrmxERYKcGex6ld6tk8iiSKYK5SA
 3hbDrFRohC4K+7YektmWdDFxdFtrvTKfeAEwNKSa8cJ8H+C+ZBGPDIbnr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147457"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147457"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204754"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204754"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:06:58 -0700
Message-Id: <20230823170740.1180212-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/42] Enable Lunar Lake display
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

Cross posting this to the i915 and xe mailing lists. The basic platform
enabling for Lunar Lake is already applied in xe[1]. This patch series
adds the display support, that will be driven by i915.

A few notes from the series:

	1. This is based on drm-xe-next branch since this is where it
	   can be tested. It should be good enough for reviewing and
	   getting early feedback, but not for applying. drm-xe-next
	   will soon be on a more recent drm-tip, that will make it
	   easier to get some of the patches landing. All the patches
	   prefixed with drm/i915 are expected to eventually be applied
	   through the drm-intel branch.
	2. The first 6 commits can be ignored: they are things already
	   applied in drm-intel. With the IP/platform separation, there
	   was a lot of prep work besides those patches, that already
	   landed there so we minimize the patches for new platforms.
	3. Patches 7 through 10 can also be ignored: they are not
	   applied yet, but being reviewed in other patch series by its
	   author[2].
	4. Patch 11 allows xe to build when the patches the follow are
	   applied. Depending on the timeline how things end up landing,
	   this patch may need to be squashed in the "Initial Xe display
	   support"
	5. Last patch finally enable the display support in xe once all
	   the patches on the i915 side are applied.

I also ask for the original authors of the patches to double check their
own patches as there were some adjustements needed in order to rebase,
cleanup and fix some of the patches.

Lastly as things get reviewed I may want to split up this series in
smaller pieces and do some re-ordering to expedite the i915
[1] https://patchwork.freedesktop.org/series/122353/
[2] https://patchwork.freedesktop.org/series/120980/

Balasubramani Vivekanandan (3):
  drm/xe/lnl: Add IS_LUNARLAKE
  drm/i915/lnl: Add display definitions
  drm/xe/lnl: Enable the display support

Clint Taylor (3):
  drm/i915/xe2lpd: D2D Enable preserve bits in DDI_BUF_CTL
  drm/i915/xe2lpd: Register DE_RRMR has been removed
  drm/i915/display: Remove FBC capability from fused off pipes

Gustavo Sousa (9):
  drm/i915/display: Remove unused POWER_DOMAIN_MASK
  drm/i915/cx0: Add intel_cx0_get_owned_lane_mask()
  drm/i915: Simplify intel_cx0_program_phy_lane() with loop
  drm/i915/cx0: Enable/disable TX only for owned PHY lanes
  drm/i915/cx0: Program vswing only for owned lanes
  drm/i915/lnl: Add fake PCH
  drm/i915/xe2lpd: Add support for DP aux channels
  drm/i915/xe2lpd: Handle port AUX interrupts
  drm/i915/xe2lpd: Add support for HPD

Juha-Pekka Heikkilä (1):
  drm/i915/xe2lpd: enable odd size and panning for planar yuv on xe2lpd

Luca Coelho (5):
  drm/i915/tc: rename mtl_tc_port_get_pin_assignment_mask()
  drm/i915/tc: make intel_tc_port_get_lane_mask() static
  drm/i915/tc: move legacy code out of the main _max_lane_count() func
  drm/i915/tc: remove "fia" from intel_tc_port_fia_max_lane_count()
  drm/i915/xe2lpd: Read pin assignment from IOM

Lucas De Marchi (5):
  drm/i915: Re-order if/else ladder in intel_detect_pch()
  drm/i915/xe2lpd: Move D2D enable/disable
  drm/i915/xe2lpd: Move registers to PICA
  drm/i915/xe2lpd: Extend Wa_15010685871
  drm/i915/lnl: Add gmbus/ddc support

Matt Roper (3):
  drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST
  drm/i915/xe2lpd: Add DC state support
  drm/i915/xe2lpd: FBC is now supported on all pipes

Ravi Kumar Vodapalli (4):
  drm/i915/xe2lpd: Add display power well
  drm/i915/lnl: Add support for CDCLK initialization sequence
  drm/i915/lnl: Add pll table for LNL platform
  drm/i915/lnl: Add support to check c10 phy link rate

Stanislav Lisovskiy (9):
  drm/i915: Start using plane scale factor for relative data rate
  drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB
    allocation
  drm/i915/lnl: Introduce MDCLK
  drm/i915/lnl: Add CDCLK table
  drm/i915/lnl: Start using CDCLK through PLL
  drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf
  drm/i915/xe2lpd: Write DBuf after CDCLK change in post plane
  drm/i915/lnl: Serialize global state if mdclk/cdclk ratio changes.
  drm/i915/xe2lpd: Update mbus on post plane updates

 .../gpu/drm/i915/display/intel_atomic_plane.c |  21 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 187 ++++-
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 660 ++++++++++++++----
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  71 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  96 ++-
 drivers/gpu/drm/i915/display/intel_display.c  |   5 +-
 .../drm/i915/display/intel_display_device.c   |  18 +
 .../gpu/drm/i915/display/intel_display_irq.c  |   4 +-
 .../drm/i915/display/intel_display_power.c    |   6 +-
 .../i915/display/intel_display_power_map.c    |  55 +-
 .../i915/display/intel_display_power_well.c   |  63 +-
 .../i915/display/intel_display_power_well.h   |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   6 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  43 +-
 .../gpu/drm/i915/display/intel_dp_aux_regs.h  |  27 +
 drivers/gpu/drm/i915/display/intel_fbc.h      |   2 +
 drivers/gpu/drm/i915/display/intel_gmbus.c    |   5 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  22 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |  66 +-
 drivers/gpu/drm/i915/display/intel_tc.h       |   3 +-
 .../drm/i915/display/skl_universal_plane.c    |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  58 +-
 drivers/gpu/drm/i915/display/skl_watermark.h  |   1 +
 .../gpu/drm/i915/display/skl_watermark_regs.h |   2 +
 drivers/gpu/drm/i915/i915_drv.h               |   1 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |  11 +
 drivers/gpu/drm/i915/soc/intel_pch.c          |  12 +-
 drivers/gpu/drm/i915/soc/intel_pch.h          |   2 +
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |   1 +
 drivers/gpu/drm/xe/xe_pci.c                   |   1 +
 33 files changed, 1211 insertions(+), 247 deletions(-)

-- 
2.40.1

