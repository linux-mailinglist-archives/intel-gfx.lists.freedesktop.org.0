Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E85B947DAC
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 17:07:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D3C110E223;
	Mon,  5 Aug 2024 15:07:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LIoWYalr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29E7D10E21B
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 15:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722870466; x=1754406466;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KVXjxVVU/Ea9aoRNmFml6LM8dRsrg3clUjNZBYTlndU=;
 b=LIoWYalrFGDLqwNpPWpbhIUnHnrF5p4Cl6tpabxW7eVqkqo3gv7mZ72w
 0nqenzo7KlVYyZv3vgcis03pTbAZt0i9HHbi014H3ypl3T3y9qSOqMu/Y
 +Qi+ytbRf0awPiXHdzsUSJwWYq/cwzoNgLi3EaZwWEXGCLnf4J17nBbi3
 0Fy49ABMn9z6+1O5DbixqS59uKFbbLHCmcs3ok7G8zVINjKJb6IOxNBws
 BJ8Hs9Pl0GTgDSwASQoGm2HxcCFUFhfwOA/dWP4b3NidtdYHjBS+4p40v
 h5q065NCICCr3Jri7HuL+2Vc00gQGhpEVfBAjEsnMECFeHN60HCQZ+VZI w==;
X-CSE-ConnectionGUID: DLw6UHXDTKuIQTek/bMngQ==
X-CSE-MsgGUID: s+5szCDRRQSnHD/cCVy62Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="20694403"
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="20694403"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 08:07:46 -0700
X-CSE-ConnectionGUID: 9/TN7lExQKC8v/sZEihUHg==
X-CSE-MsgGUID: 1kHsYTtPQvSzIAAIMzOy7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="60558852"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 08:07:44 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [CI 0/7] drm/i915: Dump DSC HW state
Date: Mon,  5 Aug 2024 18:07:49 +0300
Message-ID: <20240805150802.3568970-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This patchset adds the i915 parts in [1] to debug print the DSC HW state
to dmesg and debugfs.

[1] https://lore.kernel.org/all/20240628164451.1177612-1-imre.deak@intel.com

Cc: Jani Nikula <jani.nikula@intel.com>

Imre Deak (7):
  drm/i915: Replace to_bpp_x16() with fxp_q4_from_int()
  drm/i915: Replace to_bpp_int() with fxp_q4_to_int()
  drm/i915: Replace to_bpp_int_roundup() with fxp_q4_to_int_roundup()
  drm/i915: Replace to_bpp_frac() with fxp_q4_to_frac()
  drm/i915: Replace BPP_X16_FMT()/ARGS() with FXP_Q4_FMT()/ARGS()
  drm/i915: Dump DSC state to dmesg and debugfs/i915_display_info
  drm/i915: Remove DSC register dump

 drivers/gpu/drm/i915/display/icl_dsi.c        |  9 ++--
 drivers/gpu/drm/i915/display/intel_audio.c    |  5 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |  5 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  5 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |  3 ++
 drivers/gpu/drm/i915/display/intel_display.c  |  7 +--
 .../drm/i915/display/intel_display_debugfs.c  |  4 ++
 .../drm/i915/display/intel_display_types.h    | 23 ---------
 drivers/gpu/drm/i915/display/intel_dp.c       | 51 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 26 +++++-----
 drivers/gpu/drm/i915/display/intel_fdi.c      |  6 ++-
 drivers/gpu/drm/i915/display/intel_link_bw.c  |  4 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 51 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_vdsc.h     |  4 ++
 14 files changed, 102 insertions(+), 101 deletions(-)

-- 
2.44.2

