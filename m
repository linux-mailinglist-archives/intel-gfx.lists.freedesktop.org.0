Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6529C1D7F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:03:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A830B10E984;
	Fri,  8 Nov 2024 13:03:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gB5yhNHF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C10010E97C;
 Fri,  8 Nov 2024 13:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731070983; x=1762606983;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FxvNTMT+Q9Qw9Bhg4/VTAoriEYIOerqahKyQyOgo6w4=;
 b=gB5yhNHFKQxGEkWp4l7PVaVvFHE3vRXeUSuZuUYm3KrduWyqefj3I9NF
 fFEXDE/lGLvuV0BgAALf/t6ftlt110Xd38WVZ+h4wgkR6qi1xhtye2WRR
 VGSLnKuAZkw6k1xZGuPAZ5P7BIo5DYV1lYEuAU/BTMvSHfurI4fnJ6GQD
 qIcmI/zn2ToWI0OUYeUcUMh1+e8g2S15eZmdt+jGnh/s9S6qreLddpQUH
 gKO9OfpNaVJ1QwMhNvcFHgQ+y06eLGA7ppdDSHSBJZq6z27WPcd28AnKm
 Mga42t3RxZ8WOacgvFR7KgZNFuXrjmha9Kye5Z7tfAAbhwcjOizqFFkiK A==;
X-CSE-ConnectionGUID: a9JC86cKQq63RcIITW1kAg==
X-CSE-MsgGUID: sAHZCr8fSKy/AGzmrU+kAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41513121"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41513121"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:03:02 -0800
X-CSE-ConnectionGUID: 7wEMTAN+RGq4EbjjilUaGg==
X-CSE-MsgGUID: c6cZJP3YRaW6ij9EWSxqSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85692462"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.232])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:02:41 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 00/15] drm/i915/dmc_wl: Fixes and enablement for Xe3_LPD
Date: Fri,  8 Nov 2024 09:57:05 -0300
Message-ID: <20241108130218.24125-1-gustavo.sousa@intel.com>
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

This is the v4 of the series. The only difference from v3 is that I decided to
drop patches related to the usage of HAS_DMC() in HAS_DMC_WAKELOCK(), as they
might need more polishing and will be send as a separate series. I believe we
don't need to be blocked on those to get this series landed.

Gustavo Sousa (15):
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
  drm/i915/dmc_wl: Sanitize enable_dmc_wl according to hardware support
  drm/i915/xe3lpd: Use DMC wakelock by default

 drivers/gpu/drm/i915/display/intel_de.h       |  10 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_params.c   |   6 +-
 .../drm/i915/display/intel_display_params.h   |   2 +-
 .../i915/display/intel_display_power_well.c   |  19 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |   4 -
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 304 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  13 +-
 .../drm/xe/compat-i915-headers/intel_uncore.h |  11 +-
 9 files changed, 295 insertions(+), 75 deletions(-)

-- 
2.47.0

