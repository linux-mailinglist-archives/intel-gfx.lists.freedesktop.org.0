Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A666B9B3B0C
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 21:07:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ED6510E074;
	Mon, 28 Oct 2024 20:07:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VTTrfAmh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D8AC10E219;
 Mon, 28 Oct 2024 20:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730146057; x=1761682057;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MdOmBd3uCo5GV4hEM3tutNNtg+zPkre0XlF22iWDzac=;
 b=VTTrfAmh2KV3zX69Q+HWJYNCNS+t4RojvgFu2P1nZTLrDkKha73hS6gS
 tEfnWo4IohYN/FvZ8GcUovTwSCJSwh0m5bn0Gsa2AbkxSGO4ZqNNq9XOK
 n3gMc7MmNC0MVKff2ajxWVNXsBAoGDs5UkIsVLM6MM7ZakAEn2BObyYUg
 bWjo2E2awLwiRBLjV3K4o/6F46vTmZt1KAZvhswUryIS1umHkhyNUknks
 ap5XEBhi0qVAx9LcK8w+/8P8eXEAfDffR7vqyCiCgB/mhUFY0RHPDsyvb
 9HWDbh0qFpn5ilt5HAYSTZM1KTVXOWbSakSzCrpqH7l9RzytuUL7B4zt6 g==;
X-CSE-ConnectionGUID: /5Pd+i2AQKiaaei/iUqzPQ==
X-CSE-MsgGUID: mPWDMv8LSPyZsCJzrvLbQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="33681128"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="33681128"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:07:36 -0700
X-CSE-ConnectionGUID: sXkq7njdTOyAuCs5NaLp+A==
X-CSE-MsgGUID: iiMaupSUQU+3jaVEVBICxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="82055029"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:07:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [CI v2 v2 00/12] drm/i915/display: bunch of struct intel_display
 conversions
Date: Mon, 28 Oct 2024 22:07:18 +0200
Message-Id: <cover.1730146000.git.jani.nikula@intel.com>
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

Just resending [1] because I never got the CI logs for it.

[1] https://lore.kernel.org/r/cover.1729776384.git.jani.nikula@intel.com

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

