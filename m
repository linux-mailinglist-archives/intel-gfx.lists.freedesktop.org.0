Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0632B28C426
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 23:31:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA8806E80B;
	Mon, 12 Oct 2020 21:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 491C86E7DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 21:30:55 +0000 (UTC)
IronPort-SDR: 5X7zrVGMZ78vq2HTxb+XE2IMQ3nQY1zQMuWhqKxaVDi2swC/bzCzicfTGsyeQ6t4YzApo/PdP6
 OduDu7K1hMGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="163169613"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="163169613"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 14:30:54 -0700
IronPort-SDR: jyKogBB7s1CXC7bu26qQ39rTxYUJmcH0XCm6bMC/EAoKi8V+Xg/6NcbtE8zgunkBWKeTJvu6/e
 uFglz0I6Upvw==
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="463244967"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 14:30:54 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 14:29:44 -0700
Message-Id: <20201012212959.871513-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 00/15] Introduce DG1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v7:
  - Remove already applied patches and rebase the rest
  - Refactor DG1 power well handling to re-use table from TGL
  - Squash patch to add all the ports in a single patch
  - Use IS_DGFX() for DMC_DEBUG register move

Aditya Swarup (4):
  drm/i915/display: allow to skip certain power wells
  drm/i915/dg1: Add DPLL macros for DG1
  drm/i915/dg1: Add and setup DPLLs for DG1
  drm/i915/dg1: Enable ports

Anshuman Gupta (2):
  drm/i915/dg1: DG1 does not support DC6
  drm/i915/dg1: Update DMC_DEBUG register

Clinton A Taylor (1):
  drm/i915/dg1: invert HPD pins

Lucas De Marchi (5):
  drm/i915/cnl: skip PW_DDI_F on certain skus
  drm/i915/dg1: Add DG1 power wells
  drm/i915/dg1: Enable DPLL for DG1
  drm/i915/dg1: add hpd interrupt handling
  drm/i915/dg1: map/unmap pll clocks

Matt Atwood (1):
  drm/i915/dg1: Load DMC

Michel Thierry (1):
  drm/i915/dgfx: define llc and snooping behaviour

Stuart Summers (1):
  drm/i915/dg1: Add initial DG1 workarounds

 drivers/gpu/drm/i915/display/intel_csr.c      |  12 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  92 ++++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.c  |  33 +++++-
 .../drm/i915/display/intel_display_debugfs.c  |   9 +-
 .../drm/i915/display/intel_display_power.c    |  60 ++++++----
 .../drm/i915/display/intel_display_power.h    |   3 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  54 +++++++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  17 +++
 drivers/gpu/drm/i915/display/intel_sprite.c   |   4 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 111 ++++++++++++++----
 drivers/gpu/drm/i915/i915_irq.c               |  67 +++++++++--
 drivers/gpu/drm/i915/i915_pci.c               |   4 +
 drivers/gpu/drm/i915/i915_reg.h               |  59 +++++++++-
 drivers/gpu/drm/i915/intel_pm.c               |  39 ++++--
 14 files changed, 470 insertions(+), 94 deletions(-)

-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
