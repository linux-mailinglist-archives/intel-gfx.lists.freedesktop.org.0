Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6DA3FED85
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 14:11:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 881E36E517;
	Thu,  2 Sep 2021 12:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EBDF6E517
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 12:11:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="206217980"
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="206217980"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 05:11:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="461627510"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by fmsmga007.fm.intel.com with ESMTP; 02 Sep 2021 05:11:17 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 vandita.kulkarni@intel.com, cooper.chiou@intel.com,
 william.tseng@intel.com, Lee Shawn C <shawn.c.lee@intel.com>
Date: Thu,  2 Sep 2021 20:14:24 +0800
Message-Id: <20210902121429.27606-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [v3 0/5] DSI driver improvement
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

v2: Get data length of brightness value more easily while driver try to
    read/write MIPI_DCS_DISPLAY_BRIGHTNESS command.
v3: fix checkpatch warning.

Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>

Lee Shawn C (5):
  drm/i915/dsi: wait for header and payload credit available
  drm/i915/dsi: refine send MIPI DCS command sequence
  drm/i915: Get proper min cdclk if vDSC enabled
  drm/i915/dsi: Retrieve max brightness level from VBT
  drm/i915/dsi: Read/write proper brightness value via MIPI DCS command

 drivers/gpu/drm/i915/display/icl_dsi.c        | 50 +++++++++----------
 drivers/gpu/drm/i915/display/intel_bios.c     |  3 ++
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 10 ++++
 .../i915/display/intel_dsi_dcs_backlight.c    | 33 ++++++++----
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 5 files changed, 62 insertions(+), 35 deletions(-)

-- 
2.17.1

