Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E35767B1E4
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 12:49:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 373C110E7A5;
	Wed, 25 Jan 2023 11:48:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B412B10E7A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 11:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674647336; x=1706183336;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jWEC97ooYp3qp/LGis/3CbTro/o00jMxCqUrsl61Iio=;
 b=ax0xFaxzpwMv0Dk2n9aAROYj5ODzLhSz35hDuZA5UKarbOkhhzPyckeA
 o1D5y7PRbC+o6y4Ki9ovN9hAEj/QOepwIwO2J5NcYi8o9ivIM2c4TAsJu
 0TMqn+cATB5APgUKs4ltWMtULx27augaflgLvhaoSiYO2+acCu7ZbyVz1
 JeSSIoPn3zO1IkZj9AB3LJq1VjEOR6S0TuhDSfvLPyRnZ5A/h+D9d1NJC
 5LEjst6lI9WiZJSMiLlBneheKTGI0HgQ3kjIRbE/zwSMyu2xSnTJhaQdH
 Yg/tztQwMjhffgzFXndPeVfO3o3ZB225VRohX5Q/8b9hCAKuKwQhojUw2 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="412769867"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="412769867"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:48:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="786399668"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="786399668"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:48:55 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 13:48:43 +0200
Message-Id: <20230125114852.748337-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/9] drm/i915/dp_mst: Fix MST payload removal
 during output disabling
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

This patchset fixes a payload tracking issue in the MST encoder's
disabling hook and adds verification for the related sw and sink state.
It also factors out a few functions to modeset CRTCs and connectors
during the atomic check phase to make it clearer where this is done.

Tested on ICL and ADLP.

Imre Deak (9):
  drm/i915/dp_mst: Add the MST topology state for modesetted CRTCs
  drm/display/dp_mst: Handle old/new payload states in
    drm_dp_remove_payload()
  drm/display/dp_mst: Add drm_atomic_get_old_mst_topology_state()
  drm/i915/dp_mst: Fix payload removal during output disabling
  drm/display/dp_mst: Fix the payload VCPI check in
    drm_dp_mst_dump_topology()
  drm/i915: Factor out helpers for modesetting CRTCs and connectors
  drm/i915/dp_mst: Move getting the MST topology state earlier to
    connector check
  drm/display/dp_mst: Add a helper to verify the MST payload state
  drm/i915/dp_mst: Verify the MST state of modesetted outputs

 .../amd/display/amdgpu_dm/amdgpu_dm_helpers.c |   2 +-
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 222 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_atomic.c   | 126 ++++++++++
 drivers/gpu/drm/i915/display/intel_atomic.h   |   7 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  57 +----
 drivers/gpu/drm/i915/display/intel_display.h  |   2 -
 drivers/gpu/drm/i915/display/intel_dp.c       |  40 +---
 drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 132 ++++++++---
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |   3 +
 .../drm/i915/display/intel_modeset_verify.c   |   2 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |   2 +-
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |   2 +-
 include/drm/display/drm_dp.h                  |   3 +
 include/drm/display/drm_dp_mst_helper.h       |   9 +-
 16 files changed, 472 insertions(+), 140 deletions(-)

-- 
2.37.1

