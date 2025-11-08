Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B106C42177
	for <lists+intel-gfx@lfdr.de>; Sat, 08 Nov 2025 01:06:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7865F10EBB1;
	Sat,  8 Nov 2025 00:06:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FNITv3ho";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE2F810EBB0;
 Sat,  8 Nov 2025 00:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762560392; x=1794096392;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=k9QckF9oGTECVm7IPDxmHigl/GbNSmj9P5nbsoeSaKQ=;
 b=FNITv3hoiL7hzdylTvNQ6f0XGweTXbJXk9GLyGijl+TtvlUsnZLQT9iD
 4MHVN/ni5qqntqR1mKumHtCTYwvQ/HFX+jjNYvgC/XYOL7jJ9QkaTWUEB
 tXxTWFSmChd8QI1JekKEP//N+CCcmk7m+fuu8rVbs7i1FvDJY6716GVPJ
 ucS1R6QK7x2xWLRNX1FQBS0t7di3TLLzQYb7KNcNRhd7GwivVA3TFM5gG
 JVstM9GafTBcQRQaqbeDVmk2muZKKfAbP6e/o6TcoAyX/38LnEexH6Sem
 FEgeXng7ln0RvlTbJ/8mEjI2KbCbYLDTscxsVpS8RBQqiFlasmbV9d0Rp w==;
X-CSE-ConnectionGUID: Dgn1f/siQTmfCAUPj5uOlQ==
X-CSE-MsgGUID: Yzxi0VLeRx62oAHnFPBNpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64621248"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64621248"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:06:31 -0800
X-CSE-ConnectionGUID: /MdWEMN1RuWLGU01ryA85Q==
X-CSE-MsgGUID: dbCFeaTpTn6vgBA5U75Wyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218822583"
Received: from mgerlach-mobl1.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.137])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:06:27 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v4 00/11] drm/i915/display: Add initial support for
 Xe3p_LPD
Date: Fri, 07 Nov 2025 21:05:33 -0300
Message-Id: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAE6JDmkC/3XN0QqCMBQG4FeJXbfYjptaV71HRGzupAdsihMxx
 HdvCpEEXh3+A//3TyxgRxjY5TCxDgcK1PgY1PHAisr4Ejm5mBkI0FJIxUdM2kfdOm5NoIKjN7Y
 mX3K0SoFKz3m8LLbbDp80rvLtHnNFoW+69zo0yOX7NfWuOUguuAMnEVINwpgr+R7rU9G82GIOs
 HFA7jsQHSnQYOpSrW3+7yQ/R4pk30miIwTmmY2DBrOtM8/zB5zkjkBOAQAA
X-Change-ID: 20251014-xe3p_lpd-basic-enabling-eb4424698b44
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Suraj Kandpal <suraj.kandpal@intel.com>, 
 Jani Nikula <jani.nikula@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
X-Mailer: b4 0.15-dev
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

This series adds initial support for Xe3p_LPD, Intel's display
architecture with IP version 35.

This series contains basic enabling patches and does not provide
complete support for the display IP yet. More involved features, like
the new PHY implementation and ALPM are implemented as separate patch
series.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
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
Gustavo Sousa (10):
      drm/i915/wm: Do not make latency values monotonic on Xe3 onward
      drm/i915/vbt: Add fields dedicated_external and dyn_port_over_tc
      drm/i915/power: Use intel_encoder_is_tc()
      drm/i915/display: Handle dedicated external ports in intel_encoder_is_tc()
      drm/i915/fbc: Add intel_fbc_id_for_pipe()
      drm/i915/xe3p_lpd: Handle underrun debug bits
      drm/i915/xe3p_lpd: Extend Type-C flow for static DDI allocation
      drm/i915/display: Use platform check in HAS_LT_PHY()
      drm/i915/display: Move HAS_LT_PHY() to intel_display_device.h
      drm/i915/display: Use HAS_LT_PHY() for LT PHY AUX power

Sai Teja Pottumuttu (1):
      drm/i915/nvls: Add NVL-S display support

 drivers/gpu/drm/i915/display/intel_bios.c          |  54 +++++++-
 drivers/gpu/drm/i915/display/intel_bios.h          |   2 +
 drivers/gpu/drm/i915/display/intel_ddi.c           |  11 ++
 drivers/gpu/drm/i915/display/intel_display.c       |  19 ++-
 .../gpu/drm/i915/display/intel_display_device.c    |   5 +
 .../gpu/drm/i915/display/intel_display_device.h    |   6 +-
 .../drm/i915/display/intel_display_power_well.c    |  42 +++---
 drivers/gpu/drm/i915/display/intel_display_regs.h  |  36 ++++-
 drivers/gpu/drm/i915/display/intel_display_types.h |   1 +
 drivers/gpu/drm/i915/display/intel_fbc.c           |   5 +
 drivers/gpu/drm/i915/display/intel_fbc.h           |   2 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h      |   2 +
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 128 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h        |   2 -
 drivers/gpu/drm/i915/display/intel_tc.c            | 151 ++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h      |   3 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c |   9 +-
 drivers/gpu/drm/i915/display/skl_watermark.c       |  17 ++-
 18 files changed, 462 insertions(+), 33 deletions(-)
---
base-commit: 2bc418aa7efaae562e49d84e8b28f799cf624745
change-id: 20251014-xe3p_lpd-basic-enabling-eb4424698b44

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

