Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 414A8B39CF8
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE92210E32C;
	Thu, 28 Aug 2025 12:21:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zu4e0XPU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F58F10E32C;
 Thu, 28 Aug 2025 12:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383669; x=1787919669;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LQlJxiBA7pFn6yF2xbth9BS4RTcFNIP3yVmOx9W1wTY=;
 b=Zu4e0XPU3o4jmLpLNvdJrVzaRkSZaNPRwLqGTaMw5APz8E5e1s0qREFR
 0AR3UvwtNk2E9BqsYknCEkPLkvRJ5fSmXwEKZvRoy7E6m5uFLsjmsQ+LQ
 vRk6+GrqTJpZiQk16+eRBm4jNEvJ1Y7tF6b2wRBYuAqskyjg/zIDNIcJ3
 O3IT7Vc2TXFbIR1Am5wdAuYvCS3EXMWPX9Ox7TdRGl9C/GYWFKdak0pVi
 OE8dNyAFbE7szfoQtK1EE/nlFfbYUL7dQLvN4zUm2RN2WaLL6LQN5IGW6
 aGpGuDSg0jtgVOKqGpsHAJcOwZewxOoLsc8tAlVO3dTnt1/TPKDXQLQVF w==;
X-CSE-ConnectionGUID: 8pAB3FahTs6OgoYWSn3nZw==
X-CSE-MsgGUID: tluL6hqVTTaL8O/vHJn7zQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="58360001"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="58360001"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:09 -0700
X-CSE-ConnectionGUID: MCXLImjlSAK3kOHBJz+H6Q==
X-CSE-MsgGUID: uO89pnLbQROI8SDNOGrbbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169999550"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 00/20] drm/i915/display: convert to generic poll_timeout_us()
Date: Thu, 28 Aug 2025 15:20:42 +0300
Message-ID: <cover.1756383233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
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

Completely remove the remaining custom i915_utils.h wait macro usage
from display code, and unify on the kernel generic poll_timeout_us()
poll waiter. Also convert existing read_poll_timeout() and
readx_poll_timeout() to poll_timeout_us().

This is a rewrite of [1] switching to the new poll_timeout_us() instead
of read_poll_timeout().

The main functional change is losing the exponentially growing sleep
from the custom macros. This is highlighted in each commit message with
details.


BR,
Jani.


[1] https://lore.kernel.org/r/cover.1751023767.git.jani.nikula@intel.com


Jani Nikula (20):
  drm/i915/hdmi: use generic poll_timeout_us() instead of __wait_for()
  drm/i915/hdcp: use generic poll_timeout_us() instead of __wait_for()
  drm/i915/hdcp: use generic poll_timeout_us() instead of wait_for()
  drm/i915/dsi: use generic poll_timeout_us() instead of wait_for_us()
  drm/i915/dsi-pll: use generic poll_timeout_us() instead of wait_for()
  drm/i915/gmbus: use generic poll_timeout*() instead of wait_for*()
  drm/i915/wm: use generic poll_timeout_us() instead of wait_for()
  drm/i915/cdclk: use generic poll_timeout_us() instead of wait_for()
  drm/i915/power: use generic poll_timeout_us() instead of wait_for()
  drm/i915/power-well: use generic poll_timeout_us() instead of
    wait_for() for DKL PHY
  drm/i915/power-well: use generic poll_timeout_us() instead of
    wait_for() for VLV/CHV
  drm/i915/dp: use generic poll_timeout_us() instead of wait_for()
  drm/i915/dp: use generic poll_timeout_us() instead of wait_for() in
    link training
  drm/i915/vblank: use generic poll_timeout_us() instead of wait_for()
  drm/i915/tc: use generic poll_timeout_us() instead of wait_for()
  drm/i915/dsb: use generic poll_timeout_us() instead of wait_for()
  drm/i915/lspcon: use generic poll_timeout_us() instead of wait_for()
  drm/i915/opregion: use generic poll_timeout_us() instead of wait_for()
  drm/i915/ddi: prefer poll_timeout_us() over readx_poll_timeout()
  drm/i915/pps: prefer poll_timeout_us() over read_poll_timeout()

 drivers/gpu/drm/i915/display/i9xx_wm.c        | 16 +++++--
 drivers/gpu/drm/i915/display/icl_dsi.c        | 18 ++++++--
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 37 ++++++++--------
 drivers/gpu/drm/i915/display/intel_ddi.c      | 32 +++++---------
 .../drm/i915/display/intel_display_power.c    |  7 +++-
 .../i915/display/intel_display_power_well.c   | 42 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_dp.c       | 21 +++++-----
 .../drm/i915/display/intel_dp_link_training.c | 17 ++++++--
 drivers/gpu/drm/i915/display/intel_dsb.c      | 10 ++++-
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 13 +++---
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 25 ++++++-----
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 10 ++---
 drivers/gpu/drm/i915/display/intel_lspcon.c   | 13 ++++--
 drivers/gpu/drm/i915/display/intel_opregion.c | 10 +++--
 drivers/gpu/drm/i915/display/intel_pps.c      |  8 ++--
 drivers/gpu/drm/i915/display/intel_tc.c       | 16 ++++++-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  9 +++-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    | 11 +++--
 18 files changed, 193 insertions(+), 122 deletions(-)

-- 
2.47.2

