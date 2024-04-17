Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6C28A839D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:02:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C846310F5CF;
	Wed, 17 Apr 2024 13:02:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bXBEAR5k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1CDF10F608;
 Wed, 17 Apr 2024 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713358974; x=1744894974;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LN1pumMzthrDk0NXF9ydZIRgp0Np1CWwsXwMveL4K0M=;
 b=bXBEAR5k/ExXoaivJZ3b2b/d95NRpUKfGuN4MXx330YA12u8hqhbMqpb
 g3aMrwyx9zK/cntUGffLroTbNyZkhZOYM0OetVWpQxOCbnXmLpraivhpp
 8Pv4rWaJVnuqrdPW2Ag42FM/it8vLQlbCYmk2McW7HW/v/Pj+IFmzuVXM
 UmI/lVys5Lt5pnf8euTULPV1TUzjqPDvREHHzBSTZqCsSJRaCP2YnOG4G
 TNP/3Fj5ltIG1YGNRfzcoDQDu3Pt6/jLZoC5v7jRMegxtuZNXA25nhyHt
 CUZQMuCPTicQ0L1Boukq3nlml3d8ygbZYkcYr+0fpX6NOqs5hMArYzhR/ A==;
X-CSE-ConnectionGUID: RzVK90tPTteJJZ2Od2w0Aw==
X-CSE-MsgGUID: BVYCXOvvQMSVWCNRzrpcNQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8976780"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8976780"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:02:53 -0700
X-CSE-ConnectionGUID: mzocNy/yTUy3E4RTC6J01w==
X-CSE-MsgGUID: LKWmpTu4QRevgVsSMVQUQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="27199354"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:02:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, Luca Coelho <luciano.coelho@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v4 0/9] drm/i915: better high level abstraction for display
Date: Wed, 17 Apr 2024 16:02:38 +0300
Message-Id: <cover.1713358679.git.jani.nikula@intel.com>
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

v4 of [1].

Had to do some rebasing and add some more patches to accommodate dmc
wakelock changes and their impact on intel_de.h. As a byproduct, convert
intel_dmc_wl.[ch] to struct intel_display as well.

With the __to_intel_display() shoved into a separate file, no changes
are needed in xe side this time, could drop a patch, and the macro isn't
duplicated.

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1712665176.git.jani.nikula@intel.com

Jani Nikula (9):
  drm/i915/display: add intel_display -> drm_device backpointer
  drm/i915/display: add generic to_intel_display() macro
  drm/i915: add generic __to_intel_display()
  drm/i915/display: accept either i915 or display for feature tests
  drm/i915/quirks: convert struct drm_i915_private to struct
    intel_display
  drm/i915/display: rename __intel_wait_for_register_nowl() to indicate
    intel_de_
  drm/i915/dmc: convert dmc wakelock interface to struct intel_display
  drm/i915/de: allow intel_display and drm_i915_private for de functions
  drm/i915/dmc: use struct intel_display more

 .../gpu/drm/i915/display/intel_backlight.c    |  40 ++---
 drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_de.h       | 157 +++++++++++-------
 .../i915/display/intel_display_conversion.h   |  22 +++
 .../gpu/drm/i915/display/intel_display_core.h |   3 +
 .../drm/i915/display/intel_display_device.c   |   3 +
 .../drm/i915/display/intel_display_device.h   |   5 +-
 .../drm/i915/display/intel_display_driver.c   |   5 +-
 .../i915/display/intel_display_power_well.c   |   6 +-
 .../drm/i915/display/intel_display_types.h    |  37 +++++
 drivers/gpu/drm/i915/display/intel_dmc.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |  72 ++++----
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  12 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |  10 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_quirks.c   |  56 +++----
 drivers/gpu/drm/i915/display/intel_quirks.h   |   6 +-
 17 files changed, 275 insertions(+), 175 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_conversion.h

-- 
2.39.2

