Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2EA3BE255
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 07:06:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB0F86E81D;
	Wed,  7 Jul 2021 05:06:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 937026E81C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 05:06:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="196406275"
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="196406275"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 22:06:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="457348288"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga008.jf.intel.com with ESMTP; 06 Jul 2021 22:06:46 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jul 2021 22:06:37 -0700
Message-Id: <20210707050645.31043-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/8] Abstract steppings for all platforms
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

Instead of having a separate lookup table in intel_dmc.c per
platform, centralize stepping info in intel_step.c. We already
have stepping info table for some platforms in intel_step.c, add
stepping information for remaining platforms and use this info
to laod specific blob for a given stepping/substepping
combination.

While at it, change the names of stepping info table
to simpler names: s/<platform>_revid_step_tbl/<platform>_revids


Anusha Srivatsa (8):
  drm/i915/step: s/<platform>_revid_tbl/<platform>_revids
  drm/i915/dmc: Use RUNTIME_INFO->step for DMC
  drm/i915/skl: s/IS_SKL_REVID/IS_SKL_GT_STEP
  drm/i915/bxt: s/IS_BXT_REVID/IS_BXT_GT_STEP
  drm/i915/icl: s/IS_ICL_REVID/IS_ICL_GT_STEP
  drm/i915/glk: s/IS_GLK_REVID/IS_GLK_GT_STEP
  drm/i915/rkl: s/IS_RKL_REVID/IS_RKL_GT_STEP
  drm/i915/dg1: s/IS_DG1_REVID/IS_DG1_GT_STEP

 .../drm/i915/display/intel_display_power.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 112 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.c      |   4 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c   |   2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  24 ++--
 drivers/gpu/drm/i915/i915_drv.c               |   6 +-
 drivers/gpu/drm/i915/i915_drv.h               |  63 ++++------
 drivers/gpu/drm/i915/intel_pm.c               |   2 +-
 drivers/gpu/drm/i915/intel_step.c             |  93 +++++++++++++--
 drivers/gpu/drm/i915/intel_step.h             |   6 +
 10 files changed, 200 insertions(+), 114 deletions(-)

-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
