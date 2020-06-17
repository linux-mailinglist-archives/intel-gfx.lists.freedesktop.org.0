Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 128A61FC4AB
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 05:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 666426E207;
	Wed, 17 Jun 2020 03:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC0746E207
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 03:31:04 +0000 (UTC)
IronPort-SDR: MnKMqqO9/CkC2BqqSOKMNaQPS6vV96EskxPojX+AwYiTmTFcuOramsvKr0EFfXIiDB6wwX89uH
 PVqKasPNom/Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 20:31:04 -0700
IronPort-SDR: U6bzBG2V8fgHwA9Qdh79YLShXwWIgwd6f1qIaOrDdsixLuxqNlAbFqxfN8G5h5rVfkMK5uE1RC
 oHmr9wlqBpOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,521,1583222400"; d="scan'208";a="262426481"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga007.jf.intel.com with ESMTP; 16 Jun 2020 20:31:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jun 2020 20:30:55 -0700
Message-Id: <20200617033100.4044428-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 0/5] Remaining RKL patches
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

Changes since v6:
 - Renumber TGL's TBT PLL so that the same TGL PLL selector macros can
   be used seamlessly on all gen12 platforms.  (Lucas)
 - Make the PHY initialization WA function static

Matt Roper (5):
  drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout
  drm/i915/rkl: Add DPLL4 support
  drm/i915/rkl: Handle HTI
  drm/i915/rkl: Add initial workarounds
  drm/i915/rkl: Add Wa_14011224835 for PHY B initialization

 .../gpu/drm/i915/display/intel_combo_phy.c    | 26 ++++++
 drivers/gpu/drm/i915/display/intel_ddi.c      | 18 +++-
 drivers/gpu/drm/i915/display/intel_display.c  | 45 ++++++++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 50 ++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 15 ++--
 drivers/gpu/drm/i915/display/intel_sprite.c   |  5 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 88 ++++++++++++-------
 drivers/gpu/drm/i915/i915_drv.h               |  3 +
 drivers/gpu/drm/i915/i915_reg.h               | 40 ++++++---
 9 files changed, 224 insertions(+), 66 deletions(-)

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
