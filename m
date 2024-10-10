Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A90DE99955C
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 00:43:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB50110E9EF;
	Thu, 10 Oct 2024 22:43:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bzPi3t3I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B16B510E151;
 Thu, 10 Oct 2024 22:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728600197; x=1760136197;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WD5ucyteKj34lsvV8FVZQ99Ep/Idv9gNtcGw8dVs3EE=;
 b=bzPi3t3IDQxBoW3NOHRe3mjZBkRFkYiDr6D6xxMxzOLF3Ez8hhloIyWq
 YxuPnnzsoyZoL5XuqUQhso0SNHJbIGvLZeMA9mHuNghrogBBabf2XDkP6
 wPCafah6ep+62/W2qiJfN49BdZrh3RhFljjgu1sK0ghfpms72adMz9ZHd
 iIiYqWfW1LlXaJRdHu2gY2g5n6xoODW/VZcpkr7bZZV0kBN4N02DoCZ3S
 RWuJ7++ZIPhXSLbICWk5jk60wPIsjZ87eAVcuc+LpScQ96anPnEc/Vb29
 Tt8esQ/S1V050Wcr04LYJNEsvTUkygisyu9ovDWVM3aMCJ4FVAksBISCI Q==;
X-CSE-ConnectionGUID: 0rBi2ItMSlKYNO1um7w/qw==
X-CSE-MsgGUID: Imv3sSwCR9yC4H+84iADtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="39380862"
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="39380862"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 15:43:17 -0700
X-CSE-ConnectionGUID: Wn85GRcFRoCq9xr69HzePg==
X-CSE-MsgGUID: bdUsZiXcR3y45nEqtHFOtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="76732002"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.132])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 15:43:16 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH v2 00/10] Add xe3lpd edp enabling
Date: Thu, 10 Oct 2024 15:43:01 -0700
Message-ID: <20241010224311.50133-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
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

This series defines the xe3lpd definition, which is functionally
idential to the xe2lpd definition for now. This series then adds
additional requirements mostly for edp output of display through type c.
Additional patches will be required for display and will follow

v2: cdclk table update, multiple patches have macros changed from
functions to multiple platform specific paths. Several commit messages
and subjects changed to be more accurate. PM demand patch changed to
accurately reflect minimum number of pipes. Patch "drm/i915/xe3lpd: Add
check to see if edp over type c is allowed" did not receive an update
yet as the patch is still in discussion. 

Clint Taylor (1):
  drm/i915/xe3lpd: reuse xe2lpd definition

Matt Roper (3):
  drm/i915/xe3lpd: Adjust watermark calculations
  drm/i915/xe3lpd: Add new display power wells
  drm/i915/xe3lpd: Update pmdemand programming

Radhakrishna Sripada (1):
  drm/i915/xe3lpd: Add cdclk changes

Suraj Kandpal (5):
  drm/i915/xe3lpd: Include hblank restriction for xe3lpd
  drm/i915/xe3lpd: Add C20 Phy consolidated programming table
  drm/i915/xe3lpd: Add new bit range of MAX swing setup
  drm/i915/xe3lpd: Add check to see if edp over type c is allowed
  drm/i915/xe3lpd: Add condition for EDP to powerdown P2.PG

 drivers/gpu/drm/i915/display/intel_alpm.c     |   9 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  61 +++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  29 +++-
 .../drm/i915/display/intel_display_device.c   |   6 +
 .../drm/i915/display/intel_display_device.h   |   2 +
 .../i915/display/intel_display_power_map.c    | 135 +++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  16 +++
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  65 ++++++---
 drivers/gpu/drm/i915/display/intel_pmdemand.h |   4 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  22 +--
 drivers/gpu/drm/i915/display/skl_watermark.c  |  18 ++-
 drivers/gpu/drm/i915/i915_reg.h               |   5 +
 include/drm/intel/i915_pciids.h               |  12 ++
 15 files changed, 342 insertions(+), 48 deletions(-)

-- 
2.45.0

