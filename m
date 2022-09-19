Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 667665BD75A
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 00:33:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21C1310E078;
	Mon, 19 Sep 2022 22:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0DCE10E078;
 Mon, 19 Sep 2022 22:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663626787; x=1695162787;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aE0rYqfKJH3Gy0heeP5yzwEhlkuSuuFnRvkALL2mDNA=;
 b=I9ScCrfjG+N2ubjzvxuf5ozPMtBmL/pRHLtBnHIa7+oiWja1yauev8pC
 dZPfY6TpMJkxdrUY1TGyEeVSxPuUV/zVv7mnd2gieUTkgfIlcDn3XnT0n
 wbz2K2DV0VEI+zyNI99iQIxsfmZnco+C3xxXusab1zEHn4w7lYDWPShIP
 XzJNrJhs6krAIvTJFOQ57fEM2hOPIYzo+4zbRLxgNig0+1IO7SqmdCPXl
 t+vjqZjjCM/eXMYWM+Bg9o/xdWjeKsjpQEsUyTfmX/ABhIJFlhPabZLGi
 IgJKEJ545rnutTZapCHUk/GtZaZrUQ3TGsDfqshVTTztlvm5rMOBKoyYr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="286585474"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="286585474"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 15:33:07 -0700
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="794030753"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 15:33:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Sep 2022 15:32:47 -0700
Message-Id: <20220919223259.263525-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/12] Explicit MCR handling and MTL steering
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

Matt Roper (12):
  drm/i915/gen8: Create separate reg definitions for new MCR registers
  drm/i915/xehp: Create separate reg definitions for new MCR registers
  drm/i915/gt: Drop a few unused register definitions
  drm/i915/gt: Correct prefix on a few registers
  drm/i915/xehp: Check for faults on primary GAM
  drm/i915: Define MCR registers explicitly
  drm/i915/gt: Always use MCR functions on multicast registers
  drm/i915/guc: Handle save/restore of MCR registers explicitly
  drm/i915/gt: Add MCR-specific workaround initializers
  drm/i915: Define multicast registers as a new type
  drm/i915/mtl: Add multicast steering for render GT
  drm/i915/mtl: Add multicast steering for media GT

 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   4 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |   4 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  40 +-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        | 149 ++++--
 drivers/gpu/drm/i915/gt/intel_gt_mcr.h        |  14 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 157 +++---
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   9 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  44 +-
 drivers/gpu/drm/i915/gt/intel_gtt.h           |   2 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  12 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 470 +++++++++++-------
 .../gpu/drm/i915/gt/intel_workarounds_types.h |   9 +-
 .../gpu/drm/i915/gt/selftest_workarounds.c    |   2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  60 ++-
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    |   8 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |  12 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |  19 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c       |  16 +-
 drivers/gpu/drm/i915/i915_pci.c               |   1 +
 drivers/gpu/drm/i915/i915_reg_defs.h          |  22 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  12 +-
 drivers/gpu/drm/i915/intel_pm.c               |  20 +-
 22 files changed, 700 insertions(+), 386 deletions(-)

-- 
2.37.3

