Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8229A8D1E9D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 16:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 503B710E406;
	Tue, 28 May 2024 14:25:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KSdmfpLz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2BBA10E374;
 Tue, 28 May 2024 14:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716906309; x=1748442309;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JNwZbezZXG+KIKWCgnQPy6B4kCX9SKyLdfSUllNlTvM=;
 b=KSdmfpLzOSkgU/AUhr11bh7OzIR9zEuNqHokUfxm9DYnDrj47Ev5FrYZ
 Tq1z35YRTctxL2vZN+Mt37En0GJh4ADLKnBmppPwSZrKFg8ygUkkL40d4
 pB8jGSbw4P3tuA8cYeYOcZGOs8Ak/epAhpK4uStgy2XrGJ67OUIS4d/zT
 7t5h3Ua3XfgH2xaycVSBJaOG/AmVuaUGss8Ire93jTzLaD9vyJPw+eoiU
 0r0E3sMP+ogqFwPMHAja2p954RER9ERdubihKtGEK8NUBLPPTjhY3oe26
 Q5i5N4Zp8pPCU9qlk/Aq2aMXFt0v1hl46gaptuRLhqykd6HkA/EM7Qsa7 A==;
X-CSE-ConnectionGUID: xU1eDV6OReq+7+oEmXohrQ==
X-CSE-MsgGUID: BiT74x2XR5SohAOfV9IdWQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24380970"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="24380970"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:08 -0700
X-CSE-ConnectionGUID: Yc61mLMZSyyQH2qdD+lixQ==
X-CSE-MsgGUID: 6L20qdVpSv+70u2ZkvdbPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39531002"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 00/12] drm/i915: mem/fsb/rawclk freq cleanups
Date: Tue, 28 May 2024 17:24:49 +0300
Message-Id: <cover.1716906179.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

This is a rewitten version of [1]. I think it's good progress overall
though there are still minor issues here and there.

BR,
Jani.


[1] https://lore.kernel.org/all/20240408172315.3418692-1-jani.nikula@intel.com/

Jani Nikula (12):
  drm/i915/wm: rename intel_get_cxsr_latency -> pnv_get_cxsr_latency
  drm/i915/wm: clarify logging on not finding CxSR latency config
  drm/i915/dram: separate fsb freq detection from mem freq
  drm/i915/dram: split out pnv DDR3 detection
  drm/i915/dram: rearrange mem freq init
  drm/i915: convert fsb_freq and mem_freq to kHz
  drm/i915: extend the fsb_freq initialization to more platforms
  drm/i915: use i9xx_fsb_freq() for GT clock frequency
  drm/i915/cdclk: use i9xx_fsb_freq() for rawclk_freq initialization
  drm/i915: move rawclk init to intel_cdclk_init()
  drm/i915: move rawclk from runtime to display runtime info
  drm/xe/display: drop unused rawclk_freq and RUNTIME_INFO()

 drivers/gpu/drm/i915/display/i9xx_wm.c        |  27 ++-
 .../gpu/drm/i915/display/intel_backlight.c    |  10 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  69 ++----
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   1 -
 .../drm/i915/display/intel_display_device.c   |   2 +
 .../drm/i915/display/intel_display_device.h   |   2 +
 .../i915/display/intel_display_power_well.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   2 +-
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |   3 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   4 +-
 drivers/gpu/drm/i915/intel_device_info.c      |   5 -
 drivers/gpu/drm/i915/intel_device_info.h      |   2 -
 drivers/gpu/drm/i915/soc/intel_dram.c         | 203 ++++++++++--------
 drivers/gpu/drm/i915/soc/intel_dram.h         |   1 +
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |   1 -
 drivers/gpu/drm/xe/xe_device_types.h          |   6 -
 17 files changed, 164 insertions(+), 182 deletions(-)

-- 
2.39.2

