Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D55B8D3A329
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 10:38:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6883D10E39D;
	Mon, 19 Jan 2026 09:38:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hPWzjnj0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0DED10E39D;
 Mon, 19 Jan 2026 09:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768815480; x=1800351480;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GIsfVSxRjprOlLS5Zpb084RF9gxtf/afYAVrEeRXa2g=;
 b=hPWzjnj09CF4nq+MHPIqtFvZ4n7YtiEFF362ch08SuHWyrykN8E/p2Sn
 eGMsqMFRHxwWao00LzICC585zyltLxNY+wnkAV4fIobdxAMOxV8bqn1+p
 Ug75TUeZX55/UmfJBGer3IMqWexBH+pd0DsxeniSpZlPf1L/2kKY5Ujhk
 JvKiHUJvOZ0Hv++J1acCJSxtuDPAnjYFLBW0/I3vkHiyCJzmjvL45ydY4
 MXvPLJdwj60EmHuTkWcz3swUDwjge90ygM3QdRg66uQifjLp+SoRJaW7T
 +gVkqsyoOK4lJa5Fa7WrAlvqi/+7+Y1CvAxOrOK4iThSQFjOrso370JW0 Q==;
X-CSE-ConnectionGUID: HGiaj97ARxaFP3UPsKtFyg==
X-CSE-MsgGUID: xO3KT7gKSKuEK0PGDkBPSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="69224260"
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="69224260"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 01:38:00 -0800
X-CSE-ConnectionGUID: QT0rHZjfRly73f9fXu1T6Q==
X-CSE-MsgGUID: nUqcSzosSN62jzr644GsMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="210838301"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa005.jf.intel.com with ESMTP; 19 Jan 2026 01:37:59 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>, Imre Deak <imre.deak@intel.com>
Subject: [CI 00/15] drm/i915/pll: Verify pll dividers and remove redundant
 .clock member
Date: Mon, 19 Jan 2026 09:37:41 +0000
Message-ID: <20260119093757.2850233-1-mika.kahola@intel.com>
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

This is v2 of [1], with the updates on commit messages and
fuzzy clock check.

[1] https://lore.kernel.org/intel-xe/20251217151955.1690202-1-mika.kahola@intel.com/

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Imre Deak <imre.deak@intel.com>

Mika Kahola (15):
  drm/i915/cx0: Move C10 port clock calculation
  drm/i915/cx0: Move C20 port clock calculation
  drm/i915/cx0: Drop Cx0 crtc_state from HDMI TMDS pll divider
    calculation
  drm/i915/lt_phy: Drop LT PHY crtc_state for port calculation
  drm/i915/cx0: Drop encoder from port clock calculation
  drm/i915/cx0: Create macro around PLL tables
  drm/i915/lt_phy: Create macro for LT PHY PLL state
  drm/i915/display: Add helper function for fuzzy clock check
  drm/i915/cx0: Fix HDMI FRL clock rates
  drm/i915/cx0: Add a fuzzy check for DP/HDMI clock rates during
    programming
  drm/i915/cx0: Verify C10/C20 pll dividers
  drm/i915/lt_phy: Add verification for lt phy pll dividers
  drm/i915/cx0: Drop C20 25.175 MHz rate
  drm/i915/lt_phy: Drop 27.2 MHz rate
  drm/i915/display: Remove .clock member from eDP/DP/HDMI pll tables

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 727 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   8 +-
 drivers/gpu/drm/i915/display/intel_dpll.h     |   1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  11 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   3 -
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  19 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 239 +++---
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |   5 +-
 .../drm/i915/display/intel_snps_hdmi_pll.c    |   2 -
 11 files changed, 553 insertions(+), 467 deletions(-)

-- 
2.43.0

