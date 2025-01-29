Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADC8A21D90
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 14:11:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CD6310E05A;
	Wed, 29 Jan 2025 13:11:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KtlTIKox";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BD2110E05A;
 Wed, 29 Jan 2025 13:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738156277; x=1769692277;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Kt7w+N+nk8CcEHaQi804RtlZDDYHB7Tg0eeLILY68lM=;
 b=KtlTIKoxdCwWOBQG+T2yg1lf0eZCY0CCU09ie46FJWxnqTpa5FmFqHsD
 ZyYrKnLyhj2bV1Emt28TTkjJSR1H2M3LgzHV/n7KYlibB3qJgzi4sqDOh
 mgJtZhrH25RXjM94GJKTXzXSc3bVJBL/K6wWJcci5S049KwE6TbRBWaIo
 NrDX3ciEKxPhiCKAg9rO7PSPF9lvb2k2fvhZOFL7ULkNNIISryEdgaxKB
 y7DkQrdzt0ASWVp1o1Dyk+FwWFZvypy0WFzXqEgvkG4yTTGzFBHpSsqLR
 2JO3vN7KKNx2OEakB8fH3r/fYOi86dsyHQCINWOmiHEzc84cpZjv2hvwB g==;
X-CSE-ConnectionGUID: KYm4srq/R+K7FFcs6nChiw==
X-CSE-MsgGUID: yUiPsfF/Q8mkJ4JG1n6Saw==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="37911557"
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="37911557"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 05:11:17 -0800
X-CSE-ConnectionGUID: QC0EpI1GS5CWpJlXKPqUGQ==
X-CSE-MsgGUID: BFgA17EDSD27NiuC4qOkkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="114010017"
Received: from unknown (HELO sorvi2.fi.intel.com) ([10.237.72.194])
 by orviesa003.jf.intel.com with ESMTP; 29 Jan 2025 05:11:16 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 0/2] drm/i915/display: Allow display PHYs to reset power state
Date: Wed, 29 Jan 2025 15:01:03 +0200
Message-ID: <20250129130105.198817-1-mika.kahola@intel.com>
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

Mika Kahola (2):
  drm/i915/display: Drop crtc_state from C10/C20 pll programming
  drm/i915/display: Allow display PHYs to reset power state

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 144 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
 .../drm/i915/display/intel_display_reset.c    |   2 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   2 +
 4 files changed, 104 insertions(+), 45 deletions(-)

-- 
2.43.0

