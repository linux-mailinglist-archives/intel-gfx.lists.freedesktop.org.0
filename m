Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B26029B79D5
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 12:38:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BC1610E3F6;
	Thu, 31 Oct 2024 11:38:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W7klQdVs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4C1810E3F6;
 Thu, 31 Oct 2024 11:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730374722; x=1761910722;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MgCJf/ONKMtTscMnUn/3v2oeEHj9O1SBmVKf/YHzq3M=;
 b=W7klQdVsNQAWwOinm2/pBxL8pMJHEH5jYbWb5MqHG8U0hMeARxYKATuS
 gGmEQmcToZZ4i12xRChDAd2eaaPM8bJbLR8hyT0Vu1/6CmmUWhQln5OA2
 MsWbOsSP+f+O8ZQsE1nngS5wAcnruja5uPlYmHUoneyhHL3aVjJcZytt2
 zi+JQhpWY7WzrQzZ2ROKatX//pXHJnWGoHxn6P/n/61uxhAk2xTswThZi
 OOj4LHN78Tq5E1pteiW3WVio2OJyO3AgLC5Tlb5N+PW+mqnm4J6iccMeK
 0Za56H7NlY7XIAoxQscrbZGMfJ0wj+1oginE/QZFWTc49BXlwdL0sksMH g==;
X-CSE-ConnectionGUID: tRX9KxSCRnidoBnyALXjsQ==
X-CSE-MsgGUID: fXVY76joTgattqJHbj8W+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="40682195"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="40682195"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:38:41 -0700
X-CSE-ConnectionGUID: X1eXbxl2SAmLjm2bjylM8g==
X-CSE-MsgGUID: fsqUVzl5TyyC3tNj7b1MIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82724562"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:38:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/6] drm/i915/display: make all i915_drv.h includes explicit
Date: Thu, 31 Oct 2024 13:38:30 +0200
Message-Id: <cover.1730374470.git.jani.nikula@intel.com>
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

