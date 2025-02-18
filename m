Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 977EDA39846
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 11:10:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75A7310E644;
	Tue, 18 Feb 2025 10:10:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OdEXV8ar";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B919D10E33F;
 Tue, 18 Feb 2025 10:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739873437; x=1771409437;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NiOuNp+EzlEhn8Kw78Ed3fzCLalqBcgd5/zKstbwdW4=;
 b=OdEXV8arMmxgIoHFFHr4p2QGwNMN60/xRCpnL1r6SkYhf1BFjqByyKQ/
 5NjgfTg8h3/Dox2e+wnV34IEsyKUpe6gzsz2T5eJ8lsKhl4paG6By6MOy
 ec9p69ItFVojpoCM+N59JHZTh1EHhFVg9IqvtSEso7siomiDSgOoMMwwf
 JwgGzTPfdgy2CZ/ReSZlN8ibVWDnIlN/vTgqMgMSFuDVvjRft07J5cZz2
 +rAPmBfDXADcGnI5D+PGhCRfzStJb/Fc9ciQDZZ1WZJoG5b6NRfNL17/7
 61efISBueWLuWUiOG6Puv1X8NWTg+v49X02YH2Z8tKxEw1aErKHTNAOrC w==;
X-CSE-ConnectionGUID: r68G/WqJSKS/tRgkq5OIsA==
X-CSE-MsgGUID: OKqKIKEnQK+kyngv9q3qDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="51546327"
X-IronPort-AV: E=Sophos;i="6.13,295,1732608000"; d="scan'208";a="51546327"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 02:10:36 -0800
X-CSE-ConnectionGUID: duj6rA2VQGC61w9GOVrf9Q==
X-CSE-MsgGUID: pd+uw1zcShiZ18AK4sYR3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,295,1732608000"; d="scan'208";a="119343785"
Received: from unknown (HELO sorvi2.fi.intel.com) ([10.237.72.194])
 by orviesa004.jf.intel.com with ESMTP; 18 Feb 2025 02:10:35 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@linux.intel.com,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v5 0/2] drm/i915/display: Allow display PHYs to reset power
 state
Date: Tue, 18 Feb 2025 12:00:17 +0200
Message-ID: <20250218100019.740556-1-mika.kahola@intel.com>
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
v5: Add check for intel_encoder_is_dig_port() and
    add debug message when applying wa (Imre)

Mika Kahola (2):
  drm/i915/display: Drop crtc_state from C10/C20 pll programming
  drm/i915/display: Allow display PHYs to reset power state

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 192 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
 .../drm/i915/display/intel_display_reset.c    |   2 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   3 +
 4 files changed, 141 insertions(+), 57 deletions(-)

-- 
2.43.0

