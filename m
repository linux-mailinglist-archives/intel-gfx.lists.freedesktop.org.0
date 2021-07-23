Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 952913D34E2
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 08:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C0076FA49;
	Fri, 23 Jul 2021 06:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D98E6FA49
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 06:58:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="211829748"
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="211829748"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 23:58:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="502405567"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Jul 2021 23:58:29 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 15:05:41 +0800
Message-Id: <20210723070548.29315-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [V3 0/7] MIPI DSI driver enhancements
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
Cc: cooper.chiou@intel.com, william.tseng@intel.com, jani.nikula@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2:
- Check for dsc enable and slice count ==1 then allow to
  double confirm min cdclk value.

v3:
- Add two patches that fix MIPI DCS backlight control.

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
 drivers/gpu/drm/i915/i915_reg.h               | 10 ++++
 7 files changed, 102 insertions(+), 33 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
