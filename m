Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A6DBF9745
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:31:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C2B910E05E;
	Wed, 22 Oct 2025 00:31:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V/SwAEqB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 677E010E004;
 Wed, 22 Oct 2025 00:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093060; x=1792629060;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=5jj8o8CNUKgxg+2XHUiP+LfMdNJ0notybWjx/covoYM=;
 b=V/SwAEqBCrb5YFYTuUWEbaOxlbUptSY6tk9VMMYMr5oSP/Z0pEAEbyw/
 midKk8AEkwtUcJKskVHd7osWI3wk6r5+IJxLxhgmhAqvF2/sOmfFbmBpN
 f39N5KQJ3oANFNv4IPgbs2FbbqADKgIp5Lg2Whk8+e+zk62QN8izqdo+f
 XKse4J6/Un9+kYVleKjh+0glV/+eXN3FFg5RK7JU5ue+QLiG4vzlRzRO4
 s9jMq4KAVbQlIOFV+7uHBWJ7XNPRaANylnvbX8jbU6Ubmt3ohAMQmDEkh
 FkmrWNosgTPAY52hxeEEwxw3rnRKKwoI+pSmXNB8qi+HhFfkU4lqzGvtS A==;
X-CSE-ConnectionGUID: nY2kp/nyR9aZrm8V3CLBgA==
X-CSE-MsgGUID: SZjXL9TrSz6EUpIgzqxHow==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855676"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855676"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:00 -0700
X-CSE-ConnectionGUID: HuKlW/khT/KGMHK4ZtqPbw==
X-CSE-MsgGUID: 5HAuRrMwTtShYGN4Gmt1Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132232"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:30:55 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 00/32] drm/i915/display: Add initial support for
 Xe3p_LPD
Date: Tue, 21 Oct 2025 21:28:25 -0300
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIACsl+GgC/3WNwQqDMBBEf0X23C3JNkrbU/+jSIlmqws2kUTEI
 v57U6HHnoY3MG9WSByFE1yLFSLPkiT4DHQooO2t7xjFZQZSVGqlDS58Gh/D6LCxSVpkb5tBfIf
 cGEOmupxzQl6PkZ+y7OZ7nbmXNIX43o9m/W1/zvKvc9ao0JHTTFVJytqb+ImHYxteUG/b9gEOD
 MSUvgAAAA==
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
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>, 
 Suraj Kandpal <suraj.kandpal@intel.com>
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
Changes in v2:
- Incorporated review feedback. Please check the changelog in the
  patches for details.
- Link to v1: https://lore.kernel.org/r/20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com

---
Ankit Nautiyal (1):
      drm/i915/xe3p_lpd: Drop support for interlace mode

Gustavo Sousa (13):
      drm/i915/display: Use braces for if-ladder in intel_bw_init_hw()
      drm/i915/dram: Add field ecc_impacting_de_bw
      drm/i915/xe3p_lpd: Wait for AUX channel power status
      drm/i915/wm: Reorder adjust_wm_latency() for Xe3_LPD
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

Matt Roper (1):
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

 drivers/gpu/drm/i915/display/intel_bios.c          |  54 ++++++-
 drivers/gpu/drm/i915/display/intel_bios.h          |   2 +
 drivers/gpu/drm/i915/display/intel_bw.c            |  39 +++--
 drivers/gpu/drm/i915/display/intel_cdclk.c         |  44 +++++-
 drivers/gpu/drm/i915/display/intel_color.c         |  13 +-
 drivers/gpu/drm/i915/display/intel_ddi.c           |  11 ++
 drivers/gpu/drm/i915/display/intel_display.c       |  33 ++++-
 .../gpu/drm/i915/display/intel_display_device.c    |   6 +
 .../gpu/drm/i915/display/intel_display_device.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_display_power.c |   3 +
 .../drm/i915/display/intel_display_power_well.c    |  58 ++++++--
 drivers/gpu/drm/i915/display/intel_display_regs.h  |  40 ++++-
 drivers/gpu/drm/i915/display/intel_display_types.h |   4 +
 drivers/gpu/drm/i915/display/intel_display_wa.c    |   3 +-
 drivers/gpu/drm/i915/display/intel_dmc.c           |  13 +-
 drivers/gpu/drm/i915/display/intel_fbc.c           | 126 +++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbc.h           |   1 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h      |  11 ++
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c |  87 +++++++++++
 drivers/gpu/drm/i915/display/intel_plane.c         |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c           |  25 ++++
 drivers/gpu/drm/i915/display/intel_tc.c            | 151 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h      |   3 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 162 +++++++++++++++------
 .../drm/i915/display/skl_universal_plane_regs.h    |  25 +++-
 drivers/gpu/drm/i915/display/skl_watermark.c       |  55 +++++--
 drivers/gpu/drm/i915/display/skl_watermark_regs.h  |  52 ++++---
 drivers/gpu/drm/i915/i915_reg.h                    |   1 +
 drivers/gpu/drm/i915/soc/intel_dram.c              |   4 +
 drivers/gpu/drm/i915/soc/intel_dram.h              |   1 +
 30 files changed, 882 insertions(+), 152 deletions(-)
---
base-commit: fb0f56ad8a2c9953c57c3337a72ccbf9c5050687
change-id: 20251014-xe3p_lpd-basic-enabling-eb4424698b44

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

