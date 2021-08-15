Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4DE3ECAD3
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Aug 2021 22:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19E8F89180;
	Sun, 15 Aug 2021 20:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 902FD89BFF
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Aug 2021 20:21:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="213913999"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="213913999"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 13:21:18 -0700
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="461849453"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 13:21:17 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>, drmdevel@freedesktop.org
Cc: <daniel.vetter@ffwll.ch>
Date: Sun, 15 Aug 2021 13:15:38 -0700
Message-Id: <20210815201559.1150-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/21] Clean up GuC CI failures, simplify locking,
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

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Matthew Brost (21):
  drm/i915/guc: Fix blocked context accounting
  drm/i915/guc: outstanding G2H accounting
  drm/i915/guc: Unwind context requests in reverse order
  drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
  drm/i915/guc: Workaround reset G2H is received after schedule done G2H
  drm/i915/selftests: Add a cancel request selftest that triggers a
    reset
  drm/i915/guc: Don't enable scheduling on a banned context, guc_id
    invalid, not registered
  drm/i915/selftests: Fix memory corruption in live_lrc_isolation
  drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
  drm/i915/guc: Take context ref when cancelling request
  drm/i915/guc: Don't touch guc_state.sched_state without a lock
  drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
  drm/i915: Allocate error capture in atomic context
  drm/i915/guc: Flush G2H work queue during reset
  drm/i915/guc: Release submit fence from an IRQ
  drm/i915/guc: Move guc_blocked fence to struct guc_state
  drm/i915/guc: Rework and simplify locking
  drm/i915/guc: Proper xarray usage for contexts_lookup
  drm/i915/guc: Drop pin count check trick between sched_disable and
    re-pin
  drm/i915/guc: Move GuC priority fields in context under guc_active
  drm/i915/guc: Add GuC kernel doc

 drivers/gpu/drm/i915/gt/intel_context.c       |   5 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h |  68 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  29 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  19 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 688 +++++++++++-------
 drivers/gpu/drm/i915/gt/uc/selftest_guc.c     | 126 ++++
 drivers/gpu/drm/i915/i915_gpu_error.c         |  37 +-
 drivers/gpu/drm/i915/i915_request.h           |  23 +-
 drivers/gpu/drm/i915/i915_trace.h             |   8 +-
 .../drm/i915/selftests/i915_live_selftests.h  |   1 +
 drivers/gpu/drm/i915/selftests/i915_request.c |  94 +++
 .../i915/selftests/intel_scheduler_helpers.c  |  12 +
 .../i915/selftests/intel_scheduler_helpers.h  |   2 +
 13 files changed, 805 insertions(+), 307 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/selftest_guc.c

-- 
2.32.0

