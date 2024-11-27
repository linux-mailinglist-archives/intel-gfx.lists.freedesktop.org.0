Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F6F9DA2CD
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 08:08:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7448C10E9EC;
	Wed, 27 Nov 2024 07:08:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V4VpHPtw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D106B10E9E2;
 Wed, 27 Nov 2024 07:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732691335; x=1764227335;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LWU0d0onJO+dvFmwDbKF3Z7oLAaWIkT1fuXb3LDMILs=;
 b=V4VpHPtwASJLOkLDAZB8yAlZaAo+qO4XbzBXo25f2w3q0sCiLr8m5Txo
 BcbOod8kI5ivAGiNP2oCczE4X616CQnVPQHQsVp0zUdt53IApxvtdtHB5
 cEhzGmtJ9gH8JwWQ3oEGNobnZn7sIfko9X7zN3QocplglR6+4RtVRwbIT
 cogXC9yn2QoRwOClD5n+DwwGa/UuR9C3/tA/rsiRxSvqGD8+H73hGbNwg
 rQzgT7kDlzgrvzCqiEXD+NOSKOiWdhmtjMrRDzyipInEAkZ/X5J/tnbdi
 9a/TS41MgTD/z746vVEeHOI0Ssvcl2Z0yDxzHxqoilNi6NEAV3tW5s3tz Q==;
X-CSE-ConnectionGUID: BZKmTvAySrS3KZ1eXL4PEg==
X-CSE-MsgGUID: SFqTzhFKTAm3y/naIL092g==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="36667880"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="36667880"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:08:54 -0800
X-CSE-ConnectionGUID: tVuuDCiiT5KdAEyHTTdudw==
X-CSE-MsgGUID: v75kWB5HR86v6uVzIwP18g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="96270360"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:08:52 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 0/7] Refactor VRR for different VRR timing generator
Date: Wed, 27 Nov 2024 12:41:29 +0530
Message-ID: <20241127071136.1017190-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

The VRR timing generator supports multiple modes:
dynamic refresh rate (VRR), content-matched refresh rate (CMRR), and
fixed refresh rate (Fixed_RR).

To better track the different operational modes of the VRR timing generator
refactor the existing vrr members and functions.
This will also help to add support for Fixed refresh rate mode and move from
legacy timing generator to VRR timing generator.

This series is a spinoff from the original series:
https://patchwork.freedesktop.org/series/141152/

Ankit Nautiyal (7):
  drm/i915/vrr: Refactor VRR Timing Computation
  drm/i915/vrr: Simplify CMRR Enable Check in intel_vrr_get_config
  drm/i915/vrr: Introduce new field for VRR mode
  drm/i915/vrr: Fill VRR timing generator mode for CMRR and VRR
  drm/i915/display: Remove vrr.enable and instead check vrr.mode != NONE
  drm/i915/display: Absorb cmrr attributes into vrr struct
  drm/i915/display: Add vrr mode to crtc_state dump

 .../drm/i915/display/intel_crtc_state_dump.c  |  19 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  33 ++--
 .../drm/i915/display/intel_display_types.h    |  16 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   6 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |   2 +-
 .../drm/i915/display/intel_modeset_setup.c    |   3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 164 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_vrr.h      |   1 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |   3 +-
 11 files changed, 154 insertions(+), 101 deletions(-)

-- 
2.45.2

