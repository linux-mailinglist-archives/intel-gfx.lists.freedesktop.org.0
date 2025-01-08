Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C45A0585E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 11:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291DA10E1B4;
	Wed,  8 Jan 2025 10:41:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iJ5gWATf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3810E10E1A6
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 10:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736332895; x=1767868895;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J6LUBhm5p3V0B+q6KAs8fLumOE1wRzZuH1/vkcjhYNo=;
 b=iJ5gWATfAqLjUZjf76BbBZHZ54sU2ld/Z7oNimyqW+FayQ+uplVDI1Y4
 Ds0CjiNy6Ya+vaGyU1mWyGutJRalo73t3qLKyjmySylwX72rzNr136OaA
 G/SiNly7z6b2feKjl5XZrxhL1klgjUm0H8iYTbknIDpRCPZwyidcZHj9N
 JTh/mLuFB1UHncQsC+qEuYg/WjgveR1gBovEAbNwdDQ8aapldWz5gHgf5
 aFKClJbLJsxJaIUuJEJjJtKSdzfy8NweZwNWDQ63wxteCnrhTKJoEyqoz
 la+fHu6paheJIZ1x4J/N6tzhcQmr6Tmt985ehtTFSNeuIeoF4KFqJIM1R Q==;
X-CSE-ConnectionGUID: tZUPNvD6Ro2emZk7QAlFug==
X-CSE-MsgGUID: rQgdnT7dQXW9xtUmdFISSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="36434226"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="36434226"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 02:41:27 -0800
X-CSE-ConnectionGUID: Ya0m2aC7Q6afNQm75Ulw3A==
X-CSE-MsgGUID: 0cSLBWtWQKSnbmtYWyzgLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="140395532"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 02:41:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/6] drm/i915: display reset cleanups
Date: Wed,  8 Jan 2025 12:41:15 +0200
Message-Id: <cover.1736332802.git.jani.nikula@intel.com>
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

Try to make GPU and display reset slightly more better separated,
convert to intel_display, stop INTEL_INFO() usage from display.

Jani Nikula (6):
  drm/i915/display: convert display reset to struct intel_display *
  drm/i915: move pending_fb_pin to struct intel_display
  drm/i915: add intel_gt_gpu_reset_clobbers_display() helper
  drm/i915/display: add intel_display_gpu_reset_clobbers_display()
    helper
  drm/i915: move gpu_reset_clobbers_display flag to display info
  drm/i915/display: convert intel_ddi_buf_trans.c to struct
    intel_display

 .../drm/i915/display/intel_ddi_buf_trans.c    | 58 +++++++++++--------
 .../gpu/drm/i915/display/intel_display_core.h |  2 +
 .../drm/i915/display/intel_display_device.c   |  5 ++
 .../drm/i915/display/intel_display_device.h   |  1 +
 .../drm/i915/display/intel_display_reset.c    | 58 +++++++++++--------
 .../drm/i915/display/intel_display_reset.h    |  9 ++-
 drivers/gpu/drm/i915/display/intel_dpt.c      |  5 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 10 ++--
 drivers/gpu/drm/i915/display/intel_overlay.c  |  5 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         | 23 ++++++--
 drivers/gpu/drm/i915/gt/intel_reset.h         |  2 +
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 drivers/gpu/drm/i915/i915_gpu_error.h         |  2 -
 drivers/gpu/drm/i915/i915_pci.c               |  6 --
 drivers/gpu/drm/i915/intel_device_info.h      |  1 -
 17 files changed, 113 insertions(+), 80 deletions(-)

-- 
2.39.5

