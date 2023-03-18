Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A96896BF71B
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 01:59:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C5210E2AA;
	Sat, 18 Mar 2023 00:59:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB8610E2AA
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 00:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679101171; x=1710637171;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nKpZwHFUNK6k2l+oUbXczd4NzRAMtE9z0x5Moutoo8A=;
 b=Jf+5zotuTSDoElQ/7FAn36ZAu4I3kvgQ4g+CjTfzRv7SE2LoCFxcQxBg
 3Ivp5oUiwniPCVgmsKnbWbTTSU7ggKGZE9TAtyTma/a8WzxuXCvUEu9Kb
 pNCj3pWPknR+7lK/0qpZl8UeyvCKwx7HMZdx6HJX/1cqRuZFj1ppBiIR5
 n3dr4fzK4jTc4WkgKgY/FW6Ev/6l15XQUoeyEQ+KTgbk0/P/fP+PXm0Hx
 yvXWURpD7ouBqYfUmvuWnYnEzqpvvAqR7YvZwhx0XJo+/Zdi/o6OpdRFL
 fI5awEWmfJhEUPAWuGIeWNW1iqaFS1M5Hk6BGd/nTZf1f0MYqWZiiydNU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="400971052"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="400971052"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 17:59:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="804301798"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="804301798"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 17:59:31 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 17:58:48 -0700
Message-Id: <20230318005852.2303937-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Add MTL DP and HDMI Sequences
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

This series is dependent on the Meteorlake Phy enabling series
which is being reviewed here [1].

The first patch of the series is a squashed patch of all the
patches in [1].

The second and third patches in the series add Display port
and HDMI programming sequences respectively.

The last patch in the series skips programming the pcode
for qgv bandwidth restrictions which is handled by PM Demand
patch part of the squashed patch 1 and patch no 07/22 in [1].

[1] https://patchwork.freedesktop.org/series/109714/
Ankit Nautiyal (1):
  drm/i915/display/mtl: Fill port width in
    DDI_BUF_/TRANS_DDI_FUNC_/PORT_BUF_CTL for HDMI

Clint Taylor (1):
  drm/i915/mtl: Squashed Phy Support

José Roberto de Souza (1):
  drm/i915/mtl/display: Implement DisplayPort sequences

Radhakrishna Sripada (1):
  drm/i915/mtl: Skip pcode qgv restrictions for MTL

 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/intel_bw.c       |    7 +-
 drivers/gpu/drm/i915/display/intel_bw.h       |    2 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 2802 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   57 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  233 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |  458 ++-
 .../drm/i915/display/intel_ddi_buf_trans.c    |   85 +-
 .../drm/i915/display/intel_ddi_buf_trans.h    |    6 +
 drivers/gpu/drm/i915/display/intel_display.c  |   25 +-
 .../drm/i915/display/intel_display_power.c    |    9 +-
 .../i915/display/intel_display_power_map.c    |    1 +
 .../i915/display/intel_display_power_well.c   |    2 +-
 .../drm/i915/display/intel_display_types.h    |   23 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   23 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   22 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |    7 +-
 drivers/gpu/drm/i915/display/intel_hdmi.h     |    1 +
 .../drm/i915/display/intel_modeset_verify.c   |    2 +
 drivers/gpu/drm/i915/display/intel_tc.c       |  177 +-
 drivers/gpu/drm/i915/i915_drv.h               |    6 +
 drivers/gpu/drm/i915/i915_irq.c               |  276 +-
 drivers/gpu/drm/i915/i915_reg.h               |   76 +-
 drivers/gpu/drm/i915/i915_reg_defs.h          |   57 +
 drivers/gpu/drm/i915/intel_pm.c               |  289 ++
 drivers/gpu/drm/i915/intel_pm.h               |   36 +
 27 files changed, 4631 insertions(+), 54 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h

-- 
2.34.1

