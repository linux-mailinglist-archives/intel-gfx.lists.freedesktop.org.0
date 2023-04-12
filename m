Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1DD6E0223
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 00:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F93C10E9D7;
	Wed, 12 Apr 2023 22:50:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98AB210E9D7
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 22:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681339846; x=1712875846;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S1JwZqLd9UiYAuWkSVB8ftGmquFx+E7CDXY5L2YgcNs=;
 b=k9bHhm/+JTxbaC+PKY7gml4jX5O8TjVQaUcyV8j7SAndnry2iRXO5/hW
 VK+9sghUjJPJYXXhPRaskzZTUiEZCrG1VBmdaiwgL9vFQAJ4QC3CC57qM
 kmKYCrJvjrFwW4SnpIqT7FkOSXG10d0bk8clKpnvHVJKlaUROI4CMXqyv
 3CWbU08vGv93239n8bVrLvcyeIUYwf+xs8Nb4sh0bgJjOfaQtSumlsRTG
 rYI/EbOugq2s8FfX3uBr0TGKJAFIPrmBWhsD6iHQZhXjzWOkiwleJJOcc
 qQt67MTn+VV3J3awCAZcQ9Y0oEvqu+S6iYmPJ6MmypXfsf81VScao1F1d Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="371890352"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="371890352"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 15:50:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="1018906832"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="1018906832"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 15:50:44 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Apr 2023 15:49:16 -0700
Message-Id: <20230412224925.1309815-1-radhakrishna.sripada@intel.com>
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

Note that patches 1-7 are required to boot with edp/native DP.
Patches 8, 9 add the HDMI functionality.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

1. https://patchwork.freedesktop.org/series/116191/

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
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 1941 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   37 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  180 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |  403 +++-
 .../drm/i915/display/intel_ddi_buf_trans.c    |   31 +-
 drivers/gpu/drm/i915/display/intel_display.c  |    6 +-
 .../drm/i915/display/intel_display_types.h    |   13 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   15 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   26 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |    5 +-
 .../drm/i915/display/intel_modeset_verify.c   |    2 +
 drivers/gpu/drm/i915/i915_irq.c               |  237 +-
 drivers/gpu/drm/i915/i915_reg.h               |   43 +-
 drivers/gpu/drm/i915/i915_reg_defs.h          |   57 +
 16 files changed, 2970 insertions(+), 29 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h

-- 
2.34.1

