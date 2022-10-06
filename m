Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 637B15F60D9
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 08:00:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EF6610E7EA;
	Thu,  6 Oct 2022 06:00:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD8D410E7EA
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 06:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665036022; x=1696572022;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mrdqn5bJTloP3MQSjVQGEZXRrJ6UQ3Z0US2D/440Ou4=;
 b=fDU6vQ7HcBY9Jt0B0pZiQTp+Oiomc1EruIoba+OPCpP+lRPOskJ/r7iw
 VPyZ4praC4EsiVLmlgG/PtXRlfpBYmBGA9+ATeUcwtx38L8gmPRA5V8B4
 ttD9JlNcU2tV5YigW4vGiXwtiOnUVakvMFV6uHkbnNDo6OK0M0rzOEK4R
 dT3hcFYKEM4P0M71z+5nyR7ShukZg21jKummtq93OD6nf/ZPN/BZHjkKg
 fDRcgYxBZMZVbQvOMqJ3PBjLBNtqcrYkLR8hBBeVASsHbKb8pO2XaeebJ
 y+e0aUPnCml7jLi8j6HFurmecysHRjSAYfrhhzYgUNR7SBhq1Ed6XshUt g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="304932248"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="304932248"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 23:00:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="713712987"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="713712987"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Oct 2022 23:00:21 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 23:02:23 -0700
Message-Id: <20221006060224.691844-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/1] Delay disabling GuC scheduling of an
 idle context
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

This series adds a delay before disabling scheduling of the guc-context
when a context has become idle to avoid costly re-registration that may
occur immediately after. The 2nd patch should explain it quite well.

The origin of this series was posted by Matthew Brost back in Oct 2021
(https://patchwork.freedesktop.org/series/96167/). However no real
world workload performance impact was available until recently proving
it's intended results.

This series is a redo of a prior patch that was reverted:
2ccddb758079d0c62ce03e69ee8929bb212f7799 drm/i915/guc: Add delay to
disable scheduling after pin count goes to zero

The cause for the reversion is now fixed here (was not caught due to
issues with CI reporting at that time). Two additional changes included
in this redo and restarting as new series / revs:
 - Resolve race between guc_request_alloc and guc_context_close in
completing the delayed disable-guc-scheduling worker.
 - GT Reset flow properly cancelling delayed disable-sched worker and
   closing contexts that were were still awaiting that delayed task.

Changes from prior revs:
   v3: - Removed the now unused context_has_committed_requests (John
         Harrison)
       - Renamed the worker from sched_disable_delay to
         sched_disable_delay_work
   v2: - Removed unused function prototype.
   v1: - Changed the added guc's sched_disable_foo debugfs tunable knobs
         to unsigned int type (Tvrtko Ursulin)
       - Added more comments in the race-resolution code change
         between guc_request_alloc and context-close (Tvrtko Ursulin)
       - Increased the timeout on the race-resolution code change
         between guc_request_alloc and context-close (Daniele Ceraolo Spurio)
       - As part of guc reset preparation flow, instead of creating a new
         function (taking a whole round of locks) to deal with the contexts 
         that are in the midst of awaiting the delayed-disable-sched worker
         move that code inside scrub_guc_desc_for_outstanding_g2h before
         we check for 'pending_disable' contexts.

Matthew Brost (1):
  drm/i915/guc: Delay disabling guc_id scheduling for better hysteresis

 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   2 +-
 drivers/gpu/drm/i915/gt/intel_context.h       |   8 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |   7 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  16 ++
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  61 +++++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 210 +++++++++++++++---
 drivers/gpu/drm/i915/i915_selftest.h          |   2 +
 7 files changed, 274 insertions(+), 32 deletions(-)

-- 
2.34.1

