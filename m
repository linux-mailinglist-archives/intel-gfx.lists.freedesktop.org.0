Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E252C39F986
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 16:49:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50C236EA04;
	Tue,  8 Jun 2021 14:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCA4C6EA04
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 14:48:58 +0000 (UTC)
IronPort-SDR: x7XvkNAwFGZJQ5VYirVvkOlONgIEzIkHv5f+EcBPO/BSpM74AWEOa1cfqq0BrbqkMQvHOr9oev
 WN4MwniPqrDQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="184545763"
X-IronPort-AV: E=Sophos;i="5.83,258,1616482800"; d="scan'208";a="184545763"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 07:48:57 -0700
IronPort-SDR: fa5GlSuFq8IVpr/SvLyo/dXfBda2CVIPbNHQ/Q3fWzS1HpZqSrVnGgSEEnhYVSffbAnco4p5BK
 MWMub9Jagl0w==
X-IronPort-AV: E=Sophos;i="5.83,258,1616482800"; d="scan'208";a="485292336"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.13.246])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 07:48:55 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 16:48:08 +0200
Message-Id: <20210608144808.13312-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Flush buffer pools on GT remove as a potential fix.
Also, don't flush the pools at driver release again, just assert that
the flush was called and nothing added more in between (suggested by
Chris).

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt.c             | 2 ++
 drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 2161bf01ef8b..c03b399bfaf5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -652,6 +652,8 @@ void intel_gt_driver_remove(struct intel_gt *gt)
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

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
