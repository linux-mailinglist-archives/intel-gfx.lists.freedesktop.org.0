Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1A7C99B97
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 02:23:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE86110E4FD;
	Tue,  2 Dec 2025 01:23:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aj1pbeJO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9878910E4FA;
 Tue,  2 Dec 2025 01:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764638591; x=1796174591;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yvpaVvQUDtyj2n76PnydWqurfr+nNx3ttVK9GVOOlmU=;
 b=aj1pbeJOEDlhJIUQQslEGKzmQfu8garJAoW0qJXlTkizzy9Uj+tSDTA7
 tC/iu+A+60Vz30oDBiBIplh5FQqmjGyTBh+lrhjlpj2SKBpuGmwvwZmk5
 6LBXghOaP9OPUi6y/A2ylyXeb7SgBdgPZ9Rrmiyg59HrITWrRzInoMOLR
 ToZYnn1RcCsI03fSACkjDzxlysC6VlXsUpjCsaJ71nscYBvaqDFXO5t/q
 gIUUL34ZG5Vk3qSf1aCE8ddp4ElV1PcrNZV+MlOVOS8VGxghAqkbH8Da5
 92gGPZhi83bP496CsIVvxdMeXPRybbwk5+zViXpDIf3dRyQuIVJXDHdFX A==;
X-CSE-ConnectionGUID: II/itoTcTWq69reXplELfg==
X-CSE-MsgGUID: RWeOOBCZQ8iHTM57GCbfGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="69186538"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="69186538"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:11 -0800
X-CSE-ConnectionGUID: xkoZ/zG5Qfy4eaJ4jf0Spw==
X-CSE-MsgGUID: Ig1zCRduSsmPBs/bNTtgBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="224927881"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.111.179])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:11 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@Intel.com, dnyaneshware.bhdane@intel.com,
 gustavo.sousa@intel.com, jouni.hogander@intel.com,
 juha-peka.heikkila@intel.com, luciano.coelho@intel.com,
 matthew.d.roper@intel.com, ravi.kumar.vodapalli@intel.com,
 shekhar.chauhan@intel.com, vinod.govindapillai@intel.com,
 imre.deak@intel.com, jani.nikula@linux.intel.com, suraj.kandapal@intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 sai.teja.pottumuttu@Intel.com, Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH v6 0/8] drm/i915/display: Add initial support Xe3p_LPD
Date: Mon,  1 Dec 2025 17:22:58 -0800
Message-ID: <20251202012306.9315-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

This series adds initial support Xe3p_LPD, Intel's Display architecture
with IP version 35.

This series contains basic enabling patches and does not provide
complete support for the display IP yet. More involved features, like
the new PHY implementation and ALPM are implemented as separate patch
series.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
Changes in v6:
- Incorporated a review feedback for drm/i915/xe3p_lpd: Handle underrun
  debug bits
- Link to v5: https://patch.msgid.link/ 20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com

Changes in v4:
- Skipped patches from v3 that were already applied.
- Dropped patch "drm/i915/xe3p_lpd: Enable system caching for FBC" with
  the expectation that its next version will be sent as a standalone
  patch.
- Link to v3: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com

Changes in v3:
- Reshuffled patches so that most of the ones already containing a r-b
  are placed at the start.
- Dropped "drm/i915/xe3p_lpd: Wait for AUX channel power status", as a
  similar patch was already applied from a patch series dedicated to LT
  PHY
  (https://lore.kernel.org/all/20251101032513.4171255-25-suraj.kandpal@intel.com/).
- Dropped patches related to UINT16 plane formats, as they were
  incomplete and were not specific to Xe3p_LPD.
- Dropped FBC related patches, as Vinod is handling them as a separated
  series
  (https://lore.kernel.org/intel-gfx/20251027134001.325064-1-vinod.govindapillai@intel.com/)
- Dropped "drm/i915/xe3p_lpd: PSR SU minimum lines is 4", since that
  change is not valid according to Bspec.
- Incorporated review feedback on the other patches. Please check the
  changelog in the individual patches for details.
- Link to v2: https://lore.kernel.org/r/20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com

Changes in v2:
- Incorporated review feedback. Please check the changelog in the
  patches for details.
- Link to v1: https://lore.kernel.org/r/20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com

---
Gustavo Sousa (7):
  drm/i915/vbt: Add fields dedicated_external and dyn_port_over_tc
  drm/i915/power: Use intel_encoder_is_tc()
  drm/i915/display: Handle dedicated external ports in
    intel_encoder_is_tc()
  drm/i915/xe3p_lpd: Handle underrun debug bits
  drm/i915/display: Use platform check in HAS_LT_PHY()
  drm/i915/display: Move HAS_LT_PHY() to intel_display_device.h
  drm/i915/display: Use HAS_LT_PHY() for LT PHY AUX power

Sai Teja Pottumuttu (1):
  drm/i915/nvls: Add NVL-S display support

 drivers/gpu/drm/i915/display/intel_bios.c     |  73 +++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |   2 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  11 ++
 drivers/gpu/drm/i915/display/intel_display.c  |  16 ++-
 .../drm/i915/display/intel_display_device.c   |   5 +
 .../drm/i915/display/intel_display_device.h   |   6 +-
 .../i915/display/intel_display_power_well.c   |  49 +++++---
 .../gpu/drm/i915/display/intel_display_regs.h |  16 +++
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_fbc.c      |  44 +++++++
 drivers/gpu/drm/i915/display/intel_fbc.h      |   3 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h |   2 +
 .../drm/i915/display/intel_fifo_underrun.c    | 109 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |   2 -
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |   3 +-
 15 files changed, 318 insertions(+), 24 deletions(-)

-- 
2.51.0

