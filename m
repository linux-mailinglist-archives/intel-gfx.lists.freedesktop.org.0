Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEA4786952
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:05:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 347D310E4B4;
	Thu, 24 Aug 2023 08:05:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E255B10E4A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864302; x=1724400302;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dLFfgWK9JK2SInYTQXwZ5nra35NKPtobSE59VWZ49Ao=;
 b=oBDKbasJCZ1Cir8UdJGdByUuZAAPLGZssa6Xs159ZeDvUf5e4mwgSd1W
 U1qlfglzDGQLee8aiiK6BFRcIdGzH1yiWKYVHrtf5lWVdie8Vku1aXtDD
 lVgGzqFH2xxf3wLVexqQGJgD/xdghBb2+5KqHPGMn9u3hvxSjxHEN00JL
 wXXtnG6EBIRPcRMOjSTB2bbUmbMMVIwQIAZz04njeiB9o1xKuT2wJbnxN
 Ssn4vnX6vzVgT6nLFuFy3Os8u9NhFoBaiA8ri8Hi8y+PVOItvrciSlOtj
 uYbuibym0tQVgL8+SOmhgJQ2dU+c4R5dWReeKWQb2H+ByW5MrEI/wz+Vw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374345840"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374345840"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880710266"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:06 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:04:55 +0300
Message-Id: <20230824080517.693621-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/22] drm/i915: Improve BW management on
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is v2 of [1], with the following changes:

- Add helpers to convert between fractional and integer bpp values
  instead of open coding these. (Jani)
- Increase back pipe B's link bpp after it was reduced due to a BW
  limit on FDI wrt. pipe C and then pipe C gets disabled. (Patch 8)
- Fix various MST DSC issues. (Patch 16-20)
- Add missing DocBook descriptions.

Tested on IVB, TGL, ADLP.

[1] https://lore.kernel.org/intel-gfx/20230817161456.3857111-1-imre.deak@intel.com

Imre Deak (22):
  drm/i915/dp: Factor out helpers to compute the link limits
  drm/i915/dp: Track the pipe and link bpp limits separately
  drm/i915/dp: Skip computing a non-DSC link config if DSC is needed
  drm/i915/dp: Update the link bpp limits for DSC mode
  drm/i915/dp: Limit the output link bpp in DSC mode
  drm/i915: Add helper to modeset a set of pipes
  drm/i915: Factor out a helper to check/compute all the CRTC states
  drm/i915/fdi: Improve FDI BW sharing between pipe B and C
  drm/dp_mst: Fix fractional bpp scaling in drm_dp_calc_pbn_mode()
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

 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |   2 +-
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |   2 +-
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 171 +++++++++--
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   5 +-
 drivers/gpu/drm/i915/display/intel_atomic.c   | 217 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_atomic.h   |   8 +
 drivers/gpu/drm/i915/display/intel_crt.c      |   7 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  12 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 164 +++++++----
 drivers/gpu/drm/i915/display/intel_display.h  |   7 +
 .../drm/i915/display/intel_display_types.h    |  30 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 185 +++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h       |  17 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 278 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |   3 +
 drivers/gpu/drm/i915/display/intel_fdi.c      | 137 +++++++--
 drivers/gpu/drm/i915/display/intel_fdi.h      |   5 +
 drivers/gpu/drm/i915/display/intel_lvds.c     |   9 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   9 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   6 +
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |   2 +-
 .../gpu/drm/tests/drm_dp_mst_helper_test.c    |  31 +-
 include/drm/display/drm_dp_mst_helper.h       |   9 +-
 24 files changed, 1107 insertions(+), 210 deletions(-)

-- 
2.37.2

