Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0E99A9342
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 00:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9439B10E038;
	Mon, 21 Oct 2024 22:28:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FPr7FjPW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AA8710E038;
 Mon, 21 Oct 2024 22:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729549681; x=1761085681;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zSbCAMqOO+URv8UJDEXD1fWz+0XjUWy7L1VmgeNDtew=;
 b=FPr7FjPWv4TRTtw7PKbCpjTsEDmFcbVlqc3F70Jtz47YmWM9sb4ZYslE
 FnXkzOqEQKhrdTTS7YIZMxWTSjsw4779pzxATIYcCdONLDmHChvi3hyWD
 Go9kvkm/4sNCxtiiCB4vANL1dt3x216sFRvEul9Fw6B/iqSqSY4Bq+Ox7
 Cd6/h80lIXg4vjWxJrUSLJGRuqpfRkysl/XvfhuiKGsWET4ERx65B8rNO
 HN4XaxEwRiMwEtIed+9rYxAc9xNtx8AEFomD1W03NaoPovM89iFTCe/tF
 PoMt53eE5L47nxqUcCO/XZDbjpe2L/BRK28t1Nl9C//BuJgpR15nnPbdM w==;
X-CSE-ConnectionGUID: U0R6QaSbRlmTGIgqynHPeg==
X-CSE-MsgGUID: 1XrZ6eU+RNGIZV85xWjiXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28934446"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28934446"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:01 -0700
X-CSE-ConnectionGUID: OzJsTOoKTKSkheF7tKzRKQ==
X-CSE-MsgGUID: w02O/PBWQ36HZ6LkkiwHiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="80009592"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.125.110.79])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:27:59 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 00/13] drm/i915/dmc_wl: Fixes and enablement for Xe3_LPD
Date: Mon, 21 Oct 2024 19:27:19 -0300
Message-ID: <20241021222744.294371-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
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

Using the DMC wakelock is the official recommendation for Xe3_LPD. This
series apply fixes to the current DMC wakelock implementation and
enables it by default for Xe3_LPD. The series has been tested with a PTL
machine.

Gustavo Sousa (13):
  drm/xe: Mimic i915 behavior for non-sleeping MMIO wait
  drm/i915/dmc_wl: Use non-sleeping variant of MMIO wait
  drm/i915/dmc_wl: Check for non-zero refcount in release work
  drm/i915/dmc_wl: Get wakelock when disabling dynamic DC states
  drm/i915/dmc_wl: Use sentinel item for range tables
  drm/i915/dmc_wl: Extract intel_dmc_wl_addr_in_range()
  drm/i915/dmc_wl: Check ranges specific to DC states
  drm/i915/dmc_wl: Allow simpler syntax for single reg in range tables
  drm/i915/dmc_wl: Deal with existing references when disabling
  drm/i915/dmc_wl: Couple enable/disable with dynamic DC states
  drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
  drm/i915/dmc_wl: Sanitize enable_dmc_wl according to hardware support
  drm/i915/xe3lpd: Use DMC wakelock by default

 drivers/gpu/drm/i915/display/intel_de.h       |  11 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_driver.c   |   2 +-
 .../drm/i915/display/intel_display_params.c   |   4 +-
 .../drm/i915/display/intel_display_params.h   |   2 +-
 .../i915/display/intel_display_power_well.c   |  15 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |   4 -
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 282 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   |   2 +
 .../drm/xe/compat-i915-headers/intel_uncore.h |  13 +-
 10 files changed, 269 insertions(+), 67 deletions(-)

-- 
2.47.0

