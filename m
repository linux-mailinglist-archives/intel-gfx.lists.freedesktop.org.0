Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0EB594E94
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 04:17:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE93FD9900;
	Tue, 16 Aug 2022 02:16:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4982D98C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 02:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660616156; x=1692152156;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ucm0mR9kdhz0cctzdgYvnfMHfKUBsrOUz9b3ErgjsfQ=;
 b=XvJ56HZY/XRNwlyLRP/24hV0cronpVc2wM5HQDuAmFY5Dy7oIl5Wq8vb
 /eu3FBOWOyC1pSfZhkt8TcNKTHkcSeTHaJRzsqVYs6kk+9f0+kmD6e9WX
 guuW3ZXh5u+lzvcA1zPYzaXXG5QPjSjPGXvu4zz1Mlz7RD/7D21WvHpkd
 6YTcGU8zV48/RQp7Lmfpsfel5xIVJl12Zdizcydz/whpRudQRAMtWiqDB
 H6ajv1RgXj8YenQBNQQNX9kCgrZ8Lk4McciIWb5jP/VhvpQo/w261EigB
 FyO2LEq0UK/yCm+aZmofUgSyEXPxRcw/62D+xD7kyEHICwIfhLvc3K8US Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="353847873"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="353847873"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 19:15:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="606859546"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga002.jf.intel.com with ESMTP; 15 Aug 2022 19:15:55 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Aug 2022 19:17:13 -0700
Message-Id: <20220816021715.1835615-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 0/2] Delay disabling scheduling on a context
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

This is a revival of the same series posted by Matthew Brost
back in October 2021 (https://patchwork.freedesktop.org/series/96167/).
Additional real world measured metrics is included this time around
that has proven the effectiveness of this series.

This series adds a delay before disabling scheduling the guc-context
when a context has become idle. The 2nd patch should explain it quite well.

This is the 5th rev of this series (counting from the first
version by Matt). Changes from prior revs:

  v5: - Fixed cosmetic issues with the commit message and comments.
      - Moved "SCHED_DISABLE_DELAY_MS" to the sole location used.
      - Removed the tracing of intel_context_closed.
      - Added the check to intel_guc_submission_is_used in the
        debugfs that gets the current guc-id-threshold to match
        the other debugfs functions added in this series.
      - Changed __guc_get_sched_disable_gucid_threshold_default
        to a macro.
      - Added s-o-b to to the first patch as well.

  v4: Fix build error.

  v3: Differentiate and appropriately name helper functions for getting
      the 'default threshold of num-guc-ids' vs the 'max threshold of
      num-guc-ids' for bypassing sched-disable and use the correct one
      for the debugfs validation (John Harrison).

  v2: Changed the default of the schedule-disable delay to 34 milisecs
      and added debugfs to control this timing knob. Also added a debugfs
      to control the bypass for not delaying the schedule-disable if
      the we are under pressure with a very low balance of remaining
      guc-ds. (John Harrison).

Matthew Brost (2):
  drm/i915/selftests: Use correct selfest calls for live tests
  drm/i915/guc: Add delay to disable scheduling after pin count goes to
    zero

 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   2 +-
 .../i915/gem/selftests/i915_gem_coherency.c   |   2 +-
 .../drm/i915/gem/selftests/i915_gem_dmabuf.c  |   2 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   2 +-
 .../drm/i915/gem/selftests/i915_gem_object.c  |   2 +-
 drivers/gpu/drm/i915/gt/intel_context.h       |   8 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |   7 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  16 ++
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  60 +++++++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 148 +++++++++++++++---
 drivers/gpu/drm/i915/i915_selftest.h          |   2 +
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   2 +-
 drivers/gpu/drm/i915/selftests/i915_perf.c    |   2 +-
 drivers/gpu/drm/i915/selftests/i915_request.c |   2 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c     |   2 +-
 15 files changed, 225 insertions(+), 34 deletions(-)


base-commit: 1cb5379e17f93685065d8ec54444f1baf9386ffe
-- 
2.25.1

