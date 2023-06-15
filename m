Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0939F731498
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 11:54:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83A6410E4AE;
	Thu, 15 Jun 2023 09:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3881310E4AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 09:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686822880; x=1718358880;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PdrtXIEDCiu/9OJqPFY2U4f8Pl5U2DUc60rVpBE9DTI=;
 b=YnFbN6f3/Pe19kXCQRsO7CPU5pbsjZOFOJTKAAJQuHfZ0wYe2KZJCC/z
 Xiv08JpQuKy9UU4C0XGV9ruG9PGhSWZlqmVeOTqlwBmFuVAAY/IPXicYP
 Ohd1dfLk/kb6UsHbAIM73SClZ7Hscl6iGfd1K7zNKd34A6GfHjP+P+HRQ
 rHZ74qowqAcesDQiErMjLa4TxUJ3oW3mwuEnnvY5crHe+ywAgJVwl8YDD
 /dBK169xCP0QF209sQadpu+lcPzSkbxtk3B/X3nA0wKupXAvQyRe6OlQJ
 naXDUuKheYM+Tyd2+0+BR6b0t4OSt4cbSjSrHmp9jInLl38Vd0aqeoNq6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="339214191"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="339214191"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 02:54:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="802274051"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="802274051"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jun 2023 02:54:25 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 15:24:10 +0530
Message-Id: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/11] Replace acronym with full platform name
 in defines.
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
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Replace all occurences of ADL with ALDERLAKE, TGL with TIGERLAKE, 
MTL with METEORLAKE, RKL with ROCKETLAKE, JSL with JASPERLAKE, 
KBL with KABYLAKE and SKL with SKYLAKE in platform and subplatform
defines. This way there is a consistent pattern to how platforms 
are referred. While the change is minor and could be combined to 
have lesser patches, splitting to per subpaltform for easier 
cherrypicks, if needed.

v2:
 - Fix the checkpatch warning.

Anusha Srivatsa (5):
  drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and graphics step
  drm/i915/rplp: s/ADLP/ALDERLAKE_P for RPLP defines
  drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN defines
  drm/i915/adls: s/ADLS/ALDERLAKE_S in platform and subplatform defines
  drm/i915/rplu: s/ADLP/ALDERLAKE_P in RPLU defines

Dnyaneshwar Bhadane (6):
  drm/i915/TGL: s/TGL/TIGERLAKE for platform/subplatform defines
  drm/i915/MTL: s/MTL/METEORLAKE for platform/subplatform defines
  drm/i915/TGL: s/RKL/ROCKETLAKE for platform/subplatform defines
  drm/i915/JSL: s/JSL/JASPERLAKE for platform/subplatform defines
  drm/i915/KBL: s/KBL/KABYLAKE for platform/subplatform defines
  drm/i915/SKL: s/SKL/SKYLAKE for platform/subplatform defines

 drivers/gpu/drm/i915/display/icl_dsi.c        |  4 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  8 +--
 .../gpu/drm/i915/display/intel_combo_phy.c    |  6 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    | 10 +--
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +-
 .../drm/i915/display/intel_display_device.c   |  2 +-
 .../drm/i915/display/intel_display_power.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 20 +++---
 drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 20 +++---
 .../drm/i915/display/skl_universal_plane.c    | 10 +--
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      | 10 +--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 .../drm/i915/gt/intel_execlists_submission.c  |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_sseu.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 54 ++++++++--------
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 +-
 .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.c   |  2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               | 64 +++++++++----------
 drivers/gpu/drm/i915/i915_perf.c              |  4 +-
 drivers/gpu/drm/i915/intel_clock_gating.c     |  4 +-
 drivers/gpu/drm/i915/intel_step.c             | 10 +--
 drivers/gpu/drm/i915/soc/intel_pch.c          |  6 +-
 34 files changed, 143 insertions(+), 143 deletions(-)

-- 
2.34.1

