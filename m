Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E68B1B0D5
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 11:18:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2294110E615;
	Tue,  5 Aug 2025 09:18:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fcLIwxa+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77CDA10E256;
 Tue,  5 Aug 2025 09:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754385512; x=1785921512;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ExagmaDVYLt2sh4sNJG+ess4LTK6pnoqIXAf/5lzPRw=;
 b=fcLIwxa++AypFnjCToaH3XvCmyNmv2OMSp1xPpqaEPQe72d7+kYzD/0A
 17ukzOnMX1RSSyoi6o7z9h9M8/3QJ76lFCiQIsuy8Dshl9gHhoFvGsccH
 HXioQcZZMlNCt66shW5bSsYTw/Qv50bLrxh9k8o7X5C8zu+UZTUO80kvx
 KuTHhf0/R1Ic79zh+V+ITi6PzmFRQplo80b+SdRmb5W4tpkOyH5FkuSm1
 7MNCxN24jt3bOTlk7V7KruEfPHyuU835tkbySgbk7MYymbHZmQskwjrui
 hxhafXZ11wyW6Hoa2vHWTnPxXJ1R8fGnKAv+TOUZnQsaEPw1Ipi0FV2qM g==;
X-CSE-ConnectionGUID: KJF99iRVTumR++9NQ8arOA==
X-CSE-MsgGUID: MLnlqNtRQNmpY1ffS8MZBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60504302"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60504302"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:18:32 -0700
X-CSE-ConnectionGUID: K03PwaAVRGCPRJX4MoSIiw==
X-CSE-MsgGUID: T2Tqlq1oTdOJGDZaTmQsgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="195398033"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:18:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/12] drm/i915: vlv clock cleanups
Date: Tue,  5 Aug 2025 12:18:13 +0300
Message-Id: <cover.1754385408.git.jani.nikula@intel.com>
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

The primary goal is to remove hpll_freq and czclk_freq members from
struct drm_i915_private and struct xe_device, but take it a bit further.

BR,
Jani.

Jani Nikula (12):
  drm/i915: add vlv_clock_get_gpll()
  drm/i915: add vlv_clock_get_czclk()
  drm/i915: add vlv_clock_get_hrawclk()
  drm/i915: make vlv_get_cck_clock_hpll() static
  drm/i915: add vlv_clock_get_cdclk()
  drm/i915: make vlv_get_cck_clock() static
  drm/i915: rename vlv_get_hpll_vco() to vlv_clock_get_hpll_vco()
  drm/i915: cache the results in vlv_clock_get_hpll_vco() and use it
    more
  drm/i915: remove intel_update_czclk() as unnecessary
  drm/i915: log HPLL frequency similar to CZCLK
  drm/i915: move hpll and czclk caching under display
  drm/i915: split out vlv_clock.[ch]

 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 29 ++----
 drivers/gpu/drm/i915/display/intel_display.c  | 61 -------------
 drivers/gpu/drm/i915/display/intel_display.h  |  6 --
 .../gpu/drm/i915/display/intel_display_core.h |  5 ++
 .../drm/i915/display/intel_display_driver.c   |  1 -
 drivers/gpu/drm/i915/display/vlv_clock.c      | 89 +++++++++++++++++++
 drivers/gpu/drm/i915/display/vlv_clock.h      | 38 ++++++++
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  3 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           | 10 +--
 drivers/gpu/drm/i915/i915_drv.h               |  3 -
 drivers/gpu/drm/xe/xe_device_types.h          |  2 -
 12 files changed, 147 insertions(+), 101 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.c
 create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.h

-- 
2.39.5

