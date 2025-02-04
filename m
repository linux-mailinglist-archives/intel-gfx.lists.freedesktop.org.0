Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBB3A26FC8
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 12:06:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01ECA10E5EE;
	Tue,  4 Feb 2025 11:06:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AyZNnDf0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D98410E31C;
 Tue,  4 Feb 2025 11:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738667053; x=1770203053;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G3hYnbDxfPUgK+ds4Er6DW1GqPmHSVhCIsvBAjfFmSU=;
 b=AyZNnDf0g5csNId2iFXRcdyOWW1wERojByy+rAqD13qEeVxTeYWyKVMi
 aXvB0aJ4UB/D7AjxC1+UaBJwQ3QR0BplYjpZ78/SOIixTBg/RfMsJtSQ4
 yKD1VWQhcsESdBGBuBdelxu41N8YywBv6ZLx7PVDhVv4GlI7X7s7yCsnU
 J1DiRzQqLpJWJk4ra5rDbpECNvbiELzdKVdnKmCgK94VOCxUinh2/vCx3
 H2DlOSmJppKGfUEZoot6hY4aWZv3RimvZdp66bGVe9LNZ/orVlLD268IS
 BYDhX+8ODmLnUdcxq+L5MxeYucDaAX8l3jTSQkzhYVsbBhLFI5PH4NJne w==;
X-CSE-ConnectionGUID: B/R3tmU5QxSRP7gzSFsCWQ==
X-CSE-MsgGUID: B87IUIYSQbumZ4W519+zJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="49802619"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="49802619"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 03:04:13 -0800
X-CSE-ConnectionGUID: SvgOhBZPQ8GMQe0kPJ2mvw==
X-CSE-MsgGUID: I9YpN0ToRbKasTVUNX/t+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110553248"
Received: from unknown (HELO sorvi2.fi.intel.com) ([10.237.72.194])
 by orviesa006.jf.intel.com with ESMTP; 04 Feb 2025 03:04:11 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@linux.intel.com,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 0/2] drm/i915/display: Allow display PHYs to reset power
 state
Date: Tue,  4 Feb 2025 12:53:56 +0200
Message-ID: <20250204105358.284687-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
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

The dedicated display PHYs reset to a power state that blocks S0ix,
increasing idle system power. After a system reset (cold boot,
S3/4/5, warm reset) if a dedicated PHY is not being brought up
shortly, use these steps to move the PHY to the lowest power state
to save power.

1. Follow the PLL Enable Sequence, using any valid frequency such as DP 1.62 GHz.
   This brings lanes out of reset and enables the PLL to allow powerdown to be moved
   to the Disable state.
2. Follow PLL Disable Sequence. This moves powerdown to the Disable state and disables the PLL.

Before doing this, let's refactor the pll enabling in such a way that
the crtc_state structure is no longer needed.

v2: reword commit messages (Jani)
    rename wa naming (Jani)
    add helper functions (Imre)
    use C10 only for the wa on PTL

Mika Kahola (2):
  drm/i915/display: Drop crtc_state from C10/C20 pll programming
  drm/i915/display: Allow display PHYs to reset power state

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 154 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
 .../drm/i915/display/intel_display_reset.c    |   2 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   2 +
 4 files changed, 114 insertions(+), 45 deletions(-)

-- 
2.43.0

