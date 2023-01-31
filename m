Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9772D6830BA
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 16:05:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0000510E36B;
	Tue, 31 Jan 2023 15:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE36110E36B
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 15:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675177551; x=1706713551;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YAVmANrX/zUPBfZMW/rjyUumWmuFqDLClJ804NyvIpA=;
 b=bhF44brg1YAfEw7wwi09lGuskNmY938oM+bAcKMevfWPyKo7J6AfP+Bc
 a4N7bdQZV/HWKQowdMzDoFrhCiMVJ9uehUuIN8eSHEsU6f59T9tq2lmpF
 0Q6tJ8IgSZGA+kQKxaKFMWgb0Ss8lWyunAytW+FzErqnOtH/1IF9EoW0u
 jrlSOpEFd7ooap6fmBJENw9wT8bNCaJJc2SiN9yxBMIPCdXFgvjir5UMZ
 ODa55aewGgsJDG3ACZiQSjMV4nhlBoTmX6KSQ4xJuK1ubXuPGlEqjafie
 wK9ZqOceuyfGDForLVkiVfW44hff5aeE/dOex6IVjwLkNhI/+rzpS4/JR Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="308205483"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="308205483"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:05:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="807155286"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="807155286"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:05:50 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 17:05:31 +0200
Message-Id: <20230131150548.1614458-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/17] drm/i915: drm/i915/dp_mst: Fix MST
 payload removal during output disabling
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

This is v2 of [1], addressing the review comments from Ville. It also
adds HW state verification for MST encoders and a workaround for a
payload allocation problem in a DELL monitor's MST hub I noticed during
testing.

Tested on HSW, ICL, ADLP.

[1] https://lore.kernel.org/intel-gfx/20230125114852.748337-1-imre.deak@intel.com/

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Lyude Paul <lyude@redhat.com> 

Imre Deak (17):
  drm/i915/dp_mst: Add the MST topology state for modesetted CRTCs
  drm/display/dp_mst: Handle old/new payload states in
    drm_dp_remove_payload()
  drm/display/dp_mst: Add drm_atomic_get_old_mst_topology_state()
  drm/i915/dp_mst: Fix payload removal during output disabling
  drm/display/dp_mst: Fix the payload VCPI check in
    drm_dp_mst_dump_topology()
  drm/display/dp_mst: Sanitize payload iteration in
    drm_dp_mst_dump_topology()
  drm/i915: Factor out helpers for modesetting CRTCs and connectors
  drm/i915/dp_mst: Move getting the MST topology state earlier to
    connector check
  drm/display/dp_mst: Add a helper to verify the MST payload state
  drm/i915/dp_mst: Verify the MST state of modesetted outputs
  drm/display/dp_mst: Add helpers to query for payload allocation errors
  drm/display/dp_mst: Add helpers to query payload allocation properties
  drm/display/dp_mst: Export the DP_PAYLOAD_TABLE_SIZE definition
  drm/display/dp_mst: Factor out a helper to reset the payload table
  drm/dp: Add a quirk for a DELL P2715Q MST payload allocation problem
  drm/i915/dp_mst: Add workaround for a DELL P2715Q payload allocation
    problem
  drm/i915/dp_mst: Verify the HW state of MST encoders

 .../amd/display/amdgpu_dm/amdgpu_dm_helpers.c |   2 +-
 drivers/gpu/drm/display/drm_dp_helper.c       |   2 +
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 354 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_atomic.c   | 140 +++++++
 drivers/gpu/drm/i915/display/intel_atomic.h   |   8 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  91 ++++-
 drivers/gpu/drm/i915/display/intel_display.c  |  59 +--
 drivers/gpu/drm/i915/display/intel_display.h  |   2 -
 .../drm/i915/display/intel_display_types.h    |  19 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  43 +--
 drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 270 +++++++++++--
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |   9 +
 .../drm/i915/display/intel_modeset_verify.c   |   2 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |   6 +-
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |   2 +-
 include/drm/display/drm_dp.h                  |   5 +
 include/drm/display/drm_dp_helper.h           |   8 +
 include/drm/display/drm_dp_mst_helper.h       |  34 +-
 21 files changed, 878 insertions(+), 183 deletions(-)

-- 
2.37.1

