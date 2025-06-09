Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 690A3AD2094
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 16:10:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03AD510E3A4;
	Mon,  9 Jun 2025 14:10:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hIFrjSvw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B85C10E3A4;
 Mon,  9 Jun 2025 14:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749478251; x=1781014251;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rzDH8xirSg+nFVfuGUV5LEAfWJG4TGxoU/NCeY1Rv1E=;
 b=hIFrjSvwgU27wVTav6bgEgUzW6DCXuzX2kW0TmLIz83zs3esyflZRmOj
 3AGVwjYzxH0MDY6fIfezS3Dwy1q3oDDhgozwcsVQB+HCDbHtL8iOHqJQZ
 GgThXZ30My2S4D0MPJqhrjaIlbapqknQj+k8di/nPm8BSWSU7lmuzIBj7
 tbNMExd3g+HT/ZVyr2/hZFItl3SEbrsz3UMc05MqmZarxx7P3Q+89gslq
 GDK+eAjUIvDextR9P2rhBeJelbvbel7s0VFlcyBm1pTxy7GQacQuLNRay
 dC89vXZaHOkW6K5JpjYhaQiF5CR9f8HDBqjUeVBH2+yQ4HK/ktmcXTU8V A==;
X-CSE-ConnectionGUID: pJjisKNFTkyqoDuFN9Tlcw==
X-CSE-MsgGUID: 3v2tIpO+SrCJb+Qz3VlIHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55360709"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="55360709"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 07:10:50 -0700
X-CSE-ConnectionGUID: qPlwh40/SymKeIo7VjtbnA==
X-CSE-MsgGUID: zQwMq6bfRJKqvklz6PGT8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151765387"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.99])
 by orviesa005.jf.intel.com with SMTP; 09 Jun 2025 07:10:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Jun 2025 17:10:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v4 00/21] drm/i915/flipq: Rough flip queue implementation
Date: Mon,  9 Jun 2025 17:10:25 +0300
Message-ID: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Initial stab at implementing the PIPEDMC based flip queue.
Briefly smoke tested on LNL, not much more.

Still has quite a few warts..

v2: cleaned up a few of the warts at least
    should work on PTL now
v3: Rebase due to DSB GOSUB stuff getting merged
    Try to fix PKG_C_LATENCY
    Ignore INT_VECTOR when opther PIPEDMC interrupt are present
v4: Fix up some DSB issues
    Limit DMC clock gating w/as
    Reload pipe C/D PIPEDMC MMIOs on PTL
    Disable PSR in order to get a bit more CI coverage

Ville Syrjälä (21):
  drm/i915/dsb: Use intel_dsb_ins_align() in intel_dsb_align_tail()
  drm/i915/dsb: Provide intel_dsb_head() and intel_dsb_size()
  drm/i915/dsb: Introduce intel_dsb_exec_time_us()
  drm/i915/dsb: Garbage collect the MMIO DEwake stuff
  drm/i915/dsb: Move the DSB_PMCTRL* reset out of intel_dsb_finish()
  drm/i915/dsb: Disable the GOSUB interrupt
  drm/i915/dmc: Limit PIPEDMC clock gating w/a to just ADL/DG2/MTL
  drm/i915/dmc: Parametrize MTL_PIPEDMC_GATING_DIS
  drm/i915: Set PKG_C_LATENCY.added_wake_time to 0
  drm/i915: Try to program PKG_C_LATENCY more correctly
  drm/i915/dmc: Shuffle code around
  drm/i915/dmc: Reload PIPEDMC MMIO registers for pipe C/D on PTL+
  drm/i915/dmc: Assert DMC is loaded harder
  drm/i915/dmc: Define flip queue related PIPEDMC registers
  drm/i915/flipq: Provide the nuts and bolts code for flip queue
  drm/i915/flipq: Implement flip queue based commit path
  drm/i915/flipq: Implement Wa_18034343758
  drm/i915/flipq: Implement Wa_16018781658 for LNL-A0
  drm/i915/flipq: Add intel_flipq_dump()
  drm/i915/flipq: Enable flipq by default for testing
  drm/i915/flipq: Disable PSR for extra flip queue coverage

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  57 ++-
 .../gpu/drm/i915/display/intel_display_core.h |   6 +
 .../drm/i915/display/intel_display_driver.c   |   3 +
 .../drm/i915/display/intel_display_params.c   |   3 +
 .../drm/i915/display/intel_display_params.h   |   3 +-
 .../i915/display/intel_display_power_well.c   |   4 +-
 .../drm/i915/display/intel_display_types.h    |  20 +
 drivers/gpu/drm/i915/display/intel_dmc.c      | 319 ++++++++----
 drivers/gpu/drm/i915/display/intel_dmc.h      |  13 +-
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 192 ++++++-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 120 ++---
 drivers/gpu/drm/i915/display/intel_dsb.h      |   6 +-
 drivers/gpu/drm/i915/display/intel_flipq.c    | 473 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_flipq.h    |  37 ++
 drivers/gpu/drm/i915/display/skl_watermark.c  | 108 ++--
 drivers/gpu/drm/i915/i915_reg.h               |   3 +-
 drivers/gpu/drm/xe/Makefile                   |   1 +
 18 files changed, 1141 insertions(+), 228 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_flipq.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_flipq.h

-- 
2.49.0

