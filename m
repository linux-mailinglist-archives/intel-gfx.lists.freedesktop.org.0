Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D22DD9D3A25
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:03:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D595710E124;
	Wed, 20 Nov 2024 12:03:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E3dWrEQd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E094210E124;
 Wed, 20 Nov 2024 12:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732104223; x=1763640223;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MgCJf/ONKMtTscMnUn/3v2oeEHj9O1SBmVKf/YHzq3M=;
 b=E3dWrEQdznO3JuDCDQRJsu4+wurXIKzj1aO/FJMM/mGAKmHI/vh21iDc
 QnkA02yZNiP3Vzc4yMnLorNN25B7DFqDX7tmitvzfsW4dQxgZdsJlrvMs
 zNjOly+r4mBaPJtKb6W2NWD+A7aXFw3samumj5fV2jxfQ418jifXDLKKa
 OesBLVwzsOaUhU+D2VLGp1ZOfNoWCzGW+SR1cB/jQ2i/CmhLEpjIQnFB1
 T4wRBaG63g7G4FXAF0GHESfwj5qlh3e8sJvg2C+awfPHm0NefGM55Kldq
 kYe87mr0qB7V6v5+oGBANaXedjSZtgS3LA2tJ8r9J0qJb46IJY5V3UtBq Q==;
X-CSE-ConnectionGUID: BpfBUTLUS6+b9g57TEPXrA==
X-CSE-MsgGUID: 7wfbYhBwSHqvnnXCYPrKYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="43540093"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="43540093"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:03:43 -0800
X-CSE-ConnectionGUID: g60AAoHqQt2c/HwNLHMqOA==
X-CSE-MsgGUID: lf7DB1pPTvifb+J3tnq41Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="90277866"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:03:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 0/6] drm/i915/display: make all i915_drv.h includes explicit
Date: Wed, 20 Nov 2024 14:03:31 +0200
Message-Id: <cover.1732104170.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Drop all implicit includes of i915_drv.h via other headers in display
code, and make the includes explicit.

With this, we can use:

$ git grep '#include "i915_drv.h"' -- drivers/gpu/drm/i915/display/

to track the progress of struct drm_i915_private -> struct intel_display
conversion, and in general the progress of breaking ties with everything
that comes out of i915_drv.h. Before this, removing the i915_drv.h
includes was meaningless, because we'd always get it through some other
route.

BR,
Jani.

Jani Nikula (6):
  drm/i915/gvt: always pass struct intel_display * to register macros
  drm/i915: extract intel_uncore_trace.[ch]
  drm/i915/display: add intel_display_conversion.c to hide stuff better
  drm/i915/uncore: add to_intel_uncore() and use it
  drm/i915/display: add struct drm_device to struct intel_display
    conversion function
  drm/i915/display: drop i915_drv.h include from intel_display_trace.h

 drivers/gpu/drm/i915/Makefile                 |  2 +
 drivers/gpu/drm/i915/display/g4x_dp.c         |  1 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  1 +
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  1 +
 drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
 drivers/gpu/drm/i915/display/intel_alpm.c     |  1 +
 .../gpu/drm/i915/display/intel_atomic_plane.c |  1 +
 .../gpu/drm/i915/display/intel_backlight.c    |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  1 +
 drivers/gpu/drm/i915/display/intel_color.c    |  1 +
 .../gpu/drm/i915/display/intel_combo_phy.c    |  1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |  1 +
 drivers/gpu/drm/i915/display/intel_cursor.c   |  1 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  2 +
 drivers/gpu/drm/i915/display/intel_de.h       |  8 +-
 .../i915/display/intel_display_conversion.c   | 14 ++++
 .../i915/display/intel_display_conversion.h   | 10 ++-
 .../drm/i915/display/intel_display_debugfs.c  |  1 +
 .../drm/i915/display/intel_display_trace.h    |  2 +-
 .../drm/i915/display/intel_display_types.h    |  3 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |  1 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  1 +
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  1 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |  1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  1 +
 .../gpu/drm/i915/display/intel_dpt_common.c   |  1 +
 drivers/gpu/drm/i915/display/intel_fdi.c      |  1 +
 drivers/gpu/drm/i915/display/intel_lspcon.c   |  1 +
 .../gpu/drm/i915/display/intel_pch_display.c  |  1 +
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  1 +
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |  1 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  1 +
 drivers/gpu/drm/i915/display/skl_scaler.c     |  1 +
 drivers/gpu/drm/i915/gvt/cmd_parser.c         | 17 ++--
 drivers/gpu/drm/i915/gvt/display.c            | 80 ++++++++++---------
 drivers/gpu/drm/i915/gvt/fb_decoder.c         | 21 ++---
 drivers/gpu/drm/i915/gvt/handlers.c           | 44 +++++-----
 drivers/gpu/drm/i915/i915_trace.h             | 28 -------
 drivers/gpu/drm/i915/intel_uncore.c           |  7 +-
 drivers/gpu/drm/i915/intel_uncore.h           |  2 +
 drivers/gpu/drm/i915/intel_uncore_trace.c     |  7 ++
 drivers/gpu/drm/i915/intel_uncore_trace.h     | 49 ++++++++++++
 drivers/gpu/drm/i915/vlv_suspend.c            |  1 +
 drivers/gpu/drm/xe/Makefile                   |  1 +
 .../drm/xe/compat-i915-headers/intel_uncore.h |  5 ++
 .../{i915_trace.h => intel_uncore_trace.h}    |  0
 47 files changed, 221 insertions(+), 110 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_conversion.c
 create mode 100644 drivers/gpu/drm/i915/intel_uncore_trace.c
 create mode 100644 drivers/gpu/drm/i915/intel_uncore_trace.h
 rename drivers/gpu/drm/xe/compat-i915-headers/{i915_trace.h => intel_uncore_trace.h} (100%)

-- 
2.39.5

