Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 939095C054A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 19:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9429810E1CA;
	Wed, 21 Sep 2022 17:30:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A68110E1CA
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 17:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663781431; x=1695317431;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VlyqjPawQOmCeAzzE9BPYWsh3RRe+X+vB8kYb50xuKI=;
 b=K9ZXcGVLGzv6aGe5YAIsDNJlC2O1EfrtE5a2FNPxj7IYPfd3gdTvQU7A
 W/blCpF4KGQW+tRXPhGtZNMlStFbU2umTc+wQtzdxZeuxvRK6443zM7/v
 B5iGGP8NztApUOpgEiUXoDuqUIR1/bqnTNzKPHm1z5YfVaWW1qcCVltYT
 hfehxT/p8j9R02sczaAa1xOsR2yKzyqwBA2nJ9czfo4/E4XKchg6JGvqo
 /RALCJZPfnot2PhU8njgw1YrIfJnx/UpWV1R4L/k2WKXlyOUhg54wynsK
 GVrGT9hzw+A0oq8QT582gfjk28zAgA2xwKXTHV3cgQDVR3iSylpetIu/f Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="364048511"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="364048511"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 10:30:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="723304007"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga002.fm.intel.com with ESMTP; 21 Sep 2022 10:30:29 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Sep 2022 10:32:18 -0700
Message-Id: <20220921173219.785199-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/1] Delay disabling GuC scheduling of an
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
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  61 ++++++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 207 +++++++++++++++---
 drivers/gpu/drm/i915/i915_selftest.h          |   2 +
 7 files changed, 276 insertions(+), 27 deletions(-)


base-commit: a1f63e144e545f0ce8f41f41005f2dfc552eb836
-- 
2.25.1

