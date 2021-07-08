Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA573C1BDF
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 01:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 890486E94A;
	Thu,  8 Jul 2021 23:18:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6DB26E936
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 23:18:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="209578449"
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="209578449"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 16:18:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="482707884"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga004.fm.intel.com with ESMTP; 08 Jul 2021 16:18:22 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jul 2021 16:18:11 -0700
Message-Id: <20210708231821.9163-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/10] Get stepping info from RUNTIME_INFO->step
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The changes are added on top of Matt's series:
https://patchwork.freedesktop.org/series/92299/
This series modifies the way we get stepping indo for DMC 
to load the right firmware for the right stepping/substepping
combinations.

Since we have a lookup table for BXT in intel_dmc.c and BXT
stepping changes were missing from Matt's series, I have added a
patch for it.

Anusha Srivatsa (3):
  drm/i915/bxt: Use revid->stepping tables
  drm/i915/step: Add intel_step_name() helper
  drm/i915/dmc: Modify intel_get_stepping_info()

Matt Roper (7):
  drm/i915: Make pre-production detection use direct revid comparison
  drm/i915/skl: Use revid->stepping tables
  drm/i915/icl: Use revid->stepping tables
  drm/i915/jsl_ehl: Use revid->stepping tables
  drm/i915/rkl: Use revid->stepping tables
  drm/i915/dg1: Use revid->stepping tables
  drm/i915/cnl: Drop all workarounds

 .../drm/i915/display/intel_display_power.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  51 ++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   4 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c   |   2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  81 ++--------
 drivers/gpu/drm/i915/i915_drv.c               |   8 +-
 drivers/gpu/drm/i915/i915_drv.h               |  80 ++--------
 drivers/gpu/drm/i915/intel_pm.c               |   2 +-
 drivers/gpu/drm/i915/intel_step.c             | 142 +++++++++++++++++-
 drivers/gpu/drm/i915/intel_step.h             |   8 +
 11 files changed, 187 insertions(+), 195 deletions(-)

-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
