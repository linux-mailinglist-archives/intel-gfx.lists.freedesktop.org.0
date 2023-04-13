Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAA86E163B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 23:02:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC0010E03A;
	Thu, 13 Apr 2023 21:02:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBE9910E03A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 21:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681419770; x=1712955770;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=52bKqW4LplogfKO5FAG8WljFWYMb3q3z0OTxYab/gK0=;
 b=NkMeeshjzoicZ144jqFAbY+LWWl0So3CCzEEHbQ62J1T5yZ9/Tbk7ex6
 6G5aPK0GrwKjFep2pAae4vG5RU7NNwioIxKv1q7r7MFO7K6AU7Vo5WrQB
 49605eO0c348LWMvfRjUIrtJrnPJclLFh/doGPIbvvgc4YYxkIpQwkZQb
 /YVE12NuprH/Iau34QcXdCZy/2ycmMSWZg7cOGnItpOgwSBjEWj7CBywv
 1QLBDlya0kKUDGla1Hvt+YiHmU524Sx0dVXc9gvVzjQ82SF44gdmP+5Hm
 EaCrit0nPrgjIJb7LFqhPPGlpXEA4CBpDTKb/izOnSSXwSq0vbQnwOUP4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="409493066"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="409493066"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 14:02:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="935749027"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="935749027"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 14:02:33 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 14:01:10 -0700
Message-Id: <20230413210122.1496865-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/9] drm/i915/mtl: Add Support for C10 phy
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

This is a new rev for the series with the same title posted
by Mika Kahola at [1].
Reusing the commit message from the series to preserve the version history.

Phy programming support for C10 phy. This is the first part of
the series that adds support for PICA phy. Later stage the support
for C20 phy is added. This series gets the eDP going.

v2: Register refinitions in intel_cx0_phy_regs.h file (Jani)
v3: Add waits for between message bus writes (Imre)
    General cleanups and macro definitions (Imre)
v4: Several nitpicks across patches(Imre)
    s/dev_priv/i915/,s/intel_c10mpllb_state/intel_c10pll_state/
    Push the output init patch later
    Add teh HDMI definition patch.
v5: Minor HDMI cleanup
    Program vboost and txterctl for both lanes in vswing patch.
    Fix the definition for mtl_crtc_compute_clock.
    Use rmw in mtl_disable_ddi_buf for DP sequences patch.

Note that patches 1-6, 9 are required to boot with edp/native DP.
Patches 7, 8 add the HDMI functionality.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

[1] https://patchwork.freedesktop.org/series/116191/

Ankit Nautiyal (1):
  drm/i915/display/mtl: Fill port width in
    DDI_BUF_/TRANS_DDI_FUNC_/PORT_BUF_CTL for HDMI

Clint Taylor (1):
  drm/i915/mtl: Initial DDI port setup

José Roberto de Souza (1):
  drm/i915/mtl/display: Implement DisplayPort sequences

Mika Kahola (4):
  drm/i915/mtl: Add DP rates
  drm/i915/mtl: Create separate reg file for PICA registers
  drm/i915/mtl: Add vswing programming for C10 phys
  drm/i915/mtl: MTL PICA hotplug detection

Radhakrishna Sripada (2):
  drm/i915/mtl: Add Support for C10 PHY message bus and pll programming
  drm/i915/mtl: Add C10 phy programming for HDMI

 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 1903 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   37 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  180 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |  402 +++-
 .../drm/i915/display/intel_ddi_buf_trans.c    |   31 +-
 drivers/gpu/drm/i915/display/intel_display.c  |    6 +-
 .../drm/i915/display/intel_display_types.h    |   13 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   15 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   33 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |    5 +-
 .../drm/i915/display/intel_modeset_verify.c   |    2 +
 drivers/gpu/drm/i915/i915_irq.c               |  237 +-
 drivers/gpu/drm/i915/i915_reg.h               |   43 +-
 drivers/gpu/drm/i915/i915_reg_defs.h          |   57 +
 16 files changed, 2938 insertions(+), 29 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h

-- 
2.34.1

