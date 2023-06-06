Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1714723DA6
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 11:35:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E420110E21B;
	Tue,  6 Jun 2023 09:35:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD82110E21B
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 09:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686044122; x=1717580122;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sUwO5UnNYNaYy3ZRBadbXpYY5Ur6o9KtwVl0sgYlD1s=;
 b=Yc5NEbPzZ0AXrA5Orm76nEeksymYx/yTPwJRX7DrcSl9qyzwbLpyV9TO
 jtacWxyvBC0lOPHAZJkCPCy8cEukHkaR2qmrS0MWDMKR0aventLi3P92P
 u6he/RB0VgGSEoKNcOOzxumWaCUI2hx2TZD8Fdp+cgeT1z9x7IXgPuz9o
 TYwqH3RJi3k6lachQV69Af3i2UiZLkZUbZreZne38y9QEj7zebsr4dzgk
 i8obiRFywo8R326LhN0QboNOqPG2adAu6Hv8bArwGsHKCQCWV3J46/R1N
 5RWvHuvkrrzmGFrpTM9ijWlj2UI263X8lWs1BKLLxTPqf6xZkhfTxzqRA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="336974219"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="336974219"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 02:35:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="955684111"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="955684111"
Received: from mgmohiud-mobl2.gar.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.42.181])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 02:35:19 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 12:35:02 +0300
Message-Id: <20230606093509.221709-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v14 0/7] mtl: add support for pmdemand
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

v11: Fix CI checkpatch warnings

v12: Addressing comments

v13: Updates based on imre's comments to handle non serialize cases,
     updates tp phys mask during sanitize calls after HW readout

v14: check display version before accessig pmdemand functions

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
 drivers/gpu/drm/i915/display/intel_bw.c       | 345 ++++++---
 drivers/gpu/drm/i915/display/intel_bw.h       |   6 +
 drivers/gpu/drm/i915/display/intel_display.c  |  14 +
 .../gpu/drm/i915/display/intel_display_core.h |  11 +
 .../drm/i915/display/intel_display_driver.c   |   7 +
 .../gpu/drm/i915/display/intel_display_irq.c  |  23 +-
 .../drm/i915/display/intel_display_power.c    |  14 +-
 .../drm/i915/display/intel_modeset_setup.c    |  36 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 714 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  69 ++
 drivers/gpu/drm/i915/i915_reg.h               |  36 +-
 12 files changed, 1153 insertions(+), 123 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h

-- 
2.34.1

