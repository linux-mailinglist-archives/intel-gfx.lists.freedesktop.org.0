Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C731E3D21FF
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 12:18:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E98186EEA2;
	Thu, 22 Jul 2021 10:18:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8059889B7D
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 10:18:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211334962"
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="211334962"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 03:18:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="632937037"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga005.jf.intel.com with ESMTP; 22 Jul 2021 03:18:37 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Jul 2021 18:25:53 +0800
Message-Id: <20210722102558.362-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v2 0/5] MIPI DSI driver enhancements
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

Lee Shawn C (5):
  drm/i915/dsi: send correct gpio_number on gen11 platform
  drm/i915/jsl: program DSI panel GPIOs
  drm/i915/dsi: wait for header and payload credit available
  drm/i915/dsi: refine send MIPI DCS command sequence
  drm/i915: Get proper min cdclk if vDSC enabled

 drivers/gpu/drm/i915/display/icl_dsi.c       | 50 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 10 ++++
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 46 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h              | 10 ++++
 4 files changed, 88 insertions(+), 28 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
