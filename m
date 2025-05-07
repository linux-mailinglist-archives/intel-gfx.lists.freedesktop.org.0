Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2697BAAE45D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 17:18:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D5B410E1C8;
	Wed,  7 May 2025 15:18:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XLOspE7j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1A1110E1C8;
 Wed,  7 May 2025 15:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746631109; x=1778167109;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qISTwRJs/7GpNIge3+tteUqJCDenHBciBqUeelE/H3E=;
 b=XLOspE7jhnjz6luMAC7yedLwjqGXP3QkL8t+Wb39mlRpleLgdeTomzqC
 /yjl59myJI6RhfjY1BmI3rGtgIXNAgk87BfiWlOHfGo8+ohHOFVe0+TPG
 c+J/VOZea/XV8umb4oROk0EYUbnNWXR0xe05l4D2uH63psfeJkdXWA7kN
 mXVn+wOeXsC3UK47+cLO1o+cu/AQ+ha8FgHX9NBjBOpZM3hQAGxvoSrCV
 2/d1Sx9V3kpW75pCZv/cM+l2s1O2Ol5+VCTKySdN3sWPMfcVFGou1OBZ0
 eajTFWHvRV4rAAomYA/x5ijX7HSRqgO7rq4Dw//ltKR8ECu/t2vtnvAt7 g==;
X-CSE-ConnectionGUID: z/hVuem/RQ6Tk4UT3oSvvQ==
X-CSE-MsgGUID: 536hT3KiSqy2jdSE1UC/EQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="48525892"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="48525892"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:18:28 -0700
X-CSE-ConnectionGUID: DAp0uc5ZRGa3Lc53g3dZBw==
X-CSE-MsgGUID: ckRcaRTtR9ayUmK9zpadZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="136996895"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:18:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/6] drm/i915/dram: dram_info refactoring
Date: Wed,  7 May 2025 18:18:16 +0300
Message-Id: <cover.1746631057.git.jani.nikula@intel.com>
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


Jani Nikula (6):
  drm/i915/bw: pass struct dram_info pointer around
  drm/i915/dram: add accessor for struct dram_info and use it
  drm/i915/wm: DG2 doesn't have dram info to look up
    wm_lv_0_adjust_needed
  drm/i915/dram: pass struct dram_info pointer around
  drm/i915/dram: add return value and handling to intel_dram_detect()
  drm/i915/dram: allocate struct dram_info dynamically

 drivers/gpu/drm/i915/display/intel_bw.c       | 49 ++++++-------
 .../drm/i915/display/intel_display_power.c    |  9 ++-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 15 ++--
 drivers/gpu/drm/i915/i915_driver.c            |  4 +-
 drivers/gpu/drm/i915/i915_drv.h               | 23 +-----
 drivers/gpu/drm/i915/soc/intel_dram.c         | 71 ++++++++++++-------
 drivers/gpu/drm/i915/soc/intel_dram.h         | 26 ++++++-
 drivers/gpu/drm/xe/display/xe_display.c       |  4 +-
 drivers/gpu/drm/xe/xe_device_types.h          | 21 +-----
 9 files changed, 118 insertions(+), 104 deletions(-)

-- 
2.39.5

