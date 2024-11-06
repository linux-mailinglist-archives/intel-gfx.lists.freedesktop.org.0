Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD7F9BF8AB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 22:52:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDB5C10E210;
	Wed,  6 Nov 2024 21:52:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FRISMHBb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB23A10E0BC;
 Wed,  6 Nov 2024 21:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730929965; x=1762465965;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gRvXh+VCSco9gRP+Hb3uaQO3tFtJmhhNW+tVw1sEfJE=;
 b=FRISMHBb+4keiHQanf42xC2Fb8RDoyLSw/IvdYZkzc7cF6isUkBDwkAu
 QQy2oqgsKOpjHYXU5At5e8dJqXn4iRSr0E7SO+SONFaW0RTWWzLwn284/
 BC3a2IhJ21b1Thpi2bryYT3EzB+8rzU0Qz9tXj+uS1DRwazUwf0EK+en2
 R/vUeJvwbwI+M3VI2n7GJ9u5VDXB+V9uXrluVkVIJfLXUL4IHwt2VVa1N
 Zrfz8dSNqQQVQCVUSoiMwJEtgbTRIIba2efMMYh47arujk0wpuqfxrPdX
 Gfr7AqhQTHtaf1iBtzo+okNsm1tolWYfLJvSB3fLaXqQ3OMzO9kGgB4PT w==;
X-CSE-ConnectionGUID: Jrn5pvhcT+KrGyMEBtmliA==
X-CSE-MsgGUID: 3LtqgSCxSTa9oQis54RoWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48212126"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48212126"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:45 -0800
X-CSE-ConnectionGUID: i1eIBJJDQvGsnNe4SV4tmw==
X-CSE-MsgGUID: lFXNNyHbQbyhNye/qSMLyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84882452"
Received: from puneetse-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.118])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:43 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 00/17] drm/i915/dmc_wl: Fixes and enablement for Xe3_LPD
Date: Wed,  6 Nov 2024 18:50:26 -0300
Message-ID: <20241106215231.103474-1-gustavo.sousa@intel.com>
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

Gustavo Sousa (17):
  drm/i915/dmc_wl: Use i915_mmio_reg_offset() instead of reg.reg
  drm/xe: Mimic i915 behavior for non-sleeping MMIO wait
  drm/i915/dmc_wl: Use non-sleeping variant of MMIO wait
  drm/i915/dmc_wl: Check for non-zero refcount in release work
  drm/i915/dmc_wl: Get wakelock when disabling dynamic DC states
  drm/i915/dmc_wl: Use sentinel item for range tables
  drm/i915/dmc_wl: Extract intel_dmc_wl_reg_in_range()
  drm/i915/dmc_wl: Rename lnl_wl_range to powered_off_ranges
  drm/i915/dmc_wl: Track registers touched by the DMC
  drm/i915/dmc_wl: Allow simpler syntax for single reg in range tables
  drm/i915/dmc_wl: Deal with existing references when disabling
  drm/i915/dmc_wl: Couple enable/disable with dynamic DC states
  drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
  drm/i915/dmc_wl: Init only after we have runtime device info
  drm/i915/dmc_wl: Use HAS_DMC() in HAS_DMC_WAKELOCK()
  drm/i915/dmc_wl: Sanitize enable_dmc_wl according to hardware support
  drm/i915/xe3lpd: Use DMC wakelock by default

 drivers/gpu/drm/i915/display/intel_de.h       |  10 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_driver.c   |   2 +-
 .../drm/i915/display/intel_display_params.c   |   6 +-
 .../drm/i915/display/intel_display_params.h   |   2 +-
 .../i915/display/intel_display_power_well.c   |  19 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |   4 -
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 304 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  13 +-
 .../drm/xe/compat-i915-headers/intel_uncore.h |  11 +-
 10 files changed, 296 insertions(+), 76 deletions(-)

-- 
2.47.0

