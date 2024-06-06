Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EB98FE500
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:16:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7436610E8DE;
	Thu,  6 Jun 2024 11:16:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fKnvrQsn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F6A710E8DE
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672570; x=1749208570;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F4pqpG121O0EzyleSuLwsBb80ig1ncttvrAEj9a7ifg=;
 b=fKnvrQsnK+0Bf0ELMArqyUEk6+7GVx0a1sNKuvuoC8ALhuMsTCFvFBXU
 Kg7LBhNmNUaGRnR50/PEThfZ1f7wFZqUg9m3/H5XOAyiKUyYJSdXHPaC/
 qz90KKJngYkfOGnLoH/pWY5zfcESt2WxGFDEpKPOts4vZxVVuOEiYSaGk
 +rJV0J8wO8+pYaoumJMcELYWRf1jhaJwvMmhe3ua3fv8ZDQBTaN9TJYb8
 BMepf27fEVJdXeqFh8OIGiTgYLYzqCCLeS50pZ0X7giG/ZFa32E4Xv0mE
 9M12GrVqd5bUeD/YABbyA17HArS1CBHxM3nGLdIlKJl+PSTDe3rMo1ay3 A==;
X-CSE-ConnectionGUID: Mbc9/C12QNiK68PG/HhJTw==
X-CSE-MsgGUID: NKDYUM4aT0ue+38pG3b9ZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="17265501"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="17265501"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:10 -0700
X-CSE-ConnectionGUID: YHSfvH8oSGuszmx81Hq3cg==
X-CSE-MsgGUID: qHxna20fRNurIfeHTPP86g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38046768"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 00/14] drm/i915: mem/fsb/rawclk freq cleanups
Date: Thu,  6 Jun 2024 14:15:52 +0300
Message-Id: <cover.1717672515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

v2 of https://lore.kernel.org/r/cover.1716906179.git.jani.nikula@intel.com

Jani Nikula (14):
  drm/i915/wm: rename intel_get_cxsr_latency -> pnv_get_cxsr_latency
  drm/i915/wm: clarify logging on not finding CxSR latency config
  drm/i915/dram: separate fsb freq detection from mem freq
  drm/i915/dram: split out pnv DDR3 detection
  drm/i915/dram: rearrange mem freq init
  drm/i915/gt: remove mem freq from gt debugfs
  drm/i915: convert fsb_freq and mem_freq to kHz
  drm/i915: extend the fsb_freq initialization to more platforms
  drm/i915: use i9xx_fsb_freq() for GT clock frequency
  drm/i915/cdclk: use i9xx_fsb_freq() for rawclk_freq initialization
  drm/i915: move rawclk init to intel_cdclk_init()
  drm/i915: move rawclk from runtime to display runtime info
  drm/xe/display: drop unused rawclk_freq and RUNTIME_INFO()
  drm/i915: move comments about FSB straps to proper place

 drivers/gpu/drm/i915/display/i9xx_wm.c        |  27 +--
 .../gpu/drm/i915/display/intel_backlight.c    |  10 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  80 ++-----
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   1 -
 .../drm/i915/display/intel_display_device.c   |   2 +
 .../drm/i915/display/intel_display_device.h   |   2 +
 .../i915/display/intel_display_power_well.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   2 +-
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |   3 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   1 -
 drivers/gpu/drm/i915/gt/intel_rps.c           |  11 +-
 drivers/gpu/drm/i915/intel_device_info.c      |   5 -
 drivers/gpu/drm/i915/intel_device_info.h      |   2 -
 drivers/gpu/drm/i915/soc/intel_dram.c         | 212 +++++++++++-------
 drivers/gpu/drm/i915/soc/intel_dram.h         |   1 +
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |   1 -
 drivers/gpu/drm/xe/xe_device_types.h          |   6 -
 18 files changed, 176 insertions(+), 198 deletions(-)

-- 
2.39.2

