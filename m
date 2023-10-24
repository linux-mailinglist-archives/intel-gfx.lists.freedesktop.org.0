Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D747D4481
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED42C10E293;
	Tue, 24 Oct 2023 01:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2117810E293
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109739; x=1729645739;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kV3QRMT7Vz9Gy/U9RaaRE/ZaSy1l5KGP8JmVYiYoZUc=;
 b=kosjP9Re47my0edpbszKHI7jy3CzYYLEsvWXQpUAuiCiUl9D3V8mFquL
 zErO/d0hBxI8Y+QIV0rhajC80q58/eb7wUtgG1r3zNGgJzyo63XAk3uzm
 Cfd0YQT6qVXK3Rxetxr2AYBeBOAkvFyjPZpbLoLHdzee1HbnC/rEAxJWc
 XwTGYfpFmmd1CvjR6vepZ9fMJqUwcVlinK1lknSAG7nBuQUOTcZiAM/ga
 mRLPUxnqHZoPSJrihNCAjFh1v0pB1Fe7DQB7vYlb4veH7OjYGzsbDAmOf
 sYrjr0Bk6NFKgmfEfwKlhiBsMkCt76CI33C1EYzj9I2ia1X/GRI/SPO/h w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304318"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304318"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:08:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931869995"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931869995"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:08:55 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:08:56 +0300
Message-Id: <20231024010925.3949910-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/29] drm/i915: Improve BW management on MST
 links
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

This is a new version of patches 12-24 in [1], with the following
changes/additions:

- Fix accounting for FEC/DSC BW overheads (patch 8, 10-12).
- Add a workaround for a Synpatics HBLANK expansion vs. DSC quirk
  (patch 6, 7, 20).
- Add support for enabling DSC for each MST stream, required by the
  above workaround (patch 5, 17-19, 21-26).
- Enable FEC early, once it's known DSC will need it (patch 9).
- Adding a patch from Stan, which fixes DSC issues and allows
  enabling it (patch 29).

[1] https://lore.kernel.org/all/20230914192659.757475-1-imre.deak@intel.com

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Imre Deak (27):
  drm/dp_mst: Add helper to determine if an MST port is downstream of
    another port
  drm/dp_mst: Factor out a helper to check the atomic state of a
    topology manager
  drm/dp_mst: Swap the order of checking root vs. non-root port BW
    limitations
  drm/dp_mst: Allow DSC in any Synaptics last branch device
  drm/dp: Add DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD
    flags
  drm/dp_mst: Add HBLANK expansion quirk for Synaptics MST hubs
  drm/dp: Add helpers to calculate the link BW overhead
  drm/i915/dp_mst: Enable FEC early once it's known DSC is needed
  drm/i915/dp: Specify the FEC overhead as an increment vs. a remainder
  drm/i915/dp: Pass actual BW overhead to m_n calculation
  drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation
  drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
  drm/i915/dp_mst: Program the DSC PPS SDP for each stream
  drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is
    disabled
  drm/i915/dp_mst: Add missing DSC compression disabling
  drm/i915/dp: Rename intel_ddi_disable_fec_state() to
    intel_ddi_disable_fec()
  drm/i915/dp: Wait for FEC detected status in the sink
  drm/i915/dp: Disable FEC ready flag in the sink
  drm/i915/dp_mst: Handle the Synaptics HBlank expansion quirk
  drm/i915/dp_mst: Enable decompression in the sink from the MST encoder
    hooks
  drm/i915/dp: Enable DSC via the connector decompression AUX
  drm/i915/dp_mst: Enable DSC passthrough
  drm/i915/dp_mst: Enable MST DSC decompression for all streams
  drm/i915: Factor out function to clear pipe update flags
  drm/i915/dp_mst: Force modeset CRTC if DSC toggling requires it
  drm/i915/dp_mst: Improve BW sharing between MST streams
  drm/i915/dp_mst: Check BW limitations only after all streams are
    computed

Stanislav Lisovskiy (1):
  drm/i915: Query compressed bpp properly using correct DPCD and DP Spec
    info

Ville Syrjälä (1):
  drm/dp_mst: Fix fractional DSC bpp handling

 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |   2 +-
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |   2 +-
 drivers/gpu/drm/display/drm_dp_helper.c       | 115 ++++
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 206 +++++--
 drivers/gpu/drm/i915/display/intel_ddi.c      | 131 ++++-
 drivers/gpu/drm/i915/display/intel_ddi.h      |   3 +
 drivers/gpu/drm/i915/display/intel_display.c  | 101 ++--
 drivers/gpu/drm/i915/display/intel_display.h  |   4 +-
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 135 ++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |  16 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 554 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |   5 +
 drivers/gpu/drm/i915/display/intel_fdi.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_link_bw.c  |  16 +-
 drivers/gpu/drm/i915/display/intel_link_bw.h  |   1 +
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |   3 +-
 .../gpu/drm/tests/drm_dp_mst_helper_test.c    |   6 +-
 include/drm/display/drm_dp.h                  |   2 +
 include/drm/display/drm_dp_helper.h           |  18 +
 include/drm/display/drm_dp_mst_helper.h       |   9 +-
 21 files changed, 1108 insertions(+), 229 deletions(-)

-- 
2.39.2

