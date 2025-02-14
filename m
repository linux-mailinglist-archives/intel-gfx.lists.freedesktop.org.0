Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DE3A35FF5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 15:15:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFEA910ECA0;
	Fri, 14 Feb 2025 14:14:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ErXL0uyf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 149A610ECA0;
 Fri, 14 Feb 2025 14:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739542500; x=1771078500;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VlyLE6s5AqsVStV9s24vez0AipAnK7JezmfplTCi+pE=;
 b=ErXL0uyfxi8i2XpW5MwREhkvrDbHazhJCv0p3IzRyEEYaxl3lhrX5y07
 Lw/4Fzp4K2Rtl/QaadUOiw6EIRrNMWOoHH9AiEykMG7kkunCEcnj+d+Q3
 1Gn/KKWKKCLJxM1TZpkUENbDZS0WFQYdN0lLAbwME1J17b+3ALJyGn747
 fKIeHTw1GHCWFS70Qzjc8xWiZZrJZ+3OaoirYbYmqtR4mooEe0E9VSdKW
 J532xO3yZPLh3vfuZcEkOKhYfoQU1sqigMF+HI5ILNSaPyfMtOcRt5eUl
 seXoJXc+EBb3mahFSx16cFagCL5tc0LH/Cm9oDxIwiQb2ZlZo1fMpyAaQ w==;
X-CSE-ConnectionGUID: qTz86JCGRuGP4oFUWvyPBg==
X-CSE-MsgGUID: DutTdmc1R0yiRw2ySqHfPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="50505075"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="50505075"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:14:59 -0800
X-CSE-ConnectionGUID: OzhVJgD1StqJ/R5JPvt9lg==
X-CSE-MsgGUID: 5mkkovisRMWJRKX+WybgdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="113327195"
Received: from unknown (HELO sorvi2.fi.intel.com) ([10.237.72.194])
 by fmviesa006.fm.intel.com with ESMTP; 14 Feb 2025 06:14:57 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@linux.intel.com,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 0/2] drm/i915/display: Allow display PHYs to reset power
 state
Date: Fri, 14 Feb 2025 16:04:40 +0200
Message-ID: <20250214140442.560378-1-mika.kahola@intel.com>
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
v3: Rename wa function (Imre)
    Check return value of C10 pll tables readout (Imre)
    Use PLL request to check pll enabling (Imre)
    Use err instead of val for error handling (Imre)

Mika Kahola (2):
  drm/i915/display: Drop crtc_state from C10/C20 pll programming
  drm/i915/display: Allow display PHYs to reset power state

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 160 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
 .../drm/i915/display/intel_display_reset.c    |   2 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   3 +
 4 files changed, 122 insertions(+), 44 deletions(-)

-- 
2.43.0

