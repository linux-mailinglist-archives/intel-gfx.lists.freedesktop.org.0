Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B97A78C278D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 17:23:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCF1C10E524;
	Fri, 10 May 2024 15:23:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HqCPXGFX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95A3710E69B
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 15:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354614; x=1746890614;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HOm9D3pER1KqyMkK5dLeMSsjeF7XB5t3PAxXjlu9Y34=;
 b=HqCPXGFXV3rrVnPi1szQi50l6z7j7veGEzpvPJoqu/F/4Z5OPalrnhYK
 px1yFPjuh9+dvTsw7Pl4WMOuVze8CbEOrofZBU7Cn1ehtmPmgnKQIS/nz
 beNR/eyB2fL5NjP/8ZAudHpRKguCTWRoXUv2Xg5aelfXT4XazqlwlHdje
 MQQuxpYG3Da9x4scmB7aXw6Tamd+QGuh5E0DvCU/6k9eBVJT8pJD++rZH
 SUbfwY4auOMjUXBep/bvCPQtfaE3nVzAa8gH+zODE6IDspbCyAKSq9AQb
 sKiGVnjWz3UbAH3dPRnjTaO8UtTwtx+wPLoCfP5dxmT8unmeIP4SyENKx w==;
X-CSE-ConnectionGUID: GxzMLL3sRFSmoZEVFifEUA==
X-CSE-MsgGUID: gY6bB0bfSqGEuJZasj2EWQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11468851"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11468851"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:23:34 -0700
X-CSE-ConnectionGUID: EvUh4x2KTOWd1tAL9i8TCw==
X-CSE-MsgGUID: ZMDwhuonSF2I/ic8AcKAVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29594841"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 May 2024 08:23:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 May 2024 18:23:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/16] drm/i915: skl+ plane register stuff
Date: Fri, 10 May 2024 18:23:13 +0300
Message-ID: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
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

Bunch of refactoring around skl+ plane registers.

Ville Syrjälä (16):
  drm/i915: Nuke _MMIO_PLANE_GAMC()
  drm/i915: Extract skl_universal_plane_regs.h
  drm/i915: Extract intel_cursor_regs.h
  drm/i915: Move skl+ wm/ddb registers to proper headers
  drm/i915/gvt: Use the proper PLANE_AUX_DIST() define
  drm/i915/gvt: Use the proper PLANE_AUX_OFFSET() define
  drm/i915/gvt: Use the full PLANE_KEY*() defines
  drm/i915/gvt: Use PLANE_CTL and PLANE_SURF defines
  drm/i915: Drop useless PLANE_FOO_3 register defines
  drm/i915: Shuffle the skl+ plane register definitions
  drm/i915: Use REG_BIT for PLANE_WM bits
  drm/i915: Drop a few unwanted tabs from skl+ plane reg defines
  drm/i915: Refactor skl+ plane register offset calculations
  drm/i915: Extract skl_plane_{wm,ddb}_reg_val()
  drm/i915: Nuke skl_write_wm_level() and skl_ddb_entry_write()
  drm/i915: Handle SKL+ WM/DDB registers next to all other plane
    registers

 drivers/gpu/drm/i915/display/intel_cursor.c   |  33 ++
 .../gpu/drm/i915/display/intel_cursor_regs.h  |  98 ++++
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +
 .../gpu/drm/i915/display/intel_dpt_common.c   |   1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |   1 +
 .../drm/i915/display/skl_universal_plane.c    |  61 +++
 .../drm/i915/display/skl_universal_plane.h    |   5 +
 .../i915/display/skl_universal_plane_regs.h   | 369 ++++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.c  | 101 +---
 drivers/gpu/drm/i915/display/skl_watermark.h  |  13 +-
 .../gpu/drm/i915/display/skl_watermark_regs.h |  83 ----
 drivers/gpu/drm/i915/gvt/display.c            |   1 +
 drivers/gpu/drm/i915/gvt/dmabuf.c             |   3 +-
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |   2 +
 drivers/gpu/drm/i915/gvt/handlers.c           |  50 +-
 drivers/gpu/drm/i915/gvt/reg.h                |   3 -
 drivers/gpu/drm/i915/i915_reg.h               | 467 ------------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  80 +--
 18 files changed, 654 insertions(+), 719 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cursor_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/skl_universal_plane_regs.h

-- 
2.43.2

