Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13427718E6C
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 00:27:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04EDF10E09A;
	Wed, 31 May 2023 22:27:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A7F910E09A
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 22:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685572050; x=1717108050;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RNhqpK/6IyyobzO9G0jHTqy05e7KH2BcAmmmdiTKaNI=;
 b=GTPuJi256mFnNERUd7ReK1yA/hFQw8JwlsLtmgJptdrDGECl3WD3IrtN
 4Fc01tBjHt/Zm3YvpwH/wUhoxI0FRpvAXQa/k2DUSLGu0IrZUiZgqgRS3
 XvZ4xszjMmQsZFaqgFBY7mFy71ivbPgbEw/0MazL5zWsn0wcogn0zTx8w
 2zcDu786DkW7cT6e8Ue3qLb7ffHzFfvpTFtH8lvBoVuutcytovDbgKQFj
 BxqS5Bb+N8m8YEp+/TVft0tKeB11ALnPLYp2HmPH0M7KByaQgBdMi9Zfe
 U4ddlKgWYuwUBHSGkP+IcoUy6blR0p8Yi9oP6cKDlMiQl2Lj/QXtFykk5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="383651524"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="383651524"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 15:27:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="1037222050"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="1037222050"
Received: from gliakhov-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.47.114])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 15:27:26 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jun 2023 01:27:07 +0300
Message-Id: <20230531222714.439313-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 0/7] mtl: add support for pmdemand
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

SAGV configuration support for MTL

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

v10: Updates to phys calculation, pmdemand state initialization during
     HW readout / sanitization

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
 .../drm/i915/display/intel_display_power.c    |  14 +-
 .../drm/i915/display/intel_modeset_setup.c    |  18 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 556 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  56 ++
 drivers/gpu/drm/i915/i915_reg.h               |  36 +-
 12 files changed, 972 insertions(+), 123 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h

-- 
2.34.1

