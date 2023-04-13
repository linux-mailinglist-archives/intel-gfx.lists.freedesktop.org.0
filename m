Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A906E166C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 23:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D982F10E03A;
	Thu, 13 Apr 2023 21:25:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AE7410E03A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 21:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681421155; x=1712957155;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KiIjdSOsN8EBmshkldH516ZwknWDknKixBsEnn55F6E=;
 b=QdnByKb3e+BUdlfJcBPc/e0daDNM9h93AYtkShftgd9MwPkPH/vhA94X
 Mz5THgEVwOytG6xDRwMXh1w2wK+nRePW2pG0/RNx3om+SkgVfbgbb7kKJ
 Avjr0wOpvR/6pme4kEdyPzmcAIP57B+UjmI7Lgp+bVezClDHQK53r+JO9
 duU7xw6kHOAu5lPmoNZGztHoNgUTvTQz7u2BOhe/zKsj3iOVIG76DmVVx
 wXucyD1ZXIQuPAqPLqOqHMnekjy9CmnjURJOEJ90EcjUkMWykjohSDRPJ
 HvLebap3jLF9lhVv3MRpcpGPbdyWI5N9BuERODJqvN7tdUXzRu93/JQBi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="346129615"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="346129615"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 14:25:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="754168625"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="754168625"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 14:25:53 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 14:24:34 -0700
Message-Id: <20230413212443.1504245-1-radhakrishna.sripada@intel.com>
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

Ignore the previous rev as the individual files got
mixed with older series.

Resending to avoid confusion. Apologies for the spam.

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

