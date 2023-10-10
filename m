Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6307C0008
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 17:11:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9F6210E390;
	Tue, 10 Oct 2023 15:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62F6110E390
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 15:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696950699; x=1728486699;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DJSijsZ3lQcx/jNKJB0XodXea7HtnRLaMrQaZELi/Nk=;
 b=Eq1062gZH/+FG8bFz+jw6q0VMR2ReZADts8mAnp0HQNiax8vN36f25h8
 7eAHlCnXED5y2SqRooYLWkMSTIXtHwx9EdTqb/Lf42DmW9aDoYviYba6N
 bfe9BN7G0w4sPRg0LyU46NZ85UVJf6ECxwPbfjeI+Rv63ozgKPJueincV
 mer8J2xUIQTKe1LQPQMH7SWDm4c8dupLq/l0IK4FQ26niMqK9/thTnzvo
 WuuP8IKHWn5BE3uBW6uZrEmFY82YHDtV3Nc8EseTFAFscx3IEEuBIZbTi
 c+8tdIJZJKaBI7Z6C3JkQuqEyFWvx1sQaM4LFrQPc+gsyhkGB8IbDrHek Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="415435360"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="415435360"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 08:11:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1084826129"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="1084826129"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 08:11:37 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 08:00:40 -0700
Message-Id: <20231010150055.2021279-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client v10 0/7] drm/i915: Define and use GuC
 and CTB TLB invalidation routines
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

Jonathan Cavitt (6):
  drm/i915: Add GuC TLB Invalidation device info flags
  drm/i915/guc: Add CT size delay helper
  drm/i915: No TLB invalidation on suspended GT
  drm/i915: No TLB invalidation on wedged GT
  drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
  drm/i915: Enable GuC TLB invalidations for MTL

Prathap Kumar Valsan (1):
  drm/i915: Define and use GuC and CTB TLB invalidation routines

 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  34 ++-
 drivers/gpu/drm/i915/gt/intel_tlb.c           |  16 +-
 drivers/gpu/drm/i915/gt/selftest_tlb.c        |  11 +-
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  23 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   4 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |  13 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 211 +++++++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   7 +
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_pci.c               |   1 +
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 13 files changed, 343 insertions(+), 14 deletions(-)

-- 
2.25.1

