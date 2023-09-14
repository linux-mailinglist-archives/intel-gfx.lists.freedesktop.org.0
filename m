Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7998A7A0E31
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:26:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1574710E2B2;
	Thu, 14 Sep 2023 19:26:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ECAF10E2B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719602; x=1726255602;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HAzjmVFbnx/3FyOU3vC/5ikND2c+M8da1ZWqxBMckg0=;
 b=Wu/yrGOBfUsQ/isTi5rjT1TfON0BbdcYTsBy/yb5VAY16LulgNq+C3dD
 AYFYPzQxM7g3NwseTMlu6IhzfpQbx6XgPKDe0D3oeMROn2B+9KCgL+KzQ
 FlKNCwRW8Km7nLp8bmAmT9GdCD+w88U71wSWUVrlgoVn1/J8XCcpoPUE2
 wCqR6CIemgCn2Fpc2YtmlUNCaFNcFX1l9c4VVIVgQKq9Rcb+wvZE3eQT5
 lbBrLBT5sbajKij57N1w98t604vYa1rQpaZh+Zy06VAJJIS8wR9labr4L
 VWCcfghfncs45981zqTeCwbCwYFiQXDgYFJVwcoazodRwH56liQ7RkKYf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421646"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421646"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790466"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790466"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:39 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:34 +0300
Message-Id: <20230914192659.757475-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 00/25] drm/i915: Improve BW management on
 shared display links
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
Cc: Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is v3 of [1] addressing the review comments, adding R-bs
and the following changes based on further testing / offline
discussions:

- Return -ENOSPC to userspace in case of a link BW limit
  failure. (Patch 9, thanks to Karthik B S for the related IGT
  testing)
- Replace fractional bpp fix with a patch from Ville. (Patch 12)
- Disable DSC PPS SDP during output disabling. (Patch 20, Ville)

[1] https://lore.kernel.org/intel-gfx/20230824080517.693621-1-imre.deak@intel.com

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>

Imre Deak (24):
  drm/i915/dp: Factor out helpers to compute the link limits
  drm/i915/dp: Track the pipe and link bpp limits separately
  drm/i915/dp: Skip computing a non-DSC link config if DSC is needed
  drm/i915/dp: Update the link bpp limits for DSC mode
  drm/i915/dp: Limit the output link bpp in DSC mode
  drm/i915: Add helper to modeset a set of pipes
  drm/i915: During modeset forcing handle inactive but enabled pipes
  drm/i915: Factor out a helper to check/compute all the CRTC states
  drm/i915: Add helpers for BW management on shared display links
  drm/i915/fdi: Improve FDI BW sharing between pipe B and C
  drm/i915/fdi: Recompute state for affected CRTCs on FDI links
  drm/dp_mst: Add a way to calculate PBN values with FEC overhead
  drm/dp_mst: Add helper to determine if an MST port is downstream of
    another port
  drm/dp_mst: Factor out a helper to check the atomic state of a
    topology manager
  drm/dp_mst: Swap the order of checking root vs. non-root port BW
    limitations
  drm/i915/dp_mst: Fix PBN calculation with FEC overhead
  drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
  drm/i915/dp_mst: Program the DSC PPS SDP for each stream
  drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is
    disabled
  drm/i915/dp_mst: Enable DSC decompression if any stream needs this
  drm/i915/dp_mst: Add missing DSC compression disabling
  drm/i915/dp_mst: Allow DSC only for sink ports of the first branch
    device
  drm/i915/dp_mst: Improve BW sharing between MST streams
  drm/i915/dp_mst: Check BW limitations only after all streams are
    computed

Ville Syrjälä (1):
  drm/dp_mst: Fix fractional DSC bpp handling

 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |   2 +-
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |   2 +-
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 181 ++++++++---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   6 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |   7 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  12 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 203 +++++++++----
 drivers/gpu/drm/i915/display/intel_display.h  |   6 +-
 .../drm/i915/display/intel_display_types.h    |  26 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 196 +++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h       |  17 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 287 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |   3 +
 drivers/gpu/drm/i915/display/intel_fdi.c      | 140 +++++++--
 drivers/gpu/drm/i915/display/intel_fdi.h      |   5 +
 drivers/gpu/drm/i915/display/intel_link_bw.c  | 244 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_link_bw.h  |  39 +++
 drivers/gpu/drm/i915/display/intel_lvds.c     |  10 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  10 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   2 +-
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |   3 +-
 .../gpu/drm/tests/drm_dp_mst_helper_test.c    |  19 +-
 include/drm/display/drm_dp_mst_helper.h       |   9 +-
 26 files changed, 1203 insertions(+), 230 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_link_bw.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_link_bw.h

-- 
2.37.2

