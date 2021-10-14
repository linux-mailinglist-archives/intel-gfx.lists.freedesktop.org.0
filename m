Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 021C942E03B
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 19:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8B986E1D6;
	Thu, 14 Oct 2021 17:44:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB8276E1B6;
 Thu, 14 Oct 2021 17:44:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="214682688"
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="214682688"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 10:24:57 -0700
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="481360369"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 10:24:51 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <john.c.harrison@intel.com>
Date: Thu, 14 Oct 2021 10:19:40 -0700
Message-Id: <20211014172005.27155-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/25] Parallel submission aka multi-bb execbuf
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

As discussed in [1] we are introducing a new parallel submission uAPI
for the i915 which allows more than 1 BB to be submitted in an execbuf
IOCTL. This is the implemenation for both GuC and execlists.

In addition to selftests in the series, an IGT is available implemented
in the first 4 patches [2].

The execbuf IOCTL changes have been done in a single large patch (#21)
as all the changes flow together and I believe a single patch will be
better if some one has to lookup this change in the future. Can split in
a series of smaller patches if desired.

This code is available in a public [3] repo for UMD teams to test there
code on.

v2: Drop complicated state machine to block in kernel if no guc_ids
available, perma-pin parallel contexts, reworker execbuf IOCTL to be a
series of loops inside the IOCTL rather than 1 large one on the outside,
address Daniel Vetter's comments
v3: Address John Harrison's comments, add a couple of patches which fix
bugs found internally
v4: Address John Harrison's latest round of comments
v5: Address John Harrison's latest round of comments, resend for CI

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

[1] https://patchwork.freedesktop.org/series/92028/
[2] https://patchwork.freedesktop.org/series/93071/
[3] https://gitlab.freedesktop.org/mbrost/mbrost-drm-intel/-/tree/drm-intel-parallel

Matthew Brost (25):
  drm/i915/guc: Move GuC guc_id allocation under submission state
    sub-struct
  drm/i915/guc: Take GT PM ref when deregistering context
  drm/i915/guc: Take engine PM when a context is pinned with GuC
    submission
  drm/i915/guc: Don't call switch_to_kernel_context with GuC submission
  drm/i915: Add logical engine mapping
  drm/i915: Expose logical engine instance to user
  drm/i915/guc: Introduce context parent-child relationship
  drm/i915/guc: Add multi-lrc context registration
  drm/i915/guc: Ensure GuC schedule operations do not operate on child
    contexts
  drm/i915/guc: Assign contexts in parent-child relationship consecutive
    guc_ids
  drm/i915/guc: Implement parallel context pin / unpin functions
  drm/i915/guc: Implement multi-lrc submission
  drm/i915/guc: Insert submit fences between requests in parent-child
    relationship
  drm/i915/guc: Implement multi-lrc reset
  drm/i915/guc: Update debugfs for GuC multi-lrc
  drm/i915/guc: Connect UAPI to GuC multi-lrc interface
  drm/i915/doc: Update parallel submit doc to point to i915_drm.h
  drm/i915/guc: Add basic GuC multi-lrc selftest
  drm/i915/guc: Implement no mid batch preemption for multi-lrc
  drm/i915: Multi-BB execbuf
  drm/i915/guc: Handle errors in multi-lrc requests
  drm/i915: Make request conflict tracking understand parallel submits
  drm/i915: Update I915_GEM_BUSY IOCTL to understand composite fences
  drm/i915: Enable multi-bb execbuf
  drm/i915/execlists: Weak parallel submission support for execlists

 Documentation/gpu/rfc/i915_parallel_execbuf.h |  122 --
 Documentation/gpu/rfc/i915_scheduler.rst      |    4 +-
 drivers/gpu/drm/i915/gem/i915_gem_busy.c      |   57 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  229 ++-
 .../gpu/drm/i915/gem/i915_gem_context_types.h |   16 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  786 ++++++---
 drivers/gpu/drm/i915/gt/intel_context.c       |   50 +-
 drivers/gpu/drm/i915/gt/intel_context.h       |   56 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h |   73 +-
 drivers/gpu/drm/i915/gt/intel_engine.h        |   12 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   66 +-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |   13 +
 drivers/gpu/drm/i915/gt/intel_engine_pm.h     |   37 +
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |    7 +
 .../drm/i915/gt/intel_execlists_submission.c  |   63 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.h         |   14 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           |    7 +
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |   12 +-
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |    1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   29 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   54 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |    2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   24 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   34 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 1444 ++++++++++++++---
 .../drm/i915/gt/uc/selftest_guc_multi_lrc.c   |  179 ++
 drivers/gpu/drm/i915/i915_query.c             |    2 +
 drivers/gpu/drm/i915/i915_request.c           |  143 +-
 drivers/gpu/drm/i915/i915_request.h           |   23 +
 drivers/gpu/drm/i915/i915_vma.c               |   21 +-
 drivers/gpu/drm/i915/i915_vma.h               |   13 +-
 drivers/gpu/drm/i915/intel_wakeref.h          |   12 +
 .../drm/i915/selftests/i915_live_selftests.h  |    1 +
 include/uapi/drm/i915_drm.h                   |  139 +-
 34 files changed, 3053 insertions(+), 692 deletions(-)
 delete mode 100644 Documentation/gpu/rfc/i915_parallel_execbuf.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c

-- 
2.32.0

