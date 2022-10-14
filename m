Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8745C5FF677
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Oct 2022 01:03:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 468B310E00C;
	Fri, 14 Oct 2022 23:03:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C49A10E00C;
 Fri, 14 Oct 2022 23:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665788583; x=1697324583;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6vKpb50LlrgTfmKgLwFNpxDPDJp7OXkE7SbshbAoHkQ=;
 b=lmodMBrPZZgbJZERiL27SAnpY2K9bP5ADhffg2ED461cHWOpXmMqIzEf
 23Exwy9EESTXBZjtlS4xqigj64a7SUJjprdJbYTfyfphfI6ohSyeP3sbg
 mdq22USZ1aQsc8RpnAsenaVHD6W7TK07UMQtCIjjFUmk9kW5+MLq6y91L
 R6M3PICNWE+q0CeVmJLwH0961oAKKiJ7MZBUbC8do0Wz8lCyFgqZkYi0K
 7BRI/fUwwqGwoi0q2jdXLdk5gAQi6KSJV37tNFJY4ZnYbawtW16Jj+dvi
 5mJHbReZsB4fY1YxJjyf+XwEga61ombXOB3rYLuz/O4QyZbGLp96wcGba w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="285216961"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="285216961"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 16:03:02 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="696471686"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="696471686"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 16:03:02 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 16:02:25 -0700
Message-Id: <20221014230239.1023689-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 00/14] Explicit MCR handling and MTL steering
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Steering of multicast/replicated registers becomes a bit more
complicated on Meteor Lake.  Whereas previously the control register we
used to manage the steering was only used by our driver[*], software's
control of steering has now been consolidated with the controls for
various other hardware/firmware agents into a single register.  We can
no longer utilize pre-programmed implicit steering since other firmware
agents may change the steering target and not restore it afterward;
we'll need to explicitly steer all types of MCR registers (including the
GSLICE/COMPUTE/DSS ranges that have been handled implicitly in the
past).  Furthermore, since multiple agents will now be sharing a single
steering control register, races are possible.  To address this, the
hardware adds a new MCR semaphore register which is supposed to be used
to temporarily lock the steering while performing MCR operations.

It's going to become important for us to handle accesses of multicast
registers very explicitly going forward.  This series provides some prep
work for that by updating our register definitions to clearly define
registers as either MCR or non-MCR and ensure that we're using the
intel_gt_mcr_*() functions rather than intel_uncore_*() when operating
on MCR registers.  By declaring MCR registers as a new C type (i.e., not
an i915_reg_t) we can have the compiler help us find any mistakes where
non-MCR functions are used on MCR registers and vice-versa.

This series also includes the general MCR steering tables and logic, but
does not yet introduce the support for the semaphore register that will
be used to coordinate steering updates with other agents; we'll provide
that support in a separate series once this preparation work has landed.


[*] This is a bit of an oversimplification; there are some hardware and
software debug tools that use the same MCR_SELECTOR register that i915
does and which could potentially re-steer MCR accesses behind our back.
E.g., simply using IGT's "intel_reg" tool to write the MCR_SELECTOR
register at the wrong time could interfere with driver operation.  But
given that these debug facilities require root privileges to run and are
only used by people intentionally debugging the driver or hardware, we
can ignore such races for real-world usage.

v2:
 - Add MCR handling of TLB invalidation registers (since they're in the
   GAM range, their read behavior behaves a bit more like unicast
   registers, but they should still be treated as MCR for writes).
 - Add MCR rmw and 'wait_for_reg' operations; these are only typically
   needed for GAM registers.
 - Switched a few more instances of MISCCPCTL, HALF_SLICE_CHICKEN3, and
   the fault registers over to MCR handling where appropriate.  (Bala)

v3:
 - Several checkpatch fixes
 - Update intel_gt_mcr_multicast_rmw() to the register's original value,
   aligning with the recent change to intel_uncore_rmw.
 - Move transition to MCR functions in mmio_invalidate_full() to the
   earlier patch that is dedicated to such changes.  (Bala)
 - Enforce stricter type checking on i915_mmio_reg_offset.  (Jani)
 - Drop several unnecessary GVT changes.
 - Use IP naming (Xe_LPG and Xe_LPM+) more consistently.
 - Update debug dumping of steering for MTL and beyond.
 - Handle the MULTICAST bit in the steering control register more
   explicitly on MTL and beyond where we no longer have implicit
   steering.  (Bala)

Matt Roper (14):
  drm/i915/gen8: Create separate reg definitions for new MCR registers
  drm/i915/xehp: Create separate reg definitions for new MCR registers
  drm/i915/gt: Drop a few unused register definitions
  drm/i915/gt: Correct prefix on a few registers
  drm/i915/gt: Add intel_gt_mcr_multicast_rmw() operation
  drm/i915/xehp: Check for faults on primary GAM
  drm/i915/gt: Add intel_gt_mcr_wait_for_reg_fw()
  drm/i915: Define MCR registers explicitly
  drm/i915/gt: Always use MCR functions on multicast registers
  drm/i915/guc: Handle save/restore of MCR registers explicitly
  drm/i915/gt: Add MCR-specific workaround initializers
  drm/i915: Define multicast registers as a new type
  drm/i915/xelpg: Add multicast steering
  drm/i915/xelpmp: Add multicast steering for media GT

 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   4 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |   4 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            | 126 ++++-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        | 279 ++++++++--
 drivers/gpu/drm/i915/gt/intel_gt_mcr.h        |  24 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 162 +++---
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   2 +
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  22 +-
 drivers/gpu/drm/i915/gt/intel_gtt.h           |   2 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  12 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 491 +++++++++++-------
 .../gpu/drm/i915/gt/intel_workarounds_types.h |   9 +-
 .../gpu/drm/i915/gt/selftest_workarounds.c    |   2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  60 ++-
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    |   8 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |  12 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |   4 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c       |  14 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  12 +-
 drivers/gpu/drm/i915/i915_pci.c               |   1 +
 drivers/gpu/drm/i915/i915_reg_defs.h          |  27 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   2 +-
 drivers/gpu/drm/i915/intel_pm.c               |  18 +-
 23 files changed, 902 insertions(+), 395 deletions(-)

-- 
2.37.3

