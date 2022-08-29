Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A57C5A4D9C
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:19:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92F2B10F1F0;
	Mon, 29 Aug 2022 13:18:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D38310F1E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 13:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661779116; x=1693315116;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yeYYq211ZTJOcWYVp/ALbH76ncM1kbhSFQOOWxO67iU=;
 b=E7KRlFwyj7XnWuC5tsdrAc2UHJZYMak6T80ju4z847y4fF63IMsCXDSl
 jiD/Sh0vkB4S9xfkIpoNFy/TLOP/FHLW9J1XPy8DmpYf+CYr5S4w1pMV6
 aIbjhPXbjc+YnOX2bQg/AhHJ61FBk6ekjaqdLMXBfKSAEXfSvlzHX5g/f
 ievOqhIT4A699ZH+9W4h+27dSJvk6OnMZN8P+tu+KK8Bs5xS819aYhtkq
 +U/rIpqKbHaxwcBd2YpHBmHZXUR4rb/jbbP/Aa1jSiqFRDT0hi0rLmSVz
 DFxDd80aSSXFKDtZHfCQXB6kw6h7Ys24ksQx5j2FCaerqteDDIojXdJ4A g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="281861611"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="281861611"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:18:34 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="640934017"
Received: from idecesar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.198])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:18:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Aug 2022 16:18:07 +0300
Message-Id: <cover.1661779055.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 00/18] drm/i915: add display sub-struct to
 drm_i915_private
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v3 of https://patchwork.freedesktop.org/series/107170/

Dropped already merged patches, rebased the rest.

Jani Nikula (18):
  drm/i915: move and group hdcp under display.hdcp
  drm/i915: move and group max_bw and bw_obj under display.bw
  drm/i915: move opregion to display.opregion
  drm/i915: move and group cdclk under display.cdclk
  drm/i915: move backlight to display.backlight
  drm/i915: move mipi_mmio_base to display.dsi
  drm/i915: move vbt to display.vbt
  drm/i915: move fbc to display.fbc
  drm/i915: move and group power related members under display.power
  drm/i915: move and group fdi members under display.fdi
  drm/i915: move fb_tracking under display sub-struct
  drm/i915: move dbuf under display sub-struct
  drm/i915: move and group modeset_wq and flip_wq under display.wq
  drm/i915/quirks: abstract checking for display quirks
  drm/i915/quirks: abstract quirks further by making quirk ids an enum
  drm/i915: move quirks under display sub-struct
  drm/i915: move atomic_helper under display sub-struct
  drm/i915: move and group properties under display.properties

 drivers/gpu/drm/i915/display/hsw_ips.c        |   2 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_atomic.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |   6 +-
 .../gpu/drm/i915/display/intel_backlight.c    |  41 ++--
 drivers/gpu/drm/i915/display/intel_bios.c     | 216 +++++++++---------
 drivers/gpu/drm/i915/display/intel_bw.c       |  42 ++--
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 206 ++++++++---------
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   4 +-
 .../gpu/drm/i915/display/intel_connector.c    |   8 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  56 ++---
 .../gpu/drm/i915/display/intel_display_core.h | 155 +++++++++++++
 .../drm/i915/display/intel_display_debugfs.c  |  10 +-
 .../drm/i915/display/intel_display_power.c    | 122 +++++-----
 .../i915/display/intel_display_power_map.c    |   4 +-
 .../i915/display/intel_display_power_well.c   |  60 ++---
 .../i915/display/intel_display_power_well.h   |  12 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   6 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  14 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  22 +-
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |  10 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  54 ++---
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 134 +++++------
 drivers/gpu/drm/i915/display/intel_lvds.c     |   4 +-
 .../drm/i915/display/intel_modeset_setup.c    |  12 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |  42 ++--
 drivers/gpu/drm/i915/display/intel_panel.c    |   5 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   3 +-
 drivers/gpu/drm/i915/display/intel_quirks.c   |  22 +-
 drivers/gpu/drm/i915/display/intel_quirks.h   |  14 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  18 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |   8 +-
 .../drm/i915/display/skl_universal_plane.c    |   2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   4 +-
 drivers/gpu/drm/i915/display/vlv_dsi_regs.h   | 188 +++++++--------
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   4 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   2 +-
 drivers/gpu/drm/i915/i915_driver.c            |   4 +-
 drivers/gpu/drm/i915/i915_drv.h               | 153 +------------
 drivers/gpu/drm/i915/i915_gem.c               |   2 +-
 drivers/gpu/drm/i915/i915_irq.c               |   2 +-
 drivers/gpu/drm/i915/intel_pm.c               |  16 +-
 drivers/gpu/drm/i915/intel_pm.h               |   4 +-
 50 files changed, 885 insertions(+), 843 deletions(-)

-- 
2.34.1

