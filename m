Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE98A381A4
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 12:27:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1827C10E32C;
	Mon, 17 Feb 2025 11:27:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W8+GYlXM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B2DE10E1C1;
 Mon, 17 Feb 2025 11:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739791649; x=1771327649;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Eg4acHrHSntzH+ETHaxFMpEhHO+jQh67dM+u2p+s0F4=;
 b=W8+GYlXMp1DSfVrlZv+ZDQTRYg4U1N25N5l7ZZMzNZm/2saRpWRRHitc
 M6QWx7nU8dsm6iVG4BOy9w2ZPyhm0EsSLaA6Jo4fMgYuuUWbzE5mssjuw
 f6ht2gw3zdDXMc79m6FXk9w+fEVlMRia5uGiHqslGpsM+/uP0LY+2ok/8
 tj/RuNCYMo1b9gn3JbvjkYFX8/nqPAT/Xlzi8kSAT5scbclIEU49o2RqV
 BnzGIwqmg1RfoAsJvBvQ4cV0eDkOnSZ+oAztViYGtWPCHtpNXYswvwdxZ
 fKzaSrBfKHzcanClOh2ruEi8CpPB2KDnfHkBKrNgpoCeDVmDjTy7yc72d A==;
X-CSE-ConnectionGUID: ++YjP8teQ9yLvTZGywiMeg==
X-CSE-MsgGUID: Ew2UmTecRjS9pfF9f7VQbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="40392601"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="40392601"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 03:27:29 -0800
X-CSE-ConnectionGUID: NNfVKA0BS6SF9+MqRXmTYg==
X-CSE-MsgGUID: TLyFmA+pRdOdTO4Ip4qG3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="119101902"
Received: from unknown (HELO sorvi2.fi.intel.com) ([10.237.72.194])
 by orviesa004.jf.intel.com with ESMTP; 17 Feb 2025 03:27:28 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@linux.intel.com,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v4 0/2] drm/i915/display: Allow display PHYs to reset power
 state
Date: Mon, 17 Feb 2025 13:17:09 +0200
Message-ID: <20250217111711.639619-1-mika.kahola@intel.com>
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

1. Follow the PLL Enable Sequence, using any valid frequency such as
   DP 1.62 GHz. This brings lanes out of reset and enables the PLL to
   allow powerdown to be moved to the Disable state.
2. Follow PLL Disable Sequence. This moves powerdown to the Disable
   state and disables the PLL.

Before doing this, let's refactor the pll enabling in such a way that
the crtc_state structure is no longer needed.

v2: reword commit messages (Jani)
    rename wa naming (Jani)
    add helper functions (Imre)
    use C10 only for the wa on PTL
v3: Rename wa function (Imre)
    Check return value of C10 pll tables readout (Imre)
    Use PLL request to check pll enabling (Imre)
v4: checpatch fixes and cleanups

Mika Kahola (2):
  drm/i915/display: Drop crtc_state from C10/C20 pll programming
  drm/i915/display: Allow display PHYs to reset power state

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 175 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
 .../drm/i915/display/intel_display_reset.c    |   2 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   3 +
 4 files changed, 132 insertions(+), 49 deletions(-)

-- 
2.43.0

