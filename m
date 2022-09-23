Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 627795E736E
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 07:29:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56F5910E3B0;
	Fri, 23 Sep 2022 05:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06DC810E3A1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 05:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663910931; x=1695446931;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8b09Aq/3ujmuy+0AigQ95qS0VR+/l7fVo+8BS/L2B0w=;
 b=EkHku+MwDpORwxSHKemUi/W3xLUIKejQTt5aqPNDAfnYSAfa3S043UmQ
 Etvgz5GYiyOZtC7Np1vQkxheGaZSuYr8luk9J5ivGr44nBuEMirUoLAR4
 G21p54CMb9BY9nLOMkzPdUrMt/6gClOsL6O59xdT241hhbz3bW60BUaZj
 UAT/P0wBQxAL1yJIsUhi4f4NociHKfT7Zc8ztlb14/D4SqQpGAUwug4CH
 /TwxBizVvd10X0sV0p4/FRyugk5E0W9yNK0jtGkLj9czwqSD8KtQTrAdo
 WRpPzdarAvYJQ9mbTyo1xoS1aO8AwWANku0Igs26IkzcNZbnETnPv1Vi0 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="300499389"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="300499389"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 22:28:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="723997643"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga002.fm.intel.com with ESMTP; 22 Sep 2022 22:28:50 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 22:30:43 -0700
Message-Id: <20220923053044.360293-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/1] Delay disabling GuC scheduling of an
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
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  61 ++++++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 205 +++++++++++++++---
 drivers/gpu/drm/i915/i915_selftest.h          |   2 +
 7 files changed, 274 insertions(+), 27 deletions(-)


base-commit: 5cc2b4b9ebd4fd8631290bba321ecddbc07a822b
-- 
2.25.1

