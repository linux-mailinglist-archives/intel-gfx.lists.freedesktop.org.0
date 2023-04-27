Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED94B6F07C7
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 17:01:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5543010EB5E;
	Thu, 27 Apr 2023 15:01:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AF1310EB5E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 15:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682607660; x=1714143660;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NSdJubwgjS8HrulucKZlNw2FQZJMZhMxm0DmmBmIoBU=;
 b=cME3UTEG2lZQyQOyaPSbeKdvx5TEd+C26rzTI2kgO9j1RIFrGO0P/15T
 pt7eCZ/WRLTTUwr9X36h/2EkSrq0Rlm0PMAkz+ceV4coc4YCF6rjNDB5s
 r/D14OpyHbGktI7v7NMWZ8vTKjkU8CA6IGwBvxdZPngO6/wYD1CKWYCi6
 pYJZ+ca+ulwZNADqskdhJUUYMPLL8vsG4hyb0GTu3SSPRx6QJzDJIIHY/
 nrEIlTP9ZWWpL5LWnuZQCeKAx10pnqtGpso2Pjl4f7LWC4EOPWJasoMqo
 kWXFFrwSOWNyONqQGatE82dVbd8hVD09otV+Sofw3Zd0TbS/8pcw1bC5E A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="410520802"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="410520802"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 08:00:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="838420094"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="838420094"
Received: from jfedorov-mobl2.ccr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.216.111])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 08:00:49 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 18:00:08 +0300
Message-Id: <20230427150016.1566833-1-vinod.govindapillai@intel.com>
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

v4: update to debufs and pipe values pmdemand regiters
    removed the macro usage in update_pmdemand_values

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
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 455 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  24 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |   2 +-
 drivers/gpu/drm/i915/i915_irq.c               |  21 +-
 drivers/gpu/drm/i915/i915_reg.h               |  36 +-
 16 files changed, 819 insertions(+), 133 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h

-- 
2.34.1

