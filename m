Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 856E46FFD28
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 01:18:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D094E10E611;
	Thu, 11 May 2023 23:18:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CD4910E611
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 23:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683847086; x=1715383086;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UJn/xXXVfMyZPTtSAa/hoYkKr3n6FN0Mo8+OjnMuD8s=;
 b=j7HaPo6U594az4NPnzzEzES/j/6ywUNPqkHiGf6cdgJEOZVEMvH9Qyjd
 8sc2dbI1aioO/hndyYMJPr3BRv0uCg5dXQLr97aX8qB3ucRI3NRTLYn/j
 jq4739UpS8HUwvJfUHJhZq8x4bAteL/co2VxlDSZozd41XpimSl2pl5kd
 xXCzzsbAoxYcPZI+VOGjUfWBlOYNbnNxxkMXxffAJ5/w9VOntkdGAjHMS
 Pc0HdVOWrAseRw+TWqqKfQ/PobiDZ5nRUKoHk0UAhNiIt+QRhUR4Nvmnt
 eMRp8nHtieubuykd86gI/Cxqq0HuBlVzMZiTDMqbvn8PxrvM4q6hGhgJq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="352897228"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="352897228"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 16:18:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="694012794"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="694012794"
Received: from ptorre-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.61.205])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 16:18:02 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 May 2023 02:17:42 +0300
Message-Id: <20230511231750.313467-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/8] mtl: add support for pmdemand
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

V5: Addressing comments from Gustavo and Jani
    And some other fixes for issues from CI

Mika Kahola (1):
  drm/i915/mtl: Add support for PM DEMAND

Vinod Govindapillai (7):
  drm/i915: fix the derating percentage for MTL
  drm/i915: update the QGV point frequency calculations
  drm/i915: store the peak bw per QGV point
  drm/i915: extract intel_bw_check_qgv_points()
  drm/i915: modify max_bw to return index to intel_bw_info
  drm/i915/mtl: find the best QGV point for the SAGV configuration
  drm/i915/display: provision to suppress drm_warn in
    intel_get_crtc_new_encoder

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_bw.c       | 353 ++++++++-----
 drivers/gpu/drm/i915/display/intel_bw.h       |   6 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  24 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +-
 .../gpu/drm/i915/display/intel_display_core.h |   8 +
 .../drm/i915/display/intel_display_driver.c   |   7 +
 .../drm/i915/display/intel_display_power.c    |   8 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |   8 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 465 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  24 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |   2 +-
 drivers/gpu/drm/i915/i915_irq.c               |  23 +-
 drivers/gpu/drm/i915/i915_reg.h               |  36 +-
 16 files changed, 839 insertions(+), 133 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h

-- 
2.34.1

