Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A24CBDC4AA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:16:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC79510E6DF;
	Wed, 15 Oct 2025 03:16:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NDLzEF3D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB6A10E6D3;
 Wed, 15 Oct 2025 03:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498205; x=1792034205;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=gIKhM+DtJij23vfv7nX+F75m4RYYOYv4mCKyJ7q3T9o=;
 b=NDLzEF3DqzrZ/J++QGa2km4K/8Wy7r0UW8v2Awb9sREX/TWp+ad0KcRu
 wGMCcSDIYmvwSVjFYU3Yr0Xn5qTUNam3x7Ew/7FyO/9AdAeZvPdXROFSk
 CLQvR/f5a96SHl8oQN17kGMuviMGSr/CkjFdYRrVDpRWoNDz5KAfVq4qm
 QJ62Llh0TzDgiCGKnuNnBT9BpHRa23ptfDqoP5F7H+t/11/+Z6BeQQ6RZ
 ANcIGyMEEBdh0QG1KtpouRaYyp8ZTl+/qjf6Feb1uD+6/ROhk0PpAzjIY
 EFZJF6PIqRtQejN70Gzk6pw+Zo4G7qC8/z1dbL+7LYwZTdz+DkaKdYTaJ w==;
X-CSE-ConnectionGUID: e+WhyJ1YRfa2GoA4nzyIeg==
X-CSE-MsgGUID: Chmghyz4TVClJQvi4LTrxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577128"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577128"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:16:44 -0700
X-CSE-ConnectionGUID: KKR0uzuAQwSrLQ9zZ+kbPg==
X-CSE-MsgGUID: NCMex28zR92630d6Lcwvug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302298"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:16:40 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH 00/32] drm/i915/display: Add initial support for Xe3p_LPD
Date: Wed, 15 Oct 2025 00:15:00 -0300
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIALcR72gC/x2MWwqAIBAArxL73UKaRXWViPCx1UKYKIQQ3T3pa
 5iPmQcSRaYEU/VApJsTX76IqCuwh/Y7IbviIBvZiUYozNSG9QwOjU5skbw2J/sdySglVT8OhVD
 qEGnj/J/n5X0/o4CjWmkAAAA=
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
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
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
the new PHY implementation and ALPM will come as separate patch series.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
Ankit Nautiyal (1):
      drm/i915/xe3p_lpd: Drop support for interlace mode

Gustavo Sousa (12):
      drm/i915/display: Use braces for if-ladder in intel_bw_init_hw()
      drm/i915/dram: Add field ecc_impacting_de
      drm/i915/xe3p_lpd: Wait for AUX channel power status
      drm/i915/xe3p_lpd: Always apply level-0 watermark adjustment
      drm/i915/xe3p_lpd: Add CDCLK table
      drm/i915/xe3p_lpd: Load DMC firmware
      drm/i915/xe3p_lpd: Extend Wa_16025573575
      drm/i915/xe3p_lpd: Reload DMC MMIO for pipes C and D
      drm/i915/vbt: Add fields dedicated_external and dyn_port_over_tc
      drm/i915/power: Use intel_encoder_is_tc()
      drm/i915/display: Handle dedicated external ports in intel_encoder_is_tc()
      drm/i915/xe3p_lpd: Extend Type-C flow for static DDI allocation

Jouni Högander (1):
      drm/i915/xe3p_lpd: PSR SU minimum lines is 4

Juha-pekka Heikkila (1):
      drm/i915/xe3p_lpd: Don't allow odd ypan or ysize with semiplanar format

Luca Coelho (1):
      drm/i915/wm: don't use method1 in Xe3p_LPD onwards

Matt Atwood (1):
      drm/i915/xe3p_lpd: Update bandwidth parameters

Matt Roper (2):
      drm/xe/nvl: Define NVL-S platform
      drm/i915/xe3p_lpd: Drop north display reset option programming

Ravi Kumar Vodapalli (1):
      drm/i915/xe3p_lpd: Adapt to updates on MBUS_CTL/DBUF_CTL registers

Sai Teja Pottumuttu (8):
      drm/i915/xe3p_lpd: Add Xe3p_LPD display IP features
      drm/i915/xe3p_lpd: Expand bifield masks dbuf blocks fields
      drm/i915/xe3p_lpd: Support UINT16 formats
      drm/i915/xe3p_lpd: Extend FBC support to UINT16 formats
      drm/i915/xe3p_lpd: Horizontal flip support for linear surfaces
      drm/i915/xe3p_lpd: Underrun debuggability and error codes/hints
      drm/i915/xe3p_lpd: Remove gamma,csc bottom color checks
      drm/i915/nvls: Add NVL-S display support

Vinod Govindapillai (4):
      drm/i915/xe3p_lpd: Enable system caching for FBC
      drm/i915/xe3p_lpd: Introduce pixel normalizer config support
      drm/i915/xe3p_lpd: Add FBC support for FP16 formats
      drm/i915/xe3p_lpd: Enable pixel normalizer for fp16 formats for FBC

 drivers/gpu/drm/i915/display/intel_bios.c          |  20 ++-
 drivers/gpu/drm/i915/display/intel_bios.h          |   2 +
 drivers/gpu/drm/i915/display/intel_bw.c            |  48 ++++--
 drivers/gpu/drm/i915/display/intel_cdclk.c         |  44 +++++-
 drivers/gpu/drm/i915/display/intel_color.c         |  13 +-
 drivers/gpu/drm/i915/display/intel_ddi.c           |   7 +
 drivers/gpu/drm/i915/display/intel_display.c       |  33 ++++-
 .../gpu/drm/i915/display/intel_display_device.c    |   6 +
 .../gpu/drm/i915/display/intel_display_device.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_display_power.c |   3 +
 .../drm/i915/display/intel_display_power_well.c    |  58 ++++++--
 drivers/gpu/drm/i915/display/intel_display_regs.h  |  51 ++++++-
 drivers/gpu/drm/i915/display/intel_display_types.h |   4 +
 drivers/gpu/drm/i915/display/intel_display_wa.c    |   3 +-
 drivers/gpu/drm/i915/display/intel_dmc.c           |  12 +-
 drivers/gpu/drm/i915/display/intel_fbc.c           | 126 +++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbc.h           |   1 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h      |   9 ++
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 100 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_plane.c         |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c           |  25 ++++
 drivers/gpu/drm/i915/display/intel_tc.c            | 151 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h      |   7 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 162 +++++++++++++++------
 .../drm/i915/display/skl_universal_plane_regs.h    |  25 +++-
 drivers/gpu/drm/i915/display/skl_watermark.c       |  25 +++-
 drivers/gpu/drm/i915/display/skl_watermark_regs.h  |  12 +-
 drivers/gpu/drm/i915/i915_reg.h                    |   1 +
 drivers/gpu/drm/i915/soc/intel_dram.c              |   4 +
 drivers/gpu/drm/i915/soc/intel_dram.h              |   1 +
 drivers/gpu/drm/xe/xe_pci.c                        |   9 ++
 drivers/gpu/drm/xe/xe_platform_types.h             |   1 +
 include/drm/intel/pciids.h                         |   9 ++
 33 files changed, 861 insertions(+), 118 deletions(-)
---
base-commit: c6c2a6f0013cf24b117a1dd397c9e0530ff2f4cb
change-id: 20251014-xe3p_lpd-basic-enabling-eb4424698b44

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

