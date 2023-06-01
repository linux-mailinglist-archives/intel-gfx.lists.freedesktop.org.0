Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE7871A3A3
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 18:05:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F04910E57A;
	Thu,  1 Jun 2023 16:05:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C33D610E57A
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 16:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685635505; x=1717171505;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MgCzTA2ggkN2/ZN6ootTpcRSwq+IW0cBeLd3HGN4bGo=;
 b=Jj/BH2MMPxAAolYlMw8dfSK4K2s54h72ukMHNpXuzhta2Ip6eEvZ2huB
 MaexHsC6JfJVudwx5A33rYZXmQDUnbJeBUdU98XlPAtWCrgJHzBGP1tKH
 hrJJnChiav7KTLb40jdfCMlegCEqfHEkJiIch9vPXQQ9CPnc8pJUnDad1
 zwzcXB8UOowcwNDiZMML2Ldp4j+1cxviuBzmMtiZO6NIhdEUBd2rDwNuk
 /1crn0CProqAwPx0ret6DE65wjNk3sruBz1OO4K+wg9aAbeOhk3ZEI01T
 lITtmzOSnPVTeWkqRBjFv7qL5HrTIpqoS8QIAdJ0k9pWY1vnFW7Bd0weN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="358024834"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="358024834"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 09:04:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="701608441"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="701608441"
Received: from unknown (HELO vgovind2-mobl3.fi.intel.com) ([10.237.66.43])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 09:04:03 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jun 2023 19:03:43 +0300
Message-Id: <20230601160350.43888-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v12 0/7] mtl: add support for pmdemand
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
 drivers/gpu/drm/i915/display/intel_bw.c       | 353 ++++++++----
 drivers/gpu/drm/i915/display/intel_bw.h       |   6 +
 drivers/gpu/drm/i915/display/intel_display.c  |  14 +
 .../gpu/drm/i915/display/intel_display_core.h |  11 +
 .../drm/i915/display/intel_display_driver.c   |   7 +
 .../gpu/drm/i915/display/intel_display_irq.c  |  23 +-
 .../drm/i915/display/intel_display_power.c    |  14 +-
 .../drm/i915/display/intel_modeset_setup.c    |  18 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 525 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  56 ++
 drivers/gpu/drm/i915/i915_reg.h               |  36 +-
 12 files changed, 941 insertions(+), 123 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h

-- 
2.34.1

