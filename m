Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA2A7A250E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07E6B10E66B;
	Fri, 15 Sep 2023 17:46:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AE0E10E660;
 Fri, 15 Sep 2023 17:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800010; x=1726336010;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MsHtxSSIkGd9R+llMitSV0hdANWDStumWkkCjzXUICY=;
 b=FEunTxgfO+cAk58WJZ5Q7PMP87FIEy6qccyyMP5w73ngLJd8IQGnesVQ
 yWu7wtYrHj8jJRV/tWqRUf1xb2rc4dwbxyjSKqhmwt0bu4OBeKGqPMA1s
 MDqnfXmV/dGtfAWpYtJHt7lFw0wF4/PLlK4Z6QDa70S3VqbbO/Mv4sJob
 mQXsM55tIJSU8WAvMb1miauqZ4Un8GXop6cAKp72Fh3QHk7EAzePE5lJ0
 qV19gXcaEnQycPNqEPZX+shSKZDN42wAnPfGZP/jqmFWdcIjZu8CcwzE7
 5CQhh/u7V9zZZ1t1b/tAqUSIHjTPYd4smCiIH14usQX+hRIgnFObjw8PZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779259"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779259"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818227"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818227"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:21 -0700
Message-Id: <20230915174651.1928176-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 00/30] Enable Lunar Lake display
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cross posting this to the i915 and xe mailing lists. The basic platform
enabling for Lunar Lake is already applied in the xe driver[1].
This patch series adds the display support in the i915 driver, that is
going to be shared with xe.

Like v3, this is based off drm-tip and the goal is to start applying
patches to drm-intel-next.

v4 adds a couple more patches due to review feedback and moves the
cdclk stuff to the end of the series. We are running into some
issues due to those patches, so it's better to have the rest land
earlier.  This should address all the comments from v3.

Balasubramani Vivekanandan (1):
  drm/i915/lnl: Add display definitions

Clint Taylor (3):
  drm/i915/display: Remove FBC capability from fused off pipes
  drm/i915/xe2lpd: Register DE_RRMR has been removed
  drm/i915/display: Consolidate saved port bits in intel_digital_port

Gustavo Sousa (3):
  drm/i915/xe2lpd: Add fake PCH
  drm/i915/xe2lpd: Handle port AUX interrupts
  drm/i915/xe2lpd: Add support for HPD

Juha-Pekka Heikkilä (1):
  drm/i915/xe2lpd: Enable odd size and panning for planar yuv

Luca Coelho (1):
  drm/i915/xe2lpd: Read pin assignment from IOM

Lucas De Marchi (10):
  drm/i915/xelpdp: Add XE_LPDP_FEATURES
  drm/i915: Re-order if/else ladder in intel_detect_pch()
  drm/i915/display: Rename intel_dp->DP
  drm/i915/xe2lpd: Move D2D enable/disable
  drm/i915/xe2lpd: Move registers to PICA
  drm/i915/display: Fix style and conventions for DP AUX regs
  drm/i915/display: Use _PICK_EVEN_2RANGES() in DP AUX regs
  drm/i915/xe2lpd: Re-order DP AUX regs
  drm/i915/xe2lpd: Extend Wa_15010685871
  drm/i915/lnl: Add gmbus/ddc support

Matt Roper (3):
  drm/i915/xe2lpd: FBC is now supported on all pipes
  drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST
  drm/i915/xe2lpd: Add DC state support

Ravi Kumar Vodapalli (2):
  drm/i915/xe2lpd: Add display power well
  drm/i915/lnl: Add programming for CDCLK change

Stanislav Lisovskiy (6):
  drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB
    allocation
  drm/i915/lnl: Add CDCLK table
  drm/i915/lnl: Start using CDCLK through PLL
  FIXME: drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf
  drm/i915/xe2lpd: Write DBuf after CDCLK change in post plane
  drm/i915/xe2lpd: Update mbus on post plane updates

 drivers/gpu/drm/i915/display/g4x_dp.c         | 118 ++++++++---------
 .../gpu/drm/i915/display/intel_atomic_plane.c |  14 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 120 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  85 +++++++------
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  63 +++++++--
 drivers/gpu/drm/i915/display/intel_ddi.c      |  98 ++++++++------
 drivers/gpu/drm/i915/display/intel_display.c  |   5 +-
 .../drm/i915/display/intel_display_device.c   |  67 ++++++++--
 .../gpu/drm/i915/display/intel_display_irq.c  |   4 +-
 .../drm/i915/display/intel_display_power.c    |   4 +-
 .../i915/display/intel_display_power_map.c    |  54 +++++++-
 .../i915/display/intel_display_power_well.c   |  47 ++++++-
 .../i915/display/intel_display_power_well.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   8 +-
 .../gpu/drm/i915/display/intel_dp_aux_regs.h  |  80 ++++++------
 drivers/gpu/drm/i915/display/intel_fbc.h      |   2 +
 drivers/gpu/drm/i915/display/intel_gmbus.c    |   5 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  24 +++-
 drivers/gpu/drm/i915/display/intel_tc.c       |  44 ++++++-
 .../drm/i915/display/skl_universal_plane.c    |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  51 ++++++--
 drivers/gpu/drm/i915/display/skl_watermark.h  |   1 +
 .../gpu/drm/i915/display/skl_watermark_regs.h |   2 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |   9 +-
 drivers/gpu/drm/i915/soc/intel_pch.c          |  12 +-
 drivers/gpu/drm/i915/soc/intel_pch.h          |   2 +
 30 files changed, 685 insertions(+), 246 deletions(-)

-- 
2.40.1

