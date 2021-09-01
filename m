Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 049DB3FDE82
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 17:22:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46B9B6E1FB;
	Wed,  1 Sep 2021 15:22:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 918E26E1FB
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 15:22:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="218497945"
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="218497945"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 08:22:24 -0700
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="532233989"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.24.33])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 08:22:22 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Chris Wilson <chris@chris-wilson.co.uk>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Date: Wed,  1 Sep 2021 17:22:03 +0200
Message-Id: <20210901152203.178091-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Flush buffer pools on driver remove
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

In preparation for clean driver release, attempts to drain work queues
and release freed objects are taken at driver remove time.  However, GT
buffer pools are now not flushed before the driver release phase.
Since unused objects may stay there for up to one second, some may
survive until driver release is attempted.  That can potentially
explain sporadic then hardly reproducible issues observed at driver
release time, like non-zero shrink counter or outstanding address space
areas.

Flush buffer pools on GT remove as a fix.  On driver release, don't push
the pools again, just assert that the flush was called and nothing added
more in between.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt.c             | 2 ++
 drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 62d40c986642..8f322a4ecd87 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -737,6 +737,8 @@ void intel_gt_driver_remove(struct intel_gt *gt)
 	intel_uc_driver_remove(&gt->uc);
 
 	intel_engines_release(gt);
+
+	intel_gt_flush_buffer_pool(gt);
 }
 
 void intel_gt_driver_unregister(struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
index aa0a59c5b614..acc49c56a9f3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
@@ -245,8 +245,6 @@ void intel_gt_fini_buffer_pool(struct intel_gt *gt)
 	struct intel_gt_buffer_pool *pool = &gt->buffer_pool;
 	int n;
 
-	intel_gt_flush_buffer_pool(gt);
-
 	for (n = 0; n < ARRAY_SIZE(pool->cache_list); n++)
 		GEM_BUG_ON(!list_empty(&pool->cache_list[n]));
 }
-- 
2.25.1

