Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DBD7EE153
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 14:18:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 500B410E5D6;
	Thu, 16 Nov 2023 13:18:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A39B10E5D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 13:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700140723; x=1731676723;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3DLLJvXp1/3RM7p2pOu2k5PASIOnAsEz7Qx84lYG1qI=;
 b=VhGoKDUwCJWoEjlW7pTIyCZH2hXPx3aupq1j0S/1hZODXlCVdEesLHay
 vVJPllFh1xpkDeR8Kb5PVCuRIgykJ+7SFiIVnqZ8Nd9EPUo8SkyoERVlo
 EpTfUkp/ZZohplwFtwjmXbjxUB+4RQShV9jVnOzukRsJHDaZUMBQeDLAJ
 8NCPqTriLaAOp752bKo8N1I5NTX4tWE+KPsU+V3GlLW5Cn9SXzAk127vb
 WnJEbPzqtFJ8MObiSO9v1IhUfyYTUQWtLzfGVAreD40yVo9PEAcV/A/aa
 bqCrL1tLIsyTWxUhDadx43a0WlgrdoHX8l3yyp++y3A91+wwd2UFr8mo3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="422177144"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="422177144"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="938834327"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="938834327"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:40 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 15:18:30 +0200
Message-Id: <20231116131841.1588781-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/11] drm/i915: Fix UHBR data,
 link M/N/TU and PBN values
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
- Store the pbn_div value in fixed point format.
- Fix PBN calculation in patch 8.
- Reuse intel_dp_max_data_rate(), intel_dp_effective_data_rate() in
  intel_link_compute_m_n() (Jani).

[1] https://lore.kernel.org/all/20231113201110.510724-1-imre.deak@intel.com

Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Lyude Paul <lyude@redhat.com>

Imre Deak (11):
  drm/dp_mst: Store the MST PBN divider value in fixed point format
  drm/dp_mst: Fix PBN divider calculation for UHBR rates
  drm/dp_mst: Add kunit tests for drm_dp_get_vc_payload_bw()
  drm/i915/dp: Replace intel_dp_is_uhbr_rate() with
    drm_dp_is_uhbr_rate()
  drm/i915/dp: Account for channel coding efficiency on UHBR links
  drm/i915/dp: Fix UHBR link M/N values
  drm/i915/dp_mst: Calculate the BW overhead in
    intel_dp_mst_find_vcpi_slots_for_bpp()
  drm/i915/dp_mst: Fix PBN / MTP_TU size calculation for UHBR rates
  drm/i915/dp: Report a rounded-down value as the maximum data rate
  drm/i915/dp: Simplify intel_dp_max_data_rate()
  drm/i915/dp: Reuse intel_dp_{max,effective}_data_rate in
    intel_link_compute_m_n()

 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |   5 +-
 .../amd/display/amdgpu_dm/amdgpu_dm_helpers.c |   3 +-
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |   5 +-
 drivers/gpu/drm/display/drm_dp_mst_topology.c |  31 +++-
 drivers/gpu/drm/i915/display/intel_display.c  |  51 ++----
 drivers/gpu/drm/i915/display/intel_dp.c       |  78 +++++++---
 drivers/gpu/drm/i915/display/intel_dp.h       |   5 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  55 +++++--
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |   6 +-
 .../gpu/drm/tests/drm_dp_mst_helper_test.c    | 145 ++++++++++++++++++
 include/drm/display/drm_dp_helper.h           |  13 ++
 include/drm/display/drm_dp_mst_helper.h       |   7 +-
 12 files changed, 311 insertions(+), 93 deletions(-)

-- 
2.39.2

