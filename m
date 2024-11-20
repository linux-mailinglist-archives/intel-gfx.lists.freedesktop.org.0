Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FF69D332D
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 06:37:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7984410E151;
	Wed, 20 Nov 2024 05:37:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EqzhrA+L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEA8310E151;
 Wed, 20 Nov 2024 05:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732081044; x=1763617044;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sBx9qQrRcm8x7PAu3asUWqxPxESwatzNtNXHXkzknYU=;
 b=EqzhrA+LwrCaGa882t5GhSqjxf+DzwzIWXI2PG42beXj+PhpKOiiMbLc
 70uX+gDVmR5BfAAg3QvlP0TeN5Bu17AQNxEA70i1G1N8kx7VoZzt+sB/P
 9OjVRqaItneSrcNt8tVcVTt9MubcJMbtgQLaC1SiqhIcZWqHBzeJ67Hrm
 +bm8HsMFow7vYRklh+f10TByHP33MsKmUSi7rbTi8bg9fX+jWXemnR9MD
 EBM9RM9/CfM/vtod3qbn9Q7ZVh5J3n2IUvTTu2Asc0jlTrgbyKpmCWx4f
 daQqewmMOWJazbay5hefeR4t+vEINShKPi5oRncO7/6nJatEsqBuThptM g==;
X-CSE-ConnectionGUID: W5V6DKitTIqk9NqyP9Vwfg==
X-CSE-MsgGUID: n+ZTZxm9SqubG9iOuCVj7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32179415"
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="32179415"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 21:37:23 -0800
X-CSE-ConnectionGUID: LvhdW2gYT4G9Vg4/8pEB5A==
X-CSE-MsgGUID: RsliOaYZTEK7V7Qw+THTeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="120748894"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa001.fm.intel.com with ESMTP; 19 Nov 2024 21:37:22 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/6]  Consider joiner calculation for panel fitting
Date: Wed, 20 Nov 2024 11:08:32 +0530
Message-Id: <20241120053838.3794419-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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

 There is an issue when pch_pfit and joiner gets enabled together.
Moves the panel_fitting to later stage after pipe_src width is adjusted for
joiner. Replace adjusted_mode with pipe_mode in pch_panel_fitting function
so that correct value of pipe_src is used once joiner calculation are done.
Also decouple the current intel_panel_fitting into pch and gmch panel
fitting function.

Nemesa Garg (6):
  drm/i915/display: Disable joiner and pfit
  drm/i915/display: Add gmch_panel_fitting in all encoders
  drm/i915/display: Replace adjusted mode with pipe mode
  drm/i915/display: Call panel_fitting from pipe_config
  drm/i915/dispaly: Allow joiner and pfit
  drm/i915/display: Initialize pipe_src in compute stage

 drivers/gpu/drm/i915/display/icl_dsi.c       |  4 --
 drivers/gpu/drm/i915/display/intel_display.c | 46 ++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.c      |  6 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c    |  6 --
 drivers/gpu/drm/i915/display/intel_lvds.c    | 10 +--
 drivers/gpu/drm/i915/display/intel_pfit.c    | 74 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_pfit.h    |  6 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c       |  9 ++-
 8 files changed, 109 insertions(+), 52 deletions(-)

-- 
2.25.1

