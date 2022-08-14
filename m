Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C57A45926D8
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Aug 2022 00:42:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92CF192AEF;
	Sun, 14 Aug 2022 22:42:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C653919E5
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Aug 2022 22:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660516932; x=1692052932;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vE/YL2hV9LIyzJBA55H7KKSqfXRiTCX8JTqV/aV5fnI=;
 b=YfAndUwqxZsZvAmQl+5ohCwkX4m0NGxXw24IycCcxEGOUIu5kE5Aw8TA
 58rKL+fr3kh8R806Yy8Wx15B16xcgJXCYGMg7VPaTVz8qR8a0VAoj9vp3
 TYkEyNOabVmcihokV+2nfUFevu4zycza7PlMOT+aFdmBoDzECvf0pmjgs
 Q1PFmSClqaHQL3irzJQZwNw6mA93s5gSeG8QPpgtdW3m8uSS9zm+EUmRW
 QpNNOCFA/M1G4N7JlJ82ghL9HD/B8Jg4gVDcDBsjQbH8fSrlH0KlU07jP
 Sx7s4AgYpjTkTodspWW1Ku7PqYW9zUhcAMhQ6ALKMWDi/3hKjDALHVqYN Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10439"; a="378145693"
X-IronPort-AV: E=Sophos;i="5.93,237,1654585200"; d="scan'208";a="378145693"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2022 15:42:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,237,1654585200"; d="scan'208";a="782479759"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga005.jf.intel.com with ESMTP; 14 Aug 2022 15:42:11 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 14 Aug 2022 15:43:29 -0700
Message-Id: <20220814224331.1427330-1-alan.previn.teres.alexis@intel.com>
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

This is the 3rd rev of this series (counting from the first
version by Matt). Changes from prior revs:

  v3: Differentiate and appropriately name helper functions for getting
      the 'default threshold of num-guc-ids' vs the 'max threshold of
      num-guc-ids' for bypassing sched-disable and use the correct one
      for the debugfs validation (John Harrison).
  v2: Changed the default of the schedule-disable delay to 34 milisecs
      and added debugfs to control this timing knob. Also added a debugfs
      to control the bypass for not delaying the schedule-disable if
      the we are under pressure with a very low balance of remaining
      guc-ds. (John Harrison).

  v1: Drop the trace log for intel_context_close (Chris Wilson).
      Add "Tested-by" into patch-2 (Chris Wilson)
      Add JIRA number into patch-0 (Chris Wilson).
      Summaries patch-2s problem and metrics into
      cover letter (Chris Wilson).

Matthew Brost (2):
  drm/i915/selftests: Use correct selfest calls for live tests
  drm/i915/guc: Add delay to disable scheduling after pin count goes to
    zero

 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   2 +-
 .../i915/gem/selftests/i915_gem_coherency.c   |   2 +-
 .../drm/i915/gem/selftests/i915_gem_dmabuf.c  |   2 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   2 +-
 .../drm/i915/gem/selftests/i915_gem_object.c  |   2 +-
 drivers/gpu/drm/i915/gt/intel_context.h       |   9 ++
 drivers/gpu/drm/i915/gt/intel_context_types.h |   7 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  18 +++
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  57 +++++++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 150 +++++++++++++++---
 drivers/gpu/drm/i915/i915_selftest.h          |   2 +
 drivers/gpu/drm/i915/i915_trace.h             |  10 ++
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   2 +-
 drivers/gpu/drm/i915/selftests/i915_perf.c    |   2 +-
 drivers/gpu/drm/i915/selftests/i915_request.c |   2 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c     |   2 +-
 16 files changed, 237 insertions(+), 34 deletions(-)


base-commit: 1cb5379e17f93685065d8ec54444f1baf9386ffe
-- 
2.25.1

