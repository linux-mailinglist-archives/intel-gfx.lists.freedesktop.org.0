Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 687DE8C9963
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 09:38:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE0110E027;
	Mon, 20 May 2024 07:38:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZTMGUnSU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E964710E027
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 07:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716190722; x=1747726722;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f+SMiG2DZ4KepQJlx6IbaPldHWeMupln0527TMyra6s=;
 b=ZTMGUnSUYZ8jxygGpGWzQyfB3iUWFk8pDR9w7lnMPIjsfUd8dst/mxka
 RcF9QE/lziAYvX/rqL/g8AILfLWGqJ1X1IkJTVfOx7MkhPB9wG0+drM03
 k1DD3w+9+z+ml71nTvqXvQiFMl3wgg1Ev/SuHvhTN9246t3oxVnTkN+3J
 T3nLS8BS50jc6BGdvOTnMGLAPWs6cuF70CwxFPLvIwg+VK54hx9y9Zw2E
 gxXuW8vh1eRJ++yfyialtsqCA/TIj9C9WttVsOPsAv3TPtxaebxHqhhow
 Ilr1AhNJZG0dlPoo+jnBHFUktJAX4T75CPZ8wVlLSmtpuIVs5A570YGqz w==;
X-CSE-ConnectionGUID: RUfJD7EkTgi4m4pdgz2Xww==
X-CSE-MsgGUID: Lwcjpu5LQVGXRYUg4Xav9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="23444997"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="23444997"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 00:38:42 -0700
X-CSE-ConnectionGUID: vWXg1txPRSGpx1y3e+pSZQ==
X-CSE-MsgGUID: pwUGOlO8SROzDMgNijV3oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="33053207"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa007.jf.intel.com with ESMTP; 20 May 2024 00:38:40 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 0/5] Ultrajoiner basic functionality series
Date: Mon, 20 May 2024 10:38:34 +0300
Message-Id: <20240520073839.23881-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
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

This patch series attempts to implement basic support
for Ultrajoiner functionality.

Stanislav Lisovskiy (5):
  drm/i915: Rename all bigjoiner to joiner
  drm/i915: Implement basic functions for ultrajoiner support
  drm/i915: Implement hw state readout for ultrajoiner
  drm/i915: Compute config and mode valid changes for ultrajoiner
  drm/i915: Add new abstraction layer to handle pipe order for different
    joiners

 .../gpu/drm/i915/display/intel_atomic_plane.c |   4 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   8 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |   8 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  23 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 360 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.h  |  16 +-
 .../drm/i915/display/intel_display_debugfs.c  |  10 +-
 .../drm/i915/display/intel_display_types.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 117 ++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |  14 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  48 ++-
 drivers/gpu/drm/i915/display/intel_drrs.c     |   6 +-
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  14 +-
 .../drm/i915/display/intel_modeset_setup.c    |  38 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  35 +-
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   2 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   2 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |   2 +-
 .../drm/i915/display/skl_universal_plane.c    |   4 +-
 22 files changed, 485 insertions(+), 242 deletions(-)

-- 
2.37.3

