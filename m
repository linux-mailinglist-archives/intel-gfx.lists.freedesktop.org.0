Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9B97126EA
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 14:51:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72ECC10E1A6;
	Fri, 26 May 2023 12:51:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EC5710E1A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 12:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685105486; x=1716641486;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XVo48wyfzNABTRLZzaUp/Tdm9sAtaYofEY205bkYhwM=;
 b=kmorTNpGPmxkHsApI4rRIkrVKxkbDs32Wp+dFgV+hZMUMprfXNJBek9E
 0wjkDx3gh9znGjTNinYiIA3nGqj6Fj2Psr+GuQYf+PNpuupuCYZ7bjO9f
 7Hwl3ewQ30Bzr6xSX5e34nrNqEJHbqurK5k6ZNAjdO1mvEWMIprQiHOTZ
 JQZ0S+KH6zo17972N0+Eo3p6HjZ9cKSW4FUH4iPDFLrUZmjM8rNaev+Gr
 J9M5gGC+d/wDy/A3AS94KSh2Z6uUNHSICbYKatM/4xj5TgEK/WmThJ3NQ
 g/v4CaYNPt2rb4tlXEteRM0cgt51ZQ+uxg+nXtQNxE5IaBU1vBCDq3/fA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="334545574"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="334545574"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 05:51:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="682707913"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="682707913"
Received: from vcouthon-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.208.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 05:51:20 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 15:50:48 +0300
Message-Id: <20230526125055.39886-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 0/7] mtl: add support for pmdemand
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

AGV configuration support for MTL

v2: added one missing patch in the previous version

v3: chekcpatch warning fixes
    update index handling for the icl/tgl QGV point handling
    program pmdemand code simplified

v4: update to debufs and pipe values pmdemand regiters
    removed the macro usage in update_pmdemand_values

V5: Addressing comments from Gustavo and Jani
    And some other fixes for issues from CI

v6: Addressing some comments from Gustavo
    Updates to pmdemand state struct, active phys calculations
    Got rid of suppress warning patch from v5

v7: Rebased and updates to max ddiclk and active phys calculations

v8: updates to active phys calcuations

v9: Address styling issues

Mika Kahola (1):
  drm/i915/mtl: Add support for PM DEMAND

Vinod Govindapillai (6):
  drm/i915: fix the derating percentage for MTL
  drm/i915: update the QGV point frequency calculations
  drm/i915: store the peak bw per QGV point
  drm/i915: extract intel_bw_check_qgv_points()
  drm/i915: modify max_bw to return index to intel_bw_info
  drm/i915/mtl: find the best QGV point for the SAGV configuration

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_bw.c       | 353 +++++++----
 drivers/gpu/drm/i915/display/intel_bw.h       |   6 +
 drivers/gpu/drm/i915/display/intel_display.c  |  14 +
 .../gpu/drm/i915/display/intel_display_core.h |  11 +
 .../drm/i915/display/intel_display_driver.c   |   7 +
 .../gpu/drm/i915/display/intel_display_irq.c  |  23 +-
 .../drm/i915/display/intel_display_power.c    |   8 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 572 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  24 +
 drivers/gpu/drm/i915/i915_reg.h               |  36 +-
 11 files changed, 934 insertions(+), 121 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h

-- 
2.34.1

