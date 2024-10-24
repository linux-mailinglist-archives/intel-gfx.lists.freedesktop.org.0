Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C63C9AE639
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 15:27:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AF7E10E93B;
	Thu, 24 Oct 2024 13:27:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ii0Nz1fJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46E9910E93A;
 Thu, 24 Oct 2024 13:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729776468; x=1761312468;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ROwvJkMnFv/X9TXCMc4KUS4evwZfYgVbNyiiqPvQu7M=;
 b=Ii0Nz1fJQkfQA6UyxoWtRlz6cMYcz16n0dRDIG7y89LC/lN190j1yvjB
 XGLItX9dNLCUYtdbNA2Zl2swfAZjHJNzEBHAJHgMjOMHcQyU6gqlc8ks7
 36m51Togp1YBsaeYMRX+yK1hm6mVeDulsY3k4OJe6DBwE9x7lewA0pk1m
 r6s8nboXUUHM21i4RxhvIx2gOBojHB4v6+SggEYz5zT+vAgORg2ka8ztg
 TBPuDQQjsXZQ1FWybp3CHl+/joqyr+AMrUNGtwFox3ll/w016MwGVxT0z
 DER7U6W9sV7YOtKj8iJYRUM1B7AtXfcaeaLG6OmCh3JyADaHK3OL7fp+f Q==;
X-CSE-ConnectionGUID: Zg6EE8dJRJKUFshZPru+XA==
X-CSE-MsgGUID: 0F2QPxxaQUeGQet8hVU1YA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51947952"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51947952"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 06:27:48 -0700
X-CSE-ConnectionGUID: dlK0W9okQ02ImbXAibNxVw==
X-CSE-MsgGUID: BwbLbLKxR8SmqZdGEKO7uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80511488"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 06:27:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v2 00/12] drm/i915/display: bunch of struct intel_display
 conversions
Date: Thu, 24 Oct 2024 16:27:30 +0300
Message-Id: <cover.1729776384.git.jani.nikula@intel.com>
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

Rebase and split patch 2 from, otherwise the same.

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1729612605.git.jani.nikula@intel.com

Jani Nikula (12):
  drm/i915/gmbus: convert to struct intel_display
  drm/i915/cx0: remove unnecessary includes
  drm/i915/cx0: convert to struct intel_display
  drm/i915/dpio: convert to struct intel_display
  drm/i915/hdcp: further conversion to struct intel_display
  drm/i915/dp/hdcp: convert to struct intel_display
  drm/i915/crt: convert to struct intel_display
  drm/i915/display: convert vlv_wait_port_ready() to struct
    intel_display
  drm/i915/power: convert assert_chv_phy_status() to struct
    intel_display
  drm/i915/ips: convert to struct intel_display
  drm/i915/dsi: convert to struct intel_display
  drm/i915/de: remove unnecessary generic wrappers

 drivers/gpu/drm/i915/display/g4x_dp.c         |   3 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   9 +-
 drivers/gpu/drm/i915/display/hsw_ips.c        |  47 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        | 444 +++++++++---------
 drivers/gpu/drm/i915/display/icl_dsi.h        |   4 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |   6 +-
 drivers/gpu/drm/i915/display/intel_crt.c      | 213 +++++----
 drivers/gpu/drm/i915/display/intel_crt.h      |  10 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 334 +++++++------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_de.h       |  46 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  30 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../drm/i915/display/intel_display_driver.c   |  11 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  11 +-
 .../i915/display/intel_display_power_well.c   | 114 +++--
 drivers/gpu/drm/i915/display/intel_dp.c       |   3 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  93 ++--
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 158 +++----
 drivers/gpu/drm/i915/display/intel_dpio_phy.h |  22 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   6 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 290 ++++++------
 drivers/gpu/drm/i915/display/intel_gmbus.h    |  15 +-
 .../gpu/drm/i915/display/intel_gmbus_regs.h   |  16 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  30 +-
 drivers/gpu/drm/i915/display/intel_hdcp.h     |  10 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  11 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |   6 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   3 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   9 +-
 drivers/gpu/drm/i915/i915_suspend.c           |   2 +-
 drivers/gpu/drm/xe/display/xe_display.c       |   4 +-
 36 files changed, 1024 insertions(+), 963 deletions(-)

-- 
2.39.5

