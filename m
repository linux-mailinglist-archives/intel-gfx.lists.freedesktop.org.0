Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AF3BD26BC
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 12:01:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 108B910E419;
	Mon, 13 Oct 2025 10:01:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SDAyAiNE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8BFD10E087;
 Mon, 13 Oct 2025 10:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760349688; x=1791885688;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CoDN9qz8mLPLNzQPVY36dl2wnqbqV4zs9CgPrsfNG2g=;
 b=SDAyAiNE1upwATInxcjQyl3ktbyQV44VqcPzbZQ9MOdMOrDkd+eHvgk9
 WlDJSb+jY8Jg8EDFrFdBCY+nlR9NRU9DcEdKJ7eCrK8cx7H688zGzL9MM
 O+m/vb+1uGtPGh9WLSZLDj6dSEnS293Xx0ma21rqGqhDtMDY7RScdzzTV
 oHGEPUxPAFfcdeyiFYkwrKQs0BNtKxfq55XbnIVz/mP+HplKK7jk4sQAy
 ZL6iq7unYLOS0eP/qyzOwA2/FI3lkxB+X8+79XuIevLkz4nY8vEfihLcG
 ZVWSqLuLqwa5trlrUHhAOMTEmTA0oCz89PEhJBdZuY0PyX/2ZDmQs0zOU Q==;
X-CSE-ConnectionGUID: 6xdfjiudR8CxO3ZDkn+0gA==
X-CSE-MsgGUID: LdxdFiGYQ2mMMIk2+Gsvlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11580"; a="80126160"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="80126160"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 03:01:28 -0700
X-CSE-ConnectionGUID: chl1NhfbQo2cYkvJOpvzPA==
X-CSE-MsgGUID: eNLg6brOQV6h2y+e4GWRMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="212186987"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa002.jf.intel.com with ESMTP; 13 Oct 2025 03:01:27 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 0/7] drm/i915/display: Fix C20 PHY PLL DP/HDMI mode programming
Date: Mon, 13 Oct 2025 12:50:38 +0300
Message-Id: <20251013095045.3658871-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
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

This patchset fixes the DP/HDMI mode programming for C20 PHY PLLs. While at it,
it also adds the missing port clock HW readout for C10 PHY PLLs.
 
 
These patches were originally part of the RFC PLL rework patch series [1],
now resent separately since they include a fix, which as such should be
tested/merged separately.
 
[1] https://lore.kernel.org/all/20251001082839.2585559-1-mika.kahola@intel.com

Imre Deak (7):
  drm/i915/display: Sanitize PHY_C20_VDR_CUSTOM_SERDES_RATE/DP_RATE
    field macros
  drm/i915/display: Sanitize PHY_C20_VDR_CUSTOM_SERDES_RATE/IS_DP flag
    macro
  drm/i915/display: Sanitize
    PHY_C20_VDR_CUSTOM_SERDES_RATE/CONTEXT_TOGGLE flag macro
  drm/i915/display: Sanitize PHY_C20_VDR_CUSTOM_SERDES_RATE/IS_HDMI_FRL
    flag macro
  drm/i915/display: Fix PHY_C20_VDR_CUSTOM_SERDES_RATE programming
  drm/i915/display: Fix PHY_C20_VDR_HDMI_RATE programming
  drm/i915/display: Add missing clock to C10 PHY state compute/HW
    readout

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 43 ++++++++++++-------
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 10 +++--
 .../drm/i915/display/intel_snps_hdmi_pll.c    |  2 +
 3 files changed, 36 insertions(+), 19 deletions(-)

-- 
2.34.1

