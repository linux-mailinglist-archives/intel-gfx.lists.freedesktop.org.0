Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCA147A934
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Dec 2021 13:05:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48C6711A9E1;
	Mon, 20 Dec 2021 12:05:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A836811A9E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Dec 2021 12:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640001950; x=1671537950;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZgXB24NbhAQ6GgPHJvgAuXxwufgADbmSEdryH1NAVSw=;
 b=mis5fsU+p9ynrA8h17lGWyacpRmLEtwu2Hr+1CzOdlS1oM+2yozFSRzk
 xHz9dxshh41mma0LaIv7HCF7DESiMcNaBGtZZCJThSEnLyw/cISRD4Ye7
 yuhQmLSCq9Fm4047fOK1dzwxhsPs3WDqPh/WK3f1vBV8GeIhn6kVQiHcb
 KMzriGdMPNnnTHcK8jjE7pRcQQbuVnW/VStiJ5TDh9yty+bSvBjnU/S5o
 70XJkrjWa15W7zsSxPxZndaWjwyLkJBi2gpJVv/46I0BPYtcxxo3fdnJh
 0H6HdQqlzMtj1duGLmbduV5Ydf251L5hVG6FjrWOKQqslrgV25AIZ6ITo Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10203"; a="238895149"
X-IronPort-AV: E=Sophos;i="5.88,220,1635231600"; d="scan'208";a="238895149"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2021 04:05:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,220,1635231600"; d="scan'208";a="507659125"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga007.jf.intel.com with ESMTP; 20 Dec 2021 04:05:47 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Dec 2021 17:30:30 +0530
Message-Id: <20211220120030.4116079-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: reset RING_HEAD during
 intel_gt_unset_wedged
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

During repeated wedged-unwedged, it is
found that i915_request_retire zaps the old
request with 0x6b6b6b6b.

On unwedged, we write a new request at RING_TAIL,
expecting to start executuing from that position,
but execution resumes from RING_HEAD (preserved
from an earlier wakeup before wedging) and
consumes the 0x6b.

Resetting kernel/user context setup enables
RING_HEAD to use RING_TAIL for submitting new
requests which resolves issue. Normally this reset
is applied when unpinning a user context, or for
kernel_contexts upon waking up the device. But fast
wedged-unwedged sequence will keep the device awake,
preserving the RING_HEAD from before.

Testcase: igt@gem_eio@unwedge-stress

Note : Current user impact is assessed to be low, as
this only affects intel_gt_unset_wedged which is
currently only used during testing and upon suspend
resume (where the device was already flushed and will
reset the kernel_contexts on waking up). In the
future though, this will present an issue for PCI
error recovery.

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 8 ++++++++
 drivers/gpu/drm/i915/gt/intel_reset.c     | 3 +++
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 352254e001b4..7e1c561bce69 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1455,9 +1455,17 @@ void intel_engines_reset_default_submission(struct intel_gt *gt)
 	enum intel_engine_id id;
 
 	for_each_engine(engine, gt, id) {
+		struct intel_context *ce = engine->kernel_context;
+
 		if (engine->sanitize)
 			engine->sanitize(engine);
 
+		/* Reset RING_HEAD so we don't consume the old
+		 * poisoned request on unwedging
+		 */
+		if (ce)
+			ce->ops->reset(ce);
+
 		engine->set_default_submission(engine);
 	}
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 7be0002d9d70..1c26e936e699 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -961,6 +961,9 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
 	}
 	spin_unlock(&timelines->lock);
 
+	/* Ensure that all non-kernel contexts are unpinned as well */
+	intel_gt_retire_requests(gt);
+
 	/* We must reset pending GPU events before restoring our submission */
 	ok = !HAS_EXECLISTS(gt->i915); /* XXX better agnosticism desired */
 	if (!INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
-- 
2.31.1

