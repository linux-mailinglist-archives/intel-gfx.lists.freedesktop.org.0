Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60008A6B91C
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 11:53:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43DB710E0A1;
	Fri, 21 Mar 2025 10:53:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AZkfrLJO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D67910E0A1;
 Fri, 21 Mar 2025 10:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742554382; x=1774090382;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H1z8upRDRC1xXeO7XmVKmeigPG9lF7W97tA5LNdnGT4=;
 b=AZkfrLJOwUVYR/W76FNYF6Jly4V0SF3gzR2K3lQxw15UuMyMEErTNNfl
 ID4j496S8PwtvyV0JUFN+m/ppUTbQEdYnRy8DIyNSVdmLotIUSDTJ94F6
 06tLfCw4bHX0QKQCJH7xuJVMnKNGQXf8ovebM6h2S4HQ2XTgeTLMUBXGX
 79RuZEX9H1Rxkl/87pNBcNur7B+sb/e+00eO4UdntQLlJ5xkGo3uLKQ4p
 iVTd6bNMDvfEQVGvCE712EkYS+1Dhgeq0sOP4BxZHUHpF/oO8FRdJrI8d
 hMF706aIYbOYLWIDQ35nQ+OZlMkpH2w5sW1VuOgxU4RGuhEh0cEIK+rOC A==;
X-CSE-ConnectionGUID: 5n1tKApqS/KikEX69+UYGw==
X-CSE-MsgGUID: 9eyshwarSgOhwzUtqq70oA==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="44006726"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="44006726"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:01 -0700
X-CSE-ConnectionGUID: /GG8071yTXeZfhK9awvCBw==
X-CSE-MsgGUID: /1GLYF02TpGWzp11/f3csQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="123543503"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:52:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/12] drm/i915/display: yet another batch of struct
 intel_display conversions
Date: Fri, 21 Mar 2025 12:52:44 +0200
Message-Id: <cover.1742554320.git.jani.nikula@intel.com>
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

More conversions to struct intel_display.

Jani Nikula (12):
  drm/i915/dsi: convert vlv_dsi.[ch] to struct intel_display
  drm/i915/dsi: convert vlv_dsi_pll.[ch] to struct intel_display
  drm/i915/dsi: convert parameter printing to drm_printer
  drm/i915/dsi: convert intel_dsi_vbt.[ch] to struct intel_display
  drm/i915/dsi: convert intel_dsi_dcs_backlight.c to struct
    intel_display
  drm/i915/dvo: convert intel_dvo.[ch] to struct intel_display
  drm/i915/lvds: convert intel_lvds.[ch] to struct intel_display
  drm/i915/tc: convert intel_tc.c to struct intel_display
  drm/i915/atomic: convert intel_atomic.c to struct intel_display
  drm/i915/display: convert intel_crtc_state_dump.c to struct
    intel_display
  drm/i915/pch: convert intel_pch_display.[ch] to struct intel_display
  drm/i915/pch: convert intel_pch_refclk.c to struct intel_display

 drivers/gpu/drm/i915/display/intel_atomic.c   |  23 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |  44 +--
 drivers/gpu/drm/i915/display/intel_display.c  |  22 +-
 .../drm/i915/display/intel_display_power.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  13 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   6 +-
 .../i915/display/intel_dsi_dcs_backlight.c    |   7 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  | 211 +++++++-------
 drivers/gpu/drm/i915/display/intel_dvo.c      |  63 ++---
 drivers/gpu/drm/i915/display/intel_dvo.h      |   6 +-
 .../drm/i915/display/intel_fifo_underrun.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     | 142 +++++-----
 drivers/gpu/drm/i915/display/intel_lvds.h     |  18 +-
 .../drm/i915/display/intel_modeset_setup.c    |   2 +-
 .../gpu/drm/i915/display/intel_pch_display.c  | 168 +++++------
 .../gpu/drm/i915/display/intel_pch_display.h  |  10 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 126 +++++----
 .../gpu/drm/i915/display/intel_pch_refclk.h   |  18 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_tc.c       | 265 +++++++++---------
 drivers/gpu/drm/i915/display/vlv_dsi.c        | 160 +++++------
 drivers/gpu/drm/i915/display/vlv_dsi.h        |   6 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    | 118 ++++----
 drivers/gpu/drm/i915/display/vlv_dsi_pll.h    |   5 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 26 files changed, 709 insertions(+), 742 deletions(-)

-- 
2.39.5

