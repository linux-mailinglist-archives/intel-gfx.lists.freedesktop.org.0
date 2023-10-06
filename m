Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B756F7BBEB5
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 20:31:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED18E10E554;
	Fri,  6 Oct 2023 18:31:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84C7010E554
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 18:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696617094; x=1728153094;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FxgccM7DuilF6eSK7CTU9sYQr0hyiBl8o4nvU5cHSe4=;
 b=lJfuMZndGsckKdtwjc+c57q1v4Yig162yLACMU8DqLqymQ8XDpbkmSBb
 2wCD4K2k1iNkHtBnV7UB2KSPyhlaUMyxk5QBtfPZpvIAxG+uSz4peAvDk
 oLXJpgIud28GdzdHt0lLcZ0LYdBOG9YWlQj7gbotpk1lrUukiYF/WL496
 fdnJboGfSvBmqZ/BbX6Q/H+oh0c7aEbtfldrjdpXW443rhMqowGENhYtD
 YTkblRXdd+rEiIiUNJGLohj6IhP1pYuBkEhMB/08CChecsnFeH5HDYP4o
 wvlffRkNYbvAwLxhnQGhND8EbZT+EwX45pg83DuQzq+QpaJwAJdDfbfmz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="387688162"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="387688162"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 11:31:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="745950572"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="745950572"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 11:31:33 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 11:20:44 -0700
Message-Id: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 0/7] drm/i915: Define and use GuC and CTB TLB
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
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com,
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
 drivers/gpu/drm/i915/gt/intel_gt.h            |   1 +
 drivers/gpu/drm/i915/gt/intel_tlb.c           |  15 +-
 drivers/gpu/drm/i915/gt/selftest_tlb.c        |  11 +-
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  23 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   4 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |  13 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 225 +++++++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   8 +
 drivers/gpu/drm/i915/i915_driver.c            |   2 +
 drivers/gpu/drm/i915/i915_drv.h               |   3 +-
 drivers/gpu/drm/i915/i915_pci.c               |   1 +
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 15 files changed, 360 insertions(+), 15 deletions(-)

-- 
2.25.1

