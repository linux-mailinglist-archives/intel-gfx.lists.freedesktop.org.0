Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4F01CD672
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 12:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16629890A9;
	Mon, 11 May 2020 10:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECA4D890A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 10:22:44 +0000 (UTC)
IronPort-SDR: zWNxI9+jPN1Wop2sWEtr2QCeLXO50C0yop07Z72UBQdo7q76Hs+eVW++SS78fuobcJzHFXnxGN
 idDYdIe2Z6tg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 03:22:44 -0700
IronPort-SDR: /XvxWKoaWPwgidKbf9ujtQjPTdOFjapGkPWSH7Bzd4bkfixVfln+733bLwrZq5LUi/LlejEmqC
 Qym6McJYwc2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,379,1583222400"; d="scan'208";a="463131004"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga005.fm.intel.com with ESMTP; 11 May 2020 03:22:43 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 915B88408A3; Mon, 11 May 2020 13:22:02 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 May 2020 13:22:01 +0300
Message-Id: <20200511102201.9275-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Make intel_timeline_init static
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit fb5970da1b42 ("drm/i915/gt: Use the kernel_context to measure the
breadcrumb size") removed the last external user for intel_timeline_init.
Mark it static.

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_timeline.c | 8 ++++----
 drivers/gpu/drm/i915/gt/intel_timeline.h | 5 -----
 2 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index e1fac1b38f27..4546284fede1 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -211,9 +211,9 @@ static void cacheline_free(struct intel_timeline_cacheline *cl)
 	i915_active_release(&cl->active);
 }
 
-int intel_timeline_init(struct intel_timeline *timeline,
-			struct intel_gt *gt,
-			struct i915_vma *hwsp)
+static int intel_timeline_init(struct intel_timeline *timeline,
+			       struct intel_gt *gt,
+			       struct i915_vma *hwsp)
 {
 	void *vaddr;
 
@@ -280,7 +280,7 @@ void intel_gt_init_timelines(struct intel_gt *gt)
 	INIT_LIST_HEAD(&timelines->hwsp_free_list);
 }
 
-void intel_timeline_fini(struct intel_timeline *timeline)
+static void intel_timeline_fini(struct intel_timeline *timeline)
 {
 	GEM_BUG_ON(atomic_read(&timeline->pin_count));
 	GEM_BUG_ON(!list_empty(&timeline->requests));
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
index c8e59a333182..4298b9ac7327 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
@@ -31,11 +31,6 @@
 #include "i915_syncmap.h"
 #include "gt/intel_timeline_types.h"
 
-int intel_timeline_init(struct intel_timeline *tl,
-			struct intel_gt *gt,
-			struct i915_vma *hwsp);
-void intel_timeline_fini(struct intel_timeline *tl);
-
 struct intel_timeline *
 intel_timeline_create(struct intel_gt *gt, struct i915_vma *global_hwsp);
 
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
