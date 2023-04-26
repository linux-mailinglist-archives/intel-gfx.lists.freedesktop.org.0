Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C0D6EF504
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:06:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82AA010E989;
	Wed, 26 Apr 2023 13:06:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7170210E98D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 13:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682514388; x=1714050388;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=d/V0dTKVcC7V4df2Qw4zxJvV9LMcIk5o2fyqaxU9yd8=;
 b=a6Kk4/6Pn9BBP8t5vdHkUD+QVlxz7hRd2L4yt/JgQwjH+ZcXZICBFA0c
 hAZtTF4PuCKKPISph6p62bAT/0wgijE3URNaBWzJ979aBAS4BKmgCgjX0
 tI2tqWtNJhaTmZrKSlNHEqYaO24aWn4LXaamND9BAbHwrqvBBmK1907N+
 aMAhP7MWsCg77TdUpOg8DWP1yFyuTj5IwP0sWA3fDIxhx/l/YHfRc/hO4
 gWotFapEvdP+CwtT0m5AS+30D5b0R8mTd6qgahJ629qU+DJdUE5VV1yQv
 eY4+W1sqjU12/ltnw20Mg4gMZ7XwceAiyPj326V7XewotvFDMN9pyqWLN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="336013891"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="336013891"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 06:06:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="1023612064"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="1023612064"
Received: from aeherrer-mobl2.amr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.37.76])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 06:06:24 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 16:06:11 +0300
Message-Id: <20230426130619.1227635-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/8] mtl: add support for pmdemand
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

pmdemand support patches for MTL

SAGV configuration support for MTL

v2: added one missing patch in the previous version

v3: chekcpatch warning fixes
    update index handling for the icl/tgl QGV point handling
    program pmdemand code simplified

Mika Kahola (1):
  drm/i915/mtl: Add support for PM DEMAND

Vinod Govindapillai (7):
  drm/i915: fix the derating percentage for MTL
  drm/i915: update the QGV point frequency calculations
  drm/i915: store the peak bw per QGV point
  drm/i915: extract intel_bw_check_qgv_points()
  drm/i915: modify max_bw to return index to intel_bw_info
  drm/i915/mtl: find best QGV point and configure sagv
  drm/i915/display: provision to suppress drm_warn in
    intel_get_crtc_new_encoder

 drivers/gpu/drm/i915/Makefile                 |   3 +-
 drivers/gpu/drm/i915/display/intel_bw.c       | 350 +++++++++-----
 drivers/gpu/drm/i915/display/intel_bw.h       |   6 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  17 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +-
 .../gpu/drm/i915/display/intel_display_core.h |   8 +
 .../drm/i915/display/intel_display_driver.c   |   7 +
 .../drm/i915/display/intel_display_power.c    |   8 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |   8 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 450 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  24 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |   2 +-
 drivers/gpu/drm/i915/i915_irq.c               |  21 +-
 drivers/gpu/drm/i915/i915_reg.h               |  36 +-
 16 files changed, 814 insertions(+), 133 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h

-- 
2.34.1

