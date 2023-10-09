Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3707BE85B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 19:40:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F43510E296;
	Mon,  9 Oct 2023 17:40:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC91910E069
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 17:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696873201; x=1728409201;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dlpwz9p79/O5uIhqs0EX/UCk0aZOfh6Dvm9Phl73zfU=;
 b=YFZa9BblNTflazV7mQa3zpERySGWNFZ5xAcIc5GrXomJElwdCg2EUawV
 undgko/TR6I6Tg+eXFg/AoTifLCz3lEIeUYKLqmBI3zzausFmC5XEbDQs
 Ekk0A0EVwV6BpzPQGGNZWYTQNo55Uz9BuEwC2iKfnZQObdMM5Uuh3JkRK
 ZvRucdN5IlLOZ28/8dxgu61Pw7mNHp+2ag+wpYXUHkp7wO8WYIc9k3MZL
 Z8JJjy/jBoYUzO4l7fWeFPxyIE6pI9xLTsoV3Ofy8dbPMrXgzEyIlYRiU
 Eraj+U0DMmwvZ/EDFa8gJKbo/Rg0SfTx6fexnaiJMK4jkw1+NTAHa5XT1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="450705014"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="450705014"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 10:40:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="788251436"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="788251436"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 10:40:01 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Oct 2023 10:29:12 -0700
Message-Id: <20231009172919.1769055-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 0/7] drm/i915: Define and use GuC and CTB TLB
 invalidation routines
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
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 212 +++++++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   7 +
 drivers/gpu/drm/i915/i915_drv.h               |   3 +-
 drivers/gpu/drm/i915/i915_pci.c               |   1 +
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 13 files changed, 344 insertions(+), 15 deletions(-)

-- 
2.25.1

