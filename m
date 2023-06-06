Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D35B7237E9
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 08:43:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D953110E20E;
	Tue,  6 Jun 2023 06:43:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC8FB10E20E
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 06:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686033822; x=1717569822;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=37cnH630xW9qkeOOhf1wED7pK9z52q3w2tymt3OQqh0=;
 b=elMQzJ1e5FHjQXWlSwivDQhQ3i3UYy9ZAGW0pL5zpfOAit1Pmd0KqhVf
 RxgHDCML7ODCGFjCHFF0Z1M5TlNTK0g4qiTfPGfR65Yuav8RI0IBYLOdU
 JQpWRBsCjg26IU8+tkRn+rANv779pzAioWPit8gxd3/sHwyurrlQIlIqQ
 PLURsNQgsKwLTQhOG0cE/Z42JIj7fFa7CAqwZm9wVkuP4EOLJrkSvfOF1
 eI822VxvlCGhjGU6N6D1ZyzUspHbuFACafDXBWJzAp/TyYf7BXFI6UUwg
 acDF/NfoXwoUos09DDNNl7nYb6m/+9bP1dAXBLu3aDwiYNgyx4AwHuHDF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="336940562"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="336940562"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 23:43:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="778865524"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="778865524"
Received: from mgmohiud-mobl2.gar.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.42.181])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 23:43:39 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 09:43:20 +0300
Message-Id: <20230606064327.188226-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v13 0/7] mtl: add support for pmdemand
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
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 667 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  58 ++
 drivers/gpu/drm/i915/i915_reg.h               |  36 +-
 12 files changed, 1095 insertions(+), 123 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h

-- 
2.34.1

