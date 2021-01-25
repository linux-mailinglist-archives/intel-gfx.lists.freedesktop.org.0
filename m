Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C82FE302610
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:09:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4996E16D;
	Mon, 25 Jan 2021 14:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7009E6E16D
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:09:32 +0000 (UTC)
IronPort-SDR: Xl9QijlUnzJF/u3HinN8JIYuLhPKTd+uev/yW1OiwZbmCYpycJCncNdxyYwJ/EGYIM6rccU/xN
 UCwWg5ifqTxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="166831982"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="166831982"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 06:08:22 -0800
IronPort-SDR: JGA2aGuASrZ0v9WU4WXswDWCIxu5PcZ46uQBechFcwA2MWQhJp3SGq9aVRQn4JfFdpqt2mkjCy
 GE91GQlsO/tQ==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="472319462"
Received: from iduggana-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.81.9])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 06:08:18 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 06:07:43 -0800
Message-Id: <20210125140753.347998-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/10] Alderlake-S platform enabling patches
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch revises all the changes suggested in rev 3 of
Introduce Alderlake-S series for first 10 patches.
https://patchwork.freedesktop.org/patch/405772/?series=82917&rev=3

Most of the patches have already been reviewed and are good for merge.
I will resend rest of the series once we have focussed reviews on the
pending patches.

Please ignore the patch:
x86/gpu: Add Alderlake-S stolen memory support
as it was picked up to prevent compilation issues and maintaining
sequence of patches.
The correct location for picking the latest revision of that patch is 
here:
https://patchwork.freedesktop.org/series/86239/

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>

Aditya Swarup (5):
  drm/i915/adl_s: Configure DPLL for ADL-S
  drm/i915/adl_s: Configure Port clock registers for ADL-S
  drm/i915/adl_s: Initialize display for ADL-S
  drm/i915/adl_s: Add adl-s ddc pin mapping
  drm/i915/adl_s: Add vbt port and aux channel settings for adls

Anusha Srivatsa (3):
  drm/i915/adl_s: Add PCH support
  drm/i915/adl_s: Add Interrupt Support
  drm/i915/adl_s: Add PHYs for Alderlake S

Caz Yokoyama (1):
  x86/gpu: Add Alderlake-S stolen memory support

Matt Roper (1):
  drm/i915/adl_s: Update combo PHY master/slave relationships

 arch/x86/kernel/early-quirks.c                |  1 +
 drivers/gpu/drm/i915/display/intel_bios.c     | 70 +++++++++++++++----
 .../gpu/drm/i915/display/intel_combo_phy.c    | 11 ++-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 62 ++++++++++------
 drivers/gpu/drm/i915/display/intel_display.c  | 31 +++++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 38 ++++++++--
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 20 +++++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++
 drivers/gpu/drm/i915/i915_irq.c               |  3 +-
 drivers/gpu/drm/i915/i915_reg.h               | 50 +++++++++++--
 drivers/gpu/drm/i915/intel_pch.c              |  8 ++-
 drivers/gpu/drm/i915/intel_pch.h              |  3 +
 12 files changed, 246 insertions(+), 55 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
