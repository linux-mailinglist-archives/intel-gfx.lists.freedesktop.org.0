Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D176CA43B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 14:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7F8210E5A2;
	Mon, 27 Mar 2023 12:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 978D410E59F
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 12:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679920785; x=1711456785;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j22y9dx+ztdT1O7BwzfUOB7L9lNZKniknDMth6l3YWg=;
 b=UUsoR+3tZqxiSf5HcMELowZy3gO5bz5XOKvxdYF1gb+co/Qty8DoWwyy
 OxMbU0xD0XeluQfJlsgdS4w00TD2bMU2dCFzKnk/Ja+IRm0Dt6GV0V4hm
 6cys8E7iLRPvhIwuloy5oiiQgVkwfn6HYFseL5JmXEZSTv18iBiUV1lmm
 R72XzC5jJbr0sNE0GTa3fw2R0iLxD5nRxzzOFg/SBLA9MBP8k5GV2GaBv
 QHTe390HadPg5JFCkAY/fupDtEqqHdE2jUFCevf9zT5k62yP7rKOvrqtv
 r+UM89fC999pTxKILatNTso9AcnrONYLy+D3D67LO5uE8klm8J8lxMMOY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="402847793"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="402847793"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 05:39:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="747984731"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="747984731"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 27 Mar 2023 05:39:43 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Mar 2023 15:34:26 +0300
Message-Id: <20230327123433.896216-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] drm/i915/mtl: Add Support for C10 chips
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

Phy programming support for C10 PICA chips. This is the first part of
the series that adds support for PICA chips. Later the support for
C20 chips are added.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Clint Taylor (1):
  drm/i915/mtl: Initial DDI port setup

Mika Kahola (3):
  drm/i915/mtl: Add DP rates
  drm/i915/mtl: Create separate reg file for PICA registers
  drm/i915/mtl: Add support for PM DEMAND

Radhakrishna Sripada (3):
  drm/i915/mtl: Add Support for C10 PHY message bus and pll programming
  drm/i915/mtl: Add C10 phy programming for HDMI
  drm/i915/mtl: Add vswing programming for C10 phys

 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/intel_bw.c       |    4 +-
 drivers/gpu/drm/i915/display/intel_bw.h       |    2 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 1798 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   46 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  178 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |   26 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |   31 +-
 .../drm/i915/display/intel_ddi_buf_trans.h    |    6 +
 drivers/gpu/drm/i915/display/intel_display.c  |   20 +-
 .../drm/i915/display/intel_display_power.c    |   11 +-
 .../i915/display/intel_display_power_map.c    |    1 +
 .../i915/display/intel_display_power_well.c   |    2 +-
 .../drm/i915/display/intel_display_types.h    |    6 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   15 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   20 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |    5 +-
 .../drm/i915/display/intel_modeset_verify.c   |    2 +
 drivers/gpu/drm/i915/i915_drv.h               |    6 +
 drivers/gpu/drm/i915/i915_irq.c               |   22 +-
 drivers/gpu/drm/i915/i915_reg.h               |   38 +-
 drivers/gpu/drm/i915/i915_reg_defs.h          |   57 +
 drivers/gpu/drm/i915/intel_pm.c               |  286 +++
 drivers/gpu/drm/i915/intel_pm.h               |   35 +
 25 files changed, 2605 insertions(+), 15 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h

-- 
2.34.1

