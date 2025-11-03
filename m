Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 410E1C2D6BA
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:19:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55BEE10E451;
	Mon,  3 Nov 2025 17:19:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yf+b15iE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A559910E465;
 Mon,  3 Nov 2025 17:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190374; x=1793726374;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=0BmtQ6/WvSUuyEzkP/SQ8blcLrxOuXH/Ah3CZnizNvQ=;
 b=Yf+b15iEc2hSozd0P26QV7tB66xEELXzr1X72gdR3lsshub8BPTtYniK
 m9XBMkjZ6Sy5BSm1GwZ9VJv52Nhj5upp+YOlI9vsN6Hu+1Wm3wbZnel9M
 pjkyPQ5uy9TKMYNt5QmPIu2FCX4RGyaiHPS5zThFbasPN44g5PqtmUb5W
 3r2PqfPvnFUhd6LUt6C/9AB+O1Tq/b+N5bOc0zgEM3+60KfQPyT4zzzHp
 Qp0pzZ0LXy6J1Dd4Bgt5zM04kVZ3Q87QTZO5vJeibRaoj+/vi//Fk6zC1
 fRmLBxNShKKIp+LIAiEeioZYnagghPoAWyR0WfcMKhberr0lffR2S5HBs Q==;
X-CSE-ConnectionGUID: NbfKfeXvREmCS/L086bsPg==
X-CSE-MsgGUID: eqMhTslsSASmIHmjUd/ScQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64309950"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64309950"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:19:34 -0800
X-CSE-ConnectionGUID: 3NN7sNpHTF+wS81AztCiZQ==
X-CSE-MsgGUID: ANx4P2oyRmKIfswgpAOEqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606181"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:19:30 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v3 00/29] drm/i915/display: Add initial support for
 Xe3p_LPD
Date: Mon, 03 Nov 2025 14:17:51 -0300
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMLjCGkC/3XNwQqDMAyA4VcZPa+jjW1xO+09xhjVZhpwVVopD
 vHdV4WBF0/hD+TLzCIGwshup5kFTBSp9zmK84nVrfUNcnK5GQjQUkjFJyyGVzc4XtlINUdvq45
 8w7FSCpS5lnmyfD0EfNO0yY9n7pbi2Ifv9ijJdfs39aGZJBfcgZMIRoOw9k5+xO5S9x+2mgl2D
 shjB7IjBVo0zmhdlXtnWZYfsJjY2AYBAAA=
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
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>, 
 Suraj Kandpal <suraj.kandpal@intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
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
Ankit Nautiyal (1):
      drm/i915/xe3p_lpd: Drop support for interlace mode

Gustavo Sousa (16):
      drm/i915/display: Use braces for if-ladder in intel_bw_init_hw()
      drm/i915/xe3p_lpd: Add CDCLK table
      drm/i915/xe3p_lpd: Load DMC firmware
      drm/i915/xe3p_lpd: Extend Wa_16025573575
      drm/i915/xe3p_lpd: Reload DMC MMIO for pipes C and D
      drm/i915/dram: Add field ecc_impacting_de_bw
      drm/i915/xe3p_lpd: Log FBC-related debug info for PIPE underrun
      drm/i915/wm: Do not make latency values monotonic on Xe3 onward
      drm/i915/xe3p_lpd: Always apply WaWmMemoryReadLatency
      drm/i915/vbt: Add fields dedicated_external and dyn_port_over_tc
      drm/i915/power: Use intel_encoder_is_tc()
      drm/i915/display: Handle dedicated external ports in intel_encoder_is_tc()
      drm/i915/xe3p_lpd: Extend Type-C flow for static DDI allocation
      drm/i915/display: Use platform check in HAS_LT_PHY()
      drm/i915/display: Move HAS_LT_PHY() to intel_display_device.h
      drm/i915/display: Use HAS_LT_PHY() for LT PHY AUX power

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

Sai Teja Pottumuttu (6):
      drm/i915/xe3p_lpd: Add Xe3p_LPD display IP features
      drm/i915/xe3p_lpd: Expand bifield masks dbuf blocks fields
      drm/i915/xe3p_lpd: Horizontal flip support for linear surfaces
      drm/i915/xe3p_lpd: Remove gamma,csc bottom color checks
      drm/i915/xe3p_lpd: Underrun debuggability and error codes/hints
      drm/i915/nvls: Add NVL-S display support

Vinod Govindapillai (1):
      drm/i915/xe3p_lpd: Enable system caching for FBC

 drivers/gpu/drm/i915/display/intel_bios.c          |  54 +++++++-
 drivers/gpu/drm/i915/display/intel_bios.h          |   2 +
 drivers/gpu/drm/i915/display/intel_bw.c            |  43 +++---
 drivers/gpu/drm/i915/display/intel_cdclk.c         |  44 +++++-
 drivers/gpu/drm/i915/display/intel_color.c         |  13 +-
 drivers/gpu/drm/i915/display/intel_ddi.c           |  11 ++
 drivers/gpu/drm/i915/display/intel_display.c       |  33 ++++-
 .../gpu/drm/i915/display/intel_display_device.c    |   6 +
 .../gpu/drm/i915/display/intel_display_device.h    |   5 +-
 drivers/gpu/drm/i915/display/intel_display_power.c |   3 +
 .../drm/i915/display/intel_display_power_well.c    |  42 +++---
 drivers/gpu/drm/i915/display/intel_display_regs.h  |  40 +++++-
 drivers/gpu/drm/i915/display/intel_display_types.h |   1 +
 drivers/gpu/drm/i915/display/intel_display_wa.c    |   3 +-
 drivers/gpu/drm/i915/display/intel_dmc.c           |  13 +-
 drivers/gpu/drm/i915/display/intel_fbc.c           |  92 +++++++++++++
 drivers/gpu/drm/i915/display/intel_fbc.h           |   2 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h      |  11 ++
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c |  73 ++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h        |   2 -
 drivers/gpu/drm/i915/display/intel_plane.c         |   3 +
 drivers/gpu/drm/i915/display/intel_tc.c            | 151 ++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h      |   3 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c |   3 +-
 .../drm/i915/display/skl_universal_plane_regs.h    |  12 +-
 drivers/gpu/drm/i915/display/skl_watermark.c       |  42 +++++-
 drivers/gpu/drm/i915/display/skl_watermark_regs.h  |  52 +++----
 drivers/gpu/drm/i915/i915_reg.h                    |   1 +
 drivers/gpu/drm/i915/soc/intel_dram.c              |   4 +
 drivers/gpu/drm/i915/soc/intel_dram.h              |   1 +
 30 files changed, 670 insertions(+), 95 deletions(-)
---
base-commit: c6cd36e5d63bd95a7b68e934d874921a67aecfd2
change-id: 20251014-xe3p_lpd-basic-enabling-eb4424698b44

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

