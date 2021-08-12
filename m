Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CBC3EA7B4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 17:41:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F106E42A;
	Thu, 12 Aug 2021 15:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A7F56E42A
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 15:41:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="202542151"
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="202542151"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 08:41:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="469795883"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga008.jf.intel.com with ESMTP; 12 Aug 2021 08:40:59 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 vandita.kulkarni@intel.com, cooper.chiou@intel.com,
 william.tseng@intel.com, Lee Shawn C <shawn.c.lee@intel.com>
Date: Thu, 12 Aug 2021 23:42:30 +0800
Message-Id: <20210812154237.13911-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [v4 0/7] MIPI DSI driver enhancements
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

v2:
- Check for dsc enable and slice count ==1 then allow to
  double confirm min cdclk value.

v3:
- Add two patches that fix MIPI DCS backlight control.

v4:
- Remove redundant ICP_PP_CONTROL() define.

Lee Shawn C (7):
  drm/i915/dsi: send correct gpio_number on gen11 platform
  drm/i915/jsl: program DSI panel GPIOs
  drm/i915/dsi: wait for header and payload credit available
  drm/i915/dsi: refine send MIPI DCS command sequence
  drm/i915: Get proper min cdclk if vDSC enabled
  drm/i915/dsi: Retrieve max brightness level from VBT.
  drm/i915/dsi: Send proper brightness value via MIPI DCS command

 drivers/gpu/drm/i915/display/icl_dsi.c        | 50 +++++++++----------
 drivers/gpu/drm/i915/display/intel_bios.c     |  3 ++
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 10 ++++
 .../i915/display/intel_dsi_dcs_backlight.c    | 15 ++++--
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  | 46 ++++++++++++++++-
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 6 files changed, 92 insertions(+), 33 deletions(-)

-- 
2.17.1

