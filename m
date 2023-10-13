Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CD97C8CB9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 20:03:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1055310E628;
	Fri, 13 Oct 2023 18:03:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CDFB10E083
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 18:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697220210; x=1728756210;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K6DNYGI3Wl8+f0lm8c+zHOCgwGo9ZhoIfavyBQRRw2o=;
 b=iSH2w9/W3yMvrK1GfJL3APe5QK2caL6MJtkNy1jqp8pwZvr/pvwtGwwN
 UOLLPZM5IDlCuAFNLs4s6L9O5zZ1voHm7wDpHPZZ9CCB6vq4R9YgfXC4i
 iCcOaf3XphCdBT/PELSKN/jmhWj07oqcCgOhcW/RKVKgshTeb5Z3/5NgK
 AtGz+1duw0oRpztq+/hikRW2geB/rVoPFy4q6yuZvUEK53xk8AZk2E6G1
 RQ/0IFOsdaOCFEkUMmgo2vGHqgz388uQWUvzZSC9KEj5TO3mHHYkN0Ub/
 LLHQtrVajPQDMHef5mqt7J6HcRJ6uL4RJtySCctE0aRT5PCjL5qltm0lL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="388083578"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="388083578"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 11:03:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="898649235"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="898649235"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 11:01:18 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Oct 2023 10:52:11 -0700
Message-Id: <20231013175218.2664309-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v14 0/7] drm/i915: Define and use GuC and CTB
 TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement GuC-based TLB invalidations and use them on MTL.

Some complexity in the implementation was introduced early on
and will be required for range-based TLB invalidations.
RFC: https://patchwork.freedesktop.org/series/124922/

v2:
- Add missing supporting patches.

v3:
- Split suspend/resume changes and multi-gt support into separate
  patches.
- Only perform GuC TLB invalidation functions when supported.
- Move intel_guc_is_enabled check function to usage location.
- Address comments.

v4:
- Change conditions for GuC-based tlb invalidation support
  to a pci tag that's only active for MTL.
- Address some FIXMEs and formatting issues.
- Move suspend/resume changes to helper functions in intel_gt.h
- Improve comment for ct_handle_event change.
- Use cleaner if-else conditions.
- Address comments.

v5:
- Reintroduce missing change to selftest msleep duration
- Move suspend/resume loops from intel_gt.h to intel_tlb.c,
  making them no longer static inlines.
- Remove superfluous blocking and error checks.
- Move ct_handle_event exception to general case in
  ct_process_request.
- Explain usage of xa_alloc_cyclic_irq.
- Modify explanation of purpose of
  OUTSTANDING_GUC_TIMEOUT_PERIOD macro.
- Explain purpose of performing tlb invalidation twice in
  intel_gt_tlb_resume_all.

v6:
- Add this cover letter.
- Fix explanation of purpose of
  OUTSTANDING_GUC_TIMEOUT_PERIOD macro again.
- s/pci tags/pci flags
- Enable GuC TLB Invalidations separately from adding the
  flags to do so.

v7:
- Eliminate pci terminology from patches.
- Order new device info flag correctly.
- Run gen8_ggtt_invalidate in more cases, specifically when
  GuC-based TLB invalidation is not supported.
- Use intel_uncore_write_fw instead of intel_uncore_write
  during guc_ggtt_invalidate.
- Remove duplicate request message clear in ct_process_request.
- Remove faulty tag from series.

v8:
- Simplify cover letter contents.
- Fix miscellaneous formatting and typos.
- Reorder device info flags and defines.
- Reword commit message.
- Rename TLB invalidation enums and functions.
- Add comments explaining confusing points.
- Add helper function getting expected delay of CT buffer.
- Simplify intel_guc_tlb_invalidation_done by passing computed
  values.
- Remove helper functions for tlb suspend and resume.
- Move tlb suspend and resume paths to uc.
- Split suspend/resume and wedged into two patches.
- Clarify purpose of sleep change in tlb selftest.

v9:
- Explain complexity of GuC TLB invalidations as required for
  range-based TLB invalidations, which will be platformed later.
- Fix CHECKPATCH issues.
- Explain intel_guc_is_ready tlb invalidation skip in
  intel_gt_invalidate_tlb_full.
- Reword comment for unlocked xa_for_each loop in
  intel_guc_submission_reset.
- Report all errors in init_tlb_lookup.
- Remove debug message from fini_tlb_lookup.
- Use standardized interface for
  intel_guc_tlb_invalidation_done
- Remove spurious changes.
- Move wake_up_all_tlb_invalidate on wedge to correct patch.

v10:
- Add lock to tlb_lookup on guc submission reset.
- Add comment about why timeout increased from 10 ms to 20 ms
  by default in gt_tlb selftest.
- Remove spurious changes.

v11:
- Update CT size delay helper to be clearer.
- Reorder some function declarations.
- Clarify some comments.
- Produce error message if attempting to free a busy wait
  during fini_tlb_lookup.
- Revert default sleep back to 10 ms.
- Link to RFC.

v12:
- Add helper for checking if GuC TLB invalidation is
  supported and guc is ready.
- Prevent suspend/resume actions involving GuC TLB
  invalidations if guc is not ready.
- Add path for INTEL_GUC_ACTION_TLB_INVALIDATION_DONE
  to immediately process in ct_process_request after
  it is submitted to ct_handle_event.

v13:
- Readd error check in intel_guc_tlb_invalidation_done
  for invalid length.
- Remove intel_guc_is_ready requirement from
  wake_up_all_tlb_invalidate.
- Align patches 3 and 4 by adding a check for GuC
  TLB invalidation support to the former that was
  added in the latter.

v14:
- Readd intel_guc_is_ready requirement to
  wake_up_all_tlb_invalidate.
- Move wake_up_all_tlb_invalidate from
  intel_guc_submission_reset to the end of
  __uc_hw_init.
- Remove gen8_ggtt_invalidate changes, as they
  aren't related to GuC TLB invalidation.
- Add missing newline.

Jonathan Cavitt (6):
  drm/i915: Add GuC TLB Invalidation device info flags
  drm/i915/guc: Add CT size delay helper
  drm/i915: No TLB invalidation on suspended GT
  drm/i915: No TLB invalidation on wedged GT
  drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
  drm/i915: Enable GuC TLB invalidations for MTL

Prathap Kumar Valsan (1):
  drm/i915: Define and use GuC and CTB TLB invalidation routines

 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  30 ++-
 drivers/gpu/drm/i915/gt/intel_tlb.c           |  16 +-
 drivers/gpu/drm/i915/gt/selftest_tlb.c        |  11 +-
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  23 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  38 ++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 212 +++++++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  13 ++
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_pci.c               |   1 +
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 13 files changed, 370 insertions(+), 13 deletions(-)

-- 
2.25.1

