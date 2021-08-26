Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0E23F80F5
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 05:29:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B57E6E4C4;
	Thu, 26 Aug 2021 03:28:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32F5D6E4B6;
 Thu, 26 Aug 2021 03:28:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="217660046"
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="217660046"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 20:28:39 -0700
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="684738515"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 20:28:39 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <daniele.ceraolospurio@intel.com>
Date: Wed, 25 Aug 2021 20:23:00 -0700
Message-Id: <20210826032327.18078-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/27] Clean up GuC CI failures, simplify locking,
 and kernel DOC
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

Daniel Vetter pointed out that locking in the GuC submission code was
overly complicated, let's clean this up a bit before introducing more
features in the GuC submission backend.

Also fix some CI failures, port fixes from our internal tree, and add a
few more selftests for coverage.

Lastly, add some kernel DOC explaining how the GuC submission backend
works.

v2: Fix logic error in 'Workaround reset G2H is received after schedule
done G2H', don't propagate errors to dependent fences in execlists
submissiom, resolve checkpatch issues, resend to correct lists
v3: Fix issue kicking tasklet, drop guc_active, fix ref counting in
xarray, add guc_id sub structure, drop inline fuctions, and various
other cleanup suggested by Daniel
v4: Address Daniele's feedback, rebase to tip, resend for CI

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Matthew Brost (27):
  drm/i915/guc: Fix blocked context accounting
  drm/i915/guc: Fix outstanding G2H accounting
  drm/i915/guc: Unwind context requests in reverse order
  drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
  drm/i915/guc: Process all G2H message at once in work queue
  drm/i915/guc: Workaround reset G2H is received after schedule done G2H
  Revert "drm/i915/gt: Propagate change in error status to children on
    unhold"
  drm/i915/selftests: Add a cancel request selftest that triggers a
    reset
  drm/i915/guc: Kick tasklet after queuing a request
  drm/i915/guc: Don't enable scheduling on a banned context, guc_id
    invalid, not registered
  drm/i915/guc: Copy whole golden context, set engine state size of
    subset
  drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
  drm/i915/guc: Take context ref when cancelling request
  drm/i915/guc: Don't touch guc_state.sched_state without a lock
  drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
  drm/i915: Allocate error capture in nowait context
  drm/i915/guc: Flush G2H work queue during reset
  drm/i915/guc: Release submit fence from an irq_work
  drm/i915/guc: Move guc_blocked fence to struct guc_state
  drm/i915/guc: Rework and simplify locking
  drm/i915/guc: Proper xarray usage for contexts_lookup
  drm/i915/guc: Drop pin count check trick between sched_disable and
    re-pin
  drm/i915/guc: Move GuC priority fields in context under guc_active
  drm/i915/guc: Move fields protected by guc->contexts_lock into sub
    structure
  drm/i915/guc: Drop guc_active move everything into guc_state
  drm/i915/guc: Add GuC kernel doc
  drm/i915/guc: Drop static inline functions intel_guc_submission.c

 drivers/gpu/drm/i915/gt/intel_context.c       |  19 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h |  81 +-
 .../drm/i915/gt/intel_execlists_submission.c  |   4 -
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   6 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  19 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  28 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   6 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 996 +++++++++++-------
 drivers/gpu/drm/i915/gt/uc/selftest_guc.c     | 127 +++
 drivers/gpu/drm/i915/i915_gpu_error.c         |  39 +-
 drivers/gpu/drm/i915/i915_request.h           |  23 +-
 drivers/gpu/drm/i915/i915_trace.h             |  12 +-
 .../drm/i915/selftests/i915_live_selftests.h  |   1 +
 drivers/gpu/drm/i915/selftests/i915_request.c | 100 ++
 .../i915/selftests/intel_scheduler_helpers.c  |  12 +
 .../i915/selftests/intel_scheduler_helpers.h  |   2 +
 16 files changed, 983 insertions(+), 492 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/selftest_guc.c

-- 
2.32.0

