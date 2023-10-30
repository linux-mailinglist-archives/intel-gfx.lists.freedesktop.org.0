Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E167DBD0B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 16:58:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A2610E303;
	Mon, 30 Oct 2023 15:58:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A7DC10E303
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 15:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698681497; x=1730217497;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bFYexZQXMWEvj5fWrgxx+4Ts94JM7Nd6pdxOYeaWPIQ=;
 b=AFXZRCxg3wMy0HayhOL+fRSB11spjbyzWMXxxGFgdmYgO3ij+EwbBDBR
 xj9H1l+oSZgScWGMgcFdPW9sb4Ad1qtU5WwFMMa1Aey3b4T6uNFobkZ8D
 pQhPhcooMRS0/HQacRU1QcXPEHyDAQZhLm784CRnhB/pbT1Fbrct1X9We
 h+meUrwfSVoPB5DEw7jClN3CjDawxf2LPvwtbBcYtOhoS0eHCOUr8YUNd
 pc3JrO/cqGHk3OEAR+x4EPtjIUOHWeMUcLBpsejbmFjEnGEID9QXnJSF2
 afXoMIddfXpSEl4vKQdHCzd3+iaM3tb6dWElI4jg0fb4rnfZwRt/BpTVo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="974350"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="974350"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789493939"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789493939"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:12 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Oct 2023 17:58:13 +0200
Message-Id: <20231030155843.2251023-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 00/30] drm/i915: Improve BW management on MST
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

This is v4 of [1] with the following changes:

- Fix a race condition between connector setup and registration
  (added patch 1).
- Rename DRM_DP_OVERHEAD_SSC to DRM_DP_OVERHEAD_SSC_REF_CLK
  (Ville, patch 9).
- Fix setting crtc_state->fec_enable, once crtc_state->port_clock
  required for it is already set (patch 10).
- Fix passing the correct fec_enable parameter to
  intel_dp_bw_fec_overhead() (patch 12).
- Fix TU size, making it match the payload size in the payload table
  (Patch 13).
- Apply the HBLANK expansion quirk whenever the HBLANK period is
  300ns or less (Patch 21).
- Fix refcounting of the DSC AUX decompression device
  (Stan, patch 25).
- Fix HW readout/sanitize for the connector DSC decompression enabled
  state (patch 25).
- Move intel_crtc_needs_modeset() check to callers of
  clear_pipe_update_flags_on_modeset_crtc() (Ville, patch 26).
- Fix forcing modeset on CRTC due to a change in MST topology
  (Ville, patch 27).
- Add missing DocBooks, fix typos.

[1] https://lore.kernel.org/all/20231024010925.3949910-1-imre.deak@intel.com

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>

Imre Deak (28):
  drm/i915/dp_mst: Fix race between connector registration and setup
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
 drivers/gpu/drm/display/drm_dp_helper.c       | 134 +++++
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 206 +++++--
 drivers/gpu/drm/i915/display/intel_ddi.c      | 136 ++++-
 drivers/gpu/drm/i915/display/intel_ddi.h      |   3 +
 drivers/gpu/drm/i915/display/intel_display.c  | 101 ++--
 drivers/gpu/drm/i915/display/intel_display.h  |   4 +-
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 256 +++++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |  23 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 564 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |   5 +
 drivers/gpu/drm/i915/display/intel_fdi.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_link_bw.c  |  16 +-
 drivers/gpu/drm/i915/display/intel_link_bw.h  |   1 +
 .../drm/i915/display/intel_modeset_setup.c    |   6 +
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |   3 +-
 .../gpu/drm/tests/drm_dp_mst_helper_test.c    |   6 +-
 include/drm/display/drm_dp.h                  |   2 +
 include/drm/display/drm_dp_helper.h           |  18 +
 include/drm/display/drm_dp_mst_helper.h       |   9 +-
 22 files changed, 1270 insertions(+), 235 deletions(-)

-- 
2.39.2

