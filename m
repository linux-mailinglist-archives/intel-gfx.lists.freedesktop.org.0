Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C204C5F49D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 21:53:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A295B10EB1B;
	Fri, 14 Nov 2025 20:53:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UbWB2+8O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1068510EB18;
 Fri, 14 Nov 2025 20:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763153599; x=1794689599;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=GlHcKHDq+4PCR2XEGbx9Za0M+eYTnYhWAPvNXkf1AQs=;
 b=UbWB2+8OTgaqkIQMRLN8nlAJweDHzkNh8gJx5WyMuD77NKtT/oHEgb0L
 4xLYxvAYMO0rzUs92kdGIZOFemdx3ZCacru1LkNxLdb+mrQBVULeI58WX
 NdlpV/MROPmfy0ZfHj785CIBS9A9rYB5o4KTOJWjnrcJB3pJ5PNoK0PtK
 8pPYbMXcLLs4gSVUwTAXloMGfgM7YArBQ9ZWnSdK3d1BB4JG0iftGBZcn
 AU/q0PDnHUJAq4nTTbxsT33aXMKUM7Mo3TLXfVkY1cb5noQW8DK3sDVGM
 MI8JW1Nl/pXmiBBdUzoCQyoypsAYQq0gB5rT9/NNfjriEfuLOmHklqpK/ A==;
X-CSE-ConnectionGUID: iXYmCxLbSXqwJ/Vy2GmMEw==
X-CSE-MsgGUID: A300XIgkTNWjjCMU7Zf40w==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="67859834"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="67859834"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:53:17 -0800
X-CSE-ConnectionGUID: ZbIuqg+ERbOvvZdveGlDWw==
X-CSE-MsgGUID: xMrpMXm6SO6MS2E5kKV1zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="227214204"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.50])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:53:11 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v5 0/8] drm/i915/display: Add initial support for Xe3p_LPD
Date: Fri, 14 Nov 2025 17:52:07 -0300
Message-Id: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHiWF2kC/3XN3WrDMAwF4Fcpvp6HJf8k69XeY4xhx0oryJwQl
 9BR8u5TC2OhkCtxBOc7N1VpZqrqeLipmRauPBYJ/uWgunMsJ9KcJSs06MGA01ey09cwZZ1i5U5
 TiWngctKUnEMX3lq5StrTTD1fH/LHp+Qz18s4/zyGFrh//0y/ay6gjc6YgTB4NDG+c7nQ8NqN3
 +puLrhxEPYdFAcMRQo5eJ/aZ8f+O2DsvmPFMYbaJslgpObZcVun2XecODFZG5o++B781lnX9Rf
 YRGyflgEAAA==
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
 Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Suraj Kandpal <suraj.kandpal@intel.com>, 
 Jani Nikula <jani.nikula@intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
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
Changes in v5:
- Dropped patch "drm/i915/wm: Do not make latency values monotonic on
  Xe3 onward", as it needs a bit more discussion and is not critical for
  this series.
- Dropped patch "drm/i915/xe3p_lpd: Extend Type-C flow for static DDI
  allocation".  I'll send it as a standalone patch.
- Incorporated review feedback for the other patches. Please check the
  changelog in the individual patches for details.
- Link to v4: https://patch.msgid.link/20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com

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
      drm/i915/display: Handle dedicated external ports in intel_encoder_is_tc()
      drm/i915/xe3p_lpd: Handle underrun debug bits
      drm/i915/display: Use platform check in HAS_LT_PHY()
      drm/i915/display: Move HAS_LT_PHY() to intel_display_device.h
      drm/i915/display: Use HAS_LT_PHY() for LT PHY AUX power

Sai Teja Pottumuttu (1):
      drm/i915/nvls: Add NVL-S display support

 drivers/gpu/drm/i915/display/intel_bios.c          |  73 +++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h          |   2 +
 drivers/gpu/drm/i915/display/intel_ddi.c           |  11 +++
 drivers/gpu/drm/i915/display/intel_display.c       |  16 ++-
 .../gpu/drm/i915/display/intel_display_device.c    |   5 +
 .../gpu/drm/i915/display/intel_display_device.h    |   6 +-
 .../drm/i915/display/intel_display_power_well.c    |  49 +++++----
 drivers/gpu/drm/i915/display/intel_display_regs.h  |  16 +++
 drivers/gpu/drm/i915/display/intel_display_types.h |   1 +
 drivers/gpu/drm/i915/display/intel_fbc.c           |  50 ++++++++++
 drivers/gpu/drm/i915/display/intel_fbc.h           |   3 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h      |   2 +
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 109 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h        |   2 -
 drivers/gpu/drm/i915/display/intel_vbt_defs.h      |   3 +-
 15 files changed, 324 insertions(+), 24 deletions(-)
---
base-commit: 5f250ba2e3bb0b4541473f2bd5dd8a8f22305b61
change-id: 20251014-xe3p_lpd-basic-enabling-eb4424698b44

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

