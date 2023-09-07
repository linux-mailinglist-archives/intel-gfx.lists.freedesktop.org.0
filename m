Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAAA797497
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 17:40:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0200D10E81A;
	Thu,  7 Sep 2023 15:40:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5053710E7FF;
 Thu,  7 Sep 2023 15:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694101205; x=1725637205;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YXkb9pKJVRIFFuRxgJ/3NIi3YqbqDyYjIlQY691Zj2k=;
 b=OBfUHj438khyD7XK9fIGIWtiKAOP8jfftsBHF2UzUQ7UajdSv4X4S5oH
 bUgOk/9IRtljxTREnjZpz8VoVJ36Ldi5ztd0hzGCGfdvhRK3Z0dRbCzTp
 KfsgQCToDQ4TWvq6bJ00mIN2UbpVZZDkG06ZH+qEOEDJi6kHzQrdL+4mO
 gsMbZEkrM5hquMVJXapHb2farFQ68GnzeSIA7ZNMedhWG+7KGZaxbsilN
 aE0SzQdNRLmqKsui9N1EKJLrxrTg75f72QKztN9HzLEc70ob+u5tVqIhS
 8ch3SvKQSjo4WOiSd/wWGW1PRkL/EHtKTJJLe+2Po7qxeYjCJlk6LEhId g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362445748"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="362445748"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1072930217"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="1072930217"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 08:37:30 -0700
Message-Id: <20230907153757.2249452-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/27] Enable Lunar Lake display
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
enabling for Lunar Lake is already applied in the xe driver[1].
This patch series adds the display support in the i915 driver, that is
going to be shared with xe.

Differently than v1, this v2 is based off drm-intel-next so we can start
applying the patches. Since drm-xe-next is now much closer to
drm-intel-next, the patches apply cleanly there too.

Another difference from v1 is that the prerequisite patches are all
applied already, so we can drop them from this series. Also dropped from
the series is the final patch to xe driver enabling the display, since
that doesn't apply to drm-intel-next.

I went a few times through all the review comments and adapt the patches
according to what we discussed. The main things missing are the patches
marked with "FIXME:". Those are because they depend on the different
approach I implemented for "drm/i915/xe2lpd: Move registers to PICA".
Once that is agreed upon, I can go back and adapt these patches.

[1] https://patchwork.freedesktop.org/series/122353/

Balasubramani Vivekanandan (1):
  drm/i915/lnl: Add display definitions

Clint Taylor (3):
  drm/i915/display: Consolidate saved port bits in intel_digital_port
  drm/i915/xe2lpd: Register DE_RRMR has been removed
  drm/i915/display: Remove FBC capability from fused off pipes

Gustavo Sousa (4):
  drm/i915/xe2lpd: Add fake PCH
  FIXME: drm/i915/xe2lpd: Add support for DP aux channels
  drm/i915/xe2lpd: Handle port AUX interrupts
  drm/i915/xe2lpd: Add support for HPD

Juha-Pekka Heikkilä (1):
  drm/i915/xe2lpd: Enable odd size and panning for planar yuv

Luca Coelho (1):
  drm/i915/xe2lpd: Read pin assignment from IOM

Lucas De Marchi (6):
  drm/i915/xelpdp: Add XE_LPDP_FEATURES
  drm/i915: Re-order if/else ladder in intel_detect_pch()
  drm/i915/xe2lpd: Move D2D enable/disable
  drm/i915/xe2lpd: Move registers to PICA
  drm/i915/xe2lpd: Extend Wa_15010685871
  drm/i915/lnl: Add gmbus/ddc support

Matt Roper (3):
  drm/i915/xe2lpd: FBC is now supported on all pipes
  drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST
  drm/i915/xe2lpd: Add DC state support

Ravi Kumar Vodapalli (2):
  FIXME: drm/i915/xe2lpd: Add display power well
  drm/i915/lnl: Add support for CDCLK initialization sequence

Stanislav Lisovskiy (6):
  drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB
    allocation
  drm/i915/lnl: Add CDCLK table
  drm/i915/lnl: Start using CDCLK through PLL
  drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf
  drm/i915/xe2lpd: Write DBuf after CDCLK change in post plane
  drm/i915/xe2lpd: Update mbus on post plane updates

 .../gpu/drm/i915/display/intel_atomic_plane.c |  14 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 150 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  83 +++++-----
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  57 ++++++-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  98 +++++++-----
 drivers/gpu/drm/i915/display/intel_display.c  |   5 +-
 .../drm/i915/display/intel_display_device.c   |  73 ++++++++-
 .../gpu/drm/i915/display/intel_display_irq.c  |   4 +-
 .../drm/i915/display/intel_display_power.c    |   4 +-
 .../i915/display/intel_display_power_map.c    |  54 ++++++-
 .../i915/display/intel_display_power_well.c   |  63 +++++++-
 .../i915/display/intel_display_power_well.h   |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  43 ++++-
 .../gpu/drm/i915/display/intel_dp_aux_regs.h  |  26 +++
 drivers/gpu/drm/i915/display/intel_fbc.h      |   2 +
 drivers/gpu/drm/i915/display/intel_gmbus.c    |   5 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  24 ++-
 drivers/gpu/drm/i915/display/intel_tc.c       |  44 ++++-
 .../drm/i915/display/skl_universal_plane.c    |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  51 ++++--
 drivers/gpu/drm/i915/display/skl_watermark.h  |   1 +
 .../gpu/drm/i915/display/skl_watermark_regs.h |   2 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |   9 +-
 drivers/gpu/drm/i915/soc/intel_pch.c          |  12 +-
 drivers/gpu/drm/i915/soc/intel_pch.h          |   2 +
 28 files changed, 691 insertions(+), 145 deletions(-)

-- 
2.40.1

