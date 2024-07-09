Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A122A92AEAD
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 05:26:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3971410E0AE;
	Tue,  9 Jul 2024 03:26:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BK3Vt2W+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B110210E0AE
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2024 03:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720495560; x=1752031560;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m2V8M068cL9OcLkOfRM9ldfUlNkkkUgI4HJCJAQxlwY=;
 b=BK3Vt2W+JuwQty5X5HTE+wx9qG32LgOJBF5btqUSgY53WwRCyrDGw1fT
 7xCXx4Vq+lluhPNR9QO2zmQuL5N+7AbkDkm9dn9KauVWveuKEqJrzZSAK
 x5Q552N+Mnnk53uVs/RuKV2CNp5Iu2OTyKMkFjFxGPGO4G66y8HllpNNi
 hqYNeeW56b18d48piP334HKr39hyvdGC0WxdOrJbPTzQf1jmxYbHuA6rr
 G6g9uJePIYIMnN5NIyLaRb/YNkLYrvp9vLYDjbdhp1PmBtOJMoGa931HD
 o7ylIlbXBFKhhiEnMTjU4krhJySkhKPg1qgIMiLr0r0Aayfb6+lfQ+V+f A==;
X-CSE-ConnectionGUID: 30YNpOzZTl6tzB5ZJOIGeA==
X-CSE-MsgGUID: qXnjXka5RlyT8D8pWO98tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="21536448"
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="21536448"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:25:59 -0700
X-CSE-ConnectionGUID: FihuS7zmREiL9JiDB9+jNw==
X-CSE-MsgGUID: LP7tVeQ8Q0+U+r7WwRhIPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="48374158"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:25:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 00/10] Use VRR timing generator for fixed refresh rate modes
Date: Tue,  9 Jul 2024 08:56:41 +0530
Message-Id: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
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

Even though the VRR timing generator (TG) is primarily used for
variable refresh rates, it can be used for fixed refresh rates as
well. For a fixed refresh rate the Flip Line and Vmax must be equal
(TRANS_VRR_FLIPLINE = TRANS_VRR_VMAX). Beyond that, there are some
dependencies between the VRR timings and the legacy timing generator
registgers.

This series is an attempt to use VRR TG for fixed refresh rate.
For platforms XELPD+, always go with VRR timing generator for both fixed and
variable refresh rate cases.

Rev2:
-Added support from MTL+ and for HDMI too.
-Changed VRR VSYNC programming which is required for HDMI.
-Modified vrr compute config for bigjoiner case. (Still to be tested).

Rev3:
-Start support from XELPD+ as MTL needs a WA to have PSR +VRR (fixed
refresh rate)
-Add changes to enable PSR with VRR with fixed refresh rate.

Ankit Nautiyal (10):
  drm/i915/dp: fix the Adaptive sync Operation mode for SDP
  drm/i915/display: Add member fixed_rr to denote Fixed refresh rate
    with VRRTG
  drm/i915/dp: Set FAVT mode in DP SDP with fixed refresh rate
  drm/i915/vrr: Compute vrr vsync if platforms support it
  drm/i915/hdmi: Use VRR Timing generator for HDMI
  drm/i915/display: Disable PSR before disabling VRR
  drm/i915/psr: Allow PSR for fixed refrsh rate with VRR TG
  drm/i915/vrr: Avoid sending PUSH when VRR TG is used with Fixed
    refresh rate
  drm/i915/vrr: Handle joiner with vrr
  drm/i915/vrr: Always use VRR timing generator for XELPD+

 drivers/gpu/drm/i915/display/intel_display.c  |  8 +-
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  3 +
 drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 93 ++++++++++++-------
 6 files changed, 73 insertions(+), 42 deletions(-)

-- 
2.40.1

