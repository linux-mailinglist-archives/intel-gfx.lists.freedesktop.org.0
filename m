Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA831F044D
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Jun 2020 04:57:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D8856E96C;
	Sat,  6 Jun 2020 02:57:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67C116E96C
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Jun 2020 02:57:43 +0000 (UTC)
IronPort-SDR: t9/MCowKybYVi9K8zhOQQkUoX5nIFuFghWm3blwPS+WTfI4kUD4qL/oLY6nFHSbqmRmbp3ox8c
 v6Awt3rfxKig==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 19:57:42 -0700
IronPort-SDR: WFEBSfZYWcxZUCz0SpkCLeFLBC3VnIZMDaxm4sVpF10iuWy3/lRmpKEsXfro3/7dBGS+f7VVgY
 QjTrMCP2M/ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,478,1583222400"; d="scan'208";a="259347567"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga008.fm.intel.com with ESMTP; 05 Jun 2020 19:57:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jun 2020 19:57:33 -0700
Message-Id: <20200606025740.3308880-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/7] Remaining RKL patches
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

Key deltas from v3:
 - Squashed ABOX_CTL and BW_BUDDY patches into a single patch that uses
   a single abox_mask field in the device_info structure.  A special
   case is added to also program the abox0 instance of ABOX_CTL on
   gen12, even on platforms that use abox1+abox2 instead.
 - Fixed DSI transcoder avoidance logic
 - Set a custom hpd_pin value for RKL+TGP at initialization rather than
   using a separate mapping table for that platform+pch combo.

Aditya Swarup (1):
  drm/i915/rkl: Don't try to read out DSI transcoders

Matt Roper (6):
  drm/i915/rkl: RKL uses ABOX0 for pixel transfers
  drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout
  drm/i915/rkl: Update TGP's pin mapping when paired with RKL
  drm/i915/rkl: Add DPLL4 support
  drm/i915/rkl: Handle HTI
  drm/i915/rkl: Add initial workarounds

 drivers/gpu/drm/i915/display/intel_ddi.c      | 18 +++-
 drivers/gpu/drm/i915/display/intel_display.c  | 55 +++++++++---
 .../drm/i915/display/intel_display_power.c    | 55 ++++++------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 50 ++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  9 ++
 drivers/gpu/drm/i915/display/intel_sprite.c   |  5 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 88 ++++++++++++-------
 drivers/gpu/drm/i915/i915_drv.h               |  3 +
 drivers/gpu/drm/i915/i915_pci.c               |  3 +
 drivers/gpu/drm/i915/i915_reg.h               | 36 ++++++--
 drivers/gpu/drm/i915/intel_device_info.h      |  2 +
 12 files changed, 239 insertions(+), 86 deletions(-)

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
